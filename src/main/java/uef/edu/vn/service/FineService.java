package uef.edu.vn.service;

import org.springframework.stereotype.Service;
import uef.edu.vn.model.BorrowRecord;
import uef.edu.vn.model.Fine;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

@Service
public class FineService {
    private static final BigDecimal DAILY_FINE = new BigDecimal("5000");

    public List<Fine> findAll() {
        return List.of(new Fine(1, "Độc giả mẫu", "Trả sách quá hạn 6 ngày", new BigDecimal("30000"), false));
    }

    public BigDecimal calculateFine(BorrowRecord record) {
        if (record == null || record.getDueDate() == null) {
            return BigDecimal.ZERO;
        }
        LocalDate compareDate = record.getReturnDate() == null ? LocalDate.now() : record.getReturnDate();
        long overdueDays = ChronoUnit.DAYS.between(record.getDueDate(), compareDate);
        if (overdueDays <= 0) {
            return BigDecimal.ZERO;
        }
        return DAILY_FINE.multiply(BigDecimal.valueOf(overdueDays));
    }

    public List<BorrowRecord> findOverdueBooks(List<BorrowRecord> records) {
        return records.stream().filter(record -> calculateFine(record).compareTo(BigDecimal.ZERO) > 0).toList();
    }
}