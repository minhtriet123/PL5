/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.BEAN;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Nhanvien {

    private int manv;
    private String hoten;
    private String luongcoban;
    private String machucvu;
    private String phucap;
    private String bacluong;
    private String tonggiolam;
    private String sdt;
    private String tongluong;
    private String gioitinh;
    private Date ngaysinh;
    private String diachi;
    private String email;

    public Nhanvien() {
    }

    public Nhanvien(int manv, String hoten, String luongcoban, String machucvu, String phucap, String bacluong, String tonggiolam, String sdt, String tongluong, String gioitinh, Date ngaysinh, String diachi, String email) {
        this.manv = manv;
        this.hoten = hoten;
        this.luongcoban = luongcoban;
        this.machucvu = machucvu;
        this.phucap = phucap;
        this.bacluong = bacluong;
        this.tonggiolam = tonggiolam;
        this.sdt = sdt;
        this.tongluong = tongluong;
        this.gioitinh = gioitinh;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
        this.email = email;
    }

    public int getManv() {
        return manv;
    }

    public void setManv(int manv) {
        this.manv = manv;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getLuongcoban() {
        return luongcoban;
    }

    public void setLuongcoban(String luongcoban) {
        this.luongcoban = luongcoban;
    }

    public String getMachucvu() {
        return machucvu;
    }

    public void setMachucvu(String machucvu) {
        this.machucvu = machucvu;
    }

    public String getPhucap() {
        return phucap;
    }

    public void setPhucap(String phucap) {
        this.phucap = phucap;
    }

    public String getBacluong() {
        return bacluong;
    }

    public void setBacluong(String bacluong) {
        this.bacluong = bacluong;
    }

    public String getTonggiolam() {
        return tonggiolam;
    }

    public void setTonggiolam(String tonggiolam) {
        this.tonggiolam = tonggiolam;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getTongluong() {
        return tongluong;
    }

    public void setTongluong(String tongluong) {
        this.tongluong = tongluong;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNgaysinh(String ngaysinh) throws ParseException {
           Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(ngaysinh);  
           this.ngaysinh = date1;
    }
    
}
