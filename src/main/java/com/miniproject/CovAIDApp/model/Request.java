package com.miniproject.CovAIDApp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Table(name = "request_listItem")
public class Request {
		
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column
		private int reqid;
		@Column
		private String name;
		@Column
		private String location;
		@Column
		private int phone;
		@Column
		private String listOfItems;
		
		
		public int getReqid() {
			return reqid;
		}
		public void setReqid(int reqid) {
			this.reqid = reqid;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public int getPhone() {
			return phone;
		}
		public void setPhone(int phone) {
			this.phone = phone;
		}
		public String getListOfItems() {
			return listOfItems;
		}
		public void setListOfItems(String listOfItems) {
			this.listOfItems = listOfItems;
		}
		@Override
		public String toString() {
			return "Request [reqid=" + reqid + ", name=" + name + ", location=" + location + ", phone=" + phone
					+ ", listOfItems=" + listOfItems + "]";
		}
		
}

