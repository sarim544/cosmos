<!doctype html>
<html>
<head>
<title>Profile – <?=$site_settings->site_name?></title>
    <?php $this->load->view('includes/site-master'); ?>
</head>
<body id="home-page">
    <?php get_header() ?>
<main>


<section id="profile">
	<!-- <div class="fixedBtn">
        <button type="button" id="availBtn" class="webBtn"><i class="fi-calendar"></i></button>
        <button type="button" id="proBtn" class="webBtn colorBtn"><i class="fi-check"></i> Hire <?= $row->mem_fname?></button>
    </div> -->
	<div class="contain">
		<div class="flexRow flex">
			<div class="col col1">
				<ul id="gallery" class="flex">
					<li>
						<div class="image popBtn" data-popup="gallery"><img src="<?= base_url('assets/images/5bc6cfe10b213-450x320.jpg')?>" alt=""><strong>Manga Characters</strong><span>View All</span></div>
					</li>
					<li>
						<div class="image popBtn" data-popup="gallery"><img src="<?= base_url('assets/images/wonder-woman-cosplay-1.jpg')?>" alt=""><strong>Movie Characters</strong><span>View All</span></div>
					</li>
					<li>
						<div class="image popBtn" data-popup="gallery"><img src="<?= base_url('assets/images/lara-croft-tomb-raider.jpg')?>" alt=""><strong>Gaming Characters</strong><span>View All</span></div>
					</li>
					<li>
						<div class="image popBtn" data-popup="gallery"><img src="<?= base_url('assets/images/603433791a1a05c6204198b755606865.jpg')?>" alt=""><strong>Cartoon Characters</strong><span>View All</span></div>
					</li>
				</ul>
				<div class="popup big-popup" data-popup="gallery">
					<div class="tableDv">
						<div class="tableCell">
							<div class="contain">
								<div class="_inner">
									<div class="crosBtn"></div>
									<h2>Movies Characters</h2>
									<ul class="gallery flex">
										<li data-src="<?= base_url('assets/images/lara-croft-tomb-raider.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/lara-croft-tomb-raider.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/wonder-woman-cosplay-1.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/wonder-woman-cosplay-1.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item04.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item04.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item03.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item03.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item02.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item02.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item01.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item01.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/5bc6cfe10b213-450x320.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/5bc6cfe10b213-450x320.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/lara-croft-tomb-raider.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/lara-croft-tomb-raider.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/wonder-woman-cosplay-1.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/wonder-woman-cosplay-1.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item04.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item04.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item03.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item03.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item02.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item02.jpg')?>" alt=""></div>
										</li>
										<li data-src="<?= base_url('assets/images/news-item01.jpg')?>">
											<div class="image"><img src="<?= base_url('assets/images/news-item01.jpg')?>" alt=""></div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="miniSlider">
					<ul id="lightSlider" class="relative">
		                <li data-src="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>" data-thumb="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>">
		                    <img src="<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>" alt="">
		                </li>
		                <li data-src="<?= base_url('assets/images/news-item04.jpg')?>" data-thumb="<?= base_url('assets/images/news-item04.jpg')?>">
		                    <img src="<?= base_url('assets/images/news-item04.jpg')?>" alt="">
		                </li>
		                <li data-src="<?= base_url('assets/images/news-item02.jpg')?>" data-thumb="<?= base_url('assets/images/news-item02.jpg')?>">
		                    <img src="<?= base_url('assets/images/news-item02.jpg')?>" alt="">
		                </li>
		                <li data-src="<?= base_url('assets/images/news-item01.jpg')?>" data-thumb="<?= base_url('assets/images/news-item01.jpg')?>">
		                    <img src="<?= base_url('assets/images/news-item01.jpg')?>" alt="">
		                </li>
		                <li data-src="<?= base_url('assets/images/news-item03.jpg')?>" data-thumb="<?= base_url('assets/images/news-item03.jpg')?>">
		                    <img src="<?= base_url('assets/images/news-item03.jpg')?>" alt="">
		                </li>
		            </ul>
	            </div> -->
	            <div id="descrip">
		            <div class="client">
		            	<h3>About Jennifer</h3>
		            	<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas modi asperiores esse minus, iusto ad error sunt necessitatibus nobis! Commodi unde debitis sit! Assumenda excepturi dolorum quos aspernatur quam explicabo?</p>
		            	<p>Optio aut aliquam rem nemo expedita asperiores! Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda modi dolore obcaecati iusto, magnam, numquam in laboriosam voluptatem rerum molestiae consequatur, exercitationem a optio aut aliquam rem nemo expedita asperiores!</p>
						<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cum vero harum quisquam? Incidunt inventore vel corporis, adipisci error iste cupiditate ad eveniet dolorem nostrum, laborum deleniti impedit temporibus nisi qui. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus, quod modi! Quia natus, eius exercitationem culpa quidem itaque sequi expedita nisi, cumque repellat sunt modi. Nisi praesentium quis enim quos!</p>
						<hr>
						<h3>Characters</h3>
						<ul class="sizeLst text-center">
							<li>
		            			<img src="<?= base_url('assets/images/11.svg')?>" alt="">
								Movie Characters
		            		</li>
		            		<li>
								<img src="<?= base_url('assets/images/12.svg')?>" alt="">
								Gaming Characters
		            		</li>
		            		<li>
								<img src="<?= base_url('assets/images/13.svg')?>" alt="">
								Manga Characters
		            		</li>
		            		<li>
		            			<img src="<?= base_url('assets/images/14.svg')?>" alt="">
		            			Cartoon Characters
		            		</li>
		            	</ul>
						<hr>
						<h5>Additional Skills</h5>
						<ul class="_list flex">
		            		<li>Major Event Experience</li>
		            		<li>Can provide extra time</li>
						</ul>
						<h5>Stats</h5>
						<ul class="_list flex">
		            		<li>&lt;1h Response time</li>
		            		<li>100% Response rate</li>
		            		<li>SMS <em class="miniLbl green">Verified</em></li>
		            		<li>Email <em class="miniLbl green">Verified</em></li>
						</ul>
						<h5>Jennifer's Preferences</h5>
						<ul class="_list flex">
		            		<li>Music Events Allowed</li>
							<li>No Face plush</li>
							<li>Sang Alongside Me</li>
		            	</ul>
		            </div>
		            <hr>
		            <div class="reviews">
	                    <div class="head">
	                        <h3>202 Reviews</h3>
	                        <div class="rateYo" data-rateyo-rating="4"></div>
	                    </div>
	                    <div class="review">
	                        <div class="icoBlk">
	                            <div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
	                        </div>
	                        <div class="txt">
	                            <div class="icoTxt">
	                                <div class="title">
	                                    <h4>Wenwei</h4>
	                                    <div class="date">February 2018</div>
	                                </div>
	                                <div class="rateYo" data-rateyo-rating="4"></div>
	                            </div>
	                            <p>Had a short stay with my dad and younger sis. Very comfortable and cozy room. The host Jeka is nice and prepared snacks for us in advance. The location is good and we particularly like the view of the room. Strongly recommend:)</p>
	                            <div class="subReview">
	                                <div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
	                                <div class="subBlk">
		                                <h5>Sitter's Response</h5>
		                                <p>Thank you for your kind comment, I will be waiting for your next call, hope we work for a long time together.</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="review">
	                        <div class="icoBlk">
	                            <div class="ico"><img src="<?= base_url('assets/images/users/2.jpg')?>" alt=""></div>
	                        </div>
	                        <div class="txt">
	                            <div class="icoTxt">
	                                <div class="title">
	                                    <h4>宇泽</h4>
	                                    <div class="date">January 2018</div>
	                                </div>
	                                <div class="rateYo" data-rateyo-rating="4"></div>
	                            </div>
	                            <p>This place was wonderful. Very walkable to the subway and very close to the Bund. Host is easily reachable and the space was very clean. My only complaint is that during the day the construction nearby gets a bit loud.</p>
	                            <div class="subReview">
	                                <div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
	                                <div class="subBlk">
		                                <h5>Sitter's Response</h5>
		                                <p>Thank you for your kind comment, I will be waiting for your next call, hope we work for a long time together.</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="review">
	                        <div class="icoBlk">
	                            <div class="ico"><img src="<?= base_url('assets/images/users/3.jpg')?>" alt=""></div>
	                        </div>
	                        <div class="txt">
	                            <div class="icoTxt">
	                                <div class="title">
	                                    <h4>Sara Wick</h4>
	                                    <div class="date">December 2017</div>
	                                </div>
	                                <div class="rateYo" data-rateyo-rating="4"></div>
	                            </div>
	                            <p>Jeka is totally great,the room is clean and delicate.There is a little kitchen, loudspeaker and a humidifier in (Website hidden by Virtual Iceland) easy to go to Duolun road and 1933 workshop.Watching night scene of Shanghai in room is super amazing.Drink some beer and enjoy the travel!</p>
	                            <div class="subReview">
	                                <div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
	                                <div class="subBlk">
		                                <h5>Sitter's Response</h5>
		                                <p>Thank you for your kind comment, I will be waiting for your next call, hope we work for a long time together.</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="review">
	                        <div class="icoBlk">
	                            <div class="ico"><img src="<?= base_url('assets/images/users/4.jpg')?>" alt=""></div>
	                        </div>
	                        <div class="txt">
	                            <div class="icoTxt">
	                                <div class="title">
	                                    <h4>Connie</h4>
	                                    <div class="date">December 2017</div>
	                                </div>
	                                <div class="rateYo" data-rateyo-rating="4"></div>
	                            </div>
	                            <p>This place was great. You’ll love it, very clean, and a great view. Host is very attentive and pro-active.</p>
	                            <div class="subReview">
	                                <div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
	                                <div class="subBlk">
		                                <h5>Sitter's Response</h5>
		                                <p>Thank you for your kind comment, I will be waiting for your next call, hope we work for a long time together.</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="review">
	                        <div class="icoBlk">
	                            <div class="ico"><img src="<?= base_url('assets/images/users/5.jpg')?>" alt=""></div>
	                        </div>
	                        <div class="txt">
	                            <div class="icoTxt">
	                                <div class="title">
	                                    <h4>Samira Daniel</h4>
	                                    <div class="date">September 2017</div>
	                                </div>
	                                <div class="rateYo" data-rateyo-rating="4"></div>
	                            </div>
	                            <p>Jeka was an amazing host throughout our time in Shanghai. She responded so quickly to all our questions and really made the space feel like home. The flat was very central and very walkable to restaurants and public transport. Thanks to Jeka, the apartment was very easy to find.</p>
	                            <div class="subReview">
	                                <div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
	                                <div class="subBlk">
		                                <h5>Sitter's Response</h5>
		                                <p>Thank you for your kind comment, I will be waiting for your next call, hope we work for a long time together.</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
                <!-- <div class="location">
	                <div id="mapBlk">
                        <div id="map_canvas"></div>
                    </div>
                </div> -->
			</div>
			<div class="col col2">
				<div class="proBlk">
					<div class="srchItm">
						<div class="icoBlk">
							<div class="ico"><img src="<?= base_url('assets/images/users/1.jpg')?>" alt=""></div>
							<div class="rateBlk">
		                        <div class="rating"><div class="rateYo" data-rateyo-rating="4"></div><span>32</span></div>
		                    </div>
						</div>
						<div class="txt">
							<h2>Jennifer Kem</h2>
							<div class="slogan">Testing profile name.</div>
							<div class="locate">Tribeca, NY, 10013</div>
							<div class="heart"></div>
						</div>
					</div>
					<div class="btmBlk text-center">
						<!-- <hr> -->
						<div class="bTn">
							<!-- <a href="javascript:void(0)" class="webBtn colorBtn popBtn" data-popup="contact-me">Contact Me</a> -->
							<a href="<?= site_url('player/messages')?>" class="webBtn colorBtn">Contact Me</a>
						</div>
					</div>
				</div>
				<div class="smTxt text-center">
					<h5>Cancellation policy: Flexible</h5>
					<p class="small">Full refund if cancelled before noon one day before the booking, 50% refund afterwards</p>
				</div>
			</div>
		</div>
	</div>
	<div class="popup small-popup" data-popup="contact-me">
        <div class="tableDv">
            <div class="tableCell">
                <div class="contain">
                    <div class="_inner">
                        <div class="crosBtn"></div>
                        <h2>Contact me</h2>
                        <form action="" method="post">
        		            <div class="formRow row">
				                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-xx-12 txtGrp">
		        		            <textarea name="" id="" class="txtBox" placeholder="Write something here"></textarea>
				                </div>
				            </div>
        		            <div class="bTn">
        		                <button type="submit" class="webBtn colorBtn">Send</button>
        		            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
	</div>
</section>
<!-- profile -->


<!-- Google Map Api -->
<script type="text/javascript">
    $(function(){
        /*$(document).on('click', '.selectLst > li > .lnk', function() {
            var radio = $(this).data('radio');
            // $(this).parents('.selectLst').find('.lnk').removeClass('active');
            $(this).toggleClass('active');
            $(this).parents('.frmGrp').children('input[type="hidden"]').val(radio);
        });
        $(document).on('click', '#profile form button.txtBox', function(){
			var days = $(this).attr('data-days');
            $(this).parents('form').find('div[data-days]').removeClass('active');
            $(this).parents('form').find('button[data-days]').removeClass('active');
            $(this).parents('form').find(this).addClass('active');
            $(this).parents('form').find('div[data-days = ' + days + ']').addClass('active');
        });*/
		$(document).on('click', '#profile #proBtn', function(){
            $('#profile #proSide').fadeIn();
            $('body').addClass('flow');
        });
		$(document).on('click', '#profile #availBtn', function(){
            $('#profile #availblty').fadeIn();
            $('body').addClass('flow');
        });
		$(document).on('click', '#profile #proSide > .crosBtn, #profile #availblty > .crosBtn', function(){
            $('#profile #proSide').fadeOut();
            $('#profile #availblty').fadeOut();
            $('body').removeClass('flow');
        });
    });
    function initMap() {
    	let myLatLng = {lat: 33.9139599, lng: -84.2968273};
    	let image = {
	        url: base_url + "assets/images/map-marker.png", // url
	        scaledSize: new google.maps.Size(60, 60), // scaled size
	        origin: new google.maps.Point(0, 0), // origin
	        anchor: new google.maps.Point(25, 50) // anchor
	    };

    	let map = new google.maps.Map(document.getElementById('map_canvas'), {
    		center: myLatLng,
    		zoom: 16,
    		styles: grayStyles
    	});

    	let marker = new google.maps.Marker({
    		position: myLatLng,
    		map: map,
    		icon: image,
    		title: '<?= format_name($row->mem_fname,$row->mem_lname)?>'
    	});
    }
</script>
<script type="text/javascript" src="<?= base_url('assets/js/map.api.js')?>"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAmqmsf3pVEVUoGAmwerePWzjUClvYUtwM&callback=initMap&libraries=geometry,places&ext=.js"></script>
</main>
<?php $this->load->view('includes/footer'); ?>
</body>
</html>