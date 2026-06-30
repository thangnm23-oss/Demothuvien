<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Thông báo của độc giả</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>

        <section class="card">

            <h1>Thông báo của độc giả</h1>

            <p class="lead">
                Theo dõi các thông báo quan trọng từ thư viện như hạn trả sách, phí phạt và kết quả duyệt yêu cầu mượn.
            </p>

        </section>

        <section class="card">

            <div class="panel-header">

                <div>

                    <h2>Danh sách thông báo</h2>

                    <p class="lead">
                        Các thông báo mới nhất sẽ được hiển thị tại đây để giúp bạn cập nhật thông tin kịp thời.
                    </p>

                </div>

                <span class="badge">
                    Notifications
                </span>

            </div>

            <hr>

            <div style="display:grid;gap:15px;">

                <div class="card">
                    <strong>Nhắc nhở trả sách</strong>
                    <p>Sách "Lập trình Java Web" sẽ đến hạn trả sau 3 ngày.</p>
                </div>

                <div class="card">
                    <strong>Yêu cầu mượn sách đã được duyệt</strong>
                    <p>Yêu cầu mượn sách của bạn đã được thư viện chấp thuận.</p>
                </div>

                <div class="card">
                    <strong>Thông báo phí phạt</strong>
                    <p>Bạn đang có một khoản phí phạt chưa thanh toán.</p>
                </div>

            </div>

            <div class="command-actions" style="margin-top:20px;">

                <a href="${pageContext.request.contextPath}/reader/dashboard"
                   class="btn btn-primary">
                    Dashboard
                </a>

                <a href="${pageContext.request.contextPath}/books"
                   class="btn btn-secondary">
                    Tìm sách
                </a>

            </div>

        </section>

    </body>
</html>