package com.miniproject.CovAIDApp.model;


	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity
	@Table(name = "user_register")
	public class User {
		
		@Id
		@Column
		private String name;
		@Column
		private String password;
		@Column
		private String roles;
	
		
		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}


		public String getRoles() {
			return roles;
		}


		public void setRoles(String roles) {
			this.roles = roles;
		}


		@Override
		public String toString() {
			return "User [name=" + name + ", password=" + password + ", roles=" + roles + "]";
		}
		
	}
