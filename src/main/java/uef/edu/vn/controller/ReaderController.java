package uef.edu.vn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import uef.edu.vn.service.BorrowService;
import uef.edu.vn.service.FineService;

@Controller
@RequestMapping("/reader")
public class ReaderController {

    private final BorrowService borrowService;
    private final FineService fineService;

    public ReaderController(BorrowService borrowService,
            FineService fineService) {
        this.borrowService = borrowService;
        this.fineService = fineService;
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {

        model.addAttribute(
                "pageTitle",
                "Dashboard độc giả"
        );

        model.addAttribute(
                "records",
                borrowService.findRecords()
        );

        model.addAttribute(
                "body",
                "reader/dashboard.jsp"
        );

        return "layout/main";
    }

    @GetMapping("/borrowed-books")
    public String borrowedBooks(Model model) {

        model.addAttribute(
                "pageTitle",
                "Sách đang mượn"
        );

        model.addAttribute(
                "records",
                borrowService.findRecords()
        );

        model.addAttribute(
                "body",
                "reader/borrowed-books.jsp"
        );

        return "layout/main";
    }

    @GetMapping("/borrowing-history")
    public String borrowingHistory(Model model) {

        model.addAttribute(
                "pageTitle",
                "Lịch sử mượn sách"
        );

        model.addAttribute(
                "records",
                borrowService.findRecords()
        );

        model.addAttribute(
                "body",
                "reader/borrowing-history.jsp"
        );

        return "layout/main";
    }

    @GetMapping("/notifications")
    public String notifications(Model model) {

        model.addAttribute(
                "pageTitle",
                "Thông báo"
        );

        model.addAttribute(
                "body",
                "reader/notifications.jsp"
        );

        return "layout/main";
    }

    @GetMapping("/fine-details")
    public String fineDetails(Model model) {

        model.addAttribute(
                "pageTitle",
                "Chi tiết phí phạt"
        );

        model.addAttribute(
                "fines",
                fineService.findAll()
        );

        model.addAttribute(
                "body",
                "reader/fine-details.jsp"
        );

        return "layout/main";
    }

}
