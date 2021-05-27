<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.bookcaine.web.entity.Member"%>    
<% Member member = (Member) request.getSession().getAttribute("loginMember"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../css/signmemo.css" type="text/css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
    <link rel="stylesheet" href="../header/header.css">
</head>
<body>
    <div id="root">
        <header id="header">
            <div class="float-content">
                <h1 class="logo"><div class="logo-1">å�� �ߵ��Ǵ� ����</div> Bookcaine</h1>
                <section>
                    <h1 class="d-none">���</h1>
                    <a href="../sign/singmeno.jsp"><i class="icon-cog"></i></a>
                    
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
                            <li><a href="../index">Ȩ</a></li>
                            <li><a href="">������</a></li>
                            <li class="profile"><a href="../profile/profile.jsp">������</a></li>
                        </ul>
                    </nav>
                </section>
            </div>
        </header>

        <main>
            <h1>��������</h1>
                <div>
                    <table class="table">
                    
                        <tr>
                            <th class="user-name">�̸�</th>
                            <td>
                                <span class="user-name">${sessionScope.loginMember.name }</span>
                                <a href="signout.html" class="leave-button">ȸ��Ż��</a>
                            </td>
                        </tr>
                        <tr>
                            <th>���̵�</th>
                            <td>
                                <span class="id-name">${sessionScope.loginMember.id }</span>
                            </td>
                        </tr>

                        <tr>
                            <th>�̸���</th>
                            <td>
                                <div>
                                    <p>${sessionScope.loginMember.email }</p>
                                    <p class="email">������ �̸��� �ּ��Դϴ�.</p>

                                    
                                </div>
                                <div>
                                    <button class="email-ch">�̸��� ����</button>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>��й�ȣ ����</th>
                            <td>
                                <form>
                                    <div class="password">
                                        <input type="password" class="password-in" title="�����й�ȣ�Է�">
                                    </div>

                                    <div class="password">
                                        <input type="password" class="password-in" >
                                    </div>

                                    <div class="password">
                                        <input type="password" class="password-in" >
                                    </div>
                                    
                                    <div class="password">
                                        <button type="submit" form="password-form" class="password-ch" >
                                         ��й�ȣ ����
                                        </button>
                                    </div>
                                </form>
                            </td>
                        </tr>

                       

                    </table>
                </div>

        </main>
    
    
        <footer>
    
        </footer>

        <script>
            
        </script>
    
</body>
</html>