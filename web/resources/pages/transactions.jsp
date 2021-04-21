<%@page import="java.util.ArrayList"%>
<%@page import="model.BEAN.Nhanvien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
<link rel="apple-touch-icon" sizes="120x120" href="../assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="../assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="../assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="../assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="../assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="../vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Notyf -->
<link type="text/css" href="../vendor/notyf/notyf.min.css" rel="stylesheet">

<!-- Volt CSS -->
<link type="text/css" href="../css/volt.css" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body>

        <nav class="navbar navbar-dark navbar-theme-primary px-4 col-12 d-md-none">
    <a class="navbar-brand mr-lg-5" href="../index.html">
        <img class="navbar-brand-dark" src="../assets/img/brand/light.svg" alt="Volt logo" /> <img class="navbar-brand-light" src="../assets/img/brand/dark.svg" alt="Volt logo" />
    </a>
    <div class="d-flex align-items-center">
        <button class="navbar-toggler d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

        <div class="container-fluid bg-soft">
            <div class="row">
                <div class="col-12">
                    <nav id="sidebarMenu" class="sidebar d-md-block bg-primary text-white collapse" data-simplebar>
    <div class="sidebar-inner px-4 pt-3">
      <div class="user-card d-flex d-md-none align-items-center justify-content-between justify-content-md-center pb-4">
        <div class="d-flex align-items-center">
          <div class="user-avatar lg-avatar mr-4">
            <img src="../assets/img/team/profile-picture-3.jpg" class="card-img-top rounded-circle border-white" alt="Bonnie Green">
          </div>
          <div class="d-block">
            <h2 class="h6">Hi, Jane</h2>
            <a href="../pages/examples/sign-in.html" class="btn btn-secondary text-dark btn-xs"><span class="mr-2"><span class="fas fa-sign-out-alt"></span></span>Sign Out</a>
          </div>
        </div>
        <div class="collapse-close d-md-none">
            <a href="#sidebarMenu" class="fas fa-times" data-toggle="collapse"
                data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="true"
                aria-label="Toggle navigation"></a>
        </div>
      </div>
      <ul class="nav flex-column">
        <li class="nav-item ">
          <a href="../pages/dashboard/dashboard.jsp" class="nav-link">
            <span class="sidebar-icon"><span class="fas fa-chart-pie"></span></span>
            <span>Giới thiệu</span>
          </a>
        </li>
        <li class="nav-item  active ">
          <a href="../pages/transactions.jsp" class="nav-link">
              <span class="sidebar-icon"><span class="fas fa-hand-holding-usd"></span></span>
              <span>Thông tin giờ làm</span>
          </a>
       
      </ul>
    </div>
</nav>             
                    <main class="content">
                        <nav class="navbar navbar-top navbar-expand navbar-dashboard navbar-dark pl-0 pr-2 pb-0">
    <div class="container-fluid px-0">
      <div class="d-flex justify-content-between w-100" id="navbarSupportedContent">
        <div class="d-flex">
          <!-- Search form -->
          <form class="navbar-search form-inline" id="navbar-search-main">
            
          </form>
        </div>
        <!-- Navbar links -->
        <ul class="navbar-nav align-items-center">
          <li class="nav-item dropdown">
            <a class="nav-link text-dark mr-lg-3 icon-notifications" data-unread-notifications="true" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="icon icon-sm">
                <span class="fas fa-bell bell-shake"></span>
                <span class="icon-badge rounded-circle unread-notifications"></span>
              </span>
            </a>
            <div class="dropdown-menu dashboard-dropdown dropdown-menu-lg dropdown-menu-center mt-2 py-0">
              <div class="list-group list-group-flush">
                <a href="#" class="text-center text-primary font-weight-bold border-bottom border-light py-3">Notifications</a>
                <a href="../pages/calendar.html" class="list-group-item list-group-item-action border-bottom border-light">
                  <div class="row align-items-center">
                      <div class="col-auto">
                        <!-- Avatar -->
                        <img alt="Image placeholder" src="../assets/img/team/profile-picture-1.jpg" class="user-avatar lg-avatar rounded-circle">
                      </div>
                      <div class="col pl-0 ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                              <h4 class="h6 mb-0 text-small">Jose Leos</h4>
                            </div>
                            <div class="text-right">
                              <small class="text-danger">a few moments ago</small>
                            </div>
                        </div>
                        <p class="font-small mt-1 mb-0">Added you to an event "Project stand-up" tomorrow at 12:30 AM.</p>
                      </div>
                  </div>
                </a>
                <a href="../pages/tasks.html" class="list-group-item list-group-item-action border-bottom border-light">
                  <div class="row align-items-center">
                      <div class="col-auto">
                        <!-- Avatar -->
                        <img alt="Image placeholder" src="../assets/img/team/profile-picture-2.jpg" class="user-avatar lg-avatar rounded-circle">
                      </div>
                      <div class="col pl-0 ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                              <h4 class="h6 mb-0 text-small">Neil Sims</h4>
                            </div>
                            <div class="text-right">
                              <small class="text-danger">2 hrs ago</small>
                            </div>
                        </div>
                        <p class="font-small mt-1 mb-0">You've been assigned a task for "Awesome new project".</p>
                      </div>
                  </div>
                </a>
                <a href="../pages/tasks.html" class="list-group-item list-group-item-action border-bottom border-light">
                  <div class="row align-items-center">
                      <div class="col-auto">
                        <!-- Avatar -->
                        <img alt="Image placeholder" src="../assets/img/team/profile-picture-3.jpg" class="user-avatar lg-avatar rounded-circle">
                      </div>
                      <div class="col pl-0 ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                              <h4 class="h6 mb-0 text-small">Roberta Casas</h4>
                            </div>
                            <div class="text-right">
                              <small>5 hrs ago</small>
                            </div>
                        </div>
                        <p class="font-small mt-1 mb-0">Tagged you in a document called "First quarter financial plans",</p>
                      </div>
                  </div>
                </a>
                <a href="../pages/single-message.html" class="list-group-item list-group-item-action border-bottom border-light">
                  <div class="row align-items-center">
                      <div class="col-auto">
                        <!-- Avatar -->
                        <img alt="Image placeholder" src="../assets/img/team/profile-picture-4.jpg" class="user-avatar lg-avatar rounded-circle">
                      </div>
                      <div class="col pl-0 ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                              <h4 class="h6 mb-0 text-small">Joseph Garth</h4>
                            </div>
                            <div class="text-right">
                              <small>1 d ago</small>
                            </div>
                        </div>
                        <p class="font-small mt-1 mb-0">New message: "Hey, what's up? All set for the presentation?"</p>
                      </div>
                  </div>
                </a>
                <a href="../pages/single-message.html" class="list-group-item list-group-item-action border-bottom border-light">
                  <div class="row align-items-center">
                      <div class="col-auto">
                        <!-- Avatar -->
                        <img alt="Image placeholder" src="../assets/img/team/profile-picture-5.jpg" class="user-avatar lg-avatar rounded-circle">
                      </div>
                      <div class="col pl-0 ml--2">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                              <h4 class="h6 mb-0 text-small">Bonnie Green</h4>
                            </div>
                            <div class="text-right">
                              <small>2 hrs ago</small>
                            </div>
                        </div>
                        <p class="font-small mt-1 mb-0">New message: "We need to improve the UI/UX for the landing page."</p>
                      </div>
                  </div>
                </a>
                <a href="#" class="dropdown-item text-center text-primary font-weight-bold py-3">View all</a>
              </div>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link pt-1 px-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media d-flex align-items-center">
                <img class="user-avatar md-avatar rounded-circle" alt="Image placeholder" src="../assets/img/team/profile-picture-3.jpg">
                <div class="media-body ml-2 text-dark align-items-center d-none d-lg-block">
                  <span class="mb-0 font-small font-weight-bold">User</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dashboard-dropdown dropdown-menu-right mt-2">
              <a class="dropdown-item font-weight-bold" href="#"><span class="far fa-user-circle"></span>My Profile</a>
              <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-cog"></span>Settings</a>
              <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-envelope-open-text"></span>Messages</a>
              <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-user-shield"></span>Support</a>
              <div role="separator" class="dropdown-divider"></div>
              <a class="dropdown-item font-weight-bold" href="#"><span class="fas fa-sign-out-alt text-danger"></span>Logout</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
</nav>

                        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-4">
                            <div class="d-block mb-4 mb-md-0">
                                
                                <h2 class="h4">Danh sách nhân viên</h2>
                                <p class="mb-0">Thông tin cơ bản và giờ làm.</p>
                            </div>
                            
                        </div>
                        <div class="table-settings mb-4">
                            <div class="row align-items-center justify-content-between">
                                <div class="col col-md-6 col-lg-3 col-xl-4">
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon2"><span class="fas fa-search"></span></span>
                                        <input type="text" class="form-control" id="exampleInputIconLeft" placeholder="Tìm kiếm theo tên nhân viên" aria-label="Search" aria-describedby="basic-addon2">
                                    </div>
                                </div>
                                <div class="col-4 col-md-2 col-xl-1 pl-md-0 text-right">
                                    <div class="btn-group">
                                        <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <button class="btn btn-secondary" type="button">Search</button>
                                        </button>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-body border-light shadow-sm table-wrapper table-responsive pt-0">
                            <table class="table table-hover">
                                <% ArrayList<Nhanvien> nvArray = (ArrayList<Nhanvien>) request.getAttribute("nvArray"); %>
                                <thead>
                                    <tr>
                                        <th>ID nhân viên</th>
                                        <th>Họ tên</th>						
                                        <th>Số điện thoại</th>
                                        <th>Chức vụ</th>
                                        <th>Tổng giờ làm</th>
                                        <th>Tổng công</th>
                                        <th>Chi tiết</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Item -->
                                    <%for (Nhanvien nv : nvArray) {%>
                                    <tr>
                                        <td>  
                                                <%=nv.getManv()%>
                                        </td>
                                        <td>
                                            <span class="font-weight-normal"><%= nv.getHoten()%> </span>
                                        </td>
                                        <td><span class="font-weight-normal"><%= nv.getSdt()%></span></td>                        
                                        <td><span class="font-weight-normal"><%= nv.getMachucvu()%></span></td>
                                        <td><span class="font-weight-bold"><%= nv.getTonggiolam()%></span></td>
                                        <td><span class="font-weight-bold text-warning"><%= nv.getTongluong()%></span></td>
                                        <td>
                                            <div class="btn-group">
                                                <button class="btn btn-link text-dark dropdown-toggle dropdown-toggle-split m-0 p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span class="icon icon-sm">
                                                        <span class="fas fa-ellipsis-h icon-dark"></span>
                                                    </span>
                                                    <span class="sr-only">Toggle Dropdown</span>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="../invoice.html"><span class="fas fa-eye mr-2"></span>View Details</a>
                                                    <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>Edit</a>
                                                    <a class="dropdown-item text-danger" href="#"><span class="fas fa-trash-alt mr-2"></span>Remove</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                     <% }%>
                                                                    
                                </tbody>
                            </table>
                            <div class="card-footer px-3 border-0 d-flex align-items-center justify-content-between">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination mb-0">
                                        <li class="page-item">
                                            <a class="page-link" href="#">Previous</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">1</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link" href="#">2</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">3</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">4</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">5</a>
                                        </li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="font-weight-bold small">Showing <b>5</b> out of <b>25</b> entries</div>
                            </div>
                        </div>
                        <footer class="footer section py-5">
    <div class="row">
        <div class="col-12 col-lg-6 mb-4 mb-lg-0">
            <p class="mb-0 text-center text-xl-left">Copyright © 2019-<span class="current-year"></span> <a class="text-primary font-weight-normal" href="https://themesberg.com" target="_blank">Themesberg</a></p>
        </div>

        <div class="col-12 col-lg-6">
            <ul class="list-inline list-group-flush list-group-borderless text-center text-xl-right mb-0">
                <li class="list-inline-item px-0 px-sm-2">
                    <a href="https://themesberg.com/about">About</a>
                </li>
                <li class="list-inline-item px-0 px-sm-2">
                    <a href="https://themesberg.com/themes">Themes</a>
                </li>
                <li class="list-inline-item px-0 px-sm-2">
                    <a href="https://themesberg.com/blog">Blog</a>
                </li>
                <li class="list-inline-item px-0 px-sm-2">
                    <a href="https://themesberg.com/contact">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</footer>
                    </main>
                </div>
            </div>
        </div>

    <!-- Core -->
<script src="../vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="../vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Vendor JS -->
<script src="../vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- Slider -->
<script src="../vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Jarallax -->
<script src="../vendor/jarallax/dist/jarallax.min.js"></script>

<!-- Smooth scroll -->
<script src="../vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Count up -->
<script src="../vendor/countup.js/dist/countUp.umd.js"></script>

<!-- Notyf -->
<script src="../vendor/notyf/notyf.min.js"></script>

<!-- Charts -->
<script src="../vendor/chartist/dist/chartist.min.js"></script>
<script src="../vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Datepicker -->
<script src="../vendor/vanillajs-datepicker/dist/js/datepicker.min.js"></script>

<!-- Simplebar -->
<script src="../vendor/simplebar/dist/simplebar.min.js"></script>

<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Volt JS -->
<script src="../assets/js/volt.js"></script>

    
</body>

</html>
