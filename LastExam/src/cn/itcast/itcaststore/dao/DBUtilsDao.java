package cn.itcast.itcaststore.dao;

import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.utils.C3p0Utils;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

@SuppressWarnings({ "unchecked", "rawtypes" })

public class DBUtilsDao {
	//查询所有，返回List集合
	public List findALL() throws SQLException{
		//创建QureyRunner对象
		QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
		//SQL语句
		String sql = "select * from user";
		//调用方法
		List<User> list = (List) runner.query(sql, new BeanListHandler(User.class));
		return list;
	}
	
	//查询单个
	public User find(String name) throws SQLException{
		//创建QureyRunner对象
		QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
		//SQL语句
		String sql = "select * from user where name=?";
		//调用方法
		User user = (User) runner.query(sql, new BeanHandler(User.class),new Object[] { name });
		return user;
	}
	
	//添加用户的操作
	public boolean insert(User user) throws SQLException{
		//创建QureyRunner对象
		QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
		//SQL语句
		String sql = "insert into user (id,admin,name,password,gongzi) values (?,?,?,?,?)";
		//调用方法
		int num = runner.update(sql,new Object[] { user.getId(),user.getAdmin(),user.getName(),user.getPassword(),user.getGongzi() });
		if(num>0)
			return true;
		return false;
	}
	
	//修改用户的操作
		public boolean update(User user) throws SQLException{
			//创建QureyRunner对象
			QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
			//SQL语句
			String sql = "update user set name=?,admin=?,password=?,gongzi=? where id=?";
			//调用方法
			int num = runner.update(sql,new Object[] { user.getName(),user.getAdmin(),user.getPassword(),user.getGongzi(),user.getId() });
			if(num>0)
				return true;
			return false;
		}
	
		
		//删除用户的操作
		public boolean delete(int id) throws SQLException{
			//创建QureyRunner对象
			QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
			//SQL语句
			String sql = "delete from user where id=?";
			//调用方法
			int num = runner.update(sql, id);
			if(num>0)
				return true;
			return false;
		}
	
}
