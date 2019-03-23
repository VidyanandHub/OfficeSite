using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebApplication1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    MultiView1.ActiveViewIndex = 0;
            //}
        }

        protected void lnknormalview_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            string msg = "Using string builder hello from MultiView1.ActiveViewIndex Zero.................";
            StringBuilder strscript = new StringBuilder();
            // strscript.Append("<li><div class='modern-grid-content'><div class='listbtn-category'><a href='a'>a truth</a></div><div class='time-ago'><span>9 mins </span> ago</div><h2><a href='a'></a></h2><p>" + msg + "  </p><ul class='meta-content-home'><li>3 <span>Views</span></li><li class='lm-space'></li><li class='thumbs-ranting'><div class='thumbs-rating-container' ><span class='thumbs-rating-up' onclick=''> 0</span><span class='thumbs-rating-down' onclick=''> 0</span><span class='thumbs-rating-already-voted' data-text='You already voted!'></span></div></li><li class='comment-count'> <span> 0 </span></li></ul><div class='clear'></div></div></li>");
            strscript.AppendFormat("<li><div class='modern-grid-content'>")
                .AppendFormat("<div class='listbtn-category'><a href='a'>a truth</a></div>")
                .AppendFormat("<div class='time-ago'><span>9 mins </span> ago</div>")
                .AppendFormat("<h2><a href='a'></a></h2><p>" + msg + "</p>")
                .AppendFormat("<ul class='meta-content-home'> <li> 3 <span> Views </span></li>")
                .AppendFormat("<li class='thumbs-ranting'><div class='thumbs-rating-container'>")
                .AppendFormat("<span class='thumbs-rating-up' onclick=''> 0</span>")
                .AppendFormat("<span class='thumbs-rating-down' onclick=''>0</span>")
                .AppendFormat("<span class='thumbs-rating-already-voted' data-text='You already voted!'></span>")
                .AppendFormat("<span class='comment-count'>0</span></div></li></ul>")
                .AppendFormat("<div class='clear'></div></div></li>");

           
            for (int i = 0; i < 15; i++)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), i.ToString(), string.Format("Dymsg(\"{0}\");", strscript), true);
            }
        }

        protected void lnkAnonymousView_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            string msg = "Using string builder hello from MultiView1.ActiveViewIndex one.................";
            StringBuilder strscript = new StringBuilder();
            // strscript.Append("<li><div class='modern-grid-content'><div class='listbtn-category'><a href='a'>a truth</a></div><div class='time-ago'><span>9 mins </span> ago</div><h2><a href='a'></a></h2><p>" + msg + "  </p><ul class='meta-content-home'><li>3 <span>Views</span></li><li class='lm-space'></li><li class='thumbs-ranting'><div class='thumbs-rating-container' ><span class='thumbs-rating-up' onclick=''> 0</span><span class='thumbs-rating-down' onclick=''> 0</span><span class='thumbs-rating-already-voted' data-text='You already voted!'></span></div></li><li class='comment-count'> <span> 0 </span></li></ul><div class='clear'></div></div></li>");
            strscript.AppendFormat("<li><div class='modern-grid-content'>")
                .AppendFormat("<div class='listbtn-category'><a href='a'>a truth</a></div>")
                .AppendFormat("<div class='time-ago'><span>9 mins </span> ago</div>")
                .AppendFormat("<h2><a href='a'></a></h2><p>" + msg + "</p>")
                .AppendFormat("<ul class='meta-content-home'> <li> 3 <span> Views </span></li>")
                .AppendFormat("<li class='thumbs-ranting'><div class='thumbs-rating-container'>")
                .AppendFormat("<span class='thumbs-rating-up' onclick=''> 0</span>")
                .AppendFormat("<span class='thumbs-rating-down' onclick=''>0</span>")
                .AppendFormat("<span class='thumbs-rating-already-voted' data-text='You already voted!'></span>")
                .AppendFormat("<span class='comment-count'>0</span></div></li></ul>")
                .AppendFormat("<div class='clear'></div></div></li>");

         
            for (int i = 0; i < 10; i++)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), i.ToString(), string.Format("Dymsg(\"{0}\");", strscript), true);
            }
        }
    }
}