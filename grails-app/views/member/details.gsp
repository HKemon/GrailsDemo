<meta name="layout" content="main"/>

<div>
    <div>
        <table>
            <tr>
                <th><g:message code="First Name"/></th><td>${member.firstName}</td>
            </tr>
            <tr>
                <th><g:message code="Last Name"/></th><td>${member.lastName}</td>
            </tr>
            <tr>
                <th><g:message code="Email"/></th><td>${member.email}</td>
            </tr>
        </table>

        <div>
            <g:link controller="member" action="index"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>