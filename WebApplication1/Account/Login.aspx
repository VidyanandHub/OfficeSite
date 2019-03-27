<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
            <script src="../Scripts/masonry.pkgd.min.js"></script>
            <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
            <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js">
            <script src="../Scripts/jquery-3.3.1.js"></script>
            <script src="../Scripts/jquery-3.3.1.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <link href="../Content/SiteLayout.css" rel="stylesheet" />
            <link href="../Content/Login_Css.css" rel="stylesheet" />
   


</head>
<body>
    <form id="form1" runat="server">

        <div class="menu">
           <div class="Menu-left-align theme-d2 menu-bar">
            <a href="" target="_self" style="padding:25px; float:left"><i></i> Logo </a>
           </div>
        </div>
        
           <div class="container" style="text-align:center">
                <div class="row" style="display:inline-block">
                  <h2 style="text-align:center">Login with Social Media or Manually</h2>
                  <div class="vl">
                    <span class="inner">or</span>
                  </div>

                  <div class="col">
                    <a href="#" class="fb btn">
                      <i class="fa fa-facebook fa-fw"></i> Login with Facebook
                    </a>
                    <a href="#" class="twitter btn">
                      <i class="fa fa-twitter fa-fw"></i> Login with Twitter
                    </a>
                    <a href="#" class="google btn">
                      <i class="fa fa-google fa-fw"></i> Login with Google+
                    </a>
                  </div>
                  <div class="col">
                    <div class="hide-md-lg">
                      <p>Or sign in manually:</p>
                    </div>
                    <input type="text" name="username" placeholder="Username" />
                    <input type="password" name="password" placeholder="Password" />
                    <%--<input type="submit" value="Login"/>--%>
                     <asp:Button ID="btnlogin" OnClick="btnlogin_Click" Text="Login" runat="server" />
                  </div>
                </div>
            </div>
            <div class="bottom-container">
              <div class="row">
                <div class="col">
                  <a href="#" style="color:white" class="btn">Sign up</a>
                </div>
                <div class="col">
                  <a href="#" style="color:white" class="btn">Forgot password?</a>
                </div>
              </div>
            </div>
        
    </form>
</body>
</html>
