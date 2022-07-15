package org.myapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.myapp.domain.ContractVO;
import org.myapp.domain.Criteria;
import org.myapp.domain.PageDTO;
import org.myapp.service.CompanyService;
import org.myapp.service.ContractService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/contract/*")
@Log4j
@AllArgsConstructor
public class ContractController {
	private ContractService contractService;
	private CompanyService companyService;
	
	@GetMapping("/contractList")
	public void contractList(Long code, Model model, Criteria cri) {
		model.addAttribute("list", contractService.getContract(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, contractService.count(cri)));
	}
	
	@GetMapping("/count")
	public void count(Criteria cri, Model model) {
		model.addAttribute("count", contractService.count(cri));
	}
	
	@PostMapping("/register")
	public String register(ContractVO vo, RedirectAttributes rttr) {
		contractService.register(vo);
		return "redirect:/contract/contractList";
	}
	
	@PostMapping("/remove")
	public String remove(HttpServletRequest request, Criteria cri) {
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i = 0; i < size; i++) {
			contractService.remove(Long.parseLong(ajaxMsg[i]));
		}
		return "redirect:/contract/contractList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&type="+cri.getType()+"&keyword="+cri.getKeyword();
	}
	
	
	 @GetMapping("/getList")
	 public void getList(Long contractNo, Long code, Criteria cri, Model model) {
		 model.addAttribute("getReg", companyService.get(1L));
		 model.addAttribute("get", contractService.get(contractNo));
		 model.addAttribute("getCom", companyService.get(code));
		 model.addAttribute("pageMaker", new PageDTO(cri, contractService.count(cri)));
	 }
	 
	
	@PostMapping("/modify")
	public String modify(ContractVO vo, Criteria cri, RedirectAttributes rttr) {
		if(contractService.modify(vo)) {
			rttr.addFlashAttribute("state", "modify");
		}
		return "redirect:/contract/contractList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&type="+cri.getType()+"&keyword="+cri.getKeyword();
	}
	
	
	@GetMapping("/getRegister")
	public void getRegister(Long ckeyword, Model model, Criteria cri) {
		model.addAttribute("getReg", companyService.get(1L));
		model.addAttribute("getCom", companyService.get(ckeyword));
		model.addAttribute("pageMaker", new PageDTO(cri, companyService.count(cri)));
	}

}
