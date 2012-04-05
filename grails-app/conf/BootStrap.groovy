import br.com.synchro.ambinventario.security.SecUser
import br.com.synchro.ambinventario.security.SecUserSecRole

class BootStrap {

	def springSecurityService
	def adminRole

	def init = { servletContext ->
		def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
				username: 'admin',
				password: '@dmin123',
				enabled: true).save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			SecUserSecRole.create adminUser, adminRole
		}
	}
	def destroy = {
	}
}
