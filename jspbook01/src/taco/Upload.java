package taco;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class Upload extends HttpServlet{
	private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
	public void doPost(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException{
	
		Map<String, BlobKey>blobs = blobstoreService.getUploadedBlobs(req);
		BlobKey blobKey = blobs.get("myFile");
	
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Entity image = new Entity("Image");
		image.setProperty("key", blobKey.getKeyString());
		datastore.put(image);
	
		if(blobKey == null){
			res.sendRedirect("/");
		} else{
			res.sendRedirect("/serve?blob-key" + blobKey.getKeyString());
		}
	}
}