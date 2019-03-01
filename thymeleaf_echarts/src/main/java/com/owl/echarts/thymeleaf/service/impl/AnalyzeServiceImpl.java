package com.owl.echarts.thymeleaf.service.impl;

import com.owl.echarts.thymeleaf.mapper.AnalyzeMapper;
import com.owl.echarts.thymeleaf.pojo.Analyze;
import com.owl.echarts.thymeleaf.service.AnalyzeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class  AnalyzeServiceImpl  implements AnalyzeService{
    @Resource
    AnalyzeMapper analyzeMapper;
    @Override
    public List<Analyze> selectAll() {
        return analyzeMapper.selectAll();
    }
}
