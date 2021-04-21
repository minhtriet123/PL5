/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.DAO.DangnhapDAO;

/**
 *
 * @author ADMIN
 */
public class DangnhapBO {
    DangnhapDAO dangnhapDAO = new DangnhapDAO();
    public boolean isValidUser(String userName, String password) throws ClassNotFoundException {
        return dangnhapDAO.isExistUser(userName, password);
    }
}
