body {  
	behavior: url(includes/csshover.htc);
	}
	
/*green*/
div#dropMenu li a:hover, div#dropMenu li.submenu li.submenu:hover {color: #4f4f4f!important;background:#000;}


/*blue
div#dropMenu li a:hover, div#dropMenu li.submenu li.submenu:hover, div#dropMenu ul.level2 a:hover {color: #ffffff!important;background:#6C99D9;}
*/ 

/*red 
div#dropMenu li a:hover, div#dropMenu li.submenu li.submenu:hover, div#dropMenu ul.level2 a:hover {color: #ffffff!important;background:#DC262E;}
*/ 

/*grey 
div#dropMenu li a:hover, div#dropMenu li.submenu li.submenu:hover, div#dropMenu ul.level2 a:hover {color: #4f4f4f!important;background:#D5D5D5;}
*/
	
#dropMenuWrapper {
	width:243px;
	margin:0;
	height:15px;
	font-size:12px;
	text-align: right;
	background:#fff;
	}
	
div#dropMenu {
  	width:243px;
  	margin:0 auto;
    	text-align:center;
	z-index:1000;
	position:relative;
	background:#f00;
	}

div#dropMenu ul {
	margin: 0; 
	padding: 1;
	}
	
div#dropMenu li {
	position: relative; 
	list-style: none; 
	margin: 0; 
	float: left; 
	line-height: 1em;
	}
	
div#dropMenu ul.level1 {
	width:640px; 
	margin:0 auto; 
	text-align:right;
	background:#000;
	height:2.17em;
	z-index:1000;
	}
	
div#dropMenu li:hover {}
/*div#dropMenu li.submenu {background: url(../images/dropmenu.gif) 95% 50% no-repeat;} */
div#dropMenu li.submenu:hover {}
div#dropMenu li a {display: block; padding: 2px 3px 1px 3px;text-decoration: none; text-transform:uppercase; color:#999999; text-align:left; } 
div#dropMenu>ul a {width: auto;}
div#dropMenu ul ul {position: absolute; width: 12em;display: none;}
div#dropMenu ul ul li {width:12em;}
/*div#dropMenu li.submenu li.submenu {background: url(../images/submenu.gif) 95% 50% no-repeat;} */
div#dropMenu ul.level1 li.submenu:hover ul.level2, 
div#dropMenu ul.level2 li.submenu:hover ul.level3,
div#dropMenu ul.level3 li.submenu:hover ul.level4,
div#dropMenu ul.level4 li.submenu:hover ul.level5 {display:block;z-index:1000;}
div#dropMenu ul.level2 {top: 2.17em; background:#0bb710;z-index:1000;}
div#dropMenu ul.level3, div#dropMenu ul.level4, div#dropMenu ul.level5 {top: 0; left: 12em; background:#000}
div#dropMenu ul.level2 a {padding: 0.5em 0 0.5em 0.25em;color: white; text-transform:none;}  /* this is text color on drop-down submenu */
div#dropMenu ul.level2 a:hover {color:#4f4f4f;}
