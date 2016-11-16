<?php /*Template Name: Page Videos Template */ ?>

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
	'post_type'      => 'theme-video-gallery',
	'posts_per_page' => -1

	);

$all_videos = get_posts( $args ); 

/*
 * Función Youtube obtener ID
 */
if( !function_exists('getidYoutube') ):

function getidYoutube( $url = '' )
{
	/*
	 * Obtener mediante patron de busqueda
	 */
	$patron = '%^ (?:https?://)? (?:www\.)? (?: youtu\.be/ | youtube\.com (?:/embed/ | /v/ | /watch\?v= ) ) ([\w-]{10,12}) $%x';

	$array  = preg_match( $patron , $url , $parte );

	if( false !== $array ){ return $parte[1]; }

	return false; 
}

endif; ?>


<!-- Container -->
<main class="container">

	<!-- Seccion de Informacion -->
	<section class="pageWrapper__content">

		<!-- Wrapper de Contenido / Contenedor Layout -->
		<?php if( $all_videos ) : ?>
			
			<div class="container-flex">
				
				<?php foreach( $all_videos as $current_video ) : 

					/*
					 * Obtener Url Id Youtube
					 */
					$id_youtube = getidYoutube( $current_video->post_content );
				?>

					<?php if($id_youtube): ?>
			
					<div class="itemVideoPreview">
				
						<div class="video-youtube" id="<?= $id_youtube; ?>" style="width: 100%; max-width:530px;height:275px;"></div>
			
					</div> <!-- /.itemVideoPreview -->

					<?php endif; ?>	
				
				<?php endforeach; ?>

			</div> <!-- / -->

		<?php endif; ?>

	</section> <!-- /.pageNosotros__content -->

</main> <!-- /.container -->



<!-- Get Footer -->
<?php get_footer(); ?>