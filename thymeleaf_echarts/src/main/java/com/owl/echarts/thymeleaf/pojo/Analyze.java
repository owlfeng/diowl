package com.owl.echarts.thymeleaf.pojo;

public class Analyze {
    private Integer id;

    private String purchase;

    private String buyinterval;

    private String total;

    private Integer uid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPurchase() {
        return purchase;
    }

    public void setPurchase(String purchase) {
        this.purchase = purchase == null ? null : purchase.trim();
    }

    public String getBuyinterval() {
        return buyinterval;
    }

    public void setBuyinterval(String buyinterval) {
        this.buyinterval = buyinterval == null ? null : buyinterval.trim();
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}