/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.DAO.DeleteNhanVienDAO;

/**
 *
 * @author tranv
 */
public class DeleteNhanVienBO {
     DeleteNhanVienDAO deleteNVDAO = new DeleteNhanVienDAO();
    public boolean deleteNhanvien(String idhs){
    return deleteNVDAO.deleteNhanvien(idhs);
            }
}
