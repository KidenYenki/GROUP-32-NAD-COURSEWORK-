<%-- 
    Document   : charts
    Created on : Aug 9, 2022, 3:22:47 AM
    Author     : Kiden Yenki
--%>

<%@page import="java.sql.Connection"%>
  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*,java.util.*"%>
<%!Connection connection= null;%>
<%!Statement statement;%>
<%!Integer x[]={};%>
<%!String h[]={};%>
<%ArrayList<Integer> xlabel=new ArrayList<Integer>(Arrays.asList(x));%>
<%ArrayList<String> hlabel=new ArrayList<String>(Arrays.asList(h));%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="grid.css"/>
        
        
    </head>
      
        <%
            
            
             out.println("<br><a href='/Reports/Editstaff'>View Staff Details</a>");
               
            out.println("<br><a href='/Reports/Saveuser'>Log out</a>");
    
            try{
            Class.forName("com.mysql.jdbc.Driver");
           
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/manager","root","");
            }
            catch(ClassNotFoundException e){
            out.println("Where is the Driver?");
            e.printStackTrace();
            }
            catch(SQLException e){
            out.println("Connection failed!");
            e.printStackTrace();
            }
            if(connection!= null){
            statement= connection.createStatement();
            String query1 = "SELECT * FROM customers";
            String query2 = "SELECT * FROM employee";
            String query3 = "SELECT * FROM likes";
            String query4 = "Select * FROM manager";
            String query5 = "SELECT * FROM production";
            String query6 = "SELECT * FROM sales";
            
            ResultSet res=statement.executeQuery(query6);
            while(res.next()){
            xlabel.add(res.getInt("id"));
            hlabel.add("'"+res.getString("product")+"'");
            }
            
           
            }
        
            %>
            <body>
        <div class="main">
            <div class="charts">
                <div class="chart">
                      <div>
                         <canvas id="line"></canvas>
                                              </div>
                </div>
            </div>
        </div>
      
        <script src="chart.min.js"></script>
        <script >
       var ctx2 = document.getElementById('line').getContext('2d');
var myChart2 = new Chart(ctx2, {
    type: 'pie',
    data: {
        labels: <% out.println(hlabel);%>,

        datasets: [{
            label: 'Sales',
            data:<% out.println(xlabel);%>,
            backgroundColor: [
                'rgba(41, 155, 99, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(120, 46, 139,1)'

            ],
            borderColor: [
                'rgba(41, 155, 99, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(120, 46, 139,1)'

            ],
            borderWidth: 1
        }]

    },
    options: {
        responsive: true,
        indexAxis: 'y',
        maxAspectRatio: false
    
    }
});
        </script>
            </body>   
    
</html>

