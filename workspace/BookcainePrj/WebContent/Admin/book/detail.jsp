<%@page import="com.bookcaine.web.entity.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.bookcaine.web.service.JdbcBookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    JdbcBookService bookService = new JdbcBookService();
        	List<Book> list = bookService.getList();
    %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookDetail</title>
    <link rel="stylesheet" href="../css/book_detail.css">
</head>

<body>
    <header id="header">
        <section>
            <h1 class="d-none">메인</h1>
            <section id="main-top">
                <h1>관리자 도서 상세 페이지 | Bookcaine</h1>
            </section>
        </section>
    </header>
    
    <main>
        <section id="book-image">
            <h1 class="d-none">book-image</h1>
            <img src="../images/book1.PNG" alt="">
        </section>
        <section id="book-description">
            <h1 class="d-none">책 제목 저자</h1>
            <div class="book-name">해리포터</div>
            <div class="writer">jk롤링</div>
        </section>
        <table id="table">
            <tr>
                <th>분류</th>
                <td>문학</td>
            </tr>
            <tr>
                <th>진열여부</th>
                <td>Y</td>
            </tr>
            <tr>
                <th>별점 평균</th>
                <td>9.8점</td>
            </tr>
            <tr>
                <th>등록 리뷰</th>
                <td>387건</td>
            </tr>
            <tr>
                <th>개설 모임</th>
                <td>1개</td>
            </tr>
            <tr>
                <th>모임 참가자</th>
                <td>478명</td>
            </tr>
        </table>
            
        <section id="book-details">
            <h1 class="d-none">책 디테일</h1>
            <div class="details">책 소개</div>
        </section>
        <section id="author-details">
            <h1 class="d-none">저자 디테일</h1>
            <div class="details">저자 소개</div>
        </section>

        <form class="check_button">
            <a href="list_total.html"><input type="button" value="목록"></a>
            <input type="button" value="상품 수정">
            <input type="button" value="상품 삭제">
        </form>

    </main>
</body>

</html>