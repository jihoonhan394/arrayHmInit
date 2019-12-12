package egovframework.example.array.web;

import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.array.service.ArrayService;

@Controller
public class ArrayController {

	@Resource
	ArrayService arrayService;
	
	@RequestMapping("/array.do")
	public String initArray(HttpServletRequest request, ModelMap model) throws Exception{
		model.addAttribute("seqNoList", arrayService.selectArrayServiceList());

		System.out.println(arrayService.selectArrayServiceList());
		
		return "array/array.tiles";
	}
	
}
