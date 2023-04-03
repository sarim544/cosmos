<!doctype html>
<html>
<head>
    <title><?= !empty($site_content['page_title'])?$site_content['page_title'].' - ':'Press Room - '?><?= $site_settings->site_name?></title>
    <?php $this->load->view('includes/site-master'); ?>
</head>
<body id="home-page">
    <?php get_header(); ?>
<main>


<section id="press" class="common">
    <div class="contain">
        <h1 class="secHeading"><?= $site_content['heading']?></h1>
        <!-- <ul class="lst flex">
            <?php foreach ($rows as $key => $press): ?>
                <li>
                    <div class="newsBlk">
                        <div class="image"><a href="<?= site_url('press-detail/'.$press->id)?>" style="display: block;"><img src="<?=  get_site_image_src("press",$press->image,'thumb_'); ?>" alt=""></a></div>
                        <div class="cntnt">
                            <div class="date"><?= format_date($press->date)?></div>
                            <h2><a href="<?= site_url('press-detail/'.$press->id)?>"><?= $press->title?></a></h2>
                            <p><?= short_text($press->detail)?></p>
                            <a href="<?= site_url('press-detail/'.$press->id)?>" class="learnBtn">Learn more <i class="fi-arrow-right"></i></a>
                        </div>
                    </div>
                </li>
            <?php endforeach?>
        </ul>
        <ul class="pagination">
            <?= $links?>
        </ul> -->
        <ul class="lst flex">
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/1.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">9 of the best professional biological examples we have ever seen [+ biological patterns]</a></h2>
                        <p>What's your favorite sports team? The Cleveland Cavaliers? New England Patriots? Have you ever heard someone respond to this question with Team SoloMid or Philadelphia</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/2.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">Blog SEO: How to optimize the search engines for your blog content</a></h2>
                        <p>With the end of CES 2018, we are now looking forward to all the upcoming technology the new year should bring to us. For those unfamiliar with CES, this is the</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/3.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">Email forwarding tips you must know by 2020</a></h2>
                        <p>The holiday season is fast approaching, so get ready to fill your socks with the hottest technology this year! Prepare for your vacation</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/4.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">The best newsletter templates and resources for download right now</a></h2>
                        <p>Welcome to the latest installment of our holiday gift guides! Our other gift guides include computer recommendations by interest and suggestions on our favorite peripherals</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/5.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">Google Doc features you didn't know existed (but absolutely needed)</a></h2>
                        <p>Looking for the perfect gifts this holiday season for you and your family? Give a better computer gift with high quality Overkill PCs.</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/6.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">Spoken and repeated jokes to satisfy your inner grammar</a></h2>
                        <p>After only 10 short months, Intel® released the offspring to its popular series Kaby Lake, the name of the Coffee Lake code. With that release comes</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/7.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">The Instagram profile anatomy is perfect</a></h2>
                        <p>Looking back to the beginning of the millennium, consumers wanted a fast, single or dual-core chip that could force as many cycles through the processor as possible.</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/8.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">Lead Generation: A Beginner's Guide to Business Production Leads the Inbound Path</a></h2>
                        <p>Are you a gamer who likes to have a system with the latest and greatest technology? If your answer is yes, then get ready to jump in</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/9.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">How to Use Facebook for Business: 25 Tips and Tricks for Marketing on Facebook</a></h2>
                        <p>Just a few weeks ago, AMD unveiled their new Radeon RX 500 cards. These mediocre cards help make gaming machines affordable for you</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/10.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">How to create infographic in less than an hour [15 free infographic templates]</a></h2>
                        <p>What's your favorite sports team? The Cleveland Cavaliers? New England Patriots? Have you ever heard someone respond to this question with Team SoloMid or Philadelphia</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/11.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">The best time to post on Instagram, Facebook, Twitter, LinkedIn and Pinterest</a></h2>
                        <p>After only a short 10 months, Intel® released the offspring to its popular series Kaby Lake, the name of Cafe Lake. With that release comes</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
            <li>
                <div class="newsBlk">
                    <div class="image"><a href="?"><img src="<?= base_url('assets/images/blog/12.jpg')?>" alt=""></a></div>
                    <div class="cntnt">
                        <div class="date">September 18, 2018</div>
                        <h2><a href="?">13 Blogs Most mistakes bloggers start making</a></h2>
                        <p>The holiday season is fast approaching, so get ready to fill your socks with the hottest technology this year! Prepare for your vacation</p>
                        <a href="?" class="learnBtn">Read more <i class="fi-arrow-right"></i></a>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</section>
<!-- blog -->


</main>
<?php $this->load->view('includes/footer');?>
</body>
</html>