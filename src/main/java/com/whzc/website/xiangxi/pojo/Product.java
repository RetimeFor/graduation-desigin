package com.whzc.website.xiangxi.pojo;

import java.util.Date;

public class Product {
    private String id;

    private String productName;

    private Integer productPrice;

    private Integer productNum;

    private String productImg;

    private String productBrief;

    private Date productTime;

    private String productTag;

    private Float productScore;

    private Integer productSellnumber;

    private Boolean productRecommend;

    private String productClassify;

    private String productIntro;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public Integer getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Integer productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getProductNum() {
        return productNum;
    }

    public void setProductNum(Integer productNum) {
        this.productNum = productNum;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg == null ? null : productImg.trim();
    }

    public String getProductBrief() {
        return productBrief;
    }

    public void setProductBrief(String productBrief) {
        this.productBrief = productBrief == null ? null : productBrief.trim();
    }

    public Date getProductTime() {
        return productTime;
    }

    public void setProductTime(Date productTime) {
        this.productTime = productTime;
    }

    public String getProductTag() {
        return productTag;
    }

    public void setProductTag(String productTag) {
        this.productTag = productTag == null ? null : productTag.trim();
    }

    public Float getProductScore() {
        return productScore;
    }

    public void setProductScore(Float productScore) {
        this.productScore = productScore;
    }

    public Integer getProductSellnumber() {
        return productSellnumber;
    }

    public void setProductSellnumber(Integer productSellnumber) {
        this.productSellnumber = productSellnumber;
    }

    public Boolean getProductRecommend() {
        return productRecommend;
    }

    public void setProductRecommend(Boolean productRecommend) {
        this.productRecommend = productRecommend;
    }

    public String getProductClassify() {
        return productClassify;
    }

    public void setProductClassify(String productClassify) {
        this.productClassify = productClassify == null ? null : productClassify.trim();
    }

    public String getProductIntro() {
        return productIntro;
    }

    public void setProductIntro(String productIntro) {
        this.productIntro = productIntro == null ? null : productIntro.trim();
    }
}