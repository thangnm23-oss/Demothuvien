package uef.edu.vn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import uef.edu.vn.service.BorrowService;

@Controller
public class BorrowController {
    private final BorrowService borrowService;

    public BorrowController(BorrowService borrowService) {
        this.borrowService = borrowService;
    }

    @GetMapping("/borrow/request")
    public String request(Model model) {
        model.addAttribute("pageTitle", "Yêu cầu mượn sách");
        model.addAttribute("requests", borrowService.findRequests());
        model.addAttribute("body", "borrow/request-borrow.jsp");
        return "layout/main";
    }

    @GetMapping("/borrow/list")
    public String list(Model model) {
        model.addAttribute("pageTitle", "Danh sách mượn trả");
        model.addAttribute("records", borrowService.findRecords());
        model.addAttribute("body", "borrow/borrow-list.jsp");
        return "layout/main";
    }

    @GetMapping("/borrow/return")
    public String returnBook(Model model) {
        model.addAttribute("pageTitle", "Trả sách");
        model.addAttribute("records", borrowService.findRecords());
        model.addAttribute("body", "borrow/return-book.jsp");
        return "layout/main";
    }

    @GetMapping("/borrow/receipt")
    public String receipt(Model model) {
        model.addAttribute("pageTitle", "Biên nhận mượn sách");
        model.addAttribute("records", borrowService.findRecords());
        model.addAttribute("body", "borrow/borrow-receipt.jsp");
        return "layout/main";
    }
}