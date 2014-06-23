<%--
    - @(#)
    - Description: This jsp file defines the black bar at the top of all 
    -                 student pages
 --%>

<%@ page import="teammates.common.util.Const" %>
<%@ page import="teammates.ui.controller.PageData" %>
<%
    PageData data = (PageData)request.getAttribute("data");
%>
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#contentLinks">
                         <span class="sr-only">Toggle navigation</span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/index.html">TEAMMATES</a>
                </div>
                <div class="collapse navbar-collapse" id="contentLinks">
                    <ul class="nav navbar-nav">
                        <li class="<%=data.getClass().toString().contains("StudentHome")?"active":""%>">
                            <a id="studentHomeLink" data-link="studentHome" href="<%=data.getStudentHomeLink()%>">Home</a>
                        </li>
                        <li class="<%=data.getClass().toString().contains("StudentProfilePage")?"active":""%>">
                            <a id="studentProfileLink" data-link="studentProfilePage" href="<%=data.getStudentProfileLink()%>">
                                Profile
                            </a>
                        </li>
                        <li class="<%=data.getClass().toString().contains("StudentComments")?"active":""%>">
                            <a id="studentCommentsLink" data-link="studentCommentsPage" href="<%=data.getStudentCommentsLink()%>">
                                Comments
                            </a>
                        </li>
                        <li class="<%=data.getClass().toString().contains("StudentHelp")?"active":""%>">
                            <a id="studentHelpLink" class='nav' href="/studentHelp.html" target="_blank">Help</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li><a class='nav logout' href="<%=Const.ViewURIs.LOGOUT%>">Logout
                                <%
                                    if(data.account.googleId.length() > Const.SystemParams.USER_ID_MAX_DISPLAY_LENGTH){
                                %>
                                (<span class="text-info" data-toggle="tooltip" data-placement="bottom" 
                                        title="<%=data.account.googleId%>">
                                        <%=PageData.truncate(data.account.googleId,Const.SystemParams.USER_ID_MAX_DISPLAY_LENGTH)%>
                                </span>)
                                <%
                                    } else {
                                %>
                                (<span class="text-info" data-toggle="tooltip" data-placement="bottom" 
                                        title="<%=data.account.googleId%>">
                                        <%=PageData.truncate(data.account.googleId,Const.SystemParams.USER_ID_MAX_DISPLAY_LENGTH)%>
                                 </span>)
                                <%} %>
                            </a>
                        </li>
                    </ul>
                    
                    
                </div>
            </div>
        </div>