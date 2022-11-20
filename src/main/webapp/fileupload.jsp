<%--
  Created by IntelliJ IDEA.
  User: junjewoo
  Date: 2022/11/19
  Time: 10:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="com.myapp.common.*, java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
  String filename = "";
  int sizeLimit = 15 * 1024 * 1024;
  String realPath = request.getServletContext().getRealPath("upload");
  File dir = new File(realPath);
  if (!dir.exists()) dir.mkdirs();
  MultipartRequest multpartRequest = null;
  multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",new DefaultFileRenamePolicy());
  filename = multpartRequest.getFilesystemName("photo");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
