<%-- 
    Document   : modalLuong
    Created on : Apr 30, 2021, 7:38:46 PM
    Author     : tranv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-md-4">
            <!-- Button Modal -->
            <button type="button" class="btn btn-block btn-primary mb-3" data-toggle="modal" data-target="#modal-default">Default</button>
            <!-- Modal Content -->
            <div class="modal fade" id="modal-default" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="h6 modal-title">BẢNG LƯƠNG</h2>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="card card-body border-light shadow-sm table-wrapper table-responsive pt-0">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID Nhân Viên</th>
                                            <th>Nhân Viên</th>
                                            <th>Số ngày công trong tháng</th>
                                            <th>Phụ cấp</th>
                                            <th>Tổng tiền tháng </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Item -->

                                        <tr>  
                                            <td>
                                                <span class="font-weight-normal">a</span>
                                            </td>
                                            <td>
                                                <span class="font-weight-normal">b</span>
                                            </td>   

                                            <td><span class="font-weight-normal">c</span></td>        
                                            <td><span class="font-weight-normal">d</span></td>  

                                            <td><span class="text-tertiary mb-0"> VND</span></td>  
                                        </tr>

                                </table>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-sm btn-secondary">I Got It</button>
                            <button type="button" class="btn btn-link text-danger ml-auto" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of Modal Content -->
        </div>
    </body>
</html>
