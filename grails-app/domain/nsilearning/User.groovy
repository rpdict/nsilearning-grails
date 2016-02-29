package nsilearning
import org.bson.types.ObjectId;

class User {
	ObjectId id
	String username
	String password
	String name
	String sex
	Date birthday
	String school
	String department
	Integer tel
	String email
	String hobby
	String address
	String harvest
	String text
	Date dateCreated
	Date lastUpdated
	Integer adminlevel = 0
	String toString(){
		username
	  }

    static constraints = {
		username(unique:true)
		password()
		name()
		sex()
		birthday()
		school()
		department()
		tel()
		email()
		hobby()
		address()
		harvest()
		text()
		adminlevel()
    }
}
