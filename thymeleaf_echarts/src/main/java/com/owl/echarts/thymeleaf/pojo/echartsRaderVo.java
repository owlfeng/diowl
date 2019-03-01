package com.owl.echarts.thymeleaf.pojo;

import java.util.List;

public class echartsRaderVo {
    private String  name;
    private List<String> value;
    private String text;
    private String max;

    public echartsRaderVo(String name, List<String> value) {
        this.name = name;
        this.value = value;
    }

    public echartsRaderVo(String name, List<String> value, String text, String max) {
        this.name = name;
        this.value = value;
        this.text = text;
        this.max = max;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getMax() {
        return max;
    }

    public void setMax(String max) {
        this.max = max;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getValue() {
        return value;
    }

    public void setValue(List<String> value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "echartsRaderVo{" +
                "name='" + name + '\'' +
                ", value=" + value +
                '}';
    }
}
