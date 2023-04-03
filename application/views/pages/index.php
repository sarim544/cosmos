<!doctype html>
<html>
<head>
    <title><?= !empty($site_content['page_title'])?$site_content['page_title'].' - ':'Home - '?><?= $site_settings->site_name?></title>
    <?php $this->load->view('includes/site-master'); ?>
</head>
<body id="home-page">
    <?php get_header(); ?>
<main>


<section id="banner" class="flexBox" style="background-image: url('<?= base_url('assets/images/Cosplay-Cosmos-Website-Banner.jpg')?>')">
<!-- <section id="banner" class="flexBox" style="background-image: url('<?= SITE_IMAGES.'images/'.$site_content['image1']?>')"> -->
</section>
<!-- banner -->


<section id="form">
    <div class="contain">
        <form action="<?= site_url('search')?>" method="post" main-search>
            <div class="inside">
                <div class="txtGrp">
                    <label for="country">Country</label>
                    <select name="country" id="country" class="txtBox selectpicker">
                        <option value="0">Select</option>
                        <?= get_countries_options('id')?>
                    </select>
                </div>
                <div class="txtGrp">
                    <label for="character">Characters</label>
                    <select name="character" id="character" class="txtBox selectpicker">
                        <option value="0">Select</option>
                        <?php foreach ($characters as $key => $char): ?>
                            <option value="<?= $char->id?>"><?= $char->title?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="txtGrp">
                    <label for="date">Availability</label>
                    <input type="text" name="date" id=""date class="txtBox datepicker" placeholder="Select">
                </div><!-- 
                <div class="txtGrp">
                    <label for="">Rate (€)</label>
                    <select name="" id="" class="txtBox selectpicker">
                        <option value="0">Select</option>
                        <option value="0">Daily Rate</option>
                        <option value="0">Hourly Rate</option>
                    </select>
                </div> -->
                <button type="submit" class="webBtn colorBtn"><i class="fi-search"></i> <?= $site_content['banner_button_text']?></button>
            </div>
        </form>
    </div>
</section>
<!-- form -->


<section id="blocks">
    <div class="contain">
        <div class="content text-center">
            <h1 class="secHeading">Cosplay <em>Cosmos</em></h1>
            <!-- <h1 class="secHeading"><?= $site_content['first_section_heading']?></h1> -->
            <!-- <?= $site_content['first_section_detail']?> -->
        </div>
        <ul class="tileLst flex">
            <li>
                <div class="inner">
                    <div class="icon"><img src="<?= base_url('assets/images/about-item01.png')?>" alt=""></div>
                    <div class="cntnt">
                        <!-- <h4><?= $services[0]->title?></h4>
                        <p><?= $services[0]->home_overview?></p> -->
                        <h4>Incredible Venue</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur ing elit, sed do eiusmod tempor didunt utem labore et dolore magna.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="inner">
                    <div class="icon"><img src="<?= base_url('assets/images/about-item02.png')?>" alt=""></div>
                    <div class="cntnt">
                        <!-- <h4><?= $services[1]->title?></h4>
                        <p><?= $services[1]->home_overview?></p> -->
                        <h4>Amazing Guest Stars</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur ing elit, sed do eiusmod tempor didunt utem labore et dolore magna.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="inner">
                    <div class="icon"><img src="<?= base_url('assets/images/about-item03.png')?>" alt=""></div>
                    <div class="cntnt">
                        <!-- <h4><?= $services[2]->title?></h4>
                        <p><?= $services[2]->home_overview?></p> -->
                        <h4>Friendly Event Staff</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur ing elit, sed do eiusmod tempor didunt utem labore et dolore magna.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="inner">
                    <div class="icon"><img src="<?= base_url('assets/images/about-item04.png')?>" alt=""></div>
                    <div class="cntnt">
                        <!-- <h4><?= $services[3]->title?></h4>
                        <p><?= $services[3]->home_overview?></p> -->
                        <h4>Next Gen Gaming Station</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur ing elit, sed do eiusmod tempor didunt utem labore et dolore magna.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="inner">
                    <div class="icon"><img src="<?= base_url('assets/images/about-item05.png')?>" alt=""></div>
                    <div class="cntnt">
                        <!-- <h4><?= $services[4]->title?></h4>
                        <p><?= $services[4]->home_overview?></p> -->
                        <h4>Asian Food Court</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur ing elit, sed do eiusmod tempor didunt utem labore et dolore magna.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="inner">
                    <div class="icon"><img src="<?= base_url('assets/images/about-item06.png')?>" alt=""></div>
                    <div class="cntnt">
                        <!-- <h4><?= $services[5]->title?></h4>
                        <p><?= $services[5]->home_overview?></p> -->
                        <h4>Exclusive Movie Trailers</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur ing elit, sed do eiusmod tempor didunt utem labore et dolore magna.</p>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</section>
<!-- blocks -->


<section id="stars">
    <div class="contain">
        <h1 class="secHeading text-center">Special Cosplay Stars</h1>
        <div class="flexRow flex">
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star1.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Felissa Clawella <span class="city">Professional Cosplayer</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star2.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Jack W. Howlett <span class="city">Special Effects Artist</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star3.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Emmanuelle Freeze <span class="city">Professional Cosplayer</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star4.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Jessica Danvers <span class="city">Professional Cosplayer</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star5.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Steven Crane <span class="city">Special Effects Artist</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star6.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Diana Mazonian <span class="city">Professional Cosplayer</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star7.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Debbie D-Undead <span class="city">Special Effects Artist</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star8.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Leyla Skyrunner <span class="city">Professional Cosplayer</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star9.jpg')?>')"></div>
                    <div class="txt">
                        <h4>John Wick <span class="city">Special Effects Artist</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image" style="background-image: url('<?= base_url('assets/images/stars/star10.jpg')?>')"></div>
                    <div class="txt">
                        <h4>Leyla Skyrunner <span class="city">Professional Cosplayer</span></h4>
                        <div class="rateYo" data-rateyo-rating="4"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- stars -->


<section id="highlights">
    <h1 class="secHeading text-center">Cosmos Highlights</h1>
    <div class="contain">
        <div class="flexRow flex">
            <div class="col">
                <div class="inner">
                    <div class="image"><img src="<?= base_url('assets/images/news-item01.jpg')?>" alt=""></div>
                    <div class="txt">
                        <div class="icon"><img src="<?= base_url('assets/images/news-icon01.png')?>" alt=""></div>
                        <h4>Special Event Busses</h4>
                        <p>Sed do eiusmod tempor incididunt ut labore et dolore magna le ad minim veniam, quis nostrud citation ullamco laboris.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image"><img src="<?= base_url('assets/images/news-item02.jpg')?>" alt=""></div>
                    <div class="txt">
                        <div class="icon"><img src="<?= base_url('assets/images/news-icon02.png')?>" alt=""></div>
                        <h4>Best Cosplay Contest</h4>
                        <p>Sed do eiusmod tempor incididunt ut labore et dolore magna le ad minim veniam, quis nostrud citation ullamco laboris.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image"><img src="<?= base_url('assets/images/news-item03.jpg')?>" alt=""></div>
                    <div class="txt">
                        <div class="icon"><img src="<?= base_url('assets/images/news-icon03.png')?>" alt=""></div>
                        <h4>Incredible Hotel Deals</h4>
                        <p>Sed do eiusmod tempor incididunt ut labore et dolore magna le ad minim veniam, quis nostrud citation ullamco laboris.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="inner">
                    <div class="image"><img src="<?= base_url('assets/images/news-item04.jpg')?>" alt=""></div>
                    <div class="txt">
                        <div class="icon"><img src="<?= base_url('assets/images/news-icon04.png')?>" alt=""></div>
                        <h4>New Convention Venue</h4>
                        <p>Sed do eiusmod tempor incididunt ut labore et dolore magna le ad minim veniam, quis nostrud citation ullamco laboris.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- highlights -->


<section id="how">
    <div class="contain text-center">
        <div class="inside relative" style="background-image: url('<?= base_url('assets/images/wallhaven-k9g61q.jpg')?>')">
            <div class="content">
                <h1 class="secHeading"><?= $site_content['how_heading']?></h1>
                <p class="pre"><?= $site_content['how_short_desc']?></p>
            </div>
            <ul class="lst flex">
                <?php for($i=1;$i<=3;$i++):?>
                    <li>
                        <div class="inner">
                            <div class="icon"><img src="<?= SITE_IMAGES.'images/'.$site_content['how_image'.$i]?>" alt=""></div>
                            <div class="cntnt">
                                <h3><?= $site_content['how_heading'.$i]?></h3>
                                <p><?= $site_content['how_text'.$i]?></p>
                            </div>
                        </div>
                    </li>
                <?php endfor?>
            </ul>
        </div>
    </div>
</section>
<!-- how -->


<!-- <section id="folio">
    <div class="contain text-center">
        <div class="content">
            <h1 class="secHeading"><?= $site_content['testimonial_heading']?></h1>
            <p class="pre"><?= $site_content['testimonial_detail']?></p>
        </div>
        <div class="outer">
            <div class="inside relative">
                <div id="owl-folio" class="owl-carousel owl-theme">
                    <?php foreach ($testimonials as $key => $testimonial): ?>
                        <div class="inner">
                            <div class="ico"><img src="<?= get_site_image_src('testimonials',$testimonial->image,'thumb_',true)?>" alt=""></div>
                            <div class="txt">
                                <div class="rateYo" data-rateyo-rating="<?= $testimonial->rating?>" data-rateyo-read-only="true" data-rateyo-star-width="20px"></div>
                                <p><?= $testimonial->text?></p>
                                <h4><?= $testimonial->name?></h4>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
            <div class="image"><img src="<?= SITE_IMAGES.'images/'.$site_content['image2']?>" alt=""></div>
        </div>
    </div>
</section> -->
<!-- folio -->


<section id="match">
    <div class="contain">
        <div class="flexRow flex">
            <div class="col col1">
                <?php for($i=1;$i<=2;$i++):?>
                    <div class="member member<?= $i?>">
                        <div class="ico"><img src="<?= get_site_image_src('images',$site_content['match_image'.$i],'',true)?>" alt=""></div>
                        <div class="txt"><?= $site_content['match_text'.$i]?></div>
                    </div>
                <?php endfor?>
            </div>
            <div class="col col2">
                <div class="content">
                    <h1 class="secHeading"><?= $site_content['match_heading']?></h1>
                    <p><?= $site_content['match_short_desc']?></p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- match -->


<!-- <section id="professional">
    <div class="contain">
        <div class="flexRow flex">
            <div class="col col1">
                <ul class="proLst flex">
                    <?php foreach ($sitters as $key => $sitter): ?>
                        <li>
                            <div class="inner">
                                <div class="image" style="background-image: url('<?= get_image_src($sitter->mem_image,'300',true)?>')"></div>
                                <div class="txt">
                                    <h4><?= format_name($sitter->mem_fname,$sitter->mem_lname)?> <span class="city"><?= $sitter->mem_city?>, <?= $sitter->mem_state?>, <?= $sitter->mem_zip?></span></h4>
                                    <div class="rateYo" data-rateyo-rating="<?= get_avg_mem_rating($sitter->mem_id)?>" data-rateyo-read-only="true"></div>
                                </div>
                            </div>
                        </li>
                    <?php endforeach ?>
                </ul>
            </div>
            <div class="col col2">
                <div class="content">
                    <h1 class="secHeading"><?= $site_content['feature_heading']?></h1>
                    <p class="pre"><?= $site_content['feature_detail']?></p>
                    <div class="bTn"><a href="<?= site_url('signup') ?>" class="webBtn colorBtn"><?= $site_content['feature_button_text']?> <i class="fi-arrow-right"></i></a></div>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!-- professional -->


<section id="location">
    <div class="contain">
        <h1 class="secHeading text-center"><?= $site_content['cities_heading']?></h1>
        <ul class="lst flex">
            <?php foreach ($cities as $key => $city): ?>
                <li><a href="<?= site_url('search?city='.$city->city)?>"><?= $city->city?>, <?= $city->state?></a></li>
            <?php endforeach ?>
        </ul>
    </div>
</section>
<!-- location -->


<script type="text/javascript">
    $(function(){
        $(document).on('click', '.selectLst > li > .lnk', function() {
            var radio = $(this).data('radio');
            // $(this).parents('.selectLst').find('.lnk').removeClass('active');
            $(this).toggleClass('active');
            $(this).parents('.txtGrp').children('input[type="hidden"]').val(radio);
        });
        $(document).on('click', '#banner form button.txtBox', function(){
            var days = $(this).attr('data-days');
            $(this).parents('form').find('div[data-days]').removeClass('active');
            $(this).parents('form').find('button[data-days]').removeClass('active');
            $(this).parents('form').find(this).addClass('active');
            $(this).parents('form').find('div[data-days = ' + days + ']').addClass('active');
        });

        /*$(document).on('click', '[data-form="main"] .head .lblBtn > *', function(){
            $('[data-form="cat"]').show();
            $('[data-form="dog"]').hide();
        });*/

        $(document).on('change', 'input[name="animal"]', function(e){
            if (!$("#dog").prop('checked') && $("#cat").prop('checked')){
                $('[data-form="dog"]').hide();
                $('[data-form="cat"]').show();
                $('[data-form="main"] .nav-tabs > li:nth-child(n+4)').addClass('none');
                $('a[href="#Drop-in-Visits"] em').addClass('hidden');
            }
            else{
                $('[data-form="dog"]').show();
                $('[data-form="cat"]').hide();
                $('[data-form="main"] .nav-tabs > li:nth-child(n+4)').removeClass('none');
                $('a[href="#Drop-in-Visits"] em').removeClass('hidden');
            }

            $("#cat").prop('checked') ? $('input[name="cat"').val('cat'): $('input[name="cat"').val('');
            $("#dog").prop('checked') ? $('input[name="dog"').val('dog'): $('input[name="dog"').val('');
        });
    });
</script>
</main>
<?php $this->load->view('includes/footer'); ?>
</body>
</html>