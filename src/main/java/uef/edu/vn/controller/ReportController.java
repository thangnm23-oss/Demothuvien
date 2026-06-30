package uef.edu.vn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import uef.edu.vn.service.BookService;
import uef.edu.vn.service.BorrowService;
import uef.edu.vn.service.FineService;
import uef.edu.vn.service.ReportService;

@Controller
public class ReportController {
    private final ReportService reportService;
    private final BookService bookService;
    private final BorrowService borrowService;
    private final FineService fineService;

    public ReportController(ReportService reportService, BookService bookService, BorrowService borrowService, FineService fineService) {
        this.reportService = reportService;
        this.bookService = bookService;
        this.borrowService = borrowService;
        this.fineService = fineService;
    }

    @GetMapping({"/admin/reports/monthly", "/admin/reports/yearly", "/admin/reports/most-borrowed", "/admin/reports/overdue"})
    public String reports(Model model) {
        model.addAttribute("pageTitle", "Báo cáo thư viện");
        model.addAttribute("overview", reportService.overview());
        model.addAttribute("monthlyStats", reportService.monthlyBorrowStats());
        model.addAttribute("mostBorrowedBooks", reportService.mostBorrowedBooks(bookService));
        model.addAttribute("overdueRecords", reportService.overdueBooks(borrowService, fineService));
        model.addAttribute("body", "admin/reports/monthly-report.jsp");
        return "layout/main";
    }
}