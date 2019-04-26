<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <c:url value="/style.css" var="styleUrl"/>
        <c:url value="/index.js" var="indexScriptUrl"/>
        <c:url value="/login.js" var="loginScriptUrl"/>
        <c:url value="/profile.js" var="profileScriptUrl"/>
        <c:url value="/shop.js" var="shopScriptUrl"/>
        <c:url value="/shops.js" var="shopsScriptUrl"/>
        <c:url value="/coupon.js" var="couponScriptUrl"/>
        <c:url value="/coupons.js" var="couponsScriptUrl"/>
        <c:url value="/poem.js" var="poemScriptUrl"/>
        <c:url value="/poems.js" var="poemsScriptUrl"/>
        <c:url value="/back-to-profile.js" var="backToProfileScriptUrl"/>
        <c:url value="/logout.js" var="logoutScriptUrl"/>
        <link rel="stylesheet" type="text/css" href="${styleUrl}">
        <script src="${indexScriptUrl}"></script>
        <script src="${loginScriptUrl}"></script>
        <script src="${profileScriptUrl}"></script>
        <script src="${shopScriptUrl}"></script>
        <script src="${shopsScriptUrl}"></script>
        <script src="${couponScriptUrl}"></script>
        <script src="${couponsScriptUrl}"></script>
        <script src="${poemScriptUrl}"></script>
        <script src="${poemsScriptUrl}"></script>
        <script src="${backToProfileScriptUrl}"></script>
        <script src="${logoutScriptUrl}"></script>
        <title>Poet</title>
    </head>
<body>
<div id="login-content" class="content">
    <h1>Login</h1>
    <form id="login-form" onsubmit="return false;">
        <input type="text" name="email">
        <input type="password" name="password">
        <button id="login-button">Login</button>
    </form>
</div>
<div id="profile-content" class="hidden content">
    <h1>Poet</h1>
    <p><span id="user-name"></span></p>
    <p><span id="user-email"></span></p>
    <p><span id="user-password"></span></p>
    <a href="javascript:void(0);" onclick="onPoemsClicked();">View poems</a>
</div>
<div id="poems-content" class="hidden content">
    <h1>Poems</h1>
    <table id="poems">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Content</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<div id="poem-content" class="hidden content">
    <h1>Poem</h1>
    <p>ID: <span id="poem-id"></span></p>
    <p>Title: <span id="poem-title"></span></p>
    <p>Poem: <span id="poem-body"></span></p>
</div>
<div id="back-to-profile-content" class="hidden content">
    <button onclick="onBackToProfileClicked();">Back to profile</button>
</div>
<br>
<div id="logout-content" class="hidden content">
    <button id="logout-button">Logout</button>
</div>
</body>
</html>
