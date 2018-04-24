<%-- 
    Document   : anasayfa
    Created on : 23.Nis.2018, 19:34:30
    Author     : mete
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="controller.randomNumbers" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style type="text/css">
		.header
		{
                    padding: 10px;
                    text-align: center;
                    background:  #009933;
                    color: white;
		}
		.header h1
		{
                    font-size: 40px;
		}
                .main
		{
			
                    background-color: #f1f1f1;
                    padding: 20px;
                    border-style: solid;
		}
                table, th, td
                {
                    border: 1px solid black;
                    text-align: center;
                }

	</style>
</head>
<body>
    <div class="header">
	<img style="height: 100px;width: 100px;" src="images/icons/a.png">
	<p>WELCOME</p>
    </div>
<center>
    <div class="main">
        
            <% randomNumbers r = new randomNumbers(); %>
            <% ArrayList<Integer> e = r.oluştur(); %>
            <% int fonk_için = r.random_seç(); %>
            
            
            <ul>
                <li>n1:<% out.print(e.get(0)); %></li>
                <li>n2:<% out.print(e.get(1)); %></li>
                <li>n3:<% out.print(e.get(2)); %></li>
                <li>n4:<% out.print(e.get(3)); %></li>
                <li>n5:<% out.print(e.get(4)); %></li>
            </ul>
            
            <table>
                <tr>
                <th>First Var</th>
                <th>Second Var</th>
                <th>Operation</th>
                <th>Result</th>
                </tr>
                <tr>
                    <td><% int a =e.get(r.random_seç()); 
                        out.print(a);               %></td>

                    <td><% int b =e.get(r.random_seç());   
                        out.print(b);               %></td>

                    <td><% String işlem = r.işlem_seç(); 
                            out.print(işlem);       %></td>

                    <td><% out.print(r.sonuc(a, b, işlem)); %></td>
                </tr>
                
                <tr>
                    <td><% int a1 =e.get(r.random_seç()); 
                        out.print(a1);               %></td>

                    <td><% int b1 =e.get(r.random_seç());   
                        out.print(b1);               %></td>

                    <td><% String işlem1 = r.işlem_seç(); 
                            out.print(işlem1);       %></td>

                    <td><% out.print(r.sonuc(a1, b1, işlem1)); %></td>
                </tr>
                
                <tr>
                    <td><% int a2 =e.get(r.random_seç()); 
                        out.print(a2);               %></td>

                    <td><% int b2 =e.get(r.random_seç());   
                        out.print(b2);               %></td>

                    <td><% String işlem2 = r.işlem_seç(); 
                            out.print(işlem2);       %></td>

                    <td><% out.print(r.sonuc(a2, b2, işlem2)); %></td>
                </tr>
                
                <tr>
                    <td><% int a3 =e.get(r.random_seç()); 
                        out.print(a3);               %></td>

                    <td><% int b3 =e.get(r.random_seç());   
                        out.print(b3);               %></td>

                    <td><% String işlem3 = r.işlem_seç(); 
                            out.print(işlem3);       %></td>

                    <td><% out.print(r.sonuc(a3, b3, işlem3)); %></td>
                </tr>
                
                <tr>
                    <td><% int a4 =e.get(r.random_seç()); 
                        out.print(a4);               %></td>

                    <td><% int b4 =e.get(r.random_seç());   
                        out.print(b4);               %></td>
                    
                    <td><% String işlem4 = r.işlem_seç(); 
                            out.print(işlem4);       %></td>
                    <td><% out.print(r.sonuc(a4, b4, işlem4)); %></td>
                </tr>
            </table>
                
                    <h3>My Function is:<% out.print(r.fonksiyon(fonk_için)); %></h3>
                    <h3>According to this:<% out.print(r.according_to(e.get(0), e.get(1), e.get(2), e.get(3), e.get(4), fonk_için)); %></h3>
                    <% int fonk_sonucu = r.fonksiyon_işlemleri(e.get(0), e.get(1), e.get(2), e.get(3), e.get(4), fonk_için); %>
                    <h3>Mod 10 of <% out.print(fonk_sonucu); %> is:<% out.println(r.mod_işlemi(fonk_sonucu)); %></h3>
                    <a href="<%=r.link_yon(0, r.mod_işlemi(fonk_sonucu)) %>">0</a>
                    <a href="<%=r.link_yon(1, r.mod_işlemi(fonk_sonucu)) %>">1</a>
                    <a href="<%=r.link_yon(2, r.mod_işlemi(fonk_sonucu)) %>">2</a>
                    <a href="<%=r.link_yon(3, r.mod_işlemi(fonk_sonucu)) %>">3</a>
                    <a href="<%=r.link_yon(4, r.mod_işlemi(fonk_sonucu)) %>">4</a>
                    <a href="<%=r.link_yon(5, r.mod_işlemi(fonk_sonucu)) %>">5</a>
                    <a href="<%=r.link_yon(6, r.mod_işlemi(fonk_sonucu)) %>">6</a>
                    <a href="<%=r.link_yon(7, r.mod_işlemi(fonk_sonucu)) %>">7</a>
                    <a href="<%=r.link_yon(8, r.mod_işlemi(fonk_sonucu)) %>">8</a>
                    <a href="<%=r.link_yon(9, r.mod_işlemi(fonk_sonucu)) %>">9</a>

        
        
    </div>
</center>



</body>
</html>
