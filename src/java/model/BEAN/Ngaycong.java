/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BEAN;

public class Ngaycong {
    private int ngaycongid;
    private int manv;
    private String ngay;
    private String thoigiantruycap;
    private boolean vang;
    private String giolam;

    public Ngaycong(int ngaycongid, int manv, String ngay, String thoigiantruycap, boolean vang, String giolam) {
        this.ngaycongid = ngaycongid;
        this.manv = manv;
        this.ngay = ngay;
        this.thoigiantruycap = thoigiantruycap;
        this.vang = vang;
        this.giolam = giolam;
    }

    public int getNgaycongid() {
        return ngaycongid;
    }

    public void setNgaycongid(int ngaycongid) {
        this.ngaycongid = ngaycongid;
    }

    public int getManv() {
        return manv;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public String getThoigiantruycap() {
        return thoigiantruycap;
    }

    public void setThoigiantruycap(String thoigiantruycap) {
        this.thoigiantruycap = thoigiantruycap;
    }

    public boolean isVang() {
        return vang;
    }

    public void setVang(boolean vang) {
        this.vang = vang;
    }

    public String getGiolam() {
        return giolam;
    }

    public void setGiolam(String giolam) {
        this.giolam = giolam;
    }
    
}
