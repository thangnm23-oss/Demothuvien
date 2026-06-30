package uef.edu.vn.service;

import org.springframework.stereotype.Service;
import uef.edu.vn.model.BorrowRecord;
import uef.edu.vn.model.BorrowRequest;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class BorrowService {
    public List<BorrowRecord> findRecords() {
        return List.of(
                new BorrowRecord(1, "Độc giả mẫu", "Lập trình Java Web", LocalDate.now(), LocalDate.now().plusDays(14), null, "Đang mượn"),
                new BorrowRecord(2, "Độc giả mẫu", "Machine Learning Cơ Bản", LocalDate.now().minusDays(20), LocalDate.now().minusDays(6), null, "Quá hạn")
        );
    }

    public List<BorrowRequest> findRequests() {
        return List.of(new BorrowRequest(1, "Độc giả mẫu", "Cho tôi xin một vé đi tuổi thơ", LocalDateTime.now().minusHours(3), "Chờ duyệt"));
    }
}