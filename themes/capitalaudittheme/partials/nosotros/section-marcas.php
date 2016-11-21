<?php 
/*
 * File: Section Marcas
 * Archivo que despliega las Marcas Asociadas de la empresa
 */ 

/*Argumentos*/
$args = array(
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
	'post_status'    => 'publish',
	'post_type'      => 'theme-marcas',
	'posts_per_page' => -1,
	'meta_query'     => array(
		array( 'key' => '_thumbnail_id' , 'compare' => 'EXISTS' )
	)); 

$marcas = get_posts( $args ); ?>


<section id="sectionMarcas">

	<!-- Titulo -->
	<h2 class="PageCommon__subtitle text-uppercase">
	<?php _e( "nuestras marcas" , LANG ); ?></h2> 

	<!-- Contenedor Flexible -->
	<div class="container-flex container-flex-center">

	<?php if( count($marcas) > 0 ): ?>
	
		<?php foreach( $marcas as $marcas ): ?>
			
			<!-- Imágen -->
			<figure class="featured-item-nosotros featured-item-nosotros--border relative text-xs-center">

				<?= get_the_post_thumbnail( $marcas->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>

			</figure> <!-- /.featured-member -->

		<?php endforeach; ?>

	<?php else: ?>

	<?php endif; ?>
		
	</div> <!-- /.container-flex container-flex-center -->

</section> <!-- /# -->