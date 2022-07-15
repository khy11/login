package org.myapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.myapp.domain.Criteria;
import org.myapp.domain.PageDTO;
import org.myapp.domain.SupportVO;
import org.myapp.service.SupportService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/support/*")
@Log4j
@AllArgsConstructor
public class SupportController {
	private SupportService supportService;
	
	@GetMapping("/supportList")
	public void supportList(Model model, Criteria cri) {
		model.addAttribute("list", supportService.getSupport(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, supportService.count(cri)));
	}
	
	@GetMapping("/count")
	public void count(Criteria cri, Model model) {
		model.addAttribute("count", supportService.count(cri));
	}
	
	@PostMapping("/register")
	public String register(SupportVO vo, RedirectAttributes rttr) {
		supportService.register(vo);
		return "redirect:/support/supportList";
	}
	
	@PostMapping("/remove")
	public String remove(HttpServletRequest request, Criteria cri) {
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i = 0; i < size; i++) {
			supportService.remove(Long.parseLong(ajaxMsg[i]));
		}
		return "redirect:/support/supportList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&type="+cri.getType()+"&keyword="+cri.getKeyword();
	}
	
	@GetMapping("/getList")
	public void getList(Long supportNo, Criteria cri, Model model) {
		model.addAttribute("get", supportService.get(supportNo));
		model.addAttribute("list", supportService.getSupport(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, supportService.count(cri)));
	}
	
	@PostMapping("/modify")
	public String modify(SupportVO vo, Criteria cri, RedirectAttributes rttr) {
		if(supportService.modify(vo)) {
			rttr.addFlashAttribute("state", "modify");
		}
		return "redirect:/support/supportList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&type="+cri.getType()+"&keyword="+cri.getKeyword();
	}
}
