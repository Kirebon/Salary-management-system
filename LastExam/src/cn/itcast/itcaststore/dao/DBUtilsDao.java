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
	//��ѯ���У�����List����
	public List findALL() throws SQLException{
		//����QureyRunner����
		QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
		//SQL���
		String sql = "select * from user";
		//���÷���
		List<User> list = (List) runner.query(sql, new BeanListHandler(User.class));
		return list;
	}
	
	//��ѯ����
	public User find(String name) throws SQLException{
		//����QureyRunner����
		QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
		//SQL���
		String sql = "select * from user where name=?";
		//���÷���
		User user = (User) runner.query(sql, new BeanHandler(User.class),new Object[] { name });
		return user;
	}
	
	//����û��Ĳ���
	public boolean insert(User user) throws SQLException{
		//����QureyRunner����
		QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
		//SQL���
		String sql = "insert into user (id,admin,name,password,gongzi) values (?,?,?,?,?)";
		//���÷���
		int num = runner.update(sql,new Object[] { user.getId(),user.getAdmin(),user.getName(),user.getPassword(),user.getGongzi() });
		if(num>0)
			return true;
		return false;
	}
	
	//�޸��û��Ĳ���
		public boolean update(User user) throws SQLException{
			//����QureyRunner����
			QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
			//SQL���
			String sql = "update user set name=?,admin=?,password=?,gongzi=? where id=?";
			//���÷���
			int num = runner.update(sql,new Object[] { user.getName(),user.getAdmin(),user.getPassword(),user.getGongzi(),user.getId() });
			if(num>0)
				return true;
			return false;
		}
	
		
		//ɾ���û��Ĳ���
		public boolean delete(int id) throws SQLException{
			//����QureyRunner����
			QueryRunner runner = new QueryRunner(C3p0Utils.getDataSource());
			//SQL���
			String sql = "delete from user where id=?";
			//���÷���
			int num = runner.update(sql, id);
			if(num>0)
				return true;
			return false;
		}
	
}
