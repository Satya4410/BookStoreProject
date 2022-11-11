package com.onlinebookstore.OnlineBookStoreProject.controller;

import java.awt.List;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.onlinebookstore.OnlineBookStoreProject.entity.Staffmember;
import com.onlinebookstore.OnlineBookStoreProject.service.UserIface;

@Controller
public class StaffmemberController {
	@Autowired
	UserIface ui;
	//login staff
		@GetMapping("stafflogin")
		public String getlogin(Model m)
		{
			m.addAttribute("staff1", new Staffmember());
			return "loginstaff";
		}
		@PostMapping("staffloginProcess")
		public String adminInforma(@ModelAttribute("staff1") Staffmember staff1,HttpServletRequest request,Model m) throws IOException, SQLException
		{
		
		     Staffmember st = ui.checkstafflogin(staff1);
		     if(st != null)
	         {
		    	 System.out.println(st.getStaffId());
			     HttpSession session6=request.getSession();
			 	 session6.setAttribute("Sid",st.getStaffId());
				m.addAttribute("msg", "login Success!");
				return "Homestaff";
			}
			else
			{
				m.addAttribute("msg", "login Failed!");
	            m.addAttribute("staff1", new Staffmember());
			}
		    return "loginstaff";
			}
	@GetMapping("addstaff")
	public String getPage(Model m)
	{
		m.addAttribute("staff", new Staffmember());
		return "addstaffmember";
	}
	@PostMapping("staffProcess")
	public String UserInformation(@ModelAttribute Staffmember staff, Model m) throws IOException
	{
		
		String st = ui.AddStaff(staff);
		
		if(st.equals("Success"))
			
			m.addAttribute("msg", "Registered Successfully!");
		else
			m.addAttribute("msg", "Register Failed!");
            m.addAttribute("staff", new Staffmember());
		
		return "addstaffmember";
	}
	@GetMapping("staffinfodetails")
	public String viewallst(Model m)
	{
		java.util.List<Staffmember> staff = ui.viewallstaff();
		if(staff.isEmpty()) {
			m.addAttribute("msg","No records found");
		}else
		{
		m.addAttribute("staff",staff);
		}
		return "viewstaffpage";
	}
}
