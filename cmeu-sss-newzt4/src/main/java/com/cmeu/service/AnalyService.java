package com.cmeu.service;

import com.cmeu.pojo.vo.AnalyVo;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface AnalyService {
    List<AnalyVo> getAnlayVo();
}
