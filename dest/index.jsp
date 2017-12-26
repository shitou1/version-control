<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8">
    <title>客户中心</title>
    <link data-origin-file="normalize.css" rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/normalize.css?v=470184e">
    <link href="<%=request.getContextPath()%>/script/lib/font-awesome/css/font-awesome.min.css?v=a0e784c" rel="stylesheet">
    <%@include file="/views/include/growingIO.jsp" %>
</head>
<body>
<div id="customerCenterApp"></div>

<script src="<%=request.getContextPath()%>/script/lib/lodash.min.js?v=fc7ec03"></script>
<script>
    // 全局用到的信息
    var INFO_G = {
        // 上下文路径
        contextPath: '<%=request.getContextPath()%>',
        // 企业id
        entId: '${entId}',
        // 用户id
        userId: '${userId}'
    };
</script>

    <script type="text/javascript" src="<%=request.getContextPath()%>/vue-static/dist/manifest.js?v=5f04ab5"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/vue-static/dist/vendor.js?v=481965a"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/vue-static/dist/customer-center-app.js?v=56af183"></script>
<script src='${IM_ROOT}/IM.js'></script>
<script>
    IM.init({ useLocal : false,entId:'${ccodEntId}',skillGroupId:'${skillId}',username:"${webchatId}",type:'IM',customPriority : '1000'});
</script>
</body>
</html>
