package com.recreation.playground.web;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.common.AjaxResponse;
import com.recreation.playground.common.AjaxResponseType;
import com.recreation.playground.common.GridResponse;
import com.recreation.playground.entity.Chip;
import com.recreation.playground.service.ChipService;

@Controller
@RequestMapping("/admin/chip")
public class ChipController {
	
	@Autowired
	ChipService service;
	
	
	@RequestMapping("/list")
	public String openquery1(Model model) {
		return "/Chip/member-list";
	}
	
	@RequestMapping("/index")
	public String openindex(Model model,Chip chip) {
		if(chip.getChipNum()==null) {
			return "/Chip/index-member";
		}else {
			chip=service.findByChipNum(chip.getChipNum());
			model.addAttribute("memberP",chip);
			return "/Chip/index-member";
		}
	}
	
	
	@RequestMapping("/query")
	@ResponseBody//轉JSON
	public GridResponse<Chip> query(String chipMemberid, @RequestParam(name="page", defaultValue="1") Integer page, @RequestParam(name="rows", defaultValue="10") Integer size){
		System.out.println(chipMemberid);
		 GridResponse<Chip> gridReponse = new GridResponse<Chip>();
		Pageable pageable = PageRequest.of(page - 1, size);
		Specification<Chip> specification= new Specification<Chip>() {

			@Override
			public Predicate toPredicate(Root<Chip> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
//				Predicate where = cb.conjunction();
//				if(!StringUtils.isEmpty(str))
				return null;
			}
			
		};
		Page<Chip> result = service.getAll(specification,pageable);
		gridReponse.setPage(page);
		gridReponse.setTotal(result.getTotalPages());
		gridReponse.setRows(result.getContent());
		return gridReponse;
	}
	
	@DeleteMapping("/delete")
	public String delete(@ModelAttribute("form1") Chip chip, Model model){
		System.out.println(service.getByChipMemberNum(chip.getChipMemberNum()));
		service.delete(chip);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/Chip/member-list";
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public AjaxResponse<Chip> insert(@Valid @RequestBody Chip chip, BindingResult result, Model model) {

//		member.setId(member.getId());
//		member.setPassword(member.getPassword());
//		member.setEmail(member.getEmail());
//		member.setPhone(member.getPhone());
		AjaxResponse<Chip> res = new AjaxResponse<>();
		if (result.hasErrors()){
			res.setType(AjaxResponseType.ERROR);
			System.out.println(result.getAllErrors());
			return res;
		}
		System.out.println(chip);
		res.setType(AjaxResponseType.SUCCESS);
//		memberservice.save(member);
//		model.addAttribute("insert", member);
		res.setData(service.save(chip));
		return res;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public AjaxResponse<Chip> update(@Valid @RequestBody Chip chip, BindingResult result, Model model) {
//		Member member1 = memberservice.findById(member.getId());
//		member1.setEmail(member.getEmail());
//		member1.setPassword(member.getPassword());
//		member1.setPhone(member.getPhone());
//		System.out.println(member);
		AjaxResponse<Chip> ajax1=new AjaxResponse<>();
		if(result.hasErrors()){
			ajax1.setType(AjaxResponseType.ERROR);
			return ajax1;
		}
//		Member update = memberservice.save(member);
//		// System.out.println(update);
//		model.addAttribute("update", update);
//		return "/admin/member-list";
		System.out.println(chip);
		ajax1.setType(AjaxResponseType.SUCCESS);
		ajax1.setData(service.save(chip));
		return ajax1;
	}

}
