/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import model.BEAN.Nhanvien;
import model.DAO.SearchnhanvienDAO;

/**
 *
 * @author ADMIN
 */
public class SearchnhanvienBO {
    SearchnhanvienDAO searchNVDAO = new SearchnhanvienDAO();
     public ArrayList<Nhanvien> searchNhanvienList(String namesearch) throws SQLException {
        return searchNVDAO.searchListNV(namesearch);
    }
}
