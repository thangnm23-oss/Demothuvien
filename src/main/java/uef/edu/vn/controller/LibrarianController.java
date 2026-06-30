package uef.edu.vn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import uef.edu.vn.service.BookService;

@Controller
@RequestMapping("/librarian")
public class LibrarianController {

    @Autowired
    private BookService bookService;

    @GetMapping("/dashboard")
    public String dashboard(Model model) {

        model.addAttribute("pageTitle",
                "Bảng điều khiển thủ thư");

        model.addAttribute("body",
                "librarian/dashboard.jsp");

        return "layout/main";
    }

    @GetMapping("/books")
    public String books(Model model) {

        model.addAttribute("pageTitle",
                "Quản lý sách");

        model.addAttribute("books",
                bookService.findAll());

        model.addAttribute("body",
                "librarian/books.jsp");

        return "layout/main";
    }

    @GetMapping("/borrowings")
    public String borrowings(Model model) {

        model.addAttribute("pageTitle",
                "Quản lý mượn trả");

        model.addAttribute("body",
                "librarian/borrowings.jsp");

        return "layout/main";
    }

    @GetMapping("/fines")
    public String fines(Model model) {

        model.addAttribute("pageTitle",
                "Quản lý tiền phạt");

        model.addAttribute("body",
                "librarian/fines.jsp");

        return "layout/main";
    }

}
