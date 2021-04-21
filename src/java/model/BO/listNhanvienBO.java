/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;
import model.BEAN.Nhanvien;
import model.DAO.listNhanvienDAO;

public class listNhanvienBO {
    listNhanvienDAO listnhanvienDAO = new listNhanvienDAO();
    public ArrayList<Nhanvien> getNhanvienList() throws SQLException {
        return listnhanvienDAO.getNVList();
    }
}
