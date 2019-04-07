<meta name="layout" content="main"/>

<div>
    <div>
        <table>
            <thead>
            <tr>
                <g:sortableColumn property="firstName" title="First Name"/>
                <g:sortableColumn property="lastName" title="Last Name"/>
                <g:sortableColumn property="email" title="Email"/>
                <th><g:message code="action"/></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${member}" var="info">
                <tr>
                    <td>${info?.firstName}</td>
                    <td>${info?.lastName}</td>
                    <td>${info?.email}</td>

                    <td>
                        <div>
                            <g:link controller="member" action="details" id="${info.id}">Details</g:link>
                            &nbsp;
                            <g:link controller="member" action="edit" id="${info.id}">Edit</g:link>
                            &nbsp;
                            <g:link controller="member" action="delete" id="${info.id}">Delete</g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
        </table>
    </div>
</div>