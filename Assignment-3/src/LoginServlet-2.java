        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/logindb"; 
        String username = "auth123"; //MySQL username
        String password = "mepregunto"; //MySQL password

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password); 
        System.out.println("Printing connection object "+con);
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();

        //Prepared Statement to get hashed password
        PreparedStatement st = con.prepareStatement(
            "SELECT pass FROM userlist WHERE userID = ?;"
            );
        st.setString(1, id);
        ResultSet rset = st.executeQuery();

        if(rset.next()){
        String pass_db = rset.getString("pass");
        System.out.println("pass hash = "+ pass_db);
        PreparedStatement st_in = con.prepareStatement(
                "SELECT SHA2(? , 256) AS hash;"
                );
            st_in.setString(1, pwd);
            ResultSet rset_in = st_in.executeQuery();
        rset_in.next();
        String pass_in = rset_in.getString("hash");
        //		System.out.println("input hash = "+ pass_in);
        
        if(pass_in.equals(pass_db))
        {
            RequestDispatcher rd = request.getRequestDispatcher("Result.jsp"); 
            session.setAttribute("userid", id);
            rd.forward(request, response);
        } else { 
            RequestDispatcher rd = request.getRequestDispatcher("Input.jsp"); 
            out.println("<font color=red> Password is wrong. </font>"); 
            rd.include(request, response); 
        }
        
        } else { 
        System.out.println("no such user!!!");
        RequestDispatcher rd = request.getRequestDispatcher("Input.jsp"); 
        out.println("<font color=red> User ID does not exist </font>"); 
        rd.include(request, response); 
        }



