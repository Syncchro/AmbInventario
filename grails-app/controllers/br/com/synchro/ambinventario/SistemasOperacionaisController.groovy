package br.com.synchro.ambinventario

import br.com.synchro.ambinventario.SistemasOperacionais;

class SistemasOperacionaisController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sistemasOperacionaisInstanceList: SistemasOperacionais.list(params), sistemasOperacionaisInstanceTotal: SistemasOperacionais.count()]
    }

    def create = {
        def sistemasOperacionaisInstance = new SistemasOperacionais()
        sistemasOperacionaisInstance.properties = params
        return [sistemasOperacionaisInstance: sistemasOperacionaisInstance]
    }

    def save = {
        def sistemasOperacionaisInstance = new SistemasOperacionais(params)
        if (sistemasOperacionaisInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), sistemasOperacionaisInstance.id])}"
            redirect(action: "show", id: sistemasOperacionaisInstance.id)
        }
        else {
            render(view: "create", model: [sistemasOperacionaisInstance: sistemasOperacionaisInstance])
        }
    }

    def show = {
        def sistemasOperacionaisInstance = SistemasOperacionais.get(params.id)
        if (!sistemasOperacionaisInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), params.id])}"
            redirect(action: "list")
        }
        else {
            [sistemasOperacionaisInstance: sistemasOperacionaisInstance]
        }
    }

    def edit = {
        def sistemasOperacionaisInstance = SistemasOperacionais.get(params.id)
        if (!sistemasOperacionaisInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [sistemasOperacionaisInstance: sistemasOperacionaisInstance]
        }
    }

    def update = {
        def sistemasOperacionaisInstance = SistemasOperacionais.get(params.id)
        if (sistemasOperacionaisInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (sistemasOperacionaisInstance.version > version) {
                    
                    sistemasOperacionaisInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais')] as Object[], "Another user has updated this SistemasOperacionais while you were editing")
                    render(view: "edit", model: [sistemasOperacionaisInstance: sistemasOperacionaisInstance])
                    return
                }
            }
            sistemasOperacionaisInstance.properties = params
            if (!sistemasOperacionaisInstance.hasErrors() && sistemasOperacionaisInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), sistemasOperacionaisInstance.id])}"
                redirect(action: "show", id: sistemasOperacionaisInstance.id)
            }
            else {
                render(view: "edit", model: [sistemasOperacionaisInstance: sistemasOperacionaisInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def sistemasOperacionaisInstance = SistemasOperacionais.get(params.id)
        if (sistemasOperacionaisInstance) {
            try {
                sistemasOperacionaisInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sistemasOperacionais.label', default: 'SistemasOperacionais'), params.id])}"
            redirect(action: "list")
        }
    }
}
