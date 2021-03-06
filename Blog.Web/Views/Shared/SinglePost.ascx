﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Blog.Core.Post>" %>
<%@ Import Namespace="Blog.Web.Code"%>
<%@ Import Namespace="System.Globalization"%>

<div class="post-date">
    <%=Model.Created.Day %>
    <%= CultureInfo.CurrentUICulture.DateTimeFormat.GetMonthName(Model.Created.Month).Substring(0, 3)%>
</div>

<h2><%=Model.Title%></h2>
<div class="post-content">
    <%=Model.Body%>
    
   <div class="post-share"> 
    <%Html.RenderPartial("CallToAction");%> 
   </div>
   
    <%Html.RenderPartial("DisqusComments");%> 
   
</div>  