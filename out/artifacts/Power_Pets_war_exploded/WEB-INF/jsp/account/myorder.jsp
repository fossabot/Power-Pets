<%@ page import="com.mygroup.powerpets.persistence.impl.PetDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: 11957
  Date: 2021/11/7
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="mainContent">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1 class="text-primary">
                        我的订单
                        <small>&nbsp;&nbsp;-&nbsp;关心你的宠物！<strong><i>${sessionScope.user.username}</i></strong></small>
                    </h1>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <c:if test="${sessionScope.ongoingOrderList.size() != 0 && sessionScope.ongoingOrderList != null}">
                <table class="table table-bordered">
                    <thead>
                    <tr style="font-size:35px">
                        <th>
                            订单号
                        </th>
                        <th>
                            健康保障号
                        </th>
                        <th>
                            价格
                        </th>
                        <th>
                            快递单号
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="order" items="${sessionScope.ongoingOrderList}">
                        <tr class="info" style="font-size:30px">
                            <td>
                                    ${order.orderID}
                            </td>
                            <td>
                                    ${order.petID}
                            </td>
                            <td>
                                    ${order.cost}
                            </td>
                            <td>
                                    ${order.deliveryID}
                            </td>
                        </tr>
                    </c:forEach>
                    </c:if>

                    <c:if test="${sessionScope.ongoingOrderList.size() == 0 || sessionScope.ongoingOrderList == null}">
                        <br><br>
                        <center><h3 class="text-danger">您还没有订单呢！</h3></center>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
