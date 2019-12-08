package egovframework.example.array.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ArrayService {

	List<EgovMap> selectArrayServiceList() throws Exception;
}
