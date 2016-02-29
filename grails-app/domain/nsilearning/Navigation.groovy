package nsilearning
import org.bson.types.ObjectId;

class Navigation {
	ObjectId id
	String username
	String password
	
    static constraints = {
		username(blank:false, minSize:6)
		password(blank:false, minSize:6) 
    }
}
