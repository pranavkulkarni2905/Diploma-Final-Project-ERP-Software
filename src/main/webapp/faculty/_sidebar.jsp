<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<title></title>
<link rel="apple-touch-icon"
	href="../app-assets/images/favicon/apple-touch-icon-152x152.png">
<link rel="shortcut icon" type="image/x-icon"
	href="../app-assets/images/favicon/favicon-32x32.png">
<link href="../icon.css?family=Material+Icons" rel="stylesheet">
<!-- BEGIN: VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/vendors/vendors.min.css">
<!-- END: VENDOR CSS-->
<!-- BEGIN: Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/materialize.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/themes/vertical-dark-menu-template/style.min.css">
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/pages/dashboard.min.css">
<!-- END: Page Level CSS-->
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="../app-assets/css/custom/custom.css">
<!-- END: Custom CSS-->
</head>
<!-- END: Head-->
<body
	class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 2-columns   "
	data-open="click" data-menu="vertical-dark-menu" data-col="2-columns">

	<!-- BEGIN: Header-->
	<header class="page-topbar" id="header">
		<div class="navbar navbar-fixed">
			<nav
				class="navbar-main navbar-color nav-collapsible sideNav-lock navbar-light">
				<div class="nav-wrapper">
					<div class="header-search-wrapper hide-on-med-and-down">
						<i class="material-icons">search</i> <input
							class="header-search-input z-depth-2" type="text" name="Search"
							placeholder="Search Here ..." data-search="template-list">
						<ul class="search-list collection display-none"></ul>
					</div>
					<ul class="navbar-list right">
						<li class="dropdown-language"><a
							class="waves-effect waves-block waves-light translation-button"
							href="#" data-target="translation-dropdown"><span
								class="flag-icon flag-icon-gb"></span></a></li>
						<li class="hide-on-med-and-down"><a
							class="waves-effect waves-block waves-light toggle-fullscreen"
							href="javascript:void(0);"><i class="material-icons">settings_overscan</i></a></li>
						<li class="hide-on-large-only search-input-wrapper"><a
							class="waves-effect waves-block waves-light search-button"
							href="javascript:void(0);"><i class="material-icons">search</i></a></li>
						<li><a
							class="waves-effect waves-block waves-light notification-button"
							href="javascript:void(0);" data-target="notifications-dropdown"><i
								class="material-icons">notifications_none<small
									class="notification-badge">5</small></i></a></li>
						<li><a
							class="waves-effect waves-block waves-light profile-button"
							href="javascript:void(0);" data-target="profile-dropdown"> <span
								class="avatar-status avatar-online"> <img
									src="../images/avtar.jpg" alt="avatar">
							</span>



						</a></li>

					</ul>
					<!-- translation-button-->
					<ul class="dropdown-content" id="translation-dropdown">
						<li class="dropdown-item"><a class="grey-text text-darken-1"
							href="#!" data-language="en"><i
								class="flag-icon flag-icon-gb"></i> English</a></li>
						<li class="dropdown-item"><a class="grey-text text-darken-1"
							href="#!" data-language="fr"><i
								class="flag-icon flag-icon-fr"></i> French</a></li>
						<li class="dropdown-item"><a class="grey-text text-darken-1"
							href="#!" data-language="pt"><i
								class="flag-icon flag-icon-pt"></i> Portuguese</a></li>
						<li class="dropdown-item"><a class="grey-text text-darken-1"
							href="#!" data-language="de"><i
								class="flag-icon flag-icon-de"></i> German</a></li>
					</ul>
					<!-- notifications-dropdown-->
					<ul class="dropdown-content" id="notifications-dropdown">
						<li>
							<h6>
								NOTIFICATIONS<span class="new badge">5</span>
							</h6>
						</li>
						<li class="divider"></li>
						<li><a class="black-text" href="#!"><span
								class="material-icons icon-bg-circle cyan small">add_shopping_cart</span>
								A new order has been placed!</a> <time
								class="media-meta grey-text darken-2"
								datetime="2015-06-12T20:50:48+08:00">2 hours ago</time></li>
						<li><a class="black-text" href="#!"><span
								class="material-icons icon-bg-circle red small">stars</span>
								Completed the task</a> <time class="media-meta grey-text darken-2"
								datetime="2015-06-12T20:50:48+08:00">3 days ago</time></li>
						<li><a class="black-text" href="#!"><span
								class="material-icons icon-bg-circle teal small">settings</span>
								Settings updated</a> <time class="media-meta grey-text darken-2"
								datetime="2015-06-12T20:50:48+08:00">4 days ago</time></li>
						<li><a class="black-text" href="#!"><span
								class="material-icons icon-bg-circle deep-orange small">today</span>
								Director meeting started</a> <time
								class="media-meta grey-text darken-2"
								datetime="2015-06-12T20:50:48+08:00">6 days ago</time></li>
						<li><a class="black-text" href="#!"><span
								class="material-icons icon-bg-circle amber small">trending_up</span>
								Generate monthly report</a> <time
								class="media-meta grey-text darken-2"
								datetime="2015-06-12T20:50:48+08:00">1 week ago</time></li>
					</ul>
					<!-- profile-dropdown-->
					<ul class="dropdown-content" id="profile-dropdown">
						<li><a class="grey-text text-darken-1"
							href="admin-profile.jsp"><i class="material-icons">person_outline</i>
								Profile</a></li>
						<li><a class="grey-text text-darken-1" href="app-chat.html"><i
								class="material-icons">chat_bubble_outline</i> Chat</a></li>
						<li><a class="grey-text text-darken-1" href="page-faq.html"><i
								class="material-icons">help_outline</i> Help</a></li>
						<li class="divider"></li>
						<li><a class="grey-text text-darken-1"
							href="user-lock-screen.html"><i class="material-icons">lock_outline</i>
								Lock</a></li>
						<li><a class="grey-text text-darken-1"
							href="../AdminLogoutServlet"><i class="material-icons">keyboard_tab</i>
								Logout</a></li>
					</ul>
				</div>
				<nav class="display-none search-sm">
					<div class="nav-wrapper">
						<form id="navbarForm">
							<div class="input-field search-input-sm">
								<input class="search-box-sm mb-0" type="search" required=""
									id="search" placeholder="Search Here ...."
									data-search="template-list"> <label class="label-icon"
									for="search"><i class="material-icons search-sm-icon">search</i></label><i
									class="material-icons search-sm-close">close</i>
								<ul class="search-list collection search-list-sm display-none"></ul>
							</div>
						</form>
					</div>
				</nav>
			</nav>
		</div>
	</header>
	<!-- END: Header-->




	<!-- BEGIN: SideNav-->
	<aside
		class="sidenav-main nav-expanded nav-lock nav-collapsible sidenav-dark sidenav-active-rounded">
		<div class="brand-sidebar">
			<h1 class="logo-wrapper">
				<a class="brand-logo darken-1" href="admin-index.jsp"><img
					class="hide-on-med-and-down " src="../images/logo.jpg"
					style="width: 25px; height: 25px;" alt=" logo"><span
					class="logo-text hide-on-med-and-down">ERP</span></a><a
					class="navbar-toggler" href="#"><i class="material-icons">radio_button_checked</i></a>
			</h1>
		</div>
		<ul
			class="sidenav sidenav-collapsible leftside-navigation collapsible sidenav-fixed menu-shadow"
			id="slide-out" data-menu="menu-navigation"
			data-collapsible="accordion">



			<li class="navigation-header"><a class="navigation-header-text">Own
					Setting</a><i class="navigation-header-icon material-icons">more_horiz</i>
			</li>

			<li class="bold"><a
				class="collapsible-header waves-effect waves-cyan "
				href="JavaScript:void(0)"><i class="material-icons">person</i><span
					class="menu-title" data-i18n="Pages">Admin</span></a>
				<div class="collapsible-body">
					<ul class="collapsible collapsible-sub"
						data-collapsible="accordion">
						<li><a href="faculty-profile.jsp"><i class="material-icons">add_box</i>Profile<span
								data-i18n="Contact"></span></a></li>
						<li><a href=""><i class="material-icons">visibility</i><span
								data-i18n="Blog"> </span></a></li>

					</ul>
				</div></li>


		</ul>
		<div class="navigation-background"></div>
		<a
			class="sidenav-trigger btn-sidenav-toggle btn-floating btn-medium waves-effect waves-light hide-on-large-only"
			href="#" data-target="slide-out"><i class="material-icons">menu</i></a>
	</aside>
	<!-- END: SideNav-->




	<!-- BEGIN VENDOR JS-->
	<script src="../app-assets/js/vendors.min.js"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<script src="../app-assets/vendors/chartjs/chart.min.js"></script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN THEME  JS-->
	<script src="../app-assets/js/plugins.min.js"></script>
	<script src="../app-assets/js/search.min.js"></script>
	<script src="../app-assets/js/custom/custom-script.min.js"></script>
	<script src="../app-assets/js/scripts/customizer.min.js"></script>
	<!-- END THEME  JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<script src="../app-assets/js/scripts/dashboard-ecommerce.min.js"></script>
	<!-- END PAGE LEVEL JS-->
</body>
</html>