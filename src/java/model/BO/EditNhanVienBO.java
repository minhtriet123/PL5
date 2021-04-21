/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BO;

import model.BEAN.Nhanvien;
import model.DAO.EditNhanVienDAO;

/**
 *
 * @author ADMIN
 */
public class EditNhanVienBO {
     EditNhanVienDAO editnhanvienDAO = new EditNhanVienDAO();
    public boolean editHocSinh(Nhanvien nv){
        return editnhanvienDAO.editNhanVien(nv);
    }
    public Nhanvien getInforNV(String idhs){
        return editnhanvienDAO.getInforEditDAO(idhs);
    }
}
