package egovframework.example.welcomeWeb.web;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class WelcomeWebController {
	
	@Resource
	private WelcomeWebService welcomeWebService;
	
	@RequestMapping("/welcomeWeb.do")
	public String welcomeWebInit(HttpServletRequest request,
			@RequestParam(required=false) String selectSeqNo,
			@RequestParam(required=false) String selectColumn,
			ModelMap model
	) throws Exception {
		
		List<EgovMap> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList();
		
		Enumeration<String> names = request.getParameterNames();
		
		List<String> selectCountList = new ArrayList<String>();
		
		while (names.hasMoreElements()) {
			
			String name = names.nextElement();
			
			if (name.contains("selectCount")) {
				
				selectCountList.add(request.getParameter(name));
			} 
		}
		
		/* 이 방식으로는 selectCount name의 마지막 번호를 알 수 없다.
		if (selectColumn != null) {
			String[] selectColumnCount = selectColumn.split(",");
			
			String selectCount = "";
			
			int i = 0,
				j = 0;
			
			for (; i < selectColumnCount.length; i++) {
				if (request.getParameter("selectCount" + j) != null) {
					selectCount += request.getParameter("selectCount" + i);
				}
				
				if (i + 1 != selectColumnCount.length) {
					selectCount += ",";
				} 
			}
		}*/
		
		System.out.println(selectCountList);
		model.addAttribute("selectSeqNo", selectSeqNo);
		model.addAttribute("selectColumn", selectColumn);
		model.addAttribute("welcomeWebList", welcomeWebList);
		model.addAttribute("selectCountList", selectCountList);
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
}
