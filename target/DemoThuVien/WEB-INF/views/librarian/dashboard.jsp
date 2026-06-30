<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>

<!DOCTYPE html>

<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Bảng điều khiển thủ thư</title>

        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/assets/css/style-librarian.css">

    </head>
    <body>

        <section class="card">

            <div>
                <h1>Bảng điều khiển thủ thư</h1>

                <p class="lead">
                    Theo dõi tình trạng mượn trả sách, xử lý yêu cầu của độc giả và quản lý phí phạt.
                </p>
            </div>

            <div class="command-actions">

                <a class="btn btn-success"
                   href="${pageContext.request.contextPath}/librarian/borrowings">
                    Quản lý mượn trả
                </a>

                <a class="btn btn-secondary"
                   href="${pageContext.request.contextPath}/librarian/books">
                    Quản lý sách
                </a>

            </div>

        </section>

        <section class="grid stats">

            <article class="card stat">
                <span>Yêu cầu chờ duyệt</span>
                <b>15</b>
            </article>

            <article class="card stat">
                <span>Sách đang được mượn</span>
                <b>128</b>
            </article>

            <article class="card stat">
                <span>Sách quá hạn</span>
                <b>9</b>
            </article>

            <article class="card stat">
                <span>Phiếu phạt</span>
                <b>21</b>
            </article>

        </section>

        <section class="grid"
                 style="grid-template-columns: 1.4fr .9fr; margin-top: 18px;">


            <article class="card">

                <div class="panel-header">

                    <div>
                        <h2>Công việc cần xử lý</h2>

                        <p class="lead">
                            Các tác vụ thường xuyên của thủ thư.
                        </p>
                    </div>

                    <span class="badge">
                        Hôm nay
                    </span>

                </div>

                <table class="table">

                    <thead>
                        <tr>
                            <th>Công việc</th>
                            <th>Mức độ ưu tiên</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr>
                            <td>Duyệt yêu cầu mượn sách</td>

                            <td>
                                <span class="badge">
                                    Cao
                                </span>
                            </td>

                            <td>
                                <a class="btn btn-secondary"
                                   href="${pageContext.request.contextPath}/librarian/borrowings">
                                    Mở
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td>Xử lý sách quá hạn</td>

                            <td>
                                <span class="badge">
                                    Cao
                                </span>
                            </td>

                            <td>
                                <a class="btn btn-secondary"
                                   href="${pageContext.request.contextPath}/librarian/fines">
                                    Mở
                                </a>
                            </td>
                        </tr>

                        <tr>
                            <td>Cập nhật tình trạng sách</td>

                            <td>
                                <span class="badge">
                                    Trung bình
                                </span>
                            </td>

                            <td>
                                <a class="btn btn-secondary"
                                   href="${pageContext.request.contextPath}/librarian/books">
                                    Mở
                                </a>
                            </td>
                        </tr>

                    </tbody>

                </table>

            </article>

            <article class="card">

                <h2>Thông tin nghiệp vụ</h2>

                <p class="lead">
                    Tình trạng hoạt động của thư viện.
                </p>

                <div style="display:grid;gap:12px;margin-top:18px;">

                    <span class="badge">
                        Độc giả đang hoạt động: 85
                    </span>

                    <span class="badge">
                        Phiếu mượn hôm nay: 17
                    </span>

                    <span class="badge">
                        Sách cần kiểm kê: 24
                    </span>

                </div>

            </article>

        </section>

    </body>
</html>
