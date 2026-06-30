package uef.edu.vn.service;

import org.springframework.stereotype.Service;
import uef.edu.vn.model.Book;
import uef.edu.vn.model.BorrowRecord;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReportService {
    public Map<String, Integer> overview() {
        Map<String, Integer> data = new LinkedHashMap<>();
        data.put("Sách", 120);
        data.put("Người dùng", 42);
        data.put("Thể loại", 20);
        data.put("Phiếu mượn", 18);
        return data;
    }

    public Map<String, Integer> monthlyBorrowStats() {
        Map<String, Integer> data = new LinkedHashMap<>();
        data.put("Tháng 1", 16);
        data.put("Tháng 2", 22);
        data.put("Tháng 3", 31);
        data.put("Tháng 4", 28);
        data.put("Tháng 5", 35);
        data.put("Tháng 6", 18);
        return data;
    }

    public List<Book> mostBorrowedBooks(BookService bookService) {
        return bookService.findAll().stream().limit(3).toList();
    }

    public List<BorrowRecord> overdueBooks(BorrowService borrowService, FineService fineService) {
        return fineService.findOverdueBooks(borrowService.findRecords());
    }
}