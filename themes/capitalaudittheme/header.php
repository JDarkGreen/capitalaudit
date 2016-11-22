<!DOCTYPE html>
<!--[if IE 8]> <html <?php language_attributes(); ?> class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html <?php language_attributes(); ?>> <!--<![endif]-->
<head>
  	<meta charset="<?php bloginfo('charset'); ?>">
	<title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>
	<meta name="description" content="<?php bloginfo('description'); ?>">
	<meta name="author" content="">

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" />
	
	<!-- Pingbacks -->
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon and Apple Icons -->
	<?php wp_head(); ?>
</head>

<?php 

/* 
 * Objeto Actual 
 */
global $post;

/*
 * Opciones de Personalización
 */
$options = get_option('theme_custom_settings');  

/*
 * Url Logo del Tema
 */

if( isset($options['logo']) && !empty($options['logo']) ) : 

	$url_logo = $options['logo'];

else:

	$url_logo = IMAGES . '/slider_inventarios_capital_audit.png';

endif;

?>

<body <?php body_class(); ?> >


	<!-- Header -->
	<header class="mainHeader hidden-xs-down">

		<div id="header-top-bar">

			<div class="container">

				<div class="row container-flex container-flex-center">
					
					<div class="col-xs-4">
		
						<!-- Logo -->
						<h1 class="logo">
							<a href="<?= site_url() ?>">
								<img src="<?= $url_logo ?>" alt="<?= get_bloginfo('description') ?>" class="img-fluid" /></a>
						</h1><!-- /.logo -->
						
					</div> <!-- /.col-xs-4 -->

					<!-- Teléfonos de Contacto -->
					<div class="col-xs-8 text-xs-right">

						<?php if( isset($options['contact_tel']) && !empty($options['contact_tel']) ) :?>
						
						<i class="fa fa-phone" aria-hidden="true"></i>

						<?= $options['contact_tel'] ?>

						<?php endif; ?>

					</div> <!-- /.col-xs-8 -->

				</div> <!-- /.row -->

			</div> <!-- /.container -->
		</div> <!-- /#header-top-bar -->

		<!-- Navegacion principal -->
		<nav class="mainNavigation text-xs-center">

			<div class="container">
					<?php 
					wp_nav_menu(
						array(
							'menu_class'     => 'mainMenu list-inline text-center',
							'theme_location' => 'main-menu'
					));
					?>
			</div> <!-- /.container -->
		</nav><!-- /.mainNavigation -->

	</header><!-- /.mainHeader -->

	<!-- Header Mobile -->
	<header class="mainHeader hidden-sm-up" canvas="">

		<div class="mainHeader__mobile ">

			<!-- Icono abrir menu lateral -->
			<div class="icon-header">
				<i id="toggle-left-nav" class="fa fa-bars" aria-hidden="true"></i>
			</div><!-- /.icon-header -->

			<!-- Logo -->
			<h1 class="logo">
				<a href="<?= site_url() ?>">
					<img src="<?= $url_logo; ?>" alt="<?= "-logo-" . bloginfo('name') ?>" class="img-fluid center-block" />
				</a>
			</h1> <!-- /.lgoo -->	

			<!-- Icono abrir menu lateral derecha -->
			<div class="icon-header">
				<i id="toggle-right-nav" class="fa fa-bars" aria-hidden="true"></i>
			</div><!-- /.icon-header -->	

		</div> <!-- /.mainHeader__mobile -->

	</header> <!-- /.mainHeader -->
	
	<!-- Contenedor Izquierda versión mobile -->
	<div class="sidebar__content" off-canvas="id-1 left push">
	
		<!-- Logo -->
		<h1 class="logo">
			<a href="<?= site_url() ?>"><img src="<?= $url_logo; ?>" alt="logo-capitalaudit" class="img-fluid" /></a>
		</h1><!-- /.logo -->

		<!-- Navegacion principal -->
		<nav class="mainNavigation">
			<?php 
				wp_nav_menu(
					array(
						'menu_class'     => 'mainMenu list-inline text-center',
						'theme_location' => 'main-menu'
				));
			?>
		</nav><!-- /.mainNavigation -->

 	</div> <!-- /.sidebar__content -->

  	<!-- Contenedor Izquierda versión mobile -->
  	<div class="sidebar__content" off-canvas="id-2 right push">
		<!-- Incluir template de categorias -->
		<?php include(locate_template('partials/categories-posts.php') ); ?>
  	</div> <!-- /.sb-slidebar sb-right -->
	
	<!-- Slidebar  Contenedor -->
<div id="mobile-container" canvas="container">
