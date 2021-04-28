/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import DBprovider.DBconn;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author tranv
 */
public class DeleteNhanVienDAO {
      public boolean deleteNhanvien(String idnv) {
        DBconn.connection = DBconn.getConnection();
        String SQL_Query_String = "DELETE  FROM `nhanvien` where MaNV ='" + idnv + "'";
        if (DBconn.connection != null) {
            try {
                PreparedStatement stmt = DBconn.connection.prepareStatement(SQL_Query_String);
                stmt.execute();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
