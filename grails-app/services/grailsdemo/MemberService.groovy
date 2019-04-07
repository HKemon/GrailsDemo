package grailsdemo

import grails.web.servlet.mvc.GrailsParameterMap

class MemberService {

    def save(GrailsParameterMap params) {
        Member member = new Member(params)
        if (member.validate()) {
            return member.save(flush: true)
        } else return null
    }


    def update(Member member, GrailsParameterMap params) {
        member.properties = params
        if (member.validate()) {
            return member.save(flush: true)
        } else return null
    }

//    def list(GrailsParameterMap params) {
//        params.max = params.max ?: GlobalConfig.itemsPerPage()
//        List<Member> memberList = Member.createCriteria().list(params) {
//            if (params?.colName && params?.colValue) {
//                like(params.colName, "%" + params.colValue + "%")
//            }
//            if (!params.sort) {
//                order("id", "desc")
//            }
//        }
//        return [list: memberList, count: memberList.totalCount]
//    }

    def getById(Serializable id) {
        return Member.get(id)
    }


    def delete(Member member) {
        try {
            member.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
