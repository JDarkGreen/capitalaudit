<?php /* Single Servicio Template */ ?>

<!-- Global Post -->
<?php 
	global $post; 
	$options = get_option('theme_custom_settings'); 
?>

<!-- Get Header -->
<?php get_header(); ?>

<!-- Incluir banner de la página Servicios -->
<?php 
	$page   = get_page_by_title( 'Servicios' );
	$banner = $page; 
	include( locate_template("partials/banner-common-pages.php") ); 
?>

<!-- Obtener Servicios por orden -->
<?php  
	$args = array(
		'order'          => 'ASC',
		'orderby'        => 'menu_order',
		'post_status'    => 'publish',
		'post_type'      => 'servicio',
		'posts_per_page' => -1,
	);

	//Todos los Servicios
	$servicios = get_posts( $args ); #var_dump($servicio);
?>

<!-- Menu de Servicios -->
<section class="pageServicios__menu">
	<div class="container">
		<ul>
			<?php foreach( $servicios as $serv ) : ?>
				<li> <a class="<?= $post->ID == $serv->ID ? 'active' : '' ?>" href="<?= $serv->guid ?>"><?= $serv->post_title ?> </a> </li>
			<?php endforeach; ?>
		</ul>
	</div> <!-- /.container -->
</section> <!-- /.pageServicios__menu -->

<!-- Container -->
<main class="container">

	<!-- Seccion de Servicios -->
	<section class="pageWrapper__content">
		
		<!-- Titulo --><h2 class="PageCommon__subtitle PageCommon__subtitle--no-border text-uppercase"><?php _e( $post->post_title , LANG ); ?></h2> 
		<!-- /.PageCommon__subtitle -->
		
		<div class="row">
			<!-- Seccion Historia -->
			<div class="col-xs-12 col-md-6">

				<!-- Contenido -->
				<div class="text-justify">
					<?php if( !empty( $post->post_content ) ) : 
						echo apply_filters('the_content' , $post->post_content );
						else: echo "Actualizando Contenido.";
						endif;
					?> 
				</div> <!-- /.text-justify -->

			</div> <!-- /col-xs-6 -->
			<!--  -->
			<div class="col-xs-12 col-md-6">

				<!-- Imagen Destacada -->
				<figure class="pageEmpresa__logo">

				<?php 
	          		$url_image = has_post_thumbnail( $post->ID ) ? wp_get_attachment_url( get_post_thumbnail_id( $post->ID ) ) : IMAGES . '/default-service.jpg';

	          		$alt_image = has_post_thumbnail( $post->ID ) ? get_post_meta( get_post_thumbnail_id( $post->ID ) , '_wp_attachment_image_alt' , true ) : $post->post_name;  ?>

	          		<img src="<?= $url_image; ?>" alt="<?= $alt_image ?>" class="img-fluid d-block m-x-auto" />
					
				</figure> 
				<!-- /.pageEmpresa__logo -->

			</div> <!-- /col-xs-6 -->
		</div> <!-- /.row -->
	</section> <!-- /.pageNosotros__content -->

	<!-- Linea de Separación --> <div class="line-separator"></div>

	<!-- Incluir Banner Comun a Servicios -->
	<?php include( locate_template('partials/banner-common-service.php') ); ?>

	
</main> <!-- /.container -->

<!-- Get Footer -->
<?php get_footer(); ?>