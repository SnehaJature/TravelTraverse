<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>My Trip a Travel Category Flat Bootstrap responsive Website Template | Gallery:: w3layouts</title>
<jsp:include page="link.jsp"></jsp:include>
</head>

<body>
	<!-- banner -->
	<div class="banner about-bg">
		<div class="top-banner about-top-banner">
			<div class="container">
				<div class="top-banner-left">
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i> +91 8830 2640 74</li>
						<li><a href="mailto:example@email.com"><i class="fa fa-envelope" aria-hidden="true"></i> mahadevilokhande610@gmail.com</a></li>
					</ul>
				</div>
				<div class="top-banner-right">
					<ul>
						<li><a class="facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li><a class="facebook" href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
		<jsp:include page="header.jsp"></jsp:include>
			<div class="clearfix"> </div>
			</div>
	
	<div class="a-grid">
		<div class="container">
			<div class="w3l-about-heading">
				<h2>Our Gallery</h2>
				
			</div>
			<div class="gallery">	
				<div class="gallery-bg">
					<div class="gallery-bg-text effect-2">
						<a href="projectimg/meghalaya.jpg" class="big"><img src="projectimg/meghalaya.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo." /></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="projectimg/tirupati3.jpeg"><img src="projectimg/tirupati3.jpeg" alt="" title="Donec dictum nisi sit amet ex volutpat interdum."/><img src="projectimg/tirupati2.jpeg"</a>
						
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g3.jpg"><img src="images/g3.jpg" alt="" title="Ut dignissim ipsum dolor, in scelerisque neque commodo sit amet."/></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g4.jpg"><img src="images/g4.jpg" alt="" title="Nulla molestie nulla et dolor commodo pharetra."/></a>
					</div>
				</div>
				<div class="clearfix"></div>
				
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g5.jpg"><img src="images/g5.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo."/></a>
					</div>
				</div>
				<div class="gallery-bg">
					<div class="gallery-bg-text effect-2">
						<a href="images/g7.jpg" class="big"><img src="images/g7.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo." /></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g6.jpg"><img src="images/g6.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur."/></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g8.jpg"><img src="images/g8.jpg" alt="" title="Nulla molestie nulla et dolor commodo pharetra."/></a>
					</div>
				</div>
				<div class="clearfix"></div>
				
				<div class="gallery-bg">
					<div class="gallery-bg-text effect-2">
						<a href="images/g9.jpg" class="big"><img src="images/g9.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo." /></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g2.jpg"><img src="images/g2.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur. Praesent cursus aliquam erat a commodo."/></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g5.jpg"><img src="images/g5.jpg" alt="" title="Maecenas aliquam nec arcu at efficitur."/></a>
					</div>
				</div>
				<div class="gallery-small gallery-middle">
					<div class="gallery-small-text effect-3">
						<a href="images/g6.jpg"><img src="images/g6.jpg" alt="" title="Nulla molestie nulla et dolor commodo pharetra."/></a>
					</div>
				</div>
				<div class="clearfix"></div>
				
			</div>
			<script type="text/javascript" src="js/simple-lightbox.js"></script>
			<script>
				$(function(){
					var $gallery = $('.gallery a').simpleLightbox();
					
					$gallery.on('show.simplelightbox', function(){
						console.log('Requested for showing');
					})
					.on('shown.simplelightbox', function(){
						console.log('Shown');
					})
					.on('close.simplelightbox', function(){
						console.log('Requested for closing');
					})
					.on('closed.simplelightbox', function(){
						console.log('Closed');
					})
					.on('change.simplelightbox', function(){
						console.log('Requested for change');
					})
					.on('next.simplelightbox', function(){
						console.log('Requested for next');
					})
					.on('prev.simplelightbox', function(){
						console.log('Requested for prev');
					})
					.on('nextImageLoaded.simplelightbox', function(){
						console.log('Next image loaded');
					})
					.on('prevImageLoaded.simplelightbox', function(){
						console.log('Prev image loaded');
					})
					.on('changed.simplelightbox', function(){
						console.log('Image changed');
					})
					.on('nextDone.simplelightbox', function(){
						console.log('Image changed to next');
					})
					.on('prevDone.simplelightbox', function(){
						console.log('Image changed to prev');
					})
					.on('error.simplelightbox', function(e){
						console.log('No image found, go to the next/prev');
						console.log(e);
					});
				});
			</script>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>	
</html>