<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en-us">
	<head>
		<meta charset="utf-8">
		<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
		
		<title> SmartAdmin </title>
		<meta name="description" content="">
		<meta name="author" content="">
		
		<!-- http://davidbcalhoun.com/2010/viewport-metatag -->
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="../css/bootstrap.min.css">	
		<link rel="stylesheet" type="text/css" media="screen" href="../css/font-awesome.min.css">

		<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
		<link rel="stylesheet" type="text/css" media="screen" href="../css/smartadmin-production.css">
		<link rel="stylesheet" type="text/css" media="screen" href="../css/smartadmin-skins.css">	
		
		<!-- SmartAdmin RTL Support is under construction
			<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.css"> -->
		
		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<link rel="stylesheet" type="text/css" media="screen" href="../css/demo.css">
		
		<!-- FAVICONS -->
		<link rel="shortcut icon" href="../img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="../img/favicon/favicon.ico" type="image/x-icon">
		
		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

	</head>
	<body class=""> <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->
		
		<!-- HEADER -->
		<header id="header">
				<div id="logo-group">
				
				<!-- PLACE YOUR LOGO HERE -->
				<span id="logo">
					<img src="../img/logo.png" alt="SmartAdmin">
				</span>
				<!-- END LOGO PLACEHOLDER -->
				
				<!-- Note: The activity badge color changes when clicked and resets the number to 0 
					 Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
				<span id="activity" class="activity-dropdown">
					<i class="fa fa-user"></i>
					<b class="badge">
						21
					</b>
				</span>
				
				<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
				<div class="ajax-dropdown">
					
					<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
					<div class="btn-group btn-group-justified" data-toggle="buttons">
				        <label class="btn btn-default">
				          <input type="radio" name="activity" id="ajax/notify/mail.html"> Msgs (14)
				        </label>
				        <label class="btn btn-default">
				          <input type="radio" name="activity" id="ajax/notify/notifications.html"> notify (3)
				        </label>
				        <label class="btn btn-default">
				          <input type="radio" name="activity" id="ajax/notify/tasks.html"> Tasks (4)
				        </label>
				    </div>
					
					<!-- notification content -->
					<div class="ajax-notifications custom-scroll">
						
						<div class="alert alert-transparent">
							<h4>Click a button to show messages here</h4>
							This blank page message helps protect your privacy, or you can show the first message here automatically.
						</div>
						
						<i class="fa fa-lock fa-4x fa-border"></i>
						
					</div>
					<!-- end notification content -->
					
					<!-- footer: refresh area -->
					<span>
						Last updated on: 12/12/2013 9:43AM
						<button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
						  <i class="fa fa-refresh"></i>
						</button>
					</span>
					<!-- end footer -->
					
				</div>
				<!-- END AJAX-DROPDOWN -->
			</div>
			
			<!-- projects dropdown -->
			<div id="project-context">
				
				<span class="label">Projects:</span>
				<span id="project-selector" class="popover-trigger-element dropdown-toggle" data-toggle="dropdown">Recent projects <i class="fa fa-angle-down"></i></span>
				
				<!-- Suggestion: populate this list with fetch and push technique -->
				<ul class="dropdown-menu">
					<li>
						<a href="javascript:void(0);">Online e-merchant management system - attaching integration with the iOS</a>
					</li>
					<li>
						<a href="javascript:void(0);">Notes on pipeline upgradee</a>
					</li>
					<li>
						<a href="javascript:void(0);">Assesment Report for merchant account</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="javascript:void(0);"><i class="fa fa-power-off"></i> Clear</a>
					</li>
				</ul>
				<!-- end dropdown-menu-->
				
			</div>
			<!-- end projects dropdown -->
			
			<!-- pulled right: nav area -->
			<div class="pull-right">
				
				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span>
						<a href="javascript:void(0);" title="Collapse Menu"><i class="fa fa-reorder"></i></a>
					</span>
				</div>
				<!-- end collapse menu -->
				
				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span>
						<a href="<c:url value="/j_spring_security_logout" />" title="Sign Out"><i class="fa fa-sign-out"></i></a>
					</span>
				</div>
				<!-- end logout button -->
			
				<!-- search mobile button (this is hidden till mobile view port) -->
				<div id="search-mobile" class="btn-header transparent pull-right">
					<span>
						<a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a>
					</span>
				</div>
				<!-- end search mobile button -->
				
				<!-- input: search field -->	
				<form action="#ajax/search.html" class="header-search pull-right">
					<input type="text" placeholder="Find reports and more" id="search-fld">
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
					<a href="javascript:void(0);" id="cancel-search-js" title="Cancel Search"><i class="fa fa-times"></i></a>
				</form>	
				<!-- end input: search field -->					
				
				<!-- multiple lang dropdown : find all flags in the image folder -->	
				<ul class="header-dropdown-list hidden-xs">
					<li>
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img alt="" src="../img/flags/us.png">
							<span>
								US
							</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu pull-right">
							<li class="active"><a href="javascript:void(0);"><img alt="" src="../img/flags/us.png"> US</a></li>
							<li><a href="javascript:void(0);"><img alt="" src="../img/flags/es.png"> Spanish</a></li>
							<li><a href="javascript:void(0);"><img alt="" src="../img/flags/de.png"> German</a></li>
						</ul>
					</li>
				</ul>
				<!-- end multiple lang -->
				
			</div>
			<!-- end pulled right: nav area -->
			
		</header>
		<!-- END HEADER -->
		
		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
		<aside id="left-panel">
			
			<!-- User info -->
			<div class="login-info">
				<span>
					<!-- User image size is adjusted inside CSS, it should stay as it --> 
					<img src="../img/avatars/sunny.png" alt="me" class="online" />	
					<a href="javascript:void(0);" id="show-shortcut"> ${username} <i class="fa fa-angle-down"></i></a>
				</span>
			</div>
			<!-- end user info -->
			
			<!-- NAVIGATION : This navigation is also responsive 
				 
				 To make this navigation dynamic please make sure to link the node 
				 (the reference to the nav > ul) after page load. Or the navigation 
				 will not initialize.
			-->
			<nav>
				<!-- NOTE: Notice the gaps after each icon usage <i></i>.. 
					 Please note that these links work a bit different than
					 traditional hre="" links. See documentation for details.
					-->
				
				<ul>
					<li class=""><a href="" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i>  <span class="menu-item-parent">Dashboard</span></a></li>
					<li><a href="javascript:void(0);" ><i class="fa fa-lg fa-fw fa-hdd"></i>  <span class="menu-item-parent">Cadastros</span></a>
						<ul>
							<li><a href="<c:url value="/cliente/"/>"><i class="fa fa-male"></i> Cliente</a></li>
							<li><a href=""><i class="fa fa-pencil-square-o"></i> Ordem de Servi�o</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<span class="minifyme">
				<i class="fa fa-arrow-circle-left hit"></i>
			</span>

			
		</aside>
		<!-- END NAVIGATION -->
		
		<!-- MAIN PANEL -->
		<div id="main" role="main">
			
			<!-- RIBBON -->
			<div id="ribbon">
				
				<span class="ribbon-button-alignment">
					<span id="refresh" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true"><i class="fa fa-refresh"></i></span>
				</span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<!-- This is auto generated -->
				</ol>		
				<!-- end breadcrumb -->	
				
				<!-- You can also add more buttons to the 
					 ribbon for further usability 
					 
					 Example below: 
					 
				<span class="ribbon-button-alignment pull-right">
					<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
					<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
					<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->
				
			</div>
			<!-- END RIBBON -->
			
			<!-- MAIN CONTENT -->
			<div id="content">