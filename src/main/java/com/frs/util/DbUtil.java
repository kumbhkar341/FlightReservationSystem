package com.frs.util;

import org.springframework.jdbc.core.JdbcTemplate;

public class DbUtil {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

}
