


<%@page import="java.util.Date"%>
<%@page import="model.BEAN.Nhanvien"%>
<%@page import="model.BEAN.LoggingTime"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!-- Primary Meta Tags -->
        <title>Transactions</title>
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
        <style>
            #table-scroll {
                height:250px;
                overflow:auto;  
                margin-top:20px;
            }
        </style>
    </head>
    <body>
        <% int thang = Integer.parseInt((String) request.getAttribute("thang"));%>
        <% int nam = Integer.parseInt((String) request.getAttribute("nam"));%>
        <% ArrayList<LoggingTime> arrTime = (ArrayList<LoggingTime>) request.getAttribute("timeArray");%>
        <% ArrayList<Nhanvien> arrNV = (ArrayList<Nhanvien>) request.getAttribute("nvArray");%>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4 ">
            <div class="d-block mb-4 mb-md-0">

                <h2 class="h4">LƯƠNG</h2>
                <p class="mb-0">Tháng <%=thang%> Năm <%=nam%> </p>
            </div>

            <div class="card card-body border-light shadow-sm table-wrapper table-responsive pt-0">
                <div id="table-scroll">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID Nhân Viên</th>
                                <th>Nhân Viên</th>
                                <th>Số ngày Full-time</th>
                                <th>Số ngày Part-time</th>
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
                                    float giovaolam = 0;
                                    int h2 = 0, m2 = 0;
                                    int h1 = 0, m1 = 0;
                                    long diff = 0, diffMinutes = 0, diffHours = 0;
                                    int vet = 0;
                                    int tempdate = 0;
                                    int fulltime = 0;
                                    int parttime = 0;
                                    float worktime = 0.5f;
                                    Date startDay = null;
                                    Date endDay = null;
                                    for (LoggingTime lg : arrTime) {
                                        if (nv.getManv() == lg.getMaNV() && lg.getMonth() == thang && lg.getYear() == nam) {
                                            startDay = lg.getLoggingtime(); // xác định ngày làm đầu tiên
                                            float tp = startDay.getHours() + startDay.getMinutes() / 60;
                                            if (tp < giovaolam) {
                                                startDay.setHours(7);
                                                startDay.setMinutes(0);
                                            }
                                            tempdate = lg.getDay();
                                            break;
                                        }
                                    }
                                    for (LoggingTime lg : arrTime) {
                                        if (nv.getManv() == lg.getMaNV() && lg.getMonth() == thang && lg.getYear() == nam && lg.getDay() != tempdate) {
                                            endDay = arrTime.get(vet - 1).getLoggingtime();
                                            diff = endDay.getTime() - startDay.getTime();
                                            diffMinutes = diff / (60 * 1000) % 60;
                                            diffHours = diff / (60 * 60 * 1000) % 24;
                                            worktime += (diffHours + diffMinutes / 60);
                                            startDay = lg.getLoggingtime();
                                            float tp = startDay.getHours() + startDay.getMinutes() / 60;
                                            if (tp < giovaolam) {
                                                startDay.setHours(7);
                                                startDay.setMinutes(0);
                                            }
                                            h1 = lg.getHours();
                                            m1 = lg.getMinutes();
                                            if (worktime >= 8) {
                                                fulltime++;
                                                worktime = 0.5f;
                                            }
                                            if (worktime < 8 && worktime >= 4) {
                                                parttime++;
                                                worktime = 0.5f;
                                            }
                                            tempdate = lg.getDay();
                                        }
                                        if ((arrTime.size() - 1) == arrTime.indexOf(lg)) {
                                            for (int i = (arrTime.size() - 1); i >= 0; i--) {
                                                if (nv.getManv() == arrTime.get(i).getMaNV() && arrTime.get(i).getMonth() == thang && arrTime.get(i).getYear() == nam) {
                                                    h2 = arrTime.get(i).getHours();
                                                    m2 = arrTime.get(i).getMinutes();
                                                    break;
                                                }
                                            }
                                            worktime += (h2 + m2 / 60) - (h1 + m1 / 60);
                                            if (worktime >= 8) {
                                                fulltime++;
                                                worktime = 0.5f;
                                            }
                                            if (worktime < 8 && worktime >= 4) {
                                                parttime++;
                                                worktime = 0.5f;
                                            }
                                        }
                                        vet++;
                                    }
                                %>
                                <td><span class="font-weight-normal"><%=fulltime%></span></td>        
                                <td><span class="font-weight-normal"><%=parttime%></span></td>  
                                    <%  float tongtien = nv.getCongtheongay() * fulltime + nv.getCongtheongay() * parttime * 0.5f + nv.getPhucap();
                                    %>
                                <td><span class="text-tertiary mb-0"><%=tongtien%> VND</span></td>  
                            </tr>
                            <% }%>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>


