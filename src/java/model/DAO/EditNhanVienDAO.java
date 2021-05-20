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

    public boolean editNhanVien(Nhanvien nv) {
        DBconn.connection = DBconn.getConnection();
        if (DBconn.connection != null) {
            String SQL_Query_String = "UPDATE nhanvien SET HoTen = ?, GioiTinh = ?, Email = ?, Sdt = ?, DiaChi = ? PhuCap = ?, Congtheongay=?, Ngaysinh=? WHERE MaNV = ?";
            try {
                PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
                stmt.setString(1, nv.getHoten());
                stmt.setString(2, nv.getGioitinh());
                stmt.setString(3, nv.getEmail());
                stmt.setString(4, nv.getSdt());
                stmt.setString(5, nv.getDiachi());
                stmt.setFloat(6, nv.getPhucap());
                stmt.setFloat(7, nv.getCongtheongay());
                stmt.setInt(9, nv.getManv());
                //convert Data java thanh Data sql
                java.sql.Date sDate = new java.sql.Date(nv.getNgaysinh().getTime());
                stmt.setDate(8, sDate);
                 
                //----------------------------------------------------------------
                stmt.execute();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public Nhanvien getInforEditDAO(String idnv) {
        Nhanvien nv = new Nhanvien();
        DBconn.connection = DBconn.getConnection();
        if (DBconn.connection != null) {
            String SQL_Query_String = "SELECT * FROM nhanvien WHERE MaNV = ?";
            try {
                PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
                stmt.setString(1, idnv);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    nv.setHoten(rs.getString("HoTen"));
                    nv.setNgaysinh(rs.getDate("NgaySinh"));
                    nv.setEmail(rs.getString("Email"));
                    nv.setSdt(rs.getString("Sdt"));
                    nv.setDiachi(rs.getString("DiaChi"));
                    nv.setPhucap(rs.getFloat("PhuCap"));
                    nv.setCongtheongay(rs.getFloat("Congtheongay"));
                    nv.setGioitinh(rs.getString("GioiTinh"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return nv;
    }
}
