<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile-edit</title>
    <link rel="stylesheet" href="../css/edit.css">
    <!-- <link rel="stylesheet" href="../header/header.css"> -->
</head>

<body>
    <!--<header id="header">
        <div class="float-content">
            <h1 class="logo"><div class="logo-1">å�� �ߵ��Ǵ� ����</div> Bookcaine</h1>
            <section>
                <h1 class="d-none">���</h1>
                <a href="../sign/singmeno.html"><i class="icon-cog"></i></a>
                
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
                        <li><a href="../index.html">Ȩ</a></li>
                        <li><a href="">������</a></li>
                        <li class="profile"><a href="profile/profile.html">������</a></li>
                    </ul>
                </nav>
            </section>
        </div>
    </header>-->

    <form class="profile-form" action="profile.html">
        <h1 class="d-none">profile-edit</h1>
        <section>
            <h1 class="d-none">profile-edit-top</h1>
            <a href="profile.jsp">���</a>
            <span>�����ʺ���</span>
            <input class="submit" type="submit" value="Ȯ��">
        </section>
        <hr>
        <img src="../images/user.PNG" alt="profile-image">
        <p>
        <div>�г���</div>
        <input class="input" type="text" name="name" value="ȫ�浿">
        </p>
        <p>
        <div>�Ұ�</div>
        <input class="input" type="text" name="introduce" value="å�� �����ϴ� ��� :)" placeholder="�Ұ��� �Է����ּ���.">
        </p>
        </section>
    </form>
    <script></script>
</body>

</html>