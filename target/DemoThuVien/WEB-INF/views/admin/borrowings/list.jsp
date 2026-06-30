<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Quản lý phiếu mượn</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>

        <section class="card">

            <div>
                <h1>Quản lý phiếu mượn</h1>

                <p class="lead">
                    Duyệt yêu cầu mượn, xác nhận trả sách và theo dõi các phiếu quá hạn.
                </p>
            </div>

            <div class="command-actions">
                <a class="btn btn-primary"
                   href="${pageContext.request.contextPath}/admin/borrowings/approve">
                    Duyệt yêu cầu
                </a>
            </div>

        </section>

        <section class="card">

            <table class="table">

                <thead>
                    <tr>
                        <th>Mã</th>
                        <th>Độc giả</th>
                        <th>Tên sách</th>
                        <th>Ngày mượn</th>
                        <th>Hạn trả</th>
                        <th>Trạng thái</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach var="record" items="${records}">

                        <tr>

                            <td>#${record.id}</td>

                            <td>${record.readerName}</td>

                            <td>${record.bookTitle}</td>

                            <td>${record.borrowDate}</td>

                            <td>${record.dueDate}</td>

                            <td>
                                <span class="badge">
                                    ${record.status}
                                </span>
                            </td>

                        </tr>

                    </c:forEach>

                </tbody>

            </table>

        </section>

    </body>
</html>

