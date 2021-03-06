
var j = jQuery.noConflict();

(function($){

/*
 * Galerías Fancybox
 */
function GalleryFancybox()
{
	j("a.gallery-fancybox").fancybox({
		'overlayShow': false,
		'openEffect' : 'elastic',
		'closeEffect': 'elastic',
		'openSpeed'  : 300,
		'closeSpeed' : 300,
	});
}



/* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */
	j(document).on('ready',function(){

		/*|----------------------------------------------------------------------|*/
		/*|------------------- SLIDEBAR - VERSION MOBILE ------------------------|*/
		/*|----------------------------------------------------------------------|*/

		var controller = new slidebars();
        controller.init();

		//Eventos

		//Abrir contenedor izquierda
		j("#toggle-left-nav").on('click',function(e){
			e.stopPropagation();
			e.preventDefault();

			// Toggle the Slidebar with id 'id-1'
			controller.toggle( 'id-1' );
		});

		//Abrir contenedor derecha
		j("#toggle-right-nav").on('click',function(e){
			e.stopPropagation();
			e.preventDefault();

			// Toggle the Slidebar with id 'id-2'
			controller.toggle( 'id-2' );
		});

		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL HOME -----|*/
		/*|----------------------------------------------------------------------|*/
		var carousel_home = j("#carousel-home").carousel({
			interval : 5000,
		});

		//eventos
		carousel_home.on('slid.bs.carousel', function ( e ) {
			var current_item = j(this).find('.active');

  			//animacion de las contenidos
  			var title = current_item.find('h3');
  			title.animate({ 'opacity' : '1' }, 1000 );

  			var text = current_item.find('p');
  			text.animate({ 'margin-left' : '0' } , 1500 );

		});

		carousel_home.on('slide.bs.carousel', function ( e ) {
			var current_item = j(this).find('.active');

			//animacion de las contenidos
  			var title = current_item.find('h3');
  			title.css('opacity',0 );
 
  			var text = current_item.find('p');
  			text.css({ 'margin-left' : '-130%' });
		});

		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL SERVICIOS - PORTADA   ------|*/
		/*|----------------------------------------------------------------------|*/
		var carousel_servicios = j("#owl-carousel-servicios").owlCarousel({
			items          : 4,
			lazyLoad       : false,
			loop           : true,
			margin         : 12,
			nav            : false,
			autoplay       : true,
			responsiveClass: true,
			mouseDrag      : false,
			autoplayTimeout: 2500,
			fluidSpeed     : 2000,
			smartSpeed     : 2000,
			responsive:{
		        320:{
		            items:1
		        },
		      	1024:{
		            items:4
		        },
	    	}
		});

		//Eventos flechas del Carouse
		j(".ArrowCarouselServices").on('click',function(e){ e.preventDefault(); });
		//Flechas
		j("#ArrowCarouselServices--prev").on('click',function(){
			carousel_servicios.trigger('prev.owl.carousel', [700] );
		});
		j("#ArrowCarouselServices--next").on('click',function(){
			carousel_servicios.trigger('next.owl.carousel', [700] );
		});

		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL ARTICULOS - SECCIONES GENERALES  ------|*/
		/*|----------------------------------------------------------------------|*/
		j("#carousel-articles").jCarouselLite({
			vertical: true,
			auto    : 3500,
			speed   : 3500,
			visible : 3,	
  		});


		/*|----------------------------------------------------------------------|*/
		/*|-----  CAROUSEL GALERIAS DE PÁGINA - SECCIONES GENERALES   ------|*/
		/*|----------------------------------------------------------------------|*/

		var carousel_gallery = j(".pageCommon__gallery");

		if( carousel_gallery.length ){
			carousel_gallery.owlCarousel({
				items          : 1,
				lazyLoad       : false,
				loop           : true,
				nav            : false,
				autoplay       : true,
				responsiveClass: true,
				mouseDrag      : false,
				autoplayTimeout: 2500,
				smartSpeed     : 1500,
				dots           : true,
			});
		}

		/*
		 * LLamar Función Galerías de Página
		 */
		GalleryFancybox();

		/*|-------------------------------------------------------------|*/
		/*|-----  VALIDADOR FORMULARIO.  ------|*/
		/*|--------------------------------------------------------------|*/

		/*
		 * En el script de wordpress hemos pasado como valor de la localizacion
		 * del tema a la variable
		 * themeroot al objeto data
		 */

		if( j('#form-contacto').length ){

			j('#form-contacto').parsley();

			j(document).on('submit', j('#form-contacto') , function(e){

				e.preventDefault();

				//Subir el formulario mediante ajax
				j.post( info.themeroot + '/email/enviar.php', 
				{ 
					nombre : j("#input_name").val(),
					email  : j("#input_email").val(),
					tel    : j("#input_tel").val(),
					asunto : j("#input_subject").val(),
					message: j("#input_consulta").val(),

				},function(result){

					var resultado = j.parseJSON( result );
					
					console.log(resultado);

					alert( resultado.message );

					if( resultado.status === 'ok' )
					{
						j("#input_name").val("");
						j("#input_email").val("");
						j("#input_tel").val("");
						j("#input_subject").val("");
						j("#input_consulta").val("");

					}
					
					window.location.reload(false);					

				});			
			});
		}

	});
/* +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */
})(jQuery);