package com.owl.echarts.thymeleaf.pojo;

public class echartsRaderVo {
    private String  name;
    private String value;
    private String data;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "echartsRaderVo{" +
                "name='" + name + '\'' +
                ", value='" + value + '\'' +
                ", data='" + data + '\'' +
                '}';
    }
}
