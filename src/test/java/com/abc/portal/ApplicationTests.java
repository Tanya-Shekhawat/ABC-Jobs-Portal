package com.abc.portal;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.abc.portal.dao.UserRepository;
import com.abc.portal.dto.User;
import com.abc.portal.service.MyUserService;

@SpringBootTest
class ApplicationTests {

	@Autowired
	MyUserService userservice;
	
	@Autowired
	UserRepository userre;
	
	@Test
	void contextLoads() {
	}
	//**---SAVING---**
	@Test
	void register(){
	User z = new User();
	z.setFirstName("Haseul");
	z.setLastName("Hyunjin");
	z.setMailid("haseul@gmail.com");
	z.setPassword("haseul$@12");
	z.setUserAddress("JK,India");
	z.setUserContact("97867564786");
	z.setUserName("Haneul");
	userservice.addUser(z);
	System.out.println("Data Is saved successfully");
	System.out.println(z);
	User actualResult = userre.findByUserName("Haneul");
	assertThat(actualResult).isNotNull();
}

    @Test
    void SearchUser() {
	User actualResult = userre.findByUserName("El");
	assertThat(actualResult).isNotNull();
	System.out.println("Data retreived successfully");
}
    

   @Test
    void deleteData() {
	int result = userservice.delete(24L);
	Assert.assertEquals(1, result);
	System.out.println("Data is deleted successfully"); 

}
}





//@Test
//void deleteData() {
//	userservice.delete(24);
//	System.out.println("Data is deleted successfully");
//}

