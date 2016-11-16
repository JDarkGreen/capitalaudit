<?php 
	global $post; 
	
/*
* Archivo que se encargará de agregar nuevos metabox segun el tipo de 
* contenido que se disponga
*/

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE BANNER PARA TODAS LAS PAGINAS -----------------|*/
/*|-------------------------------------------------------------------------|*/
add_action( 'add_meta_boxes', 'add_banner_page' );

function add_banner_page() {
  //add more in here as you see fit
  $screens = array( 'page' ); 
  foreach ($screens as $screen) {
  	add_meta_box(
      'attachment_banner_page', //this is the id of the box
      'Imagen Banner Página', //this is the title
      'add_banner_page_meta_box', //the callback
      $screen, //the post type
      'side' //the placement
    );
  }
}

function add_banner_page_meta_box($post){ 
	$input_banner = get_post_meta($post->ID, 'input_img_banner_'.$post->ID , true);
?>

	<!-- Input guarda valor de metabox -->
	<input type="hidden" id="input_img_banner_<?= $post->ID ?>" name="input_img_banner_<?= $post->ID ?>" value="<?= $input_banner ?>" />
	
	<!-- Boton Agregar eliminar banner -->
	<?php if( $input_banner != -1 && !empty($input_banner) ) : ?>
		<a id="btn_add_banner" data-id-post="<?= $post->ID; ?>" class="js-link_banner" href="#" style="display: block">
			<img src="<?= $input_banner; ?>" alt="banner-page" style="width: 200px; height: 100px; margin: 0 auto;" />
		</a>
		<a id="delete_banner" data-id-post="<?= $post->ID; ?>" href="#">Quitar Banner</a>
	<?php else: ?>
		<a id="btn_add_banner" data-id-post="<?= $post->ID; ?>" class="js-link_banner" href="#" style="display: block">
		Insertar Banner
		</a>
	<?php endif; ?>

	<p class="description">Al agregar/eliminar elemento dar clic en actualizar</p>

<?php 
}

/* Guardamos la Data */
add_action('save_post', 'add_banner_page_save_postdata');

function add_banner_page_save_postdata($post_id){
	if ( !empty($_POST['input_img_banner_'.$post_id]) ){
		$data = htmlspecialchars( $_POST['input_img_banner_'.$post_id] );
 		update_post_meta($post_id, 'input_img_banner_'.$post_id , $data);
 	}
}

/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE GALERÍA PARA TODAS LAS PAGINAS -----------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cb_mb_attached_images_meta' );


//llamar funcion 
function cb_mb_attached_images_meta()
{ 

    #Registrar en todos los posts
    $all_post_registered = get_post_types();

    #Setear a todos agregando metabox
    foreach ( $all_post_registered as  $post_registered ) :

      add_meta_box( 'mb_attached_images_meta_box', 'Galería de Imagenes', 'cd_mb_attached_images_cb', $post_registered , 'normal', 'high' );

     endforeach;
  
}


//customizar box
function cd_mb_attached_images_cb( $post )
{
    // $post is already set, and contains an object: the WordPress post
    global $post;

    // We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    $mb_image_gallery = get_post_meta( $post->ID, 'mb_image_gallery' , true );

?>

    <section class="js-containerParentGallery">

        <!-- Input Oculto -->
        <input type="hidden" id="field_customize_gallery" name="mb_image_gallery" value="<?= trim($mb_image_gallery); ?>" />

        <!-- Contenedor Sorteable -->
        <ul id="js-containerSortableGallery" class="js-containerSortableGallery" data-field-id="field_customize_gallery">

            <?php 
                //convertir en arreglo
                $mb_image_gallery = explode(',', $mb_image_gallery ); 
                //eliminar valores negativos
                $mb_image_gallery = array_diff( $mb_image_gallery , array(-1) );
                //Eliminar espacios en blanco 
                $mb_image_gallery = array_filter( $mb_image_gallery , function($var) {
                    return trim($var);
                });

                #Recorrido de id de imagenes
                foreach ( $mb_image_gallery as $meta_img_id ) : 

                    #Conseguir todos los datos de este item
                    $item = get_post( $meta_img_id ); 
            ?>

                <!-- Nota: colocar data-id-img es referente al id de la imagen -->
                <li class='ui-state-default' data-id-element="<?= $item->ID ?>">

                    <!--  Boton borrar Imagen -->
                    <a href="#" class="js-remove-element-gallery" data-field-id="field_customize_gallery" data-id-element="<?= $item->ID ?>" style="border-radius: 50%; width: 20px;height: 20px; border: 2px solid red; color: red; position: absolute; top: -10px; right: -8px; text-decoration: none; text-align: center; background: black; font-weight: 700; z-index:999;">X</a>

                    <!--  Boton Actualizar Imagen -->
                    <a href="#" class="js-update-element-gallery" data-field-id="field_customize_gallery" data-id-element="<?= $item->ID ?>" style="border-radius: 50%; width: 20px;height: 20px; border: 2px solid green; color: green; position: absolute; top: -10px; right: 18px; text-decoration: none; text-align: center; background: white; font-weight: 700; z-index:999;">@</a>
                    
                    <!-- Abrir frame del contenedor de imagen -->
                    <img src="<?= $item->guid; ?>" alt="<?= $item->post_title; ?>" class="" style="width: 100%; height: 100%; margin: 0 auto;" />

                    <!-- Titulo que muestra el id de imagen que tiene la imagen -->
                    <h2 style="position: absolute;top: 0px;left: 0px;right: 0px;bottom: 0px;color: white;align-items: center; display: flex; justify-content: center; font-size: 50px; text-shadow: 1px 1px 4px black;"> <?= $item->ID; ?> </h2>

                </li> <!-- end figure -->

            <?php endforeach; ?>

        </ul> <!--/.js-containerSortableGallery -->

        <!-- Espacio -->
        <div style="clear:both; height: 1px;"> </div>
            <p class="description"> Deben ser más de dos o más Imágenes para ser galería </p>
        <div style="clear:both; height: 1px;"> </div>

        
        <!-- Boton Agregar Elemento -->
        <button class="button button-primary js-add-element-gallery" data-field-id="field_customize_gallery" >
            <?= __('Agregar Elemento' , LANG ); ?>
        </button> 

        <!-- Botón remover -->
        <button class="button button-primary js-remove-all-gallery" data-field-id="field_customize_gallery">
            <?php _e( 'Remover Todos Elementos' , LANG ); ?>
        </button>

    </section> <!-- /.js-containerParentGallery -->


<?php  

}

//guardar la data
add_action( 'save_post', 'cd_mb_attached_images_save' );

function cd_mb_attached_images_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;

    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;

    /** Check the user allowed to edit the post or page */
    if ( !current_user_can( 'edit_post', $post_id ) ) return;

    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
            )
        );

    // Make sure your data is set before trying to save it
   if( isset( $_POST['mb_image_gallery'] ) )
        update_post_meta( $post_id, 'mb_image_gallery', wp_kses( $_POST['mb_image_gallery'], $allowed ) );
}



/*|-------------------------------------------------------------------------|*/
/*|-------------- METABOX DE VIDEO -----------------|*/
/*|-------------------------------------------------------------------------|*/

add_action( 'add_meta_boxes', 'cd_meta_box_url_video_add' );

//llamar funcion 
function cd_meta_box_url_video_add()
{	
	//solo en testimonios
	add_meta_box( 'mb-video-url', 'Link - Url del Video', 'cd_meta_box_url_video_cb', array('galeria-videos') , 'normal', 'high' );
}
//customizar box
function cd_meta_box_url_video_cb( $post )
{
	// $post is already set, and contains an object: the WordPress post
    global $post;

	$values = get_post_custom( $post->ID );
	$text   = isset( $values['mb_url_video_text'] ) ? $values['mb_url_video_text'][0] : '';

	// We'll use this nonce field later on when saving.
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );

    ?>
    <p>
        <label for="mb_url_video_text">Escribe la url del video : </label>
        <input size="45" type="text" name="mb_url_video_text" id="mb_url_video_text" value="<?php echo $text; ?>" />
    </p>
    <?php    
}
//guardar la data
add_action( 'save_post', 'cd_meta_box_url_video_save' );

function cd_meta_box_url_video_save( $post_id )
{
    // Bail if we're doing an auto save
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    // if our nonce isn't there, or we can't verify it, bail
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
     
    // if our current user can't edit this post, bail
    if ( !current_user_can( 'edit_post', $post_id ) ) return;
     
    // now we can actually save the data
    $allowed = array( 
        'a' => array( // on allow a tags
            'href' => array() // and those anchors can only have href attribute
        )
    );
     
    // Make sure your data is set before trying to save it
    if( isset( $_POST['mb_url_video_text'] ) )
        update_post_meta( $post_id, 'mb_url_video_text', wp_kses( $_POST['mb_url_video_text'], $allowed ) );
}

?>