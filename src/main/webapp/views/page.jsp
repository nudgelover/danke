<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!-- pagination start -->
<div class="col text-center">
    <ul class="pagination pagination-circle">
        <c:choose>
            <c:when test="${cpage.getPrePage() != 0}">
                <li class="page-item previous">
                    <c:choose>
                        <c:when test="${target3!=null && target4!=null}">
                            <a href="/${target}/${target2}/${target3}/${target4}/all?pageNo=${cpage.getPrePage()}" class="page-link"><i class="previous"></i></a>
                        </c:when>
                        <c:when test="${target3!=null && target4==null}">
                            <a href="/${target}/${target2}/${target3}/all?pageNo=${cpage.getPrePage()}" class="page-link"><i class="previous"></i></a>
                        </c:when>
                        <c:when test="${target2!=null&& target3==null}">
                            <a href="/${target}/${target2}/all?pageNo=${cpage.getPrePage()}" class="page-link"><i class="previous"></i></a>
                        </c:when>
                        <c:otherwise>
                            <a href="/${target}/all?pageNo=${cpage.getPrePage()}" class="page-link"><i class="previous"></i></a>
                        </c:otherwise>
                    </c:choose>
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
                        <c:choose>
                            <c:when test="${target3!=null && target4!=null}">
                                <a  href="/${target}/${target2}/${target3}/${target4}/all?pageNo=${page}" class="page-link">${page }</a>
                            </c:when>
                            <c:when test="${target3!=null&& target4==null}">
                                <a  href="/${target}/${target2}/${target3}/all?pageNo=${page}" class="page-link">${page }</a>
                            </c:when>
                            <c:when test="${target2!=null && target3==null}">
                                <a  href="/${target}/${target2}/all?pageNo=${page}" class="page-link">${page }</a>
                            </c:when>
                            <c:otherwise>
                                <a  href="/${target}/all?pageNo=${page}" class="page-link">${page }</a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item">
                        <c:choose>
                        <c:when test="${target3!=null && target4!=null}">
                            <a href="/${target}/${target2}/${target3}/${target4}/all?pageNo=${page}" class="page-link">${page } </a>
                        </c:when>
                        <c:when test="${target3!=null && target4==null}">
                            <a href="/${target}/${target2}/${target3}/all?pageNo=${page}" class="page-link">${page } </a>
                        </c:when>
                        <c:when test="${target2!=null && target3==null}">
                            <a href="/${target}/${target2}/all?pageNo=${page}" class="page-link">${page } </a>
                        </c:when>
                        <c:otherwise>
                            <a href="/${target}/all?pageNo=${page}" class="page-link">${page } </a>
                        </c:otherwise>
                        </c:choose>
                    </li>
                </c:otherwise>
            </c:choose>

        </c:forEach>
        <c:choose>
            <c:when test="${cpage.getNextPage() != 0}">
                <li class="page-item next">
                    <c:choose>
                        <c:when test="${target3!=null && target4!=null}">
                            <a href="/${target}/${target2}/${target3}/${target4}/all?pageNo=${cpage.getNextPage()}" class="page-link"><i class="next"></i></a>
                        </c:when>
                        <c:when test="${target3!=null && target4==null}">
                            <a href="/${target}/${target2}/${target3}/all?pageNo=${cpage.getNextPage()}" class="page-link"><i class="next"></i></a>
                        </c:when>
                        <c:when test="${target2!=null&& target3==null}">
                            <a href="/${target}/${target2}/all?pageNo=${cpage.getNextPage()}" class="page-link"><i class="next"></i></a>
                        </c:when>
                        <c:otherwise>
                            <a href="/${target}/all?pageNo=${cpage.getNextPage()}" class="page-link"><i class="next"></i></a>
                        </c:otherwise>
                    </c:choose>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item disabled">
                    <a class="page-link"href="#"><i class="next"></i></a>
                </li>
            </c:otherwise>
        </c:choose>

    </ul>
</div>
<!-- pagination end -->