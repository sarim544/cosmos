<?php if ($this->uri->segment(3) == 'detail'): ?>
    <?= showMsg(); ?>
    <?= getBredcrum(ADMIN, array('#' => 'Booking Detail')); ?>
    <div class="row margin-bottom-10">
        <div class="col-md-6">
            <h2 class="no-margin"><i class="entypo-list"></i> <strong> Booking</strong> Detail</h2>
        </div>
        <div class="col-md-6 text-right">
            <a href="<?= site_url(ADMIN . '/bookings'); ?>" class="btn btn-lg btn-default"><i class="fa fa-arrow-left"></i> Cancel</a>
        </div>
    </div>
    <div>
        <hr>
        <div class="row col-md-12">
            <h3><i class="fa fa-bars"></i> Booking Detail </h3>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td width="120"><strong>Sitter Name:</strong></td>
                        <td><?=ucwords($member->mem_fname.' '.$member->mem_lname)?></td>
                        <td width="120"><strong>Owner Name:</strong></td>
                        <td><?= $row->mem_name?></td>
                    </tr>
                    <tr>
                        <td><strong>Service:</strong></td>
                        <td>
                            <strong><?= $row->title?></strong>
                            <div>&emsp;<?= $row->price_overview?></div>
                        </td>
                        <td><strong><?= ucfirst($row->price_label)?>s:</strong></td>
                        <td><?= $row->num_stays?></td>
                    </tr>
                    <tr>
                        <td><strong><?= ucfirst($row->price_label)?>s:</strong></td>
                        <td><?= $row->num_stays?></td>
                        <?php
                        switch ($row->service_id) {
                            case 1:
                                echo '<td>
                                    <div><strong>Drop-Off Date:</strong></div>
                                    <div>
                                        <div>'.$row->start_date.'<div>'.$row->dropoff_from_time.' - '.$row->dropoff_to_time.'</div></div>
                                    </div>
                                </td>
                                <td>
                                    <div><strong>Pick-Up Date:</strong></div>
                                    <div>
                                        <div>'.$row->end_date.'<div>'.$row->pickup_from_time.' - '.$row->pickup_to_time.'</div></div>
                                    </div>
                                </td>';
                                break;
                            case 2:
                                echo '<td>
                                    <div><strong>Start Date:</strong></div>
                                    <div>
                                        <div>'.$row->start_date.'<div>'.$row->dropoff_from_time.' - '.$row->dropoff_to_time.'</div></div>
                                    </div>
                                </td>
                                <td>
                                    <div><strong>End Date:</strong></div>
                                    <div>
                                        <div>'.$row->end_date.'<div>'.$row->pickup_from_time.' - '.$row->pickup_to_time.'</div></div>
                                    </div>
                                </td>';
                                break;
                            case 3:
                                echo '<td>
                                    <div><strong>Dates:</strong></div>
                                    <div>';
                                    if ($row->days_type=='one-time') {
                                        $dates = @explode(', ', $row->dates);
                                        $times = json_decode($row->visits);
                                        foreach ($dates as $key => $date) {
                                            echo '<div>'.$date;
                                                foreach ($times[$key] as $time) {
                                                    echo '<div>'.$time.'</div>';
                                                }
                                            echo '</div>';
                                        }
                                    }else {
                                        $days = @explode(', ', $row->days);
                                        $times = json_decode($row->visits);
                                        foreach ($days as $key => $day) {
                                            echo '<div>'.$day;
                                                foreach ($times[$key] as $time) {
                                                    echo '<div>'.$time.'</div>';
                                                }
                                            echo '</div>';
                                        }
                                    }
                                echo '</div></td>';
                                break;
                            case 4:
                                echo '<td>
                                    <div><strong>Dates:</strong></div>
                                    <div>';
                                    if ($row->days_type=='one-time') {
                                        $dates = @explode(', ', $row->dates);

                                        foreach ($dates as $key => $date) {
                                            echo '<div>'.$date.'<div>'.$row->dropoff_dates[$key].' - '.$row->pickup_dates[$key].'</div></div>';
                                        }
                                    }else {
                                        $days = @explode(', ', $row->days);
                                        $times = json_decode($row->visits);
                                        foreach ($days as $key => $day) {
                                            echo '<div>'.$day.'<div>'.$row->dropoff_dates[$key].' - '.$row->pickup_dates[$key].'</div></div>';
                                        }
                                    }
                                echo '</div></td>';
                                break;
                            case 5:
                                echo '<td>
                                    <div><strong>Dates:</strong></div>
                                    <div>';
                                    if ($row->days_type=='one-time') {
                                        $dates = @explode(', ', $row->dates);

                                        foreach ($dates as $key => $date) {
                                            echo '<div>'.$date.'<div>'.$row->dropoff_dates[$key].' - '.$row->pickup_dates[$key].'</div></div>';
                                        }
                                    }else {
                                        $days = @explode(', ', $row->days);
                                        $times = json_decode($row->visits);
                                        foreach ($days as $key => $day) {
                                            echo '<div>'.$day.'<div>'.$row->dropoff_dates[$key].' - '.$row->pickup_dates[$key].'</div></div>';
                                        }
                                    }
                                echo '</div></td>';
                                break;
                            }
                        ?>
                    </tr>
                    <tr>
                        <td><strong>Pets:</strong></td>
                        <td colspan="3">
                            <?php foreach ($row->pet_rows as $key => $pet): ?>
                                <?= ($key==0)?$pet->name:', '.$pet->name;?>
                            <?php endforeach?>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Little Info:</strong></td>
                        <td colspan="3"><?= $row->detail?></td>
                    </tr>
                    <?php $total_tow = calc_booking_total($row, 'both')?>
                    <?php $stotal = 0;?>
                    <?php $total_pets = $row->puppies+$row->cats+$row->dogs;?>
                    <?php $total_stays = $row->num_stays-$row->num_holidays;?>
                    <?php if ($row->dogs>0 && $total_stays>0): ?>
                        <?php $stotal += ($row->rate*$total_stays);?>
                        <?php $stays_label = $total_stays>1?ucfirst($row->price_label).'s':ucfirst($row->price_label);?>
                        <tr class="no_border">
                            <td colspan="3"><strong>First Dog</strong> <small>$<?= $row->rate?>/<?= ucfirst($row->price_label)?> x 1 Dog x <?= $total_stays?> <?= $stays_label?></small></td>
                            <td class="price"><?= format_amount($row->rate*$total_stays)?></td>
                        </tr>
                        <?php if ($row->dogs-1>0): ?>
                            <?php $stotal += ($row->additional_dog_rate*$total_stays*($row->dogs-1));?>
                            <?php $pet_label = $row->dogs-1>1?'Dogs':'Dog';?>
                            <tr class="no_border">
                                <td colspan="3"><strong>Additional dogs</strong> <small>$<?= $row->additional_dog_rate?>/<?= ucfirst($row->price_label)?> x <?= $row->dogs-1?> <?= $pet_label?> x <?= $total_stays?> <?= $stays_label?></small></td>
                                <td class="price"><?= format_amount($row->additional_dog_rate*$total_stays*($row->dogs-1))?></td>
                            </tr>
                        <?php endif ?>
                    <?php endif ?>
                    <?php if ($row->puppies>0): ?>
                            <?php $stotal += ($row->puppy_rate*$total_stays*($row->puppies));?>
                            <?php $pet_label = $row->puppies>1?'Puppies':'puppy';?>
                            <tr class="no_border">
                                <td colspan="3"><strong>Puppies</strong> <small>$<?= $row->puppy_rate?>/<?= ucfirst($row->price_label)?> x <?= $row->puppies?> <?= $pet_label?> x <?= $total_stays?> <?= $stays_label?></small></td>
                                <td class="price"><?= format_amount($row->puppy_rate*$total_stays*($row->puppies))?></td>
                            </tr>
                    <?php endif ?>

                    <?php if ($row->extended_stays>0 && ($row->puppies+$row->dogs)>0): ?>
                        <?php $stotal += ($row->extended_stay_rate*$row->extended_stays*($row->puppies+$row->dogs));?>
                        <?php $pet_label = ($row->puppies+$row->dogs)>1?'Dogs':'Dog';?>
                        <?php $stays_label = $row->extended_stays>1?ucfirst($row->price_label).'s':ucfirst($row->price_label);?>
                        <tr class="no_border">
                            <td colspan="3"><strong>Extended stay rate</strong> <small>$<?= $row->extended_stay_rate?>/<?= ucfirst($row->price_label)?> x <?= ($row->puppies+$row->dogs)?> <?= $pet_label?> x <?= $row->extended_stays?> <?= $stays_label?></small></td>
                            <td class="price"><?= format_amount($row->extended_stay_rate*$row->extended_stay_rate*($row->puppies+$row->dogs))?></td>
                        </tr>
                    <?php endif ?>

                    <?php if ($row->cats>0 && $total_stays>0): ?>
                        <?php $stotal += ($row->cat_care_rate*$total_stays);?>
                        <?php $stays_label = $total_stays>1?ucfirst($row->price_label).'s':ucfirst($row->price_label);?>
                        <tr class="no_border">
                            <td colspan="3"><strong>First Cat</strong> <small>$<?= $row->cat_care_rate?>/<?= ucfirst($row->price_label)?> x 1 Cat x <?= $total_stays?> <?= $stays_label?></small></td>
                            <td class="price"><?= format_amount($row->cat_care_rate*$total_stays)?></td>
                        </tr>
                        <?php if ($row->cats-1>0): ?>
                            <?php $pet_label = $row->cats-1>1?'Cats':'Cat';?>
                            <tr class="no_border">
                                <td colspan="3"><strong>Additional cats</strong> <small>$<?= $row->additional_cat_rate?>/<?= ucfirst($row->price_label)?> x <?= $row->cats-1?> <?= $pet_label?> x <?= $row->num_holidays?> <?= $stays_label?></small></td>
                                <td class="price"><?= format_amount($row->additional_cat_rate*$total_stays*($row->cats-1))?></td>
                            </tr>
                        <?php endif ?>
                    <?php endif ?>
                    <?php if ($row->extended_stays>0 && $row->cats>0): ?>
                        <?php $stotal += ($row->extended_stay_rate*$row->extended_stays*$row->cats);?>
                        <?php $pet_label = $row->cats>1?'Cats':'Cat';?>
                        <?php $stays_label = $row->extended_stays>1?ucfirst($row->price_label).'s':ucfirst($row->price_label);?>
                        <tr class="no_border">
                            <td colspan="3"><strong>Extended stay rate</strong> <small>$<?= $row->extended_stay_rate?>/<?= ucfirst($row->price_label)?> x <?= $row->cats?> <?= $pet_label?> x <?= $row->extended_stays?> <?= $stays_label?></small></td>
                            <td class="price"><?= format_amount($row->extended_stay_rate*$row->extended_stays*$row->cats)?></td>
                        </tr>
                    <?php endif ?>
                    <?php if ($row->holiday_rate>0 && $row->num_holidays>0): ?>
                        <?php $stotal += ($row->holiday_rate*$row->num_holidays*$total_pets);?>
                        <?php $pet_label = $total_pets>1?'Pets':'Pet';?>
                        <?php $stays_label = $row->num_holidays>1?ucfirst($row->price_label).'s':ucfirst($row->price_label);?>
                        <tr class="no_border">
                            <td colspan="3"><strong>Holidays stay rate</strong> <small>$<?= $row->holiday_rate?>/<?= ucfirst($row->price_label)?> x <?= $total_pets?> <?= $pet_label?> x <?= $row->num_holidays?> <?= $stays_label?></small></td>
                            <td class="price"><?= format_amount($row->holiday_rate*$row->num_holidays*$total_pets)?></td>
                        </tr>
                    <?php endif ?>

                    <?php if ($row->pickup_extra>0): ?>
                        <?php $stotal += ($row->pickup_extra*$total_stays);?>
                        <tr class="ext no_border">
                            <td colspan="3"><strong>Pick-Up and Drop-Off:</strong></td>
                            <td class="price"><?= format_amount($row->pickup_extra*$total_stays)?></td>
                        </tr>
                    <?php endif ?>
                    <?php if ($row->sixty_minuts_extra>0): ?>
                        <?php $stotal += $row->sixty_minuts_extra;?>
                        <tr class="ext no_border">
                            <td colspan="3"><strong>60 Minute rate:</strong></td>
                            <td class="price"><?= format_amount($row->sixty_minuts_extra)?></td>
                        </tr>
                    <?php endif ?>
                    <?php if ($row->bathing_extra>0): ?>
                        <?php $stotal += $row->bathing_extra;?>
                        <tr class="ext no_border">
                            <td colspan="3"><strong>Bathing and Grooming:</strong></td>
                            <td class="price"><?= format_amount($row->bathing_extra)?></td>
                        </tr>
                    <?php endif ?>
                    <?php if ($row->play_dates_exta>0): ?>
                        <?php $stotal += $row->play_dates_exta;?>
                        <tr class="no_border">
                            <td colspan="3"><strong>Play Dates</strong></td>
                            <td class="price"><?= format_amount($row->play_dates_exta)?></td>
                        </tr>
                    <?php endif ?>
                    <tr class="bold">
                        <td colspan="3">PFSC Fee</td>
                        <td class="price"><?= format_amount($total_tow['pfsc_fee'])?></td>
                    </tr>
                    <tr class="bold">
                        <td colspan="3" class="bold">Total:</td>
                        <td class="price"><?= format_amount($total_tow['gtotal'])?></td>
                    </tr>
                    <?php if ($row->discount_amount>0 && !empty($row->discount_code)): ?>
                        <?php $stotal -= $row->discount_amount;?>
                        <tr class="bold">
                            <td colspan="3">Discount <strong>(<?= $row->discount_code?>)</strong></td>
                            <td class="price"><?= format_amount($row->discount_amount)?></td>
                        </tr>
                    <?php endif ?>
                    <tr class="bold">
                        <td colspan="3" class="bold">Owner Payable Amount:</td>
                        <td class="price"><?= format_amount($total_tow['owner_total'])?></td>
                    </tr>
                    <tr class="bold">
                        <td colspan="3">PFSC Commission</td>
                        <td class="price"><?= format_amount($total_tow['pfsc_commission'])?></td>
                    </tr>
                    <tr class="bold">
                        <td colspan="3" class="bold">Sitter Payable Amount:</td>
                        <td class="price"><?= format_amount($total_tow['sitter_total'])?></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <?php if($row->status==2 && ($row->completed>0 || $row->canceled==1)):?>
            <div class="row col-md-12">
                <h3><i class="fa fa-list-alt"></i> Booking Completed </h3>
                <form action="" role="form" class="form-horizontal frmAjax" method="post" enctype="multipart/form-data">
                    <div class="alertMsg"></div>
                <table class="table table-bordered">
                    <tbody>
                        <?php if ($row->canceled==1): ?>
                            <tr>
                                <td><strong>Status:</strong></td>
                                <td><span class="miniLbl red">Canceled</span></td>

                                <td><strong>Canceled By:</strong></td>
                                <td><?= ucwords($canceled_by->mem_fname.' '.$canceled_by->mem_lname)?></td>

                                <td><strong>Canceled Date:</strong></td>
                                <td><?= format_date($row->final_date)?></td>
                            </tr>
                        <?php endif ?>
                        <?php if ($row->completed>0): ?>
                            <tr>
                                <td><strong>Status:</strong></td>
                                <td><?= get_completed_status($row->completed)?></td>
                                <td><strong>On Location Date:</strong></td>
                                <td><?= format_date($row->location_time, 'M d, Y h:i:s a')?></td>
                            </tr>
                            <?php if ($row->completed==2): ?>
                                <?php
                                    $review = get_mem_review($row->owner_id, $row->id);
                                    $review_reply = get_reply($review->id);
                                ?>

                                <tr>
                                    <td><strong>Ratting:</strong></td>
                                    <td colspan="3">
                                        <div class="rateYo" id="rating"data-rateyo-rating="<?= $review->rating?>"></div>
                                        <input type="hidden" name="rating" value="<?= $review->rating?>">
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Comment:</strong></td>
                                    <td colspan="3">
                                        <p><?= $review->comment?></p>
                                        <?php if ($review_reply): ?>
                                            <p>&emsp;<?= $review_reply->comment?></p>
                                        <?php endif ?>
                                    </td>
                                </tr>
                            <?php endif?>
                        <?php endif?>
                    </tbody>
                </table>
                <?php if ($row->canceled == 0 && $row->completed > 0 && $row->on_location == 1): ?>
                    <h3>Appointment Information </h3>
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th>PEE:</th>
                                <td><?= $row->pee?></td>
                                <th>POO:</th>
                                <td><?= $row->poo?></td>
                            </tr>
                            <tr>
                                <th>Food:</th>
                                <td><?= $row->food?></td>
                                <th>Water:</th>
                                <td><?= $row->water?></td>
                            </tr>
                            <tr>
                                <th>Dog Interaction:</th>
                                <td><?= $row->dog_intraction?></td>
                                <th>Treat Breaks:</th>
                                <td><?= $row->treat_breaks?></td>
                            </tr>
                            <tr>
                                <th>Playtime:</th>
                                <td><?= $row->play_time?></td>
                                <th>Distance of walk:</th>
                                <td><?= $row->walk_distance?></td>
                            </tr>
                            <tr>
                                <th>Walk Time:</th>
                                <td><?= $row->walk_time?></td>
                                <th>Comments:</th>
                                <td><?= $row->additional_comment?></td>
                            </tr>
                            <tr>
                                <td>Photos:</td>
                                <td colspan="3">
                                    <?php foreach ($row->images as $key => $img): ?>
                                        <div class="image" style="display: inline-block;"><img src="<?= get_image_src($img->image, 150, true)?>" alt=""></div>
                                    <?php endforeach ?>
                                </td>
                            </tr>
                        </tbody>
                <?php endif ?>
                </form>
            </div>
        <?php endif?>
    </div>
    <script type="text/javascript">
        (function($){
            $(function(){
                $('.rateYo').rateYo({
                    fullStar: true,
                    normalFill: '#ddd',
                    ratedFill: '#f6a623',
                    starWidth: '14px',
                    spacing: '2px'
                });
                $(document).on("rateyo.set",'#rating',function(e, data){
                    var rating=data.rating;
                    $('input[name="rating"]').val(rating);
                });
            })
        }(jQuery))
    </script>
<?php else: ?>
    <?= showMsg(); ?>
    <?= getBredcrum(ADMIN, array('#' => 'Bookings Management')); ?>
    <div class="row margin-bottom-10">
        <div class="col-md-12">
            <h2 class="no-margin"><i class="entypo-list"></i> Manage <?php if ($this->uri->segment(4) > 0): ?><strong>" <?php echo ucwords($member_row->mem_fname.' '.$member_row->mem_lname); ?> "</strong> <?php endif; ?>Bookings</h2>
        </div>
    </div>
    <table class="table table-bordered datatable" id="table-1">
        <thead>
            <tr>
                <th width="5%" class="text-center">Sr#</th>
                <th>Buyer</th>
                <th>Sitter</th>
                <th>Date</th>
                <th>Owner Amount</th>
                <th>Status</th>
                <th>Completed</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <?php if (count($rows) > 0): $count = 0; ?>
                <?php foreach ($rows as $row): ?>
                    <tr class="odd gradeX">
                        <!-- <td class="text-center"><?= ++$count; ?></td> -->
                        <td class="text-center"><?= $row->id; ?></td>
                        <td><b><a href="<?= site_url(ADMIN.'/owners/manage/'.$row->owner_id); ?>" target="_blank"><?= get_mem_name($row->owner_id); ?></a></b></td>
                        <td><b><a href="<?= site_url(ADMIN.'/sitters/manage/'.$row->sitter_id); ?>" target="_blank"><?= get_mem_name($row->sitter_id); ?></a></b></td>
                        <td><?= format_date($row->date, 'M d, Y h:i:m a'); ?></td>
                        <td><?= format_amount(calc_booking_total($row, 'owner', true)); ?></td>
                        <td><?= get_booking_status($row->status); ?></td>
                        <td><?= get_completed_status($row->completed)?></td>
                        <td class="text-center">
                            <a href="<?= site_url(ADMIN.'/bookings/detail/'.$row->id); ?>" class="btn btn-primary btn-sm">Detail</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
<?php endif?>