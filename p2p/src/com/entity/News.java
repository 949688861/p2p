package com.entity;

import java.io.Serializable;
import java.util.Date;

public class News implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer newsId;
    private String newsTitle;
    private String content;
    private Date createAt;
    private String image;

    public News() {
		super();
	}
    
	public News(String newsTitle, String content) {
		this.newsTitle = newsTitle;
		this.content = content;
	}

	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }
}