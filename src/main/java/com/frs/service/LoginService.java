package com.frs.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.frs.bean.CredentialsBean;
import com.frs.dao.CredentialsDao;

public class LoginService {
	@Autowired
	public CredentialsDao dao;

	public void setDao(CredentialsDao dao) {
		this.dao = dao;
	}

	public boolean vlog(CredentialsBean c) {
		try {
			CredentialsBean cb = dao.getOrderById(c.getuserID());
			if (cb.getPassword().equals(c.getPassword())) {
				if (cb.getuserType().equals("A")) {
					return true;
				}
			}

			return false;

		} catch (Exception e) {
			System.out.println(e);
			return false;

		}

	}

}
