<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body class="cbp-spmenu-push">


<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.jsp"><span class="fa fa-area-chart"></span> Travel<span class="dashboard_text">Easy Travelling</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
             <!--  <li class="header">MAIN NAVIGATION</li> -->
              <li class="treeview">
                <a href="index.jsp">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
              </li>
			  <li class="treeview">
                <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Places Section</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="addplace.jsp"><i class="fa fa-angle-right"></i>Add Places</a></li>
                  <li><a href="viewplace.jsp"><i class="fa fa-angle-right"></i> View Places</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Place Type Section</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                 <ul class="treeview-menu">
                  <li><a href="addcategory.jsp"><i class="fa fa-angle-right"></i>Add Category</a></li>
                  <li><a href="viewcategory.jsp"><i class="fa fa-angle-right"></i>View Category</a></li>
                   <!-- <li><a href="viewplace.jsp"><i class="fa fa-angle-right"></i>Zoo</a></li>
                    <li><a href="viewplace.jsp"><i class="fa fa-angle-right"></i>Park </a></li>
                    <li><a href="viewplace.jsp"><i class="fa fa-angle-right"></i>Water Park </a></li>
                   
 -->               
                </ul> 
              </li>
              
                <li class="treeview">
                <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Feedback Section</span>
               <i class="fa fa-angle-left pull-right"></i>
                </a>
                 <ul class="treeview-menu">
                  <li><a href="showfeedback.jsp"><i class="fa fa-angle-right"></i>Feedback</a></li>
                 <!-- <li><a href="viewplace.jsp"><i class="fa fa-angle-right"></i> View Places</a></li> -->
                </ul>
              </li>
              
              
              </ul>
              </div>
                            
            <!--   <li class="treeview">
                <a href="charts.html">
                <i class="fa fa-pie-chart"></i>
                <span>Charts</span>
                <span class="label label-primary pull-right">new</span>
                </a>
              </li>
              <li class="treeview">
              <li class="treeview">
                <a href="#">
                <i class="fa fa-laptop"></i>
                <span>UI Elements</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="general.html"><i class="fa fa-angle-right"></i> General</a></li>
                  <li><a href="icons.html"><i class="fa fa-angle-right"></i> Icons</a></li>
                  <li><a href="buttons.html"><i class="fa fa-angle-right"></i> Buttons</a></li>
                  <li><a href="typography.html"><i class="fa fa-angle-right"></i> Typography</a></li>
                </ul>
              </li>
			  <li>
                <a href="widgets.html">
                <i class="fa fa-th"></i> <span>Widgets</span>
                <small class="label pull-right label-info">08</small>
                </a>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-edit"></i> <span>Forms</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="forms.html"><i class="fa fa-angle-right"></i> General Forms</a></li>
                  <li><a href="validation.html"><i class="fa fa-angle-right"></i> Form Validations</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-table"></i> <span>Tables</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="tables.html"><i class="fa fa-angle-right"></i> Simple tables</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-envelope"></i> <span>Mailbox </span>
                <i class="fa fa-angle-left pull-right"></i><small class="label pull-right label-info1">08</small><span class="label label-primary1 pull-right">02</span></a>
                <ul class="treeview-menu">
                  <li><a href="inbox.html"><i class="fa fa-angle-right"></i> Mail Inbox </a></li>
                  <li><a href="compose.html"><i class="fa fa-angle-right"></i> Compose Mail </a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-folder"></i> <span>Examples</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="login.html"><i class="fa fa-angle-right"></i> Login</a></li>
                  <li><a href="signup.html"><i class="fa fa-angle-right"></i> Register</a></li>
                  <li><a href="404.html"><i class="fa fa-angle-right"></i> 404 Error</a></li>
                  <li><a href="500.html"><i class="fa fa-angle-right"></i> 500 Error</a></li>
                  <li><a href="blank-page.html"><i class="fa fa-angle-right"></i> Blank Page</a></li>
                </ul>
              </li>
              <li class="header">LABELS</li>
              <li><a href="#"><i class="fa fa-angle-right text-red"></i> <span>Important</span></a></li>
              <li><a href="#"><i class="fa fa-angle-right text-yellow"></i> <span>Warning</span></a></li>
              <li><a href="#"><i class="fa fa-angle-right text-aqua"></i> <span>Information</span></a></li>
            </ul>
          </div> -->
          <!-- /.navbar-collapse -->
     </nav>
    </aside>
	</div> 
 </div>
 		
 		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
 		
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
 
<!--</div>
</div> -->

</body>
</html>