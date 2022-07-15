package org.myapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.myapp.domain.CompanyVO;
import org.myapp.domain.Criteria;
import org.myapp.domain.PageDTO;
import org.myapp.service.CompanyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/company/*")
@Log4j
@AllArgsConstructor
public class CompanyController {
	private CompanyService companyService;
	
	@GetMapping("/companyList")
	public void companyList(Model model, Criteria cri) {
		model.addAttribute("list", companyService.getCompany(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, companyService.count(cri)));
	}
	 
	@GetMapping("/count")
	public void count(Criteria cri, Model model) {
		model.addAttribute("count", companyService.count(cri));
	}
	
	@PostMapping("/register")
	public String register(CompanyVO vo, RedirectAttributes rttr) {
		companyService.register(vo);
		return "redirect:/company/companyList";
	}
	
	@PostMapping("/remove")
	public String remove(HttpServletRequest request, Criteria cri) {
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i = 0; i < size; i++) {
			companyService.remove(Long.parseLong(ajaxMsg[i]));
		}
		return "redirect:/company/companyList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&type="+cri.getType()+"&keyword="+cri.getKeyword();
	}
	
	@GetMapping("/getList")
	public void getList(Long code, Criteria cri, Model model) {
		model.addAttribute("get", companyService.get(code));
		model.addAttribute("list", companyService.getCompany(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, companyService.count(cri)));
	}
	
	@PostMapping("/modify")
	public String modify(CompanyVO vo, Criteria cri, RedirectAttributes rttr) {
		if(companyService.modify(vo)) {
			rttr.addFlashAttribute("state", "modify");
		}
		return "redirect:/company/companyList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&type="+cri.getType()+"&keyword="+cri.getKeyword();
	}
}
