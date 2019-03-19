﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Layout.aspx.cs" Inherits="WebApplication1.Layout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/reset.min.css" rel="stylesheet" />
    <script src="Scripts/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript">

        function resizeGridItem(item){
  grid = document.getElementsByClassName("grid")[0];
  rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
  rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
  rowSpan = Math.ceil((item.querySelector('.content').getBoundingClientRect().height+rowGap)/(rowHeight+rowGap));
    item.style.gridRowEnd = "span "+rowSpan;
}

function resizeAllGridItems(){
  allItems = document.getElementsByClassName("item");
  for(x=0;x<allItems.length;x++){
    resizeGridItem(allItems[x]);
  }
}

function resizeInstance(instance){
	item = instance.elements[0];
  resizeGridItem(item);
}

window.onload = resizeAllGridItems();
window.addEventListener("resize", resizeAllGridItems);

allItems = document.getElementsByClassName("item");
for(x=0;x<allItems.length;x++){
  imagesLoaded( allItems[x], resizeInstance);
}
    </script>

    <style>
        .grid {
  display: grid;
  grid-gap: 10px;
  grid-template-columns: repeat(auto-fill, minmax(250px,1fr));
  grid-auto-rows: 20px;
}

/* Non-grid specific CSS */  
body {
  margin: 10px;
	color: #374046;
	background-color: #374046;
	font-family: 'Open Sans Condensed', sans-serif;
	font-size: 1.15em;
	text-rendering: optimizeLegibility;
	-webkit-font-smoothing: antialiased;
}

.item {
  background-color: #ffffff;
}

.photothumb{
  width: 100%;
}

.title {
  padding: 20px;
 }

.title h3{
  font-size: 1.2em;
  color: #ffffff;
  text-transform: uppercase;
}

.project .title{
  background-color: #607D8B;
}

.blog .title{
  background-color: #ff9800;
}

.photo .title{
  background-color: #f44336;
}

.desc{
  padding: 10px 10px 5px 10px;
}

.desc img{
  width: 50%;
  margin: 0 10px 10px 0;
  float: left;
}

.desc p{
  margin-bottom: 10px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="grid">
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>1: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>2: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>3: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>4: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>5: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>6: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>7: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>8: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>9: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>10: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>11: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>12: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>13: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>14: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>15: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>16: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>17: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>18: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>19: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>20: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>21: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>22: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>23: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>24: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>25: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>26: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
    <div class="item project">
    <div class="content">
      <div class="title">
        <h3>27: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>28: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>29: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>30: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>31: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>32: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>33: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>34: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>35: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>36: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>37: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>38: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>39: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>40: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>41: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>42: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>43: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>44: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>45: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>46: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>47: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>48: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>49: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>50: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>51: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>52: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>53: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>54: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>55: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>56: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>57: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>58: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>59: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>60: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>61: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>62: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>63: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>64: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>65: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>66: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>67: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>68: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>69: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>70: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>71: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>72: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>73: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>74: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>75: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>76: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>77: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>78: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>79: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>80: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>81: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>82: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog5.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>83: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>84: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>85: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>86: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>87: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>88: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>89: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>90: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>91: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>92: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>93: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis</p>
      </div>
    </div>
  </div>
  <div class="item blog">
    <div class="content">
      <div class="title">
        <h3>94: Blog Post</h3>
      </div>
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. </p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>95: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog9.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>96: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog10.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam,</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>97: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog1.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel .</p>
      </div>
    </div>
  </div>
  <div class="item photo">
    <div class="content">
      <div class="title">
        <h3>98: Photo</h3>
      </div>
      <img class="photothumb" src="https://www.andybarefoot.com/codepen/images/dogs/dog2.jpg">
      <div class="desc">
        <p>Lorem ipsum dolor sit amet, conse</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>99: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog3.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum non orci ut dignissim. Fusce fermentum felis aliquam, mattis nibh ut, faucibus leo. Sed lectus libero, volutpat at eros quis, venenatis tempus neque. Nulla vel faucibus orci, nec convallis ligula. Quisque maximus gravida orci, in lacinia mauris pretium nec. Sed et enim bibendum, fermentum tellus eu, eleifend ex. Aliquam lectus magna, sollicitudin vitae placerat ac, semper ut risus. Nunc vestibulum lacus et nulla volutpat auctor.</p>
      </div>
    </div>
  </div>
  <div class="item project">
    <div class="content">
      <div class="title">
        <h3>100: Project</h3>
      </div>
      <div class="desc">
        <img src="https://www.andybarefoot.com/codepen/images/dogs/dog4.jpg">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce facilisis fringilla laoreet. Mauris mattis enim ut felis consectetur, vitae lacinia enim auctor. Aenean vitae fermentum odio. Lorem, nec convallis ligula. Quisque maximus </p>
      </div>
    </div>
  </div>
</div>
    </form>
</body>
</html>
