package uef.edu.vn.utils;

import java.nio.charset.StandardCharsets;

public final class PdfExportUtil {
    private PdfExportUtil() {
    }

    public static byte[] exportBorrowReceipt(String receiptContent) {
        return ("PDF DEMO\n" + receiptContent).getBytes(StandardCharsets.UTF_8);
    }
}