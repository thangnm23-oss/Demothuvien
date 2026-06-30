<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Yêu cầu mượn sách</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>

        <section class="card">

            <div>
                <h1>Yêu cầu mượn sách</h1>

                <p class="lead">
                    Gửi yêu cầu mượn sách và theo dõi trạng thái phê duyệt từ thư viện.
                </p>
            </div>

        </section>

        <section class="card">

            <form class="form"
                  method="post"
                  action="${pageContext.request.contextPath}/borrow/request">

                <div class="form-row">

                    <label>Mã sách</label>

                    <input type="number"
                           name="bookId"
                           placeholder="Ví dụ: 1"
                           required>

                </div>

                <div class="form-row">

                    <label>Ghi chú</label>

                    <textarea name="note"
                              rows="4"
                              placeholder="Nhập ghi chú nếu có"></textarea>

                </div>

                <div class="command-actions">

                    <button class="btn btn-success"
                            type="submit">
                        Gửi yêu cầu
                    </button>

                </div>

            </form>

        </section>

        <section class="card">

            <h2>Lịch sử yêu cầu mượn sách</h2>

            <table class="table">

                <thead>
                    <tr>
                        <th>Mã yêu cầu</th>
                        <th>Độc giả</th>
                        <th>Tên sách</th>
                        <th>Ngày yêu cầu</th>
                        <th>Trạng thái</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach var="request" items="${requests}">

                        <tr>

                            <td>#${request.id}</td>

                            <td>${request.readerName}</td>

                            <td>${request.bookTitle}</td>

                            <td>${request.requestDate}</td>

                            <td>
                                <span class="badge">
                                    ${request.status}
                                </span>
                            </td>

                        </tr>

                    </c:forEach>

                </tbody>

            </table>

        </section>

    </body>
</html>

