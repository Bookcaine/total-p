<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../css/feed.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="../header/header.css">
</head>

<header id="header">
    <div class="float-content">
        <h1 class="logo">
            <div class="logo-1">å�� �ߵ��Ǵ� ����</div> Bookcaine
        </h1>
        <section>
            <h1 class="d-none">���</h1>
            <section class="book-search-form">
                <h1 class="d-none">�����˻���</h1>
                <form action="">
                    <legend class="d-none">���� �˻� �ʵ�</legend>
                    <input class="form-input" type="text" name="search" placeholder="����,����,���ǻ� �˻�">
                    <input class="button" type="submit" value="�˻�">
                </form>
            </section>

            <nav class="quick-menu">
                <h1 class="d-none">���޴�</h1>
                <ul>
                    <li><a href="../index.jsp">Ȩ</a></li>
                    <li><a href="">������</a></li>
                    <li><a href="../profile/profile.html">������</a></li>
                </ul>
            </nav>
        </section>
    </div>
</header>

<main id="wrapper">

    <div id="main">
        <article>
            <div class="profile">
                <img class="profile-image" src="../images/user.PNG">
                <div class="profile-flex">
                    <a class="user-name">�ʷϻ�����</a>
                    <a class="date">2021-05-16</a>
                </div>
            </div>

            <div class="content">

                <div class="book-img">
                    <img class="img" src="../images/sample.jpg">
                </div>
                <a>[68p]</a>
                <div>
                    <a>������ ���� �� ���� ����</a>
                </div>



                <div class="review-attr">
                    <span>���ƿ� 0</span>
                    <span>��� 0</span>
                </div>
                <hr>
                <div class="review-btn-group">
                    <input id="like-button" type="button" value="���ƿ�">
                    <a href="#">���</a>
                </div>
            </div>
        </article>


    </div>

</main>


</body>

</html>