
<%@page import="java.sql.*"  %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecting Data from Database</title>
    </head>
    <body>
        <h1>Selecting Data from DB</h1>
        <%! 
            public class Eleve{
                String Url  = "jdbc:mysql://localhost:3306/ensat?zeroDateTimeBehavior=CONVERT_TO_NULL";
                String userName  = "root";
                String password  = "root";
                Connection connection = null;
                PreparedStatement selectEleve = null;
                ResultSet resultset =  null;
                public Eleve()
                {
                    try{
                        connection =  DriverManager.getConnection(Url,userName,password);
                        selectEleve = connection.prepareStatement("select nom,prenom,niveau from eleves");
                        //stmt = connection.createStatement();
                        //rs = stmt.executeQuery("select * from eleves");
                        //connection.close();
                    }catch(SQLException e)
                    {
                        e.printStackTrace();
                    }catch (Exception e) {
                        e.printStackTrace();
                    }
                    
                }
                public ResultSet getEleves()
                {
                    try{
                        resultset = selectEleve.executeQuery();
                    }catch(SQLException e)
                    {
                        e.printStackTrace();
                    }
                    return resultset;

                 //return rs;
                }
            }
        %>
        <% 
         Eleve eleve = new Eleve();
         ResultSet res = eleve.getEleves();
        %>
        <table border="1">
            <tbody>
                <tr>
                    <td>Nom </td>
                    <td>Prenom</td>
                    <td>Niveau</td>
                </tr>
                <%  while ( res.next() ) { %>
                <tr>
                    <td><%= res.getString("nom") %></td>
                    <td><%= res.getString("prenom") %></td>
                    <td><%= res.getString("niveau") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
