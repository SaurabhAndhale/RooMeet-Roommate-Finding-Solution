<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.conn.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><jsp:include page="projectTitle.jsp"></jsp:include></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>
<%
    if (request.getParameter("delete") != null) {
        out.println("<script>alert('Product removed from Cart!');</script>");
    }
%>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="topNav">
        <div class="container">
            <div class="alignR">
                <div class="pull-left socialNw"></div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div id="gototop"></div>
    <header id="header">
        <div class="row">
            <div class="span4">
                <h1>
                    <a class="logo" href="index.jsp">
                        <span><jsp:include page="projectTitle.jsp"></jsp:include></span>
                        <img src="assets/img/umai.png" alt="bootstrap sexy shop">
                    </a>
                </h1>
            </div>
        </div>
    </header>

    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse">
                    <jsp:include page="Header/CustomerHeader.jsp"></jsp:include>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="span12">
            <div class="well np">
                <h3 align="center">View Products in Cart</h3>
            </div>

            <div class="well well-small">
                <hr class="soften">
                <form action="paymentProcess.jsp" method="post">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Sr.No.</th>
                                <th>Category</th>
                                <th>No of Beds</th>
                                <th>Customer Name</th>
                                <th>Base Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String email = (String) session.getAttribute("email");
                                if (email != null) {
                                    Connection con = ConnectionProvider.getConnection();
                                    String sql = "SELECT * FROM cart_whish_list_products WHERE request_by = ?";
                                    PreparedStatement ps = con.prepareStatement(sql);
                                    ps.setString(1, email);
                                    ResultSet rs = ps.executeQuery();

                                    int srno = 1;
                                    int totalPrice = 0;

                                    while (rs.next()) {
                                        int quantity = rs.getInt("quantity");
                                        int basePrice = rs.getInt("base_price");
                                        int total = quantity * basePrice;
                                        totalPrice += total;
                            %>
                            <tr>
                                <td><%= srno++ %></td>
                                <td><%= rs.getString("category") %></td>
                                <td><%= rs.getString("p_name") %></td>
                                <td><%= rs.getString("request_by") %></td>
                                <td><%= basePrice %></td>
                                <td><%= quantity %></td>
                                <td><i class="fa fa-inr"></i> <%= total %></td>
                                <td>
                                    <a href="DeleteProductItem?p_id=<%= rs.getString("p_id") %>" class="btn btn-info">
                                        <i class="fa fa-trash-o"></i> Delete
                                    </a>
                                </td>
                            </tr>
                            <% } %>
                            <tr>
                                <td colspan="6" style="text-align:right"><b>Total Amount:</b></td>
                                <td colspan="2"><i class="fa fa-inr"></i> <%= totalPrice %></td>
                            </tr>
                            <%
                                session.setAttribute("totalPrice", totalPrice);
                            } else {
                                out.println("<tr><td colspan='8'>No items in cart.</td></tr>");
                            }
                            %>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="assets/js/shop.js"></script>
</body>
</html>
