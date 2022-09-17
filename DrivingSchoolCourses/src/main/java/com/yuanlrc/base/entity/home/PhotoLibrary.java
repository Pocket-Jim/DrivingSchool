package com.yuanlrc.base.entity.home;


import com.yuanlrc.base.entity.admin.BaseEntity;
import com.yuanlrc.base.entity.admin.Label;
import com.yuanlrc.base.entity.admin.News;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

/**
 * @author wangzihan
 * @date : 2020/11/10 15:54
 * 照片库
 */

@Entity
@Table(name="ylrc_photo_library")
@EntityListeners(AuditingEntityListener.class)
public class PhotoLibrary extends BaseEntity {

    @Column(name = "laber_id")
    private Label label;  //照片库分类

    @Column(name = "news_id")
    private News news;   //新闻封面

    public Label getLabel() {
        return label;
    }

    public void setLabel(Label label) {
        this.label = label;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    @Override
    public String toString() {
        return "PhotoLibrary{" +
                "label=" + label +
                ", news=" + news +
                '}';
    }

}
