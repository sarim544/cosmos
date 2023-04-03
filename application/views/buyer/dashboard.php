<!doctype html>
<html>
<head>
<title>Dashboard - <?= $site_settings->site_name?></title>
    <?php $this->load->view('includes/site-master'); ?>
</head>
<body id="home-page">
    <?php get_header(); ?>
<main>


<section id="dash">
    <div id="dashboard">
        <div class="contain">
            <?= showMsg()?>
            <div class="head">
                <h1 class="secHeading">Dashboard</h1>
            </div>
            <div class="blk topBlk">
                <div class="icoBlk">
                    <div class="ico"><img src="<?= get_image_src($mem_data->mem_image,'150',true)?>" alt="<?= format_name($mem_data->mem_fname,$mem_data->mem_lname)?>"></div>
                    <h3>Welcome back, <?= $mem_data->mem_fname?>! <span class="regular">Nice to see you again.</span></h3>
                </div>
                <ul class="blkLst text-center">
                    <li>
                        <!-- <div class="price_bold"><?= count($bookings)?></div> -->
                        <div class="price_bold">8</div>
                        <strong>Pending Requests</strong>
                    </li>
                    <li>
                        <!-- <div class="price_bold"><?= $total_pets?></div> -->
                        <div class="price_bold">3</div>
                        <strong>Total Vacays</strong>
                    </li>
                    <li>
                        <!-- <div class="price_bold"><?= format_amount($total_spending)?></div> -->
                        <div class="price_bold">$ 256.00</div>
                        <strong>Spend Money</strong>
                    </li>
                </ul>
            </div>
            <?php if (!empty($pkg_row) && empty($pkg_row->one_time)): ?>
                <div class="blk mshipBlk" style="display: none !important;">
                    <div class="txt">
                        <h4 class="color">Membership</h4>
                        <!-- <p>Note: If you cancel membership, your profile will not appear in search results.</p> -->
                    </div>
                    <div class="switchBtn">
                        <input type="checkbox" name="membership" id="membership"<?= !empty($mem_data->mem_membership_auto)?' checked=""':''?>>
                    </div>
                </div>
            <?php endif ?>
            <div class="head">
                <h1 class="secHeading">My Bookings</h1>
            </div>
            <div class="inside">
                <div class="jobBlk">
                    <ul class="lst">
                        <li>
                            <div class="icoBlk">
                                <div class="ico"><img src="<?= base_url('assets/images/users/2.jpg')?>" alt=""></div>
                                <div class="name">John Wick <em>Test roleplay</em></div>
                            </div>
                        </li>
                        <li class="price_bold">$250</li>
                        <li><span class="miniLbl green">Complete</span></li>
                    </ul>
                    <a href="?"></a>
                </div>
                <div class="jobBlk">
                    <ul class="lst">
                        <li>
                            <div class="icoBlk">
                                <div class="ico"><img src="<?= base_url('assets/images/users/7.jpg')?>" alt=""></div>
                                <div class="name">Abraham Adam <em>Test roleplay</em></div>
                            </div>
                        </li>
                        <li class="price_bold">$220</li>
                        <li><span class="miniLbl yellow">Pending</span></li>
                    </ul>
                    <a href="?"></a>
                </div>
                <div class="jobBlk">
                    <ul class="lst">
                        <li>
                            <div class="icoBlk">
                                <div class="ico"><img src="<?= base_url('assets/images/users/3.jpg')?>" alt=""></div>
                                <div class="name">Samira Jones <em>Test roleplay</em></div>
                            </div>
                        </li>
                        <li class="price_bold">$150</li>
                        <li><span class="miniLbl green">Complete</span></li>
                    </ul>
                    <a href="?"></a>
                </div>
                <div class="jobBlk">
                    <ul class="lst">
                        <li>
                            <div class="icoBlk">
                                <div class="ico"><img src="<?= base_url('assets/images/users/4.jpg')?>" alt=""></div>
                                <div class="name">James Spiegel <em>Test roleplay</em></div>
                            </div>
                        </li>
                        <li class="price_bold">$140</li>
                        <li><span class="miniLbl red">Canceled</span></li>
                    </ul>
                    <a href="?"></a>
                </div>
                <div class="jobBlk">
                    <ul class="lst">
                        <li>
                            <div class="icoBlk">
                                <div class="ico"><img src="<?= base_url('assets/images/users/5.jpg')?>" alt=""></div>
                                <div class="name">Preety Chen <em>Test roleplay</em></div>
                            </div>
                        </li>
                        <li class="price_bold">$180</li>
                        <li><span class="miniLbl yellow">Pending</span></li>
                    </ul>
                    <a href="?"></a>
                </div>
            </div>
            <!-- <div class="inside">
                <?php if (count($bookings)<1): ?>
                    <div class="semi color">No booking available</div>
                <?php endif?>
                <?php foreach ($bookings as $key => $booking): ?>
                    <div class="jobBlk">
                        <ul class="lst">
                            <li>
                                <div class="icoBlk">
                                    <div class="ico"><img src="<?= get_image_src($booking->mem_image, 300, true)?>" alt="<?= $booking->mem_name?>"></div>
                                    <div class="name"><?= $booking->mem_name?> <em><?= $booking->service?></em></div>
                                </div>
                            </li>
                            <li><?= get_confirmed_status($booking)?></li>
                        </ul>
                        <a href="<?= site_url('booking-detail/'.$booking->encoded_id)?>"></a>
                    </div>
                <?php endforeach ?>
            </div> -->
            <!-- <div class="blk">
                <div class="_header">
                    <h3>Job Progress</h3>
                </div>
                <div class="lstBlk">
                    <ul class="lst semi">
                        <li><h5>Dog Boarding <em>24h stay, at sitter's home</em></h5></li>
                        <li><div class="inner active">Apply</div></li>
                        <li><div class="inner">Test</div></li>
                        <li><div class="inner">Review</div></li>
                        <li><div class="inner">Contract</div></li>
                    </ul>
                </div>
                <div class="lstBlk">
                    <ul class="lst semi">
                        <li><h5>House Sitting <em>Daytime care, at sitter's home</em></h5></li>
                        <li><div class="inner active">Apply</div></li>
                        <li><div class="inner active">Test</div></li>
                        <li><div class="inner active">Review</div></li>
                        <li><div class="inner active">Contract</div></li>
                    </ul>
                </div>
                <div class="lstBlk">
                    <ul class="lst semi">
                        <li><h5>Drop-in Visits <em>Min. 30-minute walks</em></h5></li>
                        <li><div class="inner active">Apply</div></li>
                        <li><div class="inner active">Test</div></li>
                        <li><div class="inner active">Review</div></li>
                        <li><div class="inner">Contract</div></li>
                    </ul>
                </div>
                <div class="lstBlk">
                    <ul class="lst semi">
                        <li><h5>Doggy Day Care <em>Min. 30-minute visits in your home</em></h5></li>
                        <li><div class="inner active">Apply</div></li>
                        <li><div class="inner">Test</div></li>
                        <li><div class="inner">Review</div></li>
                        <li><div class="inner">Contract</div></li>
                    </ul>
                </div>
                <div class="lstBlk">
                    <ul class="lst semi">
                        <li><h5>Dog Walking <em>24h stay, in your home</em></h5></li>
                        <li><div class="inner active">Apply</div></li>
                        <li><div class="inner active">Test</div></li>
                        <li><div class="inner">Review</div></li>
                        <li><div class="inner">Contract</div></li>
                    </ul>
                </div>
            </div> -->
        </div>
    </div>
</section>
<!-- dash -->


</main>
<?php $this->load->view('includes/footer');?>
<?php if (!empty($pkg_row) && empty($pkg_row->one_time)): ?>
<script type="text/javascript">
    $(function() {
        $(document).on('click', '#membership', function() {
            if (!this.checked)
                return confirm('Are you sure, You want to cancel?');
        })
        $(document).on('change', '#membership', function() {
            let membership = this.checked;
            $.post(base_url+'save-membership', {'membership':membership},function(rs){})
        })
    });
</script>
<?php endif?>
</body>
</html>