package uef.edu.vn.utils;

import java.nio.charset.StandardCharsets;
import java.util.List;

public final class ExcelExportUtil {
    private ExcelExportUtil() {
    }

    public static byte[] exportRows(List<String> rows) {
        return String.join("\n", rows).getBytes(StandardCharsets.UTF_8);
    }
}