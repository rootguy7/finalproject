package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin/") //������ ����
	public String index(){
		return "adm_index";
	}
	@RequestMapping("/info/") //������
	public String info(){
		return "admin/info";
	}
	@RequestMapping("/input/") //��ǰ�԰�
	public String input(){
		return "admin/input";
	}
	@RequestMapping("/edit/") //��ǰ����
	public String edit(){
		return "admin/edit";
	}
	@RequestMapping("/del/") //��ǰ����
	public String del(){
		return "admin/del";
	}
	@RequestMapping("/list/") //��ǰ����Ʈ
	public String list(){
		return "admin/list";
	}
	@RequestMapping("/order/") //�ֹ�Ȯ��
	public String order(){
		return "admin/order";
	}	
	@RequestMapping("/deposit/") //�Ա�Ȯ��
	public String deposit(){
		return "admin/deposit";
	}
	@RequestMapping("/notice/") //��������
	public String notice(){
		return "admin/notice";	
	}
	@RequestMapping("/qna/") //��������
	public String qna(){
		return "admin/qna";
	}	
}
