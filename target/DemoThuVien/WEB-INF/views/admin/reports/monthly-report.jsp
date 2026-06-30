<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Báo cáo thư viện</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>

        <section class="card">

            <div>
                <h1>Báo cáo thư viện</h1>

                <p class="lead">
                    Thống kê hoạt động thư viện, tình hình mượn trả sách và các dữ liệu quan trọng.
                </p>
            </div>

            <div class="command-actions">

                <button class="btn btn-secondary">
                    Xuất PDF
                </button>

                <button class="btn btn-primary">
                    Xuất Excel
                </button>

            </div>

        </section>

        <section class="card">

            <h2>Tổng quan hệ thống</h2>

            <div class="grid stats">

                <c:forEach var="item" items="${overview}">

                    <div class="card stat">

                        <span>${item.key}</span>

                        <b>${item.value}</b>

                    </div>

                </c:forEach>

            </div>

        </section>

        <section class="card">

            <h2>Thống kê lượt mượn theo tháng</h2>

            <c:forEach var="stat" items="${monthlyStats}">
                <p>
                    ${stat.key}: <strong>${stat.value}</strong> lượt mượn
                </p>
            </c:forEach>

        </section>

        <section class="card">

            <h2>Sách được mượn nhiều nhất</h2>

            <c:forEach var="book" items="${mostBorrowedBooks}">
                <p>
                    <strong>${book.title}</strong>
                    (${book.category})
                </p>
            </c:forEach>

        </section>

        <section class="card">

            <h2>Danh sách sách quá hạn</h2>

            <c:forEach var="record" items="${overdueRecords}">

                <p>
                    #${record.id}
                    - ${record.readerName}
                    - ${record.bookTitle}
                    - Hạn trả: ${record.dueDate}
                </p>

            </c:forEach>

        </section>

    </body>
</html>

