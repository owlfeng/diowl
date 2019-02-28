package com.cmeu.service.impl;

import com.cmeu.mapper.AnlayVoMapper;
import com.cmeu.pojo.vo.AnalyVo;
import com.cmeu.service.AnalyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnalyServiceImpl implements AnalyService {

    @Autowired
    AnlayVoMapper anlayVoMapper;

   public List<AnalyVo> getAnlayVo(){
        return anlayVoMapper.getAnlayVo();
    }
}
