<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>

    </head>

    <body>

        <%

        String t=(String)session.getAttribute("status");
		System.out.println("came");

        if(t==null)

            {
            response.sendRedirect("error.jsp");

             session.setAttribute("username","null");

             }

            else

            {

             if(!t.equals("yes"))

                  {
 
                  response.sendRedirect("error.jsp");

                    session.setAttribute("username","null");

                   }

             }

        %>

    </body>

</html>
