
	<!-- Extraer opciones  -->
	<?php $options = get_option('theme_custom_settings'); ?>

	<footer class="mainFooter">
		<div class="container">
			<div class="row container-flex">

				<!-- logo  -->
				<div class="col-xs-12 col-sm-3 container-flex container-flex-center">
					
					<!-- Item Footer -->
					<section class="mainFooter__item">
						
						<h3 class="mainFooter__subtitle"> EMPRESA ASOCIADA A :</h3>

						<a id="footer-logo" href="<?= site_url()  ?>" class="text-xs-center">
							<img src="<?= IMAGES ?>/footer/logo_footer_asociado.jpg" alt="logo-footer" class="center-block img-fluid" />
						</a> <!-- /.center-block -->
					</section> <!-- /.mainFooter__item -->

				</div><!-- /.col-xs-12 col-sm- -->

				<!-- Informacion  -->
				<div class="col-xs-12 col-sm-6 ">

					<!-- Item Footer -->
					<section id="footer-section-contact" class="mainFooter__item">

						<!-- Subtitulo -->
						<h2 class="mainFooter__subtitle text-uppercase"><?php _e('contacto', LANG ); ?></h2>
						<!-- Lista -->
						<ul class="mainFooter__contact-list list-unstyled">

							<?php if( isset($options['contact_address']) && !empty($options['contact_address']) ) :?>
								
								<li class="address"> 
									<?= apply_filters( 'the_content' , $options['contact_address'] ); ?>
								</li>

							<?php endif; ?>
							
							<?php if( isset($options['contact_tel']) && !empty($options['contact_tel']) ) :?>
								<li class="phone"> <?= $options['contact_tel'] ?> </li>
							<?php endif; ?>

							<?php if( isset($options['contact_email']) && !empty($options['contact_email']) ) :?>
								<li class="email"> <?= $options['contact_email'] ?> </li>
							<?php endif ?> 

						</ul><!-- /mainFooter__contact-list  -->

					</section> <!-- /.mainFooter__item -->

				</div><!-- /.col-xs-12 col-sm- -->

				<!--  Redes sociales -->
				<div class="col-xs-12 col-sm-3">

					<!-- Item Footer -->
					<section class="mainFooter__item text-xs-center">

						<!-- Subtitulo -->
						<h2 class="mainFooter__subtitle text-uppercase"><?php _e('redes sociales', LANG ); ?></h2>
						<!-- Lista -->
						<ul class="mainFooter__social-list list-unstyled list-inline">

							<!-- facebook -->
							<?php if( isset( $options['red_social_fb'] ) && !empty($options['red_social_fb']) ) : ?>
								<li><a href="<?= $options['red_social_fb'] ?>" target="_blank">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</a></li>
							<?php endif; ?>

							<!-- twitter -->
							<?php if( isset( $options['red_social_twitter'] ) && !empty($options['red_social_twitter']) ) : ?>
								<li><a href="<?= $options['red_social_twitter'] ?>" target="_blank">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</a></li>
							<?php endif; ?>

							<!-- youtube -->
							<?php if( isset( $options['red_social_ytube'] ) && !empty($options['red_social_ytube']) ) : ?>
								<li><a href="<?= $options['red_social_ytube'] ?>" target="_blank">
									<i class="fa fa-youtube" aria-hidden="true"></i>
								</a></li>
							<?php endif; ?>

							<!-- gmail -->
							<?php if( isset( $options['red_social_gmail'] ) && !empty($options['red_social_gmail']) ) : ?>
								<li><a href="<?= $options['red_social_gmail'] ?>" target="_blank">
									<i class="fa fa-google-plus" aria-hidden="true"></i>
								</a></li>
							<?php endif; ?>

						</ul><!-- /mainFooter__social-list  -->	

						<!-- Logo petrelli pagina web -->
						<a href="<?= site_url() ?>" class="mainFooter__web"> 
							www.capitalaudit.com.pe
						</a>

					</section> <!-- /.mainFooter__item -->
 
				</div><!-- /.col-xs-12 col-sm- -->
			</div><!-- /.row -->
		</div><!-- /.container -->
	</footer> <!-- /.mainFooter -->

	<script> var url = "<?= THEMEROOT ?>"; </script>

	<?php wp_footer(); ?>

	</div> <!-- /fin <div canvas="container"> -->
	
</body>
</html>

