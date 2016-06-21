package com.yansm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.yansm.domain.User;

@Repository
public class UserDao {
	private static Logger logger = Logger.getLogger(UserDao.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public int getMatchCount(String userName,String password){
		String sqlStr = "select count(*) from t_user"
				+" where user_name=? and password=?";

		return jdbcTemplate.queryForInt(sqlStr, new Object[]{userName,password});
	}
	
	public User findUserByUserName(final String userName){
		String sqlStr = "select user_id,user_name,credits"
				+" from t_user where user_name=?";
		final User user = new User();
		jdbcTemplate.query(sqlStr, new Object[]{userName},
				new RowCallbackHandler() {

					public void processRow(ResultSet rs) throws SQLException {
						user.setUserId(rs.getInt("user_id"));
						user.setUserName(userName);
						user.setCredits(rs.getInt("credits"));
					}
				});
		return user;
	}
	
	
	
	public void updateLoginInfo(User user){
		String sqlStr = "update t_user set last_visit=?,last_ip=?,credits=?"
				+" where user_id=?";
		jdbcTemplate.update(sqlStr,new Object[]{user.getLastVisit(),user.getLastIp(),user.getCredits(),user.getUserId()});
	}
	
	
	public void  insertUser(User user){
		String  sqlStr = "insert into t_user (user_id,user_name,password,credits,last_visit,last_ip)"
				+" values(?,?,?,?,?,?)";		
		Object[] args = {user.getUserId(),user.getUserName(),user.getPassword(),user.getCredits(),user.getLastVisit(),user.getLastIp()};		
		jdbcTemplate.update(sqlStr, args);
	}
	
	
	public void deleteUser(String userId){
		
		String sqlStr = "delete from t_user  "
				+" where user_id=?";
		jdbcTemplate.update(sqlStr,userId);
		
	}
	
	public List<User> getAllUser(){
		String sqlStr = "select * from t_user";
		List users =jdbcTemplate.queryForList(sqlStr);
		
		logger.info("所有的用户是："+users);
		
		return users;
		
	}
	
	
	public void updateUser(User user){
		String sqlStr = "update t_user set user_name=?,password=?"
				+" where user_id=?";
		jdbcTemplate.update(sqlStr,user.getUserName(),user.getPassword(),user.getUserId());
	}
	
	
	public User findUserByUserId(final String userId){
		String sqlStr = "select user_id,user_name,credits"
				+" from t_user where user_id=?";
		final User user = new User();
		jdbcTemplate.query(sqlStr, new Object[]{userId},
				new RowCallbackHandler() {

					public void processRow(ResultSet rs) throws SQLException {
						user.setUserId(Integer.valueOf(userId));
						user.setUserName(rs.getString("user_name"));
						user.setCredits(rs.getInt("credits"));
					}
				});
		return user;
	}
	
	
	public List<User> findUserList(final String userName){
		String sqlStr = "select user_id,user_name,credits"
				+" from t_user where user_name=?";
		
		Object[] args = new Object[]{userName};
		
		List users =	jdbcTemplate.queryForList(sqlStr, args);
		
		return users;
	}
	

}
