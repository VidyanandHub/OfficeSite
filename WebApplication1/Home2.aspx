<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="WebApplication1.Home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <script type="text/javascript">
                $(document).ready(function () {          
                           
            });
               function Dymsg(msg) {
                   $("#Note").append(msg);
              
                  
                                 }  
              </script>   
  
  <div class="left">
       <%--<div class="wrap-container-full" > --%>  
           <div class="left-sidebar" >
               <div  style="text-align:center; margin:auto; padding:15px 0 0 0">
                   <asp:LinkButton ID="lnknormalview" ToolTip="Normal" OnClick="lnknormalview_Click" runat="server" Text="Link1"></asp:LinkButton>
                   <asp:LinkButton ID="lnkAnonymousView" ToolTip="Anonymous" OnClick="lnkAnonymousView_Click" runat="server" Text="Link2"></asp:LinkButton>         
               </div>   
             
               <div style="text-align:center; margin:auto; padding:15px 0 0 0">
                   <asp:LinkButton ID="LinkButton1" ToolTip="Normal" OnClick="lnknormalview_Click" runat="server" Text="Link1"></asp:LinkButton>
                   <asp:LinkButton ID="LinkButton2" ToolTip="Anonymous" OnClick="lnkAnonymousView_Click" runat="server" Text="Link2"></asp:LinkButton>         
               </div> 
               <div style="text-align:center; margin:auto; padding:15px 0 0 0">
                   <asp:LinkButton ID="LinkButton3" ToolTip="Normal" OnClick="lnknormalview_Click" runat="server" Text="Link1"></asp:LinkButton>
                   <asp:LinkButton ID="LinkButton4" ToolTip="Anonymous" OnClick="lnkAnonymousView_Click" runat="server" Text="Link2"></asp:LinkButton>         
               </div>              
          </div> 
  </div>
  <div class="middle" >
               <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div style="display:inline-block; text-align:center; margin-top:20px; width:100%;">
                             <asp:TextBox ID="txtpost"  Width="400px" runat="server"></asp:TextBox>
                             <asp:Button ID="btnpost" Text="Post" runat="server" />
                         </div><br />
                    <div class="inner-grid-container" style="height:300px; display:block">
                        
                        <div style=" border: 1px solid blue;  display:inline-block; margin-top:20px; width:100px; height:100px;">RC1</div>
                        <div style=" border: 1px solid blue; display:inline-block; margin-top:20px; width:300px; height:100px;">RC1</div>
                        <div style=" border: 1px solid blue;  display:inline-block; margin-top:20px; width:100px; height:100px;">RC1</div>
                      </div>
                </asp:View>

                <asp:View ID="View2" runat="server">
                   <ul id="Note" class="modern-grid js-masonry">
                            <li>
                                <div class="modern-grid-content">
                                   <div class="listbtn-category"><a href="a">a truth</a></div>
                                    <div class="time-ago"><span>9 mins </span> ago</div>
                                    <h2><a href="a"></a></h2>                            
                                    <p>One of my closest friends opened up to me about depression.@@@@@@@@@ ..</p>
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
                                    <div class="modern-grid-content">
                                       <div class="listbtn-category"><a href="a">a truth</a></div>
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
                        </ul>
                </asp:View>
             </asp:MultiView>
  </div>  

  <div class="right">

  </div>               


</asp:Content>
