package hanjun.test;

public interface UserDao {
 boolean register(User user)throws Exception;
 User validateUser(Login login)throws Exception;
}
