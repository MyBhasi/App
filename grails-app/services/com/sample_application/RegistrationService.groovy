package com.sample_application

import com.user.UserCO
import grails.plugin.mail.MailService
import grails.transaction.Transactional
import org.codehaus.groovy.grails.scaffolding.GrailsTemplateGenerator
import org.codehaus.groovy.grails.web.pages.GroovyPagesTemplateRenderer

@Transactional
class RegistrationService {
    MailService mailService
  def groovyPageRenderer
    def serviceMethod() {

    }

    def save(UserCO userCO) {
        println "service"
        String r = "ROLE_${userCO.role.toUpperCase()}"

        User user = new User(username: userCO.username, password: userCO.password, admin: false, firstName: userCO.firstName, lastName: userCO.lastName, phoneNo: userCO.phoneNo,).save(failOnError: true, flush: true)
        Role role = Role.findOrSaveWhere(authority: r)
        UserRole.create(user, role, true)
        String mail = userCO.username

//
        mailService.sendMail
                {
                    to mail
                    subject "Welcome! message  from  LinkShare"
//                    body " hi ${userCO.firstName} ${userCO.lastName}, you  are  sucessfully Registered.It is  pleasure to you have on board."
               html groovyPageRenderer.render(template:"/admin/welcome",model:[userCO:userCO])

//
//

//
                }

    }
}