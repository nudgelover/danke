<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!-- pagination start -->
<div class="col text-center">
    <ul class="pagination pagination-circle">
        <c:choose>
            <c:when test="${cpage.getPrePage() != 0}">
                <li class="page-item previous">
                    <a href="/${target}/all?pageNo=${cpage.getPrePage()}" class="page-link"><i class="previous"></i></a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item previous disabled">
                    <a href="#" class="page-link"><i class="previous"></i></a>
                </li>
            </c:otherwise>
        </c:choose>

        <c:forEach begin="${cpage.getNavigateFirstPage() }" end="${cpage.getNavigateLastPage() }" var="page">
            <c:choose>
                <c:when test="${cpage.getPageNum() == page}">
                    <li class="page-item active">
                        <a  href="/${target}/all?pageNo=${page}" class="page-link">${page }</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item">
                        <a href="/${target}/all?pageNo=${page}" class="page-link">${page } </a>
                    </li>
                </c:otherwise>
            </c:choose>

        </c:forEach>
        <c:choose>
            <c:when test="${cpage.getNextPage() != 0}">
                <li class="page-item next">
                    <a href="/${target}/all?pageNo=${cpage.getNextPage()}" class="page-link"><i class="next"></i></a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item next disabled">    <li class="page-item m-1"><a href="#" class=
                    <a href="#" class="page-link"><i class="next"></i></a>
                </li>
            </c:otherwise>
        </c:choose>

    </ul>
</div>
<!-- pagination end -->