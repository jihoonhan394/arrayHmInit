package egovframework.example.array.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.array.service.ArrayService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class ArrayServiceImpl implements ArrayService {

	@Resource
	ArrayMapper arrayMapper;

	@Override
	public List<EgovMap> selectArrayServiceList() throws Exception {
		return arrayMapper.selectArrayServiceList();
	}
	

}
