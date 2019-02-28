package com.cmeu.pojo.vo;

public class AnalyVo {
    private Integer stageId;
    private String value;
    private Integer number;

    public void setStageId(Integer stageId) {
        this.stageId = stageId;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getStageId() {
        return stageId;
    }

    public String getValue() {
        return value;
    }

    public Integer getNumber() {
        return number;
    }

    @Override
    public String toString() {
        return "AnalyVo{" +
                "stageId=" + stageId +
                ", value='" + value + '\'' +
                ", number=" + number +
                '}';
    }
}
