package org.nhnnext.web;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Comment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(length=100, nullable=false)
	private String contents;
	
	@ManyToOne
	private Board board;
	

	public Comment() { // 반드시 빈 생성자를 생성해야 한다. 
		
	}
	
	public Comment(Board board, String contents) {
		this.board = board;
		this.contents = contents;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
}
