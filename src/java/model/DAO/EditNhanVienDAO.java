/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.BEAN.Nhanvien;

/**
 *
 * @author ADMIN
 */
public class EditNhanVienDAO {
    public boolean editNhanVien(Nhanvien nv){
    DBconn.connection = DBconn.getConnection();
        if(DBconn.connection!=null){
        String SQL_Query_String = "UPDATE nhanvien SET HoTen = ?, GioiTinh = ?, NgaySinh = ?, Email = ?, LuongCoBan = ?, Sdt = ?, DiaChi = ?, MaChucVu = ?, PhuCap = ?, BacLuong = ?, TongGioLam = ?, TongLuong = ? WHERE MaNV = ?";
        try {
             PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
             stmt.setString(1, nv.getHoten());
             stmt.setString(2, nv.getGioitinh());
             //convert Data java thanh Data sql
             java.sql.Date sDate = new java.sql.Date( nv.getNgaysinh().getTime());
             stmt.setDate(3, sDate);
             //----------------------------------------------------------------
             stmt.setString(4, nv.getEmail());
             stmt.setString(5, nv.getLuongcoban());
             stmt.setString(6, nv.getSdt());
             stmt.setString(7, nv.getDiachi());
             stmt.setString(8, nv.getMachucvu());
             stmt.setString(9, nv.getPhucap());
             stmt.setString(10, nv.getBacluong());
             stmt.setString(11, nv.getTonggiolam());
             stmt.setString(12, nv.getTongluong());
             stmt.setInt(13, nv.getManv());
             stmt.execute(); 
             return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        return false;
    }
    public Nhanvien getInforEditDAO(String idnv){
        Nhanvien nv = new Nhanvien();
        DBconn.connection = DBconn.getConnection();
        if(DBconn.connection!=null){
        String SQL_Query_String = "SELECT * FROM nhanvien WHERE MaNV = ?";
        try {
             PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
             stmt.setString(1,idnv);
             ResultSet rs = stmt.executeQuery();
             while (rs.next()){
                nv.setHoten(rs.getString("HoTen"));
                nv.setLuongcoban(rs.getString("LuongCoBan"));
                nv.setNgaysinh(rs.getDate("NgaySinh"));
                nv.setGioitinh(rs.getString("GioiTinh"));
                nv.setEmail(rs.getString("Email"));
                nv.setSdt(rs.getString("Sdt"));
                nv.setDiachi(rs.getString("DiaChi"));
           
             }
             
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }return nv;
}
}
