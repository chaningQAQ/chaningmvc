package com.chaning.controller;

import com.chaning.pojo.Books;
import com.chaning.service.BookService;
import com.chaning.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

        @RequestMapping("/allBook")
        public String list(Model model) {
            List<Books> list = bookService.queryAllBook();
            model.addAttribute("list", list);
            return "allBook";
        }
        @RequestMapping("/toaddBook")
            public String toaddBook(){

            return "addBook";
        }
        @RequestMapping("/addBook")
            public String addBook(Books books){

            System.out.println(">>>"+books);
            bookService.addBook(books);

            return "redirect:/book/allBook";
        }
        @RequestMapping("/toupdate")
            public String toupdate(int id,Model model){
            Books books = bookService.queryBookById(id);
            model.addAttribute("QBook",books);
            return "update";
        }
        @RequestMapping("/update")
            public String update(Books books){

            bookService.updateBook(books);

            return "redirect:/book/allBook";
        }
        @RequestMapping("/delete")
        public String delete(int id){
            bookService.deleteBookById(id);
            return "redirect:/book/allBook";
        }
    }

