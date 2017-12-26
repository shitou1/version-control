# version-control
### 参考https://www.cnblogs.com/hutuzhu/p/5276000.html 修改gulp-asset-rev源文件的代码
### 因为项目为java项目，配置了相对路径
// 去除<%=request.getContextPath()%>路径
assetPath = assetPath.replace(/<%=request\.getContextPath\(\)%>\\/, '');
