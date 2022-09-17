﻿<%@ Application Language="C#" %>

<script runat="server">

   void Application_Start(object sender, EventArgs e)
{
// Code that runs on application startup
Application["NoOfVisitors"] = 0;
}

void Session_Start(object sender, EventArgs e)
{
// Code that runs when a new session is started
Application.Lock();
Application["NoOfVisitors"] = (int)Application["NoOfVisitors"] + 1;
Application.UnLock();
}

       
</script>
