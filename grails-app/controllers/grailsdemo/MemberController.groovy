package grailsdemo

class MemberController {
    MemberService memberService

    def index() {
        [member: Member.list()]
    }

    def details(Integer id) {
        def response = memberService.getById(id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            [member: response]
        }
    }

    def create() {
        [member: flash.redirectParams]
    }

    def save() {
        def response = memberService.save(params)
        if (response == null) {
            redirect(controller: "member", action: "create")
        } else {
            redirect(controller: "member", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [member: flash.redirectParams]
        } else {
            def response = memberService.getById(id)
            if (response != null) {
                [member: response]
            } else {
                redirect(controller: "member", action: "index")
            }
        }
    }


    def update() {
        def response = memberService.getById(params.id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            response = memberService.update(response, params)
            if (response == null){
                println response
                redirect(controller: "member", action: "edit")
            }else{
                redirect(controller: "member", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = memberService.getById(id)
        if (!response){
            redirect(controller: "member", action: "index")
        }else{
            memberService.delete(response)
        }
    }
}
