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
    private String gioitinh;
    private Date ngaysinh;
    private String email;
    private String sdt;
    private String diachi;
    private float phucap;
    private float congtheongay;

    public Nhanvien() {
    }

    public Nhanvien(int manv, String hoten, String gioitinh, Date ngaysinh, String email, String sdt, String diachi, Float phucap, Float congtheongay) {
        this.manv = manv;
        this.hoten = hoten;
        this.gioitinh = gioitinh;
        this.ngaysinh = ngaysinh;
        this.email = email;
        this.sdt = sdt;
        this.diachi = diachi;
        this.phucap = phucap;
        this.congtheongay = congtheongay;
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

    public void setNgaysinh(String ngaysinh) throws ParseException {
        Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(ngaysinh);  
         this.ngaysinh = date1;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public float getPhucap() {
        return phucap;
    }
    

    public void setPhucap(float phucap) {
        this.phucap = phucap;
    }
    public void setPhucap(String phucap) {
        float phucap1 = Float.parseFloat(phucap);
        this.phucap = phucap1;
    }

    public float getCongtheongay() {
        return congtheongay;
    }

    public void setCongtheongay(float congtheongay) {
        this.congtheongay = congtheongay;
    }
    public void setCongtheongay(String congtheongay) {
        float fcong = Float.parseFloat(congtheongay);
        this.congtheongay = fcong;
    }

}
