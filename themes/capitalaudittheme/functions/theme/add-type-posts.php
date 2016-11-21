<?php  

//Archivo que contiene todos los nuevos tipos creados en el tema

function pretelli_create_post_type(){

	/*|>>>>>>>>>>>>>>>>>>>> BANNERS  <<<<<<<<<<<<<<<<<<<<|*/
	
	$labels = array(
		'name'               => __('Sliders Home'),
		'singular_name'      => __('Slider Home'),
		'add_new'            => __('Nuevo Slider Home'),
		'add_new_item'       => __('Agregar nuevo Slider Home'),
		'edit_item'          => __('Editar Slider Home'),
		'view_item'          => __('Ver Slider Home'),
		'search_items'       => __('Buscar Slider Homes'),
		'not_found'          => __('Slider Home no encontrado'),
		'not_found_in_trash' => __('Slider Home no encontrado en la papelera'),
	);

	$args = array(
		'labels'      => $labels,
		'has_archive' => true,
		'public'      => true,
		'hierachical' => false,
		'supports'    => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'taxonomies'  => array('post-tag','banner_category'),
		'menu_icon'   => 'dashicons-visibility',
	);

	/*|>>>>>>>>>>>>>>>>>>>> SERVICIOS  <<<<<<<<<<<<<<<<<<<<|*/
	
	$labels2 = array(
		'name'               => __('Servicio'),
		'singular_name'      => __('Servicio'),
		'add_new'            => __('Nuevo Servicio'),
		'add_new_item'       => __('Agregar nuevo Servicio'),
		'edit_item'          => __('Editar Servicio'),
		'view_item'          => __('Ver Servicio'),
		'search_items'       => __('Buscar Servicios'),
		'not_found'          => __('Servicio no encontrado'),
		'not_found_in_trash' => __('Servicio no encontrado en la papelera'),
	);

	$args2 = array(
		'labels'          => $labels2,
		'has_archive'     => true,
		'public'          => true,
		'hierachical'     => false,
		'supports'        => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'taxonomies'      => array('post-tag','category'),
		'menu_icon'       => 'dashicons-exerpt-view',
	);

	/*|>>>>>>>>>>>>>>>>>>>> GALERÍA IMÁGENES  <<<<<<<<<<<<<<<<<<<<|*/
	
	$labels3 = array(
		'name'               => __('Galería Imágenes'),
		'singular_name'      => __('Imágen'),
		'add_new'            => __('Nuevo Imágen'),
		'add_new_item'       => __('Agregar nuevo Imágen'),
		'edit_item'          => __('Editar Imágen'),
		'view_item'          => __('Ver Imágen'),
		'search_items'       => __('Buscar Imágen'),
		'not_found'          => __('Imágen no encontrada'),
		'not_found_in_trash' => __('Imágen no encontrada en la papelera'),
	);

	$args3 = array(
		'labels'          => $labels3,
		'has_archive'     => true,
		'public'          => true,
		'hierachical'     => false,
		'supports'        => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'taxonomies'      => array('post-tag','category'),
		'menu_icon'       => 'dashicons-images-alt2',
	);

	/*|>>>>>>>>>>>>>>>>>>>> GALERÍA VIDEOS  <<<<<<<<<<<<<<<<<<<<|*/
	
	$labels4 = array(
		'name'               => __('Galería Videos'),
		'singular_name'      => __('Video'),
		'add_new'            => __('Nuevo Video'),
		'add_new_item'       => __('Agregar nuevo Video'),
		'edit_item'          => __('Editar Video'),
		'view_item'          => __('Ver Video'),
		'search_items'       => __('Buscar Video'),
		'not_found'          => __('Video no encontrada'),
		'not_found_in_trash' => __('Video no encontrada en la papelera'),
	);

	$args4 = array(
		'labels'          => $labels4,
		'has_archive'     => true,
		'public'          => true,
		'hierachical'     => false,
		'supports'        => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'taxonomies'      => array('post-tag','category'),
		'menu_icon'       => 'dashicons-video-alt2',
	);


	/*|>>>>>>>>>>>>>>>>>>>> STAFF  <<<<<<<<<<<<<<<<<<<<|*/
	
	$labels_staff = array(
		'name'               => __('Staff'),
		'singular_name'      => __('Integrante'),
		'add_new'            => __('Nuevo Integrante'),
		'add_new_item'       => __('Agregar nuevo Integrante'),
		'edit_item'          => __('Editar Integrante'),
		'view_item'          => __('Ver Integrante'),
		'search_items'       => __('Buscar Integrante'),
		'not_found'          => __('Integrante no encontrado'),
		'not_found_in_trash' => __('Integrante no encontrado en la papelera'),
	);

	$args_staff = array(
		'labels'          => $labels_staff,
		'has_archive'     => true,
		'public'          => true,
		'hierachical'     => false,
		'supports'        => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'taxonomies'      => array('post-tag','category'),
		'menu_icon'       => 'dashicons-groups',
	);


	/*|>>>>>>>>>>>>>>>>>>>> MARCAS  <<<<<<<<<<<<<<<<<<<<|*/
	
	$labels_marcas = array(
		'name'               => __('Marcas'),
		'singular_name'      => __('Marca'),
		'add_new'            => __('Nueva Marca'),
		'add_new_item'       => __('Agregar nueva Marca'),
		'edit_item'          => __('Editar Marca'),
		'view_item'          => __('Ver Marca'),
		'search_items'       => __('Buscar Marca'),
		'not_found'          => __('Marca no encontrada'),
		'not_found_in_trash' => __('Marca no encontrada en la papelera'),
	);

	$args_marcas = array(
		'labels'          => $labels_marcas,
		'has_archive'     => true,
		'public'          => true,
		'hierachical'     => false,
		'supports'        => array('title','editor','excerpt','custom-fields','thumbnail','page-attributes'),
		'taxonomies'      => array('post-tag','category'),
		'menu_icon'       => 'dashicons-money',
	);




	/*|>>>>>>>>>>>>>>>>>>>> REGISTRAR  <<<<<<<<<<<<<<<<<<<<|*/
	
	/* Banner o Slider Home en el Tema */
	register_post_type('banner', $args);

	/* Servicios en el Tema */
	register_post_type('servicio', $args2);

	/* Imágenes de Galería */
	register_post_type('theme-image-gallery', $args3);
	
	/* Videos de Galería */
	register_post_type('theme-video-gallery', $args4);

	/* Miembros de Staff */
	register_post_type('theme-staff', $args_staff );

	/* Marcas */
	register_post_type('theme-marcas', $args_marcas );
	
	/**/
	flush_rewrite_rules();
}

add_action( 'init', 'pretelli_create_post_type' );



?>