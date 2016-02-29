<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="nsilearning"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'nsilearning.ico')}" type="image/x-icon">		
		<%--
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		--%>
		<%--
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}"> 		
  		--%>
  		<%--
  		<asset:stylesheet src="bootstrap.min.css"/>
  		--%>
  		<asset:stylesheet src="footer.css"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/bootstrap/css/',file:'bootstrap.min.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/font-awesome/4.4.0/css/',file:'font-awesome.min.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/ionicons/2.0.1/css/',file:'ionicons.min.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/dist/css/',file:'AdminLTE.min.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/dist/css/skins',file:'_all-skins.min.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/plugins/iCheck/flat/',file:'blue.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/plugins/morris/',file:'morris.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/plugins/jvectormap/',file:'jquery-jvectormap-1.2.2.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/plugins/datepicker/',file:'datepicker3.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/plugins/daterangepicker/',file:'daterangepicker-bs3.css') }"/>
  		<link rel="stylesheet" type="text/css" href="${resource(dir:'AdminLTE-master/plugins/bootstrap-wysihtml5/',file:'bootstrap3-wysihtml5.min.css') }"/>  		

		<g:layoutHead/>
	</head>
	<body>
		<%--
			<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>
		--%>
		<g:render template="/layouts/bgheader" />
		<g:layoutBody/>
		<g:render template="/layouts/bgfooter" />
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<script src="/nsilearning/AdminLTE-master/plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
		<script src="/nsilearning/AdminLTE-master/dist/js/app.min.js" type="text/javascript"></script>
		<script src="/nsilearning/AdminLTE-master/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/nsilearning/AdminLTE-master/plugins/fastclick/fastclick.js" type="text/javascript"></script>
		<script src="/nsilearning/AdminLTE-master/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
		<script src="/nsilearning/AdminLTE-master/dist/js/demo.js" type="text/javascript"></script>
		<script src="/nsilearning/AdminLTE-master/dist/js/app.min.js" type="text/javascript"></script>
	</body>
</html>