package egovframework.example.array.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface ArrayMapper {

	List<EgovMap> selectArrayServiceList() throws Exception;

}
