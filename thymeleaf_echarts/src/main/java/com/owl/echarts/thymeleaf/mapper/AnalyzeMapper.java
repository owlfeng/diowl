package com.owl.echarts.thymeleaf.mapper;

import com.owl.echarts.thymeleaf.pojo.Analyze;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AnalyzeMapper {
    List<Analyze> selectAll();
}