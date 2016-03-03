package com.pzy.controller;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pzy.entity.User;
import com.pzy.service.UserService;
/***
 * @author panchaoyang
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("create")
	public String create() {
		return "admin/user/create";
	}
	@RequestMapping("show")
	public String show(HttpSession httpSession,Model model) {
		model.addAttribute("user",httpSession.getAttribute("adminuser"));
		return "admin/user/show";
	}
	@RequestMapping(value = "/doupdate")
	public String doupdate(User user,Model model) {
		user.setPassword("123456");
		user.setCreateDate(new Date());
		userService.save(user);
		model.addAttribute("tip", "修改成功");
		return "admin/user/update";
	}
	@RequestMapping("update/{id}")
	public String update(@PathVariable Long id,Model model) {
		model.addAttribute("user",userService.find(id));
		return "admin/user/update";
	}
	
	
	@RequestMapping("index")
	public String index(Model model) {
		return "admin/user/index";
	}
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(value = "sEcho", defaultValue = "1") int sEcho,
			@RequestParam(value = "iDisplayStart", defaultValue = "0") int iDisplayStart,
			@RequestParam(value = "iDisplayLength", defaultValue = "10") int iDisplayLength, String username
			) throws ParseException {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<User> users = userService.findAll(pageNumber, pageSize, username);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aaData", users.getContent());
		map.put("iTotalRecords", users.getTotalElements());
		map.put("iTotalDisplayRecords", users.getTotalElements());
		map.put("sEcho", sEcho);
		return map;
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(User user,Model model) {
		user.setCreateDate(new Date());
		user.setPassword("123456");
		userService.save(user);
		model.addAttribute("tip","学籍建立成功");
		//model.addAttribute("user", userService.find(user.getId()));
		return "admin/user/create";
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public Map<String, Object> update(User user) {
		userService.save(user);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("state", "success");
		map.put("msg", "修改成功");
		return map;
	}
	@RequestMapping(value = "/delete/{id}")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable Long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			userService.delete(id);
			map.put("state", "success");
			map.put("msg", "删除成功");
		} catch (Exception e) {
			map.put("state", "error");
			map.put("msg", "鍒犻櫎澶辫触锛屽閿害鏉�");
		}
        return map;
	}

	@RequestMapping(value = "/get/{id}")
	@ResponseBody
	public Map<String, Object> get(@PathVariable Long id ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("object", userService.find(id));
		map.put("state", "success");
		map.put("msg", "鎴愬姛");
		return map;
	}
}
