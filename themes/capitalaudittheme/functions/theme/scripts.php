<?php  

/* Archivo que solo se encargara de cargas los scripts del tema 
	http://www.ey.com/PE/es/Home
*/

function load_custom_scripts()
{
	wp_deregister_script('jquery');
  wp_register_script('jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js', false, '1.11.2');
  wp_enqueue_script('jquery');

	//jsCarousellite /
	wp_enqueue_script('jscarousel', THEMEROOT . '/js/jquery.jcarousellite.min.js', array('jquery'), false , true);

	//owl carousel /
	wp_enqueue_script('owl-carousel', THEMEROOT . '/js/owl.carousel.min.js', array('jquery'), false , true);

	//google maps
	wp_enqueue_script('google-maps', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCNMUy9phyQwIbQgX3VujkkoV26-LxjbG0');
  	wp_enqueue_script('google-jsapi','https://www.google.com/jsapi');

	//cargar tether /
	wp_enqueue_script('tether', THEMEROOT . '/js/tether.min.js', array('jquery'), '1.1.0', true);

	//cargar bootstrap v4
	wp_enqueue_script('bootstrap', THEMEROOT . '/js/bootstrap.min.js', array('jquery'), '4.0.0', true);

	//cargar fancybox
	wp_enqueue_script('wp-fancybox', THEMEROOT . '/js/jquery.fancybox.pack.js', array('jquery'), '2.1.5', true);

	//cargar parsley
	wp_enqueue_script('parsley', THEMEROOT . '/js/parsley.min.js', array('jquery'), '2.3.11', true);
	wp_enqueue_script('p_idioma_es', THEMEROOT . '/js/i18n/es.js', '' , false , true);

  	//cargar sbslidebar js 
	wp_enqueue_script('slidebars', THEMEROOT . '/js/slidebars.min.js', array('jquery'), '0.10.3', true);

	//youtube
	wp_enqueue_script('wp-youtube-lazy-load', THEMEROOT . '/js/sources/lazy-load-youtube.js', array('jquery'), '1.0.0', true);	

	/*
	 * Registrar Script Customizado
	 */
	wp_register_script('custom_script' , THEMEROOT . '/js/script.js', array('jquery'), false, true );

	/* Localización del Script con la nueva data */
	$data_array = array(
		'themeroot' => get_stylesheet_directory_uri() 
	);

	wp_localize_script( 'custom_script', 'data' , $data_array );

	/* Encolar Script */
	wp_enqueue_script('custom_script');

}

add_action('wp_enqueue_scripts', 'load_custom_scripts');

/*
* Cargar los archivos JS pero del administrador WP
*/

/* Add the media uploader script */
function load_admin_custom_enqueue() {
  //upload gallery banner  
	wp_enqueue_script('upload-banner-page', THEMEROOT . '/js/admin/media-lib-banner.js', array('jquery'), '', true);  
	//upload gallery a todas la paginas
	wp_enqueue_script('upload-gallery', THEMEROOT . '/js/admin/metabox-gallery.js', array('jquery'), '', true);

}

add_action('admin_enqueue_scripts', 'load_admin_custom_enqueue');

