<%@ page import = "java.sql.*" %>
<%
	Statement stm = null;
	ResultSet rs = null;
	Class.forName("org.mariadb.jdbc.Driver");
	String myUrl = "jdbc:mariadb://127.0.0.1/bbs";
	Connection conn = DriverManager.getConnection(myUrl, "jjaegii", "21812096");
	try {
        	stm = conn.createStatement();
        	if(stm.execute("select * from Users")) {
                	rs = stm.getResultSet();
        }
        while(rs.next()) {
                out.println(rs.getString("id"));
                out.println(rs.getString("name"));
                out.println(rs.getString("email"));
		out.println(rs.getString("country"));
		out.println(rs.getString("password"));
                out.write("<br>");
        }
        rs.close();
        stm.close();
}
catch(Exception e) {
        out.println("rs.next() ERROR");
}
conn.close();
%>
