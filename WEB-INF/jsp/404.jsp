<%@ page import="org.apache.tomcat.util.security.Escape" session="false" trimDirectiveWhitespaces="true" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
  <html>

  <head>
    <title>404 Not found</title>
    <style type="text/css">
      BODY {
        font-family: Tahoma, Arial, sans-serif;
        color: black;
        background-color: white;
        font-size: 12px;
      }

      H1 {
        font-family: Tahoma, Arial, sans-serif;
        color: white;
        background-color: #525D76;
        font-size: 22px;
      }
    </style>
  </head>

  <body>
    <h1>404 Not found</h1>
    <p>
      The page you tried to access
      (<%=Escape.htmlElementContent((String) request.getAttribute( "jakarta.servlet.error.request_uri" ))%>)
        does not exist.
    </p>
    <p>
      Note that the URL for the text interface has changed from
      &quot;<%=request.getContextPath()%>&quot; to
        &quot;<%=request.getContextPath()%>/text&quot;.
    </p>

  </body>

  </html>