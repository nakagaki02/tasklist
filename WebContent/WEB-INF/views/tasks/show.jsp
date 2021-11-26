<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
   <c:param name="content">

   <h2>id : ${task.id}のタスク詳細ページ</h2>

   <p> タイトル: <c:out value="${Task.title}" /></p>
   <p> タスク:   <c:out value="${Task.content}"/></p>
   <p> 作成日時:  <fmt:formatDate value="${Task.created_at}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
   <p> 更新日時 : <fmt:formatDate value="${Task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss"/></p>


   <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
   <p><a href="${pageContext.request.contextPath}/edit?id=${Task.id}">このタスクを編集する</a>


 </c:param>
</c:import>