<!doctype html>
<html>
<head>
<title>My Jobs – <?= $site_settings->site_name?></title>
    <?php $this->load->view('includes/site-master'); ?>
</head>
<body id="home-page">
<?php get_header(); ?>
<main>


<section id="dash">
    <div id="jobs">
        <div class="contain">
            <div class="head">
                <h1 class="secHeading">My Jobs</h1>
                <!-- <ul class="nav nav-tabs semi">
                    <li class="active"><a data-toggle="tab" href="#Requests">Pending Requests</a></li>
                    <li><a data-toggle="tab" href="#Upcoming">Upcoming</a></li>
                    <li><a data-toggle="tab" href="#Completed">Completed</a></li>
                </ul> -->
                <ul class="nav nav-tabs semi">
                    <li class="active"><a data-toggle="tab" href="#Active-jobs">Active jobs</a></li>
                    <li><a data-toggle="tab" href="#Previous">Previous</a></li>
                </ul>
            </div>
            <div class="tab-content">
                <div id="Active-jobs" class="tab-pane fade active in">
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
                        <div class="jobBlk">
                            <ul class="lst">
                                <li>
                                    <div class="icoBlk">
                                        <div class="ico"><img src="<?= base_url('assets/images/users/6.jpg')?>" alt=""></div>
                                        <div class="name">Tai Chi <em>Test roleplay</em></div>
                                    </div>
                                </li>
                                <li class="price_bold">$390</li>
                                <li><span class="miniLbl green">Complete</span></li>
                            </ul>
                            <a href="?"></a>
                        </div>
                        <div class="jobBlk">
                            <ul class="lst">
                                <li>
                                    <div class="icoBlk">
                                        <div class="ico"><img src="<?= base_url('assets/images/users/7.jpg')?>" alt=""></div>
                                        <div class="name">Christopher Clark <em>Test roleplay</em></div>
                                    </div>
                                </li>
                                <li class="price_bold">$280</li>
                                <li><span class="miniLbl red">Canceled</span></li>
                            </ul>
                            <a href="?"></a>
                        </div>
                        <div class="jobBlk">
                            <ul class="lst">
                                <li>
                                    <div class="icoBlk">
                                        <div class="ico"><img src="<?= base_url('assets/images/users/3.jpg')?>" alt=""></div>
                                        <div class="name">Julian Adam <em>Test roleplay</em></div>
                                    </div>
                                </li>
                                <li class="price_bold">$170</li>
                                <li><span class="miniLbl yellow">Pending</span></li>
                            </ul>
                            <a href="?"></a>
                        </div>
                    </div>
                </div>
                <div id="Previous" class="tab-pane fade">
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
                        <div class="jobBlk">
                            <ul class="lst">
                                <li>
                                    <div class="icoBlk">
                                        <div class="ico"><img src="<?= base_url('assets/images/users/6.jpg')?>" alt=""></div>
                                        <div class="name">Tai Chi <em>Test roleplay</em></div>
                                    </div>
                                </li>
                                <li class="price_bold">$390</li>
                                <li><span class="miniLbl green">Complete</span></li>
                            </ul>
                            <a href="?"></a>
                        </div>
                        <div class="jobBlk">
                            <ul class="lst">
                                <li>
                                    <div class="icoBlk">
                                        <div class="ico"><img src="<?= base_url('assets/images/users/7.jpg')?>" alt=""></div>
                                        <div class="name">Christopher Clark <em>Test roleplay</em></div>
                                    </div>
                                </li>
                                <li class="price_bold">$280</li>
                                <li><span class="miniLbl red">Canceled</span></li>
                            </ul>
                            <a href="?"></a>
                        </div>
                        <div class="jobBlk">
                            <ul class="lst">
                                <li>
                                    <div class="icoBlk">
                                        <div class="ico"><img src="<?= base_url('assets/images/users/3.jpg')?>" alt=""></div>
                                        <div class="name">Julian Adam <em>Test roleplay</em></div>
                                    </div>
                                </li>
                                <li class="price_bold">$170</li>
                                <li><span class="miniLbl yellow">Pending</span></li>
                            </ul>
                            <a href="?"></a>
                        </div>
                    </div>
                </div>
                <!-- <div id="Requests" class="tab-pane fade active in">
                    <div class="inside">
                    </div>
                </div>
                <div id="Upcoming" class="tab-pane fade">
                    <div class="inside">
                    </div>
                </div>
                <div id="Completed" class="tab-pane fade">
                    <div class="inside">
                    </div>
                </div>
                <div class="appLoad"><div class="appLoader"><span class="spiner"></span></div></div> -->
            </div>
        </div>
    </div>
</section>
<!-- dash -->
</main>
<?php $this->load->view('includes/footer');?>
<script type="text/javascript">
    $(function(){
        var hash = window.location.hash;
        hash && $('.nav.nav-tabs li a[href="' + hash + '"]').tab('show');
        get_records();
        $('.nav.nav-tabs li a').click(function(e) {
            $(this).tab('show');
            var scrollmem = $('body').scrollTop();
            window.location.hash = this.hash;
            $('html,body').scrollTop(scrollmem);
            hash = this.hash;
            get_records()
        });
        /*function get_records(){
            store = hash.replace('#', '');
            if (store==''){
                hash = '#Requests';
                store = 'Requests';
            }
            $(hash+' div.inside').html('');
            $('.appLoad').fadeIn('fast');

            $.ajax({
                url: base_url+'jobs',
                data : {'store':store},
                dataType: 'JSON',
                method: 'POST',
                success: function(res){
                    if(res.found){
                        reached=res.reached;
                        load=res.load;
                        $(hash+' div.inside').html(res.items);
                    }
                },
                error: function(res){
                    console.log(res);
                },
                complete: function(res){
                    setTimeout(function(){
                        $('.appLoad').hide();
                        $(hash+' div.inside>.jobBlk ').removeClass('hidden');
                    },1500)
                }
            })
        }
        ajaxSearch = false;
        var load = 1;
        var reached = false;
        $(window).scroll(function() {   
            if($(window).scrollTop() + $(window).height() >= $(document).height()-10) {
                if(reached)
                    return;
                $('.appLoad').fadeIn();
                $.ajax({
                    url: base_url+'jobs',
                    data : {'store':store, 'load':load},
                    dataType: 'JSON',
                    method: 'POST',
                    success: function(res){
                        if(res.found){
                            reached = res.reached;
                            load = res.load;
                            $(hash+' div.inside').append(res.items);
                        }
                    },
                    error: function(rs){
                        console.log(rs);
                    },
                    complete: function(res){
                        setTimeout(function(){
                            $('.appLoad').hide();
                            $(hash+' div.inside>.jobBlk').removeClass('hidden');
                        },1500)
                    }
                })
            }
        });*/
        
        $(document).on('click','a.view-detail',function(e){
            e.preventDefault();
            if(ajaxSearch)
                return;
            var btn=$(this);
            var store=btn.data('store');
            if (store=='')
                return false;
            needToConfirm = true;
            $.ajax({
                url: base_url+'job-detail',
                data : {'store':store},
                dataType: 'JSON',
                method: 'POST',
                success: function (rs) {
                    if(rs.status===1){
                        btn.find('span').remove();
                        $('body').addClass('flow');
                        var detail_popup=$(".popup[data-popup='view-detail']");
                        detail_popup.find('._inner').html(rs.data);
                        refresh_rateYo();
                        refresh_timepicker();
                        refresh_datepicker();
                        detail_popup.fadeIn();
                    }
                    else
                        alert('Something went wrong!')
                },
                error: function(rs){
                    console.log(rs);
                },
                complete: function (rs) {
                    ajaxSearch=false;
                    needToConfirm = false;
                }
            })
        })
        $(document).on('click','a.mActn-btn',function(e){
            e.preventDefault();
            if(ajaxSearch)
                    return;
            var btn=$(this);
            var store=btn.data('store');
            var link=btn.data('link');
            if (store=='' || link=='')
                return false;
            if (btn.data("disabled"))
                    return false;
            needToConfirm = true;

            btn.attr("disabled", true);
            btn.find("i.fa-spinner").removeClass('hidden');

            $.ajax({
                url: base_url+'/'+link,
                data : {'store':store},
                dataType: 'JSON',
                method: 'POST',
                success: function (rs) {
                    if(rs.status===1){
                        setTimeout(function(){
                            var detail_popup=$(".popup[data-popup='view-detail']");
                            detail_popup.find('._inner').html(rs.data);
                            refresh_rateYo();
                            refresh_timepicker();
                            refresh_datepicker();
                        },1000)
                    }
                    else
                        alert('Something went wrong!')
                },
                error: function(rs){
                    console.log(rs);
                },
                complete: function (rs) {
                    ajaxSearch=false;
                    needToConfirm = false;
                }
            })
        })
        $(document).on('reset', 'div[data-popup="view-detail"] form.frmAjax', function(e){
            var pupUpCBtn=$(this).parents('._inner').find('.crosBtn');
            setTimeout(function(){
                pupUpCBtn.trigger('click');
            },500)
        })
    });
</script>
</body>
</html>