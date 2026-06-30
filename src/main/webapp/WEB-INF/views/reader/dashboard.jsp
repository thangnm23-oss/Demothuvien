<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Dashboard độc giả</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>

        <section class="card">

            <div>
                <h1>Dashboard độc giả</h1>

                <p class="lead">
                    Theo dõi sách đang mượn, lịch sử mượn trả, thông báo và các khoản phí phát sinh.
                </p>
            </div>

            <div class="command-actions">

                <a class="btn btn-primary"
                   href="${pageContext.request.contextPath}/books">
                    Tìm sách
                </a>

                <a class="btn btn-secondary"
                   href="${pageContext.request.contextPath}/reader/borrowed-books">
                    Sách đang mượn
                </a>

            </div>

        </section>

        <section class="grid stats">

            <article class="card stat">
                <span>Sách đang mượn</span>
                <b>2</b>
            </article>

            <article class="card stat">
                <span>Thông báo mới</span>
                <b>1</b>
            </article>

            <article class="card stat">
                <span>Phí phạt hiện tại</span>
                <b>30.000 VNĐ</b>
            </article>

            <article class="card stat">
                <span>Yêu cầu chờ duyệt</span>
                <b>1</b>
            </article>

        </section>

        <section class="card">

            <h2>Tổng quan tài khoản</h2>

            <p class="lead">
                Bạn có thể tra cứu sách, theo dõi lịch sử mượn trả, xem phí phạt và quản lý các yêu cầu mượn sách từ khu vực này.
            </p>

        </section>

    </body>
</html>