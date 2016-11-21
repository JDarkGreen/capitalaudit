<?php 
/*
 * File: Section Staff
 * Archivo que despliega los miembros del staff
 */ 

/*Argumentos*/
$args = array(
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
	'post_status'    => 'publish',
	'post_type'      => 'theme-staff',
	'posts_per_page' => -1, ); 

$staff = get_posts( $args ); ?>


<section id="staffMembers">

	<!-- Titulo -->
	<h2 class="PageCommon__subtitle text-uppercase">
	<?php _e( "nuestro staff" , LANG ); ?></h2> 

	<!-- Contenedor Flexible -->
	<div class="container-flex container-flex-center">

	<?php if( count($staff) > 0 ): ?>
	
		<?php foreach( $staff as $member ): ?>

		<?php 
			/* Imágen */
			$url_image = has_post_thumbnail( $member->ID ) ? wp_get_attachment_url( get_post_thumbnail_id( $member->ID ) ) : IMAGES . '/default-member.jpg';

			/* Alt Imágen */
			$alt_image = has_post_thumbnail( $member->ID ) ? get_post_meta( get_post_thumbnail_id( $member->ID ) , '_wp_attachment_image_alt' , true ) : $member->post_name;  ?>
			
			<!-- Imágen -->
			<figure class="featured-item-nosotros featured-member relative text-xs-center" style="background-image: url( <?= $url_image; ?> );">

				<!-- Figcaption -->
				<figcaption>
					<h3> <?=  $member->post_title ?> </h3>
					<span> <?= $member->post_content ?> </span>
				</figcaption>
				
			</figure> <!-- /.featured-item-nosotros -->

		<?php endforeach; ?>

	<?php else: ?>

	<?php endif; ?>
		
	</div> <!-- /.container-flex container-flex-center -->

</section> <!-- /#staffMembers -->