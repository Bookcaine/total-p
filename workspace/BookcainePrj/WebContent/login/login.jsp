<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>login</title>
    <link href="../css/login.css" type="text/css" rel="stylesheet">

    <script>
        
    </script>
</head>
<body>
    <div id="root"> 
        <header>
            <div id="header">
                <a href="../index.html" class="logo" target="_blank" title="메인화면링크">BookCaine</a>
            </div>
        </header>
        <div id="header-line"></div>

        <main id="main">
            <div id="login-info-form">
                <section class="login-form">
                    <h1 class="d-none">로그인폼</h1>
                    <form class="id">
                        <fieldset>
                            <legend class="d-none">아이디입력필드</legend>
                            <label>아이디</label>
                            <input type="text">
                        </fieldset>
                    </form>
                    <form class="password">
                        <fieldset>
                            <legend class="d-none">비밀번호입력필드</legend>
                            <label>비밀번호</label>
                            <input type="password">
                        </fieldset>
                    </form>
                </section>
            
                <section>
                    <form>
                        <legend class="d-none">로그인상태유지체크박스</legend>
                        <label class="login-check"><input type="checkbox"> 로그인 상태유지</label>
                    </form>
                </section>
            </div>
            
            <div class="buttons">
                <nav class="login-button">
                    <h1 class="d-none">로그인버튼</h1>
                    <a class="login-button" href=""><input class="button" type="button" value="로그인"></a>
                </nav>

                <nav class="other-button">
                    <h1 class="d-none">그 외 버튼</h1>
                    <a class="signup-button" href="../sign_up/Main_Sign_Up.html"><input class="button" type="button" value="회원가입"></a>
                    <a class="find-idpw-button" href="../login/find_id/find_id.html"><input class="button" type="button" value="ID/PW찾기"></a>
                </nav>
            </div>
        </main>
            
        <aside id="aside">
            <nav class="easy-login">
                <h1 class="d-none">간편로그인</h1>
                <ul>
                    <li><a class="icon kakao-login" href="../login/easy_login/easy_login.html">카카오</a></li>
                    <li><a class="icon facebook-login" href="../login/easy_login/easy_login.html">페이스북</a></li>
                    <li><a class="icon naver-login" href="../login/easy_login/easy_login.html">네이버</a></li>
                </ul>
            </nav>
        </aside>
        
    </div>
</body>
</html>