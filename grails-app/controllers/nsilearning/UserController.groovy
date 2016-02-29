package nsilearning



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index() {
		redirect(action: "list", params: params)
	}
	def login = { }
	def list = {
//		def listUser = User.findAll()
//		render (view:"/user/list", model:[userInstanceList: listUser])
		if(session.adminlevel < 2){
			flash.message = "Access Denied!"
			redirect(controller:"navigation", action:"index")
		}else{
			params.max = Math.min(params.max ? params.int('max') : 10, 100)
			[userInstanceList: User.list(params), userInstanceTotal: User.count()]
		}
	}
	def authenticate = {
        print "username==>" + params.username
		print "password==>" + params.password

		def user = User.findByUsernameAndPassword(params.username, params.password)
		if(user){
			session.adminlevel = user.adminlevel
			print session.adminlevel
			session.username = params.username
			flash.message = "Hello ${user.username}!"
			print "${user.username[0].toUpperCase() + user.username[1..-1]} has connected!"
			redirect(controller:"navigation", action:"index")
		}else{
			flash.message = "Sorry. Please try again."
			redirect(action:"login")
		}
	}

	def logout = {
		flash.message = "Goodbye ${session.username}"
		session.username = null
		session.adminlevel = null
		redirect(controller:"navigation", action:"index")
	}
	
//    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond User.list(params), model:[userInstanceCount: User.count()]
//    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
			return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
