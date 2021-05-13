<%@page import="com.bookcaine.web.entity.Book"%>
<%@page import="com.bookcaine.web.service.BookService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id_ = request.getParameter("id");
	int id = Integer.parseInt(id_);

	BookService bookService = new BookService();
	Book book = bookService.get(id);

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookDetail</title>
    <link rel="stylesheet" href="../css/book.css">
    <link rel="stylesheet" href="../header/header.css">
</head>

<body>
    <header id="header">
        <div class="float-content">
            <h1 class="logo"><div class="logo-1">책에 중독되는 순간</div> Bookcaine</h1>
            <section>
                <h1 class="d-none">헤더</h1>
                <!-- <nav id="user">
                    <ul>
                        <li><a href="sign_up/Main_Sign_Up.html"><input class="button" type="button" value="회원가입"></a></li>
                        <li><a href="login/login.html"><input class="button" type="button" value="로그인"></a></li>
                    </ul>
                </nav> -->

                <section class="book-search-form">
                    <h1 class="d-none">도서검색폼</h1>
                    <form action="">
                        <legend class="d-none">도서 검색 필드</legend>
                        <input class="form-input" type="text" name="search" placeholder="제목,저자,출판사 검색">
                        <input class="button" type="submit" value="검색">
                    </form>
                </section>
    
                <nav class="quick-menu">
                    <h1 class="d-none">퀵메뉴</h1>
                    <ul>
                        <li><a href="../index.jsp">홈</a></li>
                        <li><a href="">도전방</a></li>
                        <li><a href="../profile/profile.html">프로필</a></li>
                    </ul>
                </nav>
            </section>
        </div>
    </header>
    
    <main>
        <section id="book-image">
            <h1 class="d-none">book-image</h1>
            <img src="../images/book<%=id %>.jpg" alt="">
        </section>
        <hr>

        <section id="book-description">
            <h1 class="d-none">책 설명</h1>
            <div id="book-name"><%=book.getTitle() %></div>
            <div id="writer"><%=book.getAuthor() %></div>
        </section>
        <hr>

        <div id="wish">
            <input type="button" value="+ 읽고 싶어요">
        </div>

        <br>

        <section id="review">
            <h1>리뷰</h1>
            <ul>
                <li>
                    <div class="reviewer">이동진</div>
                    <article>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, enim facilis mollitia
                        consectetur
                        repellat nemo sapiente accusamus. Dignissimos blanditiis quidem deserunt, nobis distinctio
                        fugiat
                        voluptas error impedit tempore sunt delectus soluta dicta vitae illo voluptates explicabo
                        ducimus
                        tenetur corporis perferendis quasi iure! Unde consectetur a itaque provident odio sapiente
                        voluptatem!</article>
                </li>
                <hr>
                <li>
                    <div class="reviewer">하루키</div>
                    <article>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, enim facilis mollitia
                        consectetur
                        repellat nemo sapiente accusamus. Dignissimos blanditiis quidem deserunt, nobis distinctio
                        fugiat
                        voluptas error impedit tempore sunt delectus soluta dicta vitae illo voluptates explicabo
                        ducimus
                        tenetur corporis perferendis quasi iure! Unde consectetur a itaque provident odio sapiente
                        voluptatem!</article>
                </li>
            </ul>
        </section>

        <section id="friends">
            <h1>친구의 서평</h1>
            <ul>
                <li>
                    <div class="reviewer">김민수</div>
                    <article>너무 재밌어요~</article>
                </li>
            </ul>
        </section>

        <div id="for-bottom-btn">
        </div>

        <section id="challenge">
            <div>
                <input type="button" value="도전하기">
            </div>
        </section>
    </main>
</body>

</html>