﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
         
            string msg = "Using string builder hello from page load....";
            StringBuilder strscript = new StringBuilder();
           // strscript.Append("<li><div class='modern-grid-content'><div class='listbtn-category'><a href='a'>a truth</a></div><div class='time-ago'><span>9 mins </span> ago</div><h2><a href='a'></a></h2><p>" + msg + "  </p><ul class='meta-content-home'><li>3 <span>Views</span></li><li class='lm-space'></li><li class='thumbs-ranting'><div class='thumbs-rating-container' ><span class='thumbs-rating-up' onclick=''> 0</span><span class='thumbs-rating-down' onclick=''> 0</span><span class='thumbs-rating-already-voted' data-text='You already voted!'></span></div></li><li class='comment-count'> <span> 0 </span></li></ul><div class='clear'></div></div></li>");
            strscript.AppendFormat("<li><div class='modern-grid-content'>")
                .AppendFormat("<div class='listbtn-category'><a href='a'>a truth</a></div>")
                .AppendFormat("<div class='time-ago'><span>9 mins </span> ago</div>")
                .AppendFormat("<h2><a href='a'></a></h2><p>" + msg + "</p>")
                .AppendFormat("<ul class='meta-content-home'> <li> 3 <span> Views </span></li>")
                //.AppendFormat("<li class='lm-space'></li>")
                .AppendFormat("<li class='thumbs-ranting'><div class='thumbs-rating-container'>")
                .AppendFormat("<span class='thumbs-rating-up' onclick=''> 0</span>")
                .AppendFormat("<span class='thumbs-rating-down' onclick=''>0</span>")
                .AppendFormat("<span class='thumbs-rating-already-voted' data-text='You already voted!'></span>")
                .AppendFormat("<span class='comment-count'>0</span></div></li></ul>")
                .AppendFormat("<div class='clear'></div></div></li>");

            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "key", string.Format("Dymsg(\"{0}\");", strscript), true);
            for (int i = 0; i < 15; i++)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), i.ToString(), string.Format("Dymsg(\"{0}\");", strscript), true);
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            string msg = "Using StringBuilder click hello ....";
            //  string strscript = "<li><div class='modern-grid-content'> Dyanamic " + msg + " for LI Div</div></li>"; "Dymsg(' " + strscript.ToString() + " ')"
            StringBuilder strscript = new StringBuilder();   
            strscript.Append("<li><div class='modern-grid-content'> Dyanamic " + msg + " for LI Div</div></li>");
          
          //  ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", string.Format("Dymsg(\"{0}\");", strscript), true);
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Dymsg(\"" + strscript.ToString() +"\")", true);

        }

    }
}