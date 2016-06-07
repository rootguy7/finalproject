
package com.hb.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String immPay(@ModelAttribute("BuyVo")BuyVo bvo, HttpServletRequest req, Model model) { // 바로 결제 눌렀을때 호출

		//일단 기본적으로 @ModelAttribute를 사용해서 bvo를 자동 바인딩 시킴.
		//input 태그에 name을 BuyVo에 있는 필드명하고 똑같이 주고  @ModelAttribute 주면 알아서 바인딩 됨
		//부족한건 수동으로 바인딩 시킴
		
		// 세션에서 아이디 받아와야됨.
		// 아직 안되서 그냥 임의로 씀
		// State_num(배송상태), Pay_option은 일단 소스상에 정보를 넣어둠

		String id = "joohyung";
		int totalM=0;//구매비용. 포인트 적립때 쓸꺼
		int buynum=0;
		try {
			buynum = (buyDao.selMaxbuynum())+1;
		} catch(NullPointerException e){
			logger.debug("기존 운송번호 없음. 새로운 번호 부여");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if(buynum==0) buynum=10000;

		
		String[] cart_idx = req.getParameterValues("cart_idx");

		UserVo userOne = null;
		List<BuyEPVo> buyList = new ArrayList<BuyEPVo>(); 
		
		bvo.setId(id);
		// sn는 밑에서 정보 얻어와서 입력후 쿼리 날릴꺼
		// ea는 밑에서 정보 얻어와서 입력후 쿼리 날릴꺼
		bvo.setState_num(2);// 그냥 바로 입금완료
		// req_date는 널로 넘겨서 그냥 현재 시간 입금완료
		bvo.setPay_option("무통장");
		bvo.setBuynum(buynum);
		
		CartVo cvo = new CartVo();
		
		
		//기존 값에 몇개의 필드만 바꿔서 DB랑 BuyList에 저장 할꺼라서
		//bvo는 그대로 주고 pname(상품명), eaPrice(상품 개당 가격)만 추가해서 BuyEPVo 객체를 만듬
		for (String str : cart_idx) {
			try {
				cvo = buyDao.selectPcartOne(Integer.parseInt(str));
				bvo.setSerial_num(cvo.getSerial_num());
				bvo.setEa(cvo.getEa());
				buyList.add(new BuyEPVo(bvo, cvo.getP_name(), cvo.getEaPrice()));//리스트에 등록
				totalM+=cvo.getEa()*cvo.getEaPrice();
				buyDao.insertBuyOne(bvo);//DB TB_Buy에 등록
				logger.debug("bvo"+ bvo);
				buyDao.delCartOne(Integer.parseInt(str));//DB 장바구니에서 삭제. //아직 구현 안함
			}catch (Exception e) {e.printStackTrace();}
		}

		int point=0;
		try {
			userOne = buyDao.selOneUser(id);
			point = (int) (userOne.getPoint()+(totalM*0.01));//현재 포인트+구입 함으로써 들어오는 포인트
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("point", Integer.toString(point));
			buyDao.editPoint(map);
		} catch (Exception e) {e.printStackTrace();}
		
		
		model.addAttribute("userOne", userOne);
		model.addAttribute("buyList", buyList);
		
		return "order/complete";
	}

}
