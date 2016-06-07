
package com.hb.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hb.model.BuyDao;
import com.hb.model.BuyEPVo;
import com.hb.model.BuyVo;
import com.hb.model.CartVo;
import com.hb.model.UserVo;

@Controller
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Autowired
	BuyDao buyDao;

	@RequestMapping("/complete")
	public String complete() {
		return "order/complete";
	}

	@RequestMapping("/ordersheet")
	public String ordersheet() {
		return "order/ordersheet";
	}

	@RequestMapping(value = "/immpay", method = RequestMethod.POST)
	public String immPay(HttpServletRequest req, Model model) { // 바로 결제 눌렀을때 호출

		// 세션에서 아이디 받아와야됨.
		// 아직 안되서 그냥 임의로 씀
		// State_num(배송상태), Pay_option은 일단 소스상에 정보를 넣어둠

		String id = "joohyung";
		int buynum=0;
		try {
			buynum = (buyDao.selMaxbuynum())+1;
		} catch(NullPointerException e){
			logger.debug("기존 운송번호 없음. 새로운 번호 부여");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if(buynum==0) buynum=10000;
		
		
		String buymobile = req.getParameter("buymobile"); // 구매자 폰번호

		String recname = req.getParameter("recname"); // 받는이 이름
		String recmobile = req.getParameter("recmobile"); // 받는이 폰번호
		String recpost = req.getParameter("recpost"); // 받는이 우편번호
		String recmainaddr = req.getParameter("recmainaddr"); // 받는이 메인 주소
		String recsubaddr = req.getParameter("recsubaddr"); // 받는이 서브 주소
		String recspphone = req.getParameter("recspphone"); // 받는이 추가 연락처. 널값 허용
		String reqcomm = req.getParameter("reqcomm"); // 받는이 요청사항
		String reqspcomm = req.getParameter("reqspcomm"); // 받는이 추가요청사항. 널값 허용
		String[] cart_idx = req.getParameterValues("cart_idx");

		BuyVo bvo = new BuyVo();
		UserVo userOne = null;
		List<BuyEPVo> buyList = new ArrayList<BuyEPVo>(); 
		
		bvo.setId(id);
		// sn pass. 밑에서 정보 얻어와서 입력후 쿼리 날릴꺼
		// ea pass. 밑에서 정보 얻어와서 입력후 쿼리 날릴꺼
		bvo.setState_num(2);// 그냥 바로 입금완료
		// req_date는 널로 넘겨서 그냥 현재 시간 입금완료
		bvo.setRec_name(recname);
		bvo.setPhone(Integer.parseInt(recmobile));
		bvo.setPost(Integer.parseInt(recpost));
		bvo.setMain_addr(recmainaddr);
		bvo.setSub_addr(recsubaddr);
		bvo.setSe_phone(Integer.parseInt(recspphone));
		bvo.setComment(reqcomm);
		bvo.setAdd_comment(reqspcomm);
		bvo.setPay_option("무통장");
		bvo.setBuynum(buynum);
		
		CartVo cvo = new CartVo();
		for (String str : cart_idx) {
			try {
				logger.debug("bvo" + bvo);
				cvo = buyDao.selectPcartOne(Integer.parseInt(str));
				bvo.setSerial_num(cvo.getSerial_num());
				bvo.setEa(cvo.getEa());
				buyList.add(new BuyEPVo(bvo, cvo.getP_name(), cvo.getEaPrice()));//리스트에 등록
				buyDao.insertBuyOne(bvo);//DB TB_Buy에 등록
				buyDao.delCartOne(Integer.parseInt(str));//DB 장바구니에서 삭제. //아직 구현 안함
			}catch (Exception e) {e.printStackTrace();}
		}

		
		try {
			userOne = buyDao.selOneUser(id);
		} catch (Exception e) {e.printStackTrace();}
		
		
		model.addAttribute("userOne", userOne);
		model.addAttribute("buyList", buyList);
		return "order/complete";
	}

}
