<%-- 
    Document   : tableLoggingTime
    Created on : Apr 27, 2021, 10:29:17 AM
    Author     : tranv
--%>

<%@page import="model.BEAN.Nhanvien"%>
<%@page import="model.BEAN.LoggingTime"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!-- Primary Meta Tags -->
        <title>TinhLuong</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="title" content="Volt Bootstrap 5 Dashboard - Transactions">
        <meta name="author" content="Themesberg">
        <meta name="description" content="Volt is a free and open source Bootstrap 5 Admin Dashboard featuring 11 example pages, 100 components and 3 plugins with Vanilla JS.">
        <meta name="keywords" content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, free bootstrap 5 dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, themesberg, themesberg dashboard, themesberg admin dashboard" />
        <link rel="canonical" href="https://themesberg.com/product/admin-dashboard/volt-bootstrap-5-dashboard">

        <!-- Open Graph / Facebook -->
        <meta property="og:type" content="website">
        <meta property="og:url" content="https://demo.themesberg.com/volt">
        <meta property="og:title" content="Volt Bootstrap 5 Dashboard - Transactions">
        <meta property="og:description" content="Volt is a free and open source Bootstrap 5 Admin Dashboard featuring 11 example pages, 100 components and 3 plugins with Vanilla JS.">
        <meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/volt-bootstrap-5-dashboard/volt-bootstrap-5-dashboard-preview.jpg">

        <!-- Twitter -->
        <meta property="twitter:card" content="summary_large_image">
        <meta property="twitter:url" content="https://demo.themesberg.com/volt">
        <meta property="twitter:title" content="Volt Bootstrap 5 Dashboard - Transactions">
        <meta property="twitter:description" content="Volt is a free and open source Bootstrap 5 Admin Dashboard featuring 11 example pages, 100 components and 3 plugins with Vanilla JS.">
        <meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/volt-bootstrap-5-dashboard/volt-bootstrap-5-dashboard-preview.jpg">

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="120x120" href="resources/assets/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="resources/assets/img/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/img/favicon/favicon-16x16.png">
        <link rel="manifest" href="resources/assets/img/favicon/site.webmanifest">
        <link rel="mask-icon" href="resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="theme-color" content="#ffffff">

        <!-- Fontawesome -->
        <link type="text/css" href="resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

        <!-- Notyf -->
        <link type="text/css" href="resources/vendor/notyf/notyf.min.css" rel="stylesheet">

        <!-- Volt CSS -->
        <link type="text/css" href="resources/css/volt.css" rel="stylesheet">

        <!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% int thang = Integer.parseInt((String) request.getAttribute("thang"));%>
        <% int nam = Integer.parseInt((String) request.getAttribute("nam"));%>
        <% ArrayList<LoggingTime> arrTime = (ArrayList<LoggingTime>) request.getAttribute("timeArray");%>
        <% ArrayList<Nhanvien> arrNV = (ArrayList<Nhanvien>) request.getAttribute("nvArray");%>
        <div class="card card-body border-light shadow-sm table-wrapper table-responsive pt-0">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID Nhân Viên</th>
                        <th>Nhân Viên</th>
                        <th>Số ngày công trong tháng</th>
                        <th>Phụ cấp</th>
                        <th>Tổng tiền tháng <%=thang%></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Item -->
                    <%for (Nhanvien nv : arrNV) {%>
                    <tr>  
                        <td>
                            <span class="font-weight-normal"><%=nv.getManv()%></span>
                        </td>
                        <td>
                            <span class="font-weight-normal"><%=nv.getHoten()%></span>
                        </td>   
                        <%  
                            int tempdate = 0;
                            int ngaycong = 0;
                            for (LoggingTime lg : arrTime){
                            if (nv.getManv()==lg.getMaNV() && lg.getMonth()==thang && lg.getYear()==nam && lg.getDay()!= tempdate ) {
                                tempdate = lg.getDay();
                                ngaycong++;
                            }
                        }
                        %>
                        <td><span class="font-weight-normal"></span><%=ngaycong%></td>        
                        <td><span class="font-weight-normal"><%=nv.getPhucap()%></span></td>  
                        <%  float tongtien = nv.getPhucap()*ngaycong + nv.getPhucap();
                        %>
                        <td><span class="text-tertiary mb-0"><%=tongtien%> VND</span></td>  
                    </tr>
                    <% }%>
            </table>
        </div>

    </body>
</html>
