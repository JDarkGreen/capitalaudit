<?php /*Template Name: Page Imágenes Template */ ?>

<?php 

/*
 * Obtener Objecto Actual
 */
global $post; 

/*
 * Opciones de Personalización
 */
$options = get_option('theme_custom_settings'); 

/* 
 * Obtener Header
 */
 get_header();  

/*
 * Parámetros para el banner de Página
 */
$banner = $post;
include( locate_template("partials/banner-common-pages.php") );  

/*
 * Obtener todas las Imágenes del Tema
 */
$args = array(
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
	'post_status'    => 'publish',
	'post_type'      => 'theme-image-gallery',
	'posts_per_page' => -1,
	'meta_query'     => array(
		array( 'key' => '_thumbnail_id' , 'compare' => 'EXISTS' )
	), );

$all_images = get_posts( $args );

?>

<!-- Container -->
<main class="container">

	<!-- Seccion de Informacion -->
	<section class="pageWrapper__content">

		<!-- Wrapper de Contenido / Contenedor Layout -->
		<?php if( $all_images ) : ?>
			
			<div class="container-flex">
				
				<?php foreach( $all_images as $current_image ) : 
					
					$url_image = wp_get_attachment_url( get_post_thumbnail_id($current_image->ID) ); 

					$alt_image = get_post_meta( get_post_thumbnail_id($current_image->ID) , '_wp_attachment_image_alt' , true );
				?>
				
				<!-- Imagen -->
				<a href="<?= $url_image; ?>" class="itemPreviewImage relative gallery-fancybox" rel="galeria-images">
					
					<figure class="featured-image" style="background-image : url(<?= $url_image; ?>)"></figure> <!-- /itemPreviewImage -->

					<!-- Icono on hover -->
					<span class="icon-zoom container-flex container-flex-center">
						<!-- Icon -->
						<i class="fa fa-search" aria-hidden="true"></i>
					</span>

				</a> <!-- /gallery fancybox -->

				<?php endforeach; ?>
			</div>

		<?php endif; ?>

	</section> <!-- /.pageNosotros__content -->

</main> <!-- /.container -->



<!-- Get Footer -->
<?php get_footer(); ?>