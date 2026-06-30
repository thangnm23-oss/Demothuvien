<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Biên nhận mượn sách</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>

        <section class="card">

            <div>
                <h1>Biên nhận mượn sách</h1>

                <p class="lead">
                    Thông tin giao dịch mượn sách của độc giả.
                </p>
            </div>

            <div class="command-actions">

                <button class="btn btn-primary">
                    Xuất PDF
                </button>

            </div>

        </section>

        <section class="card">

            <h2>Phiếu mượn #001</h2>

            <div class="book-meta-grid">

                <div class="book-meta-item">
                    <strong>Độc giả</strong>
                    <p>Độc giả mẫu</p>
                </div>

                <div class="book-meta-item">
                    <strong>Tên sách</strong>
                    <p>Lập trình Java Web</p>
                </div>

                <div class="book-meta-item">
                    <strong>Ngày mượn</strong>
                    <p>${borrowDate}</p>
                </div>

                <div class="book-meta-item">
                    <strong>Hạn trả</strong>
                    <p>14 ngày kể từ ngày mượn</p>
                </div>

                <div class="book-meta-item">
                    <strong>Trạng thái</strong>
                    <p>
                        <span class="badge">
                            Đang mượn
                        </span>
                    </p>
                </div>

            </div>

        </section>

    </body>
</html>

