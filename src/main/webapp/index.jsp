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
        <c:url value="/poem.js" var="poemScriptUrl"/>
        <c:url value="/poems.js" var="poemsScriptUrl"/>
        <c:url value="/back-to-profile.js" var="backToProfileScriptUrl"/>
        <c:url value="/logout.js" var="logoutScriptUrl"/>
        <link rel="stylesheet" type="text/css" href="${styleUrl}">
        <script src="${indexScriptUrl}"></script>
        <script src="${loginScriptUrl}"></script>
        <script src="${profileScriptUrl}"></script>
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
    <a href="javascript:void(0);" onclick="onPoemsClicked();">View poems</a>
</div>
<div id="poems-content" class="hidden content">
    <h1>Poems</h1>
    <table id="poems">
        <thead>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<br>
<div id="poem-content" class="hidden content">
    <h1>Poem</h1>
    <form id="word-count-form"  onsubmit="return false;">
        <input type="text" id="word-count-search">
        <button id="word-count-button">Count words</button>
    </form>
    <p><strong>ID: </strong><span id="poem-id"></span></p>
    <p><strong>Title: </strong><span id="poem-title"></span></p>
    <p><strong>Poem: </strong></p>
    <p><span id="poem-body"></span></p>
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
