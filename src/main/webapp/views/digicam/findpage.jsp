<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!-- pagination start -->
<div class="col text-center">
    <ul class="pagination ">
        <c:choose>
            <c:when test="${apage.getPrePage() != 0}">
                <li class="page-item">
                    <a href="/${target}/findimpl?pageNo=${apage.getPrePage()}&keyword=${search.keyword}&search=${search.search}" class="page-link"><i class="previous"></i></a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item previous disabled">
                    <a href="#" class="page-link"><i class="previous"></i></a>
                </li>
            </c:otherwise>
        </c:choose>
        <c:forEach begin="${apage.getNavigateFirstPage() }" end="${apage.getNavigateLastPage() }" var="page">
            <c:choose>
                <c:when test="${apage.getPageNum() == page}">
                    <li class="page-item active">
                        <a href="/${target}/findimpl?pageNo=${page}&keyword=${search.keyword}&search=${search.search}" class="page-link">${page }</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item ">
                        <a href="/${target}/findimpl?pageNo=${page}&keyword=${search.keyword}&search=${search.search}"  class="page-link">${page }</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:choose>
            <c:when test="${apage.getNextPage() != 0}">
                <li class="page-item next">
                    <a href="/${target}/findimpl?pageNo=${apage.getNextPage()}&keyword=${search.keyword}&search=${search.search}"  class="page-link"><i class="next"></i></a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item next disabled">
                    <a href="#" class="page-link"><i class="next"></i></a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
<!-- pagination end -->