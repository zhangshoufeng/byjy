<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.jy.model.UserBase" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发布招聘信息</title>
<link type="text/css" rel="stylesheet" href="/static/css/style.css">
  <%
    UserBase user=null;
    if(session.getAttribute("currentUser")!=null){
      user=(UserBase)session.getAttribute("currentUser");
    }
  %>
</head>
<script language="javascript">

  function checkAction(form) {
    if(form.jobName.value==""||form.jobAddress.value==""||form.jobNeed.value==""||form.jobAmount.value==""||form.jobSalary.value==""||form.jobEndTime.value==""){
      window.alert("请完善信息");
      return false;
    }
  }

</script>
<body>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
    
      <jsp:include page="../top.jsp" flush="true" />
      <table width="801" height="436" border="1" cellpadding="0" cellspacing="0" style="margin-top: 8px"  class="bg">
        <tr>
          <td valign="top">
            <jsp:include page="../left.jsp" flush="true" />
          </td>

          <td height="243" valign="top" align="center">
            <form name="form" method="post" action="/jobServlet.do?action=0" onSubmit="return checkAction(this)">
              <table width="575" height="25" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center">
                    <h2 style="background-color: burlywood">
                      发布招聘信息
                    </h2>
                  </div>
                  </td>
                </tr>
              </table>
              <table width="355"  align="center" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#CCCCCC">

                <tbody>
                <input type="hidden" name="enterpriseId" value="<%=user.getDetail()%>">
                <tr>
                  <input type="hidden" name="userId" value="<%=user.getUserId()%>">
                  <th width="99" height="30"><span>职位名称：</span></th>
                  <td width="250" bgcolor="#FFFFFF"><input type="text" name="jobName" size="40" value=""></td>
                </tr>
                <tr>
                  <th height="30"><span>职位要求：</span></th>
                  <td bgcolor="#FFFFFF"><input type="text" name="jobNeed" size="40" value=""></td>
                </tr>
                <tr>
                  <th height="30"><span>工作地点：</span></th>
                  <td bgcolor="#FFFFFF"><input type="text" name="jobAddress" size="40" value=""></td>
                </tr>
                <tr>
                  <th height="30"><span>招聘人数：</span></th>
                  <td bgcolor="#FFFFFF"><input type="text" name="jobAmount" size="40" value=""></td>
                </tr>
                <tr>
                  <th height="30"><span class="word_white">工资待遇：</span></th>
                  <td bgcolor="#FFFFFF"><input type="text" name="jobSalary" size="40" value="" ></td>
                </tr>
                <tr>
                  <th height="30"><span class="word_white">截止日期：</span></th>
                  <td bgcolor="#FFFFFF"><input type="date" value="2017-02-28" name="jobEndTime" size="40"/></td>
                </tr>
                <tr>
                  <th height="30"><span class="word_white">备注信息：</span></th>
                  <td bgcolor="#FFFFFF"><textarea name="remark" cols="35" rows="10"></textarea></td>
                </tr>

                </tbody></table>
                  <br>
                  <div align="center">
                  &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"   value="提交审核" width="51" height="20">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="#" onClick="javasrcipt:history.go(-1)">返回</a>
                    </div>
              </form>
          </td>
        </tr>
      </table>
	  <%--<jsp:include page="down.jsp" flush="true" />--%>
    </td>
  </tr>
</table>

</body>
</html>
