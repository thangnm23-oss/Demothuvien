package uef.edu.vn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import uef.edu.vn.service.BorrowService;
import uef.edu.vn.service.FineService;

@Controller
public class FineController {
    private final FineService fineService;
    private final BorrowService borrowService;

    public FineController(FineService fineService, BorrowService borrowService) {
        this.fineService = fineService;
        this.borrowService = borrowService;
    }

    @GetMapping({"/admin/fines", "/admin/fines/payment"})
    public String fines(Model model) {
        model.addAttribute("pageTitle", "Quản lý phí phạt");
        model.addAttribute("fines", fineService.findAll());
        model.addAttribute("overdueRecords", fineService.findOverdueBooks(borrowService.findRecords()));
        model.addAttribute("body", "admin/fines/list.jsp");
        return "layout/main";
    }
}