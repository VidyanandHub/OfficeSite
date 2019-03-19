<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
       <title></title>
       <script src="Scripts/masonry.pkgd.min.js"></script>
<%--        <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
        <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>--%>
        <script src="Scripts/jquery-3.3.1.js"></script>
        <script src="Scripts/jquery-3.3.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
     
        <link href="Content/SiteLayout.css" rel="stylesheet" />
        <script type="text/javascript">
                $(document).ready(function () {  
         
                           
            });
               function Dymsg(msg) {
                 //  debugger
                  // var html_tag = msg.substring(1, msg.length - 1);
                   $("#Note").append(msg);
                   //$("#Note").append("<li><div class='modern-grid-content'> Dyanamic " + msg + " for LI Div</div></li>");
                  // var msg = "Hello all";
                 // $("#Note").append("<li><div class='modern-grid-content'><div class='listbtn-category'><a href='a'>a truth</a></div><div class='time-ago'><span>9 mins </span> ago</div><h2><a href='a'></a></h2><p>' " + msg + " ' </p><ul class='meta-content-home'><li>3 <span>Views</span></li><li class='lm-space'></li><li class='thumbs-ranting'><div class='thumbs-rating-container' ><span class='thumbs-rating-up' onclick=''> 0</span><span class='thumbs-rating-down' onclick=''> 0</span><span class='thumbs-rating-already-voted' data-text='You already voted!'></span></div></li><li class='comment-count'> <span> 0 </span></li></ul><div class='clear'></div></div></li>");
                   
                                 }
               
                function msgcall() { alert("call from js...") }             
              

        </script>
        </head>
<body>
    <form id="form1" runat="server">
        <div class="menu">
            <p>menu</p>
        </div>
        <div class="wrap-container-full" >
            <div class="left-sidebar" style="background-color:Highlight">
                <asp:TextBox ID="txtmsg" Width="100" runat="server"></asp:TextBox>
                <asp:Button ID="btnclick"  Width="100" OnClick="btnclick_Click"    runat="server" Text="click"  />
            </div>
            <div id="maindiv" class="wrap-left-content-full">
                <ul id="Note" class="modern-grid js-masonry">
                    <li>
                        <div class="modern-grid-content">
                           <div class="listbtn-category term-id-3"><a href="a">a truth</a></div>
                            <div class="time-ago"><span>9 mins </span> ago</div>
                            <h2><a href="a"></a></h2>                            
                            <p>One of my closest friends opened up to me about depression. He thought because of my sunny disposition i could help. But the truth is I contemplate suicide every ..</p>
                            <ul class="meta-content-home">
                                <li>3 <span>Views</span></li>
                                <li class="lm-space"></li>
                                <li class="thumbs-ranting"><div class="thumbs-rating-container" id="thumbs-rating" >
                                    <span class="thumbs-rating-up" onclick=""> 0</span> 
                                    <span class="thumbs-rating-down" onclick=""> 0</span>
                                    <span class="thumbs-rating-already-voted" data-text="You already voted!"></span>
                                    <span class="comment-count"> 0 </span></div></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li>
                        <div class="modern-grid-content">One of my closest friends opened up to me about depression.</div>
                    </li>
                    <li >
                        <div class="modern-grid-content">One of my closest friends opened up to me about depression. He thought because of my sunny disposition i could help. </div>
                    </li>
                    
                    <%------------------------%>

                    <li>
                        <div class="modern-grid-content">
                            <p>One of my closest friends opened up to me about depression. He thought because of my sunny disposition i could help. But the truth is I contemplate suicide every ..</p>
                        </div>
                    </li>
                    <li >
                        <div class="modern-grid-content">One of my closest friends opened up to me about depression.</div>
                    </li>
                    <li>
                        <div class="modern-grid-content">One of my closest friends opened up to me about depression. He thought because of my sunny disposition i could help. </div>
                    </li>

                    <%-----------------------%>

                    <li>
                        <div class="modern-grid-content">
                            <p>One of my closest friends opened up to me about depression. He thought because of my sunny disposition i could help. But the truth is I contemplate suicide every ..</p>
                        </div>
                    </li>
                    <li >
                        <div class="modern-grid-content">One of my closest friends opened up to me about depression.</div>
                    </li>
                    <li >
                        <div class="modern-grid-content">One of my closest friends opened up to me about depression. He thought because of my sunny disposition i could help. </div>
                    </li>
                </ul>

            </div>
        </div>

    </form>
    </body>
    </html>





       


