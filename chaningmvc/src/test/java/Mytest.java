import com.chaning.pojo.Books;
import com.chaning.service.BookService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Mytest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService book = (BookService) context.getBean("BookServiceImpl");
        for (Books book1 : book.queryAllBook()) {
            System.out.println(book1);
        }
    }
}
