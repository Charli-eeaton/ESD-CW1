/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author ben
 */
public class UserInput {
    private int id,turnover;
    private String name,username,password,role,address,type,option,date,time,amount,medi,dose,reason,dob,permUsername,transferID,ReQ,Place,CName,startDate,endDate,price;
    



    public int getID(){
        return id;
    }
    public void setID(int id){
        this.id = id;
    }
    //name
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    //Username
    public String getUsername() {
	return username;
    }
    public void setUsername(String username) {
            this.username = username;
    }
    //Password
    public String getPassword() {
            return password;
    }
    public void setPassword(String password) {
            this.password = password;
    }
    //dob
    public String getDob(){
            return dob;
    }
    public void setDob(String dob){
        this.dob = dob;
    }
    //Role
    public String getRole() {
            return role;
    }
    public void setRole(String role) {
            this.role = role;
    }   
    //address
    public String getAddress() {
            return address;
    }
    public void setAddress(String address) {
            this.address = address;
    }
    //type
    public String getType(){
        return type;
    }
    public void setType(String type){
        this.type = type;
    }
    //option
    public String getOption(){
        return option;
    }
    public void setOption(String option){
        this.option = option;
    }
    
    
    
    
    //LOGGED IN USERNAME
    
    public String getPermUsername(){
        return permUsername;
    }
    public void setPermUsername(String permUsername){
        this.permUsername = permUsername;
    }
    
    
    //BOOKINGS
    //Dates
    public String getReason() {
	return reason;
    }
    public void setReason(String reason) {
        this.reason = reason;
    }
    
    public String getDate() {
	return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    
    public String getTime() {
	return time;
    }
    public void setTime(String time) {
        this.time = time;
    }



//invoice
    //payments
    public String getCName(){
        return CName;
    }
    public void setCName(String CName){
        this.CName = CName;
    }
     public String getAmountDue(){
       return amount;
    }
    public void setAmountDue(String name){
       this.amount = name;
    }
    public String getCost(){
        return amount;
    }
    public void setCost(String name){
        this.amount = name;
    }
    public String getDose(){
        return dose;
    }
    public void setDose(String dose){
        this.dose = dose;
    }
    public String getMedication(){
        return medi;
    }
    public void setMedication(String medi){
        this.medi = medi;
    }
    public String getMedi(){
        return medi;
    }
    public void setMedi(String medi){
        this.medi = medi;
    }
    
    public String gettransferID(){
        return transferID;
    }
    
    public void settransferID(String transferID){
        this.transferID = transferID;
    }

    public String getReQ(){
        return ReQ;
    }
    public void setReQ(String medi){
        this.medi = ReQ;
    }
    
    public String getPlace(){
        return Place;
    }
    public void setPlace(String Place){
        this.Place = Place;
    }
    //Calculate Turnover
    public String getStartDate(){
        return startDate;
    }
    public void setstartDate(String startDate){
        this.startDate = startDate;
    }
    
    public String getendDate(){
        return endDate;
    }
    public void setendDate(String endDate){
        this.endDate = endDate;
    }
    public int getTurnover(){
        return turnover;
    }
    public void setTurnover(int turnover){
        this.turnover = turnover;
    }
    public String getprice(){
        return price;
    }
    public void setprice(String price){
        this.price = price;
    }


}
