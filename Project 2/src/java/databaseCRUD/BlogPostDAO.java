/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseCRUD;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author lehon
 */
public class BlogPostDAO implements Serializable {

    public String CreateNewBlogPost(BlogPostDTO blog) {
        String result = "";
        try {
            String sql = "Insert into Post (Title, Detail, Author, Topic) values (?, ?, ?, ?)";
            try (Connection conn = DBUtils.makeConnection();
                    PreparedStatement pstm = conn.prepareStatement(sql);) {
                pstm.setString(1, blog.getTittle());
                pstm.setString(2, blog.getDetail());
                pstm.setString(3, blog.getAuthor());
                pstm.setString(4, blog.getTopic());
                result = pstm.executeUpdate() >= 1 ? "Add Successfully" : "Error ocur";
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public ArrayList<BlogPostDTO> LoadAllPost() {
        ArrayList<BlogPostDTO> result = new ArrayList<BlogPostDTO>();
        String sql = "SELECT ID, Title, Detail, Author, Topic, DateCreate, DateUpdate"
                + " FROM Post";

        try (Connection conn = DBUtils.makeConnection();
                PreparedStatement pstm = conn.prepareStatement(sql)) {
            try ( ResultSet rs = pstm.executeQuery();){
                System.out.println(rs.toString());
                while (rs.next()) {
                    int id = rs.getInt("ID");
                    String title = rs.getString("Title");
                    String detail = rs.getString("Detail");
                    String author = rs.getString("Author");
                    String topic = rs.getString("Topic");
                    String create = rs.getString("DateCreate");
                    String update = rs.getString("DateUpdate");
                    BlogPostDTO dto = new BlogPostDTO(id, title, detail, author, topic, create, update);
                    result.add(dto);
                     
                }
               
            } catch (Exception e) {
            }
            //  rs lay ve la 1 list nen can su dung while
            //  su dung if khi minh biet chac chan ket qua tra ve chi co 1 cai
            //   function phai viet hoa chu dau tien,parameter moi viet thuong => ViewMyBlog

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
