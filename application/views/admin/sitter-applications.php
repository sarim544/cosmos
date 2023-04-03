<?php if ($this->uri->segment(3) == 'view'): ?>
    <?= showMsg(); ?>
    <?= getBredcrum(ADMIN, array('#' => 'View Sitter Applications')); ?>
    <div class="row margin-bottom-10">
        <div class="col-md-6">
            <h2 class="no-margin"><i class="entypo-users"></i> View <strong>Sitter Applications</strong></h2>
        </div>
        <div class="col-md-6 text-right">
            <a href="<?= site_url(ADMIN . '/sitter-applications'); ?>" class="btn btn-lg btn-default"><i class="fa fa-arrow-left"></i> Back</a>
        </div>
    </div>
    <div>
        <hr>
        <div class="row col-md-12">
            <form action=""  role="form" class="form-horizontal" method="post" enctype="multipart/form-data">

                <div class="col-md-6">
                    <h3><i class="fa fa-bars"></i> Profile Detail</h3>
                    <hr class="hr-short">
                    <?php if (isset($row->mem_fname)):?>
                        <div style="font-size: 13px"><b>Member Since:</b> <small> <?= format_date($row->mem_date); ?></small></div>
                        <div style="font-size: 13px"><b>Last Login:</b> <small> <?= format_date($row->mem_last_login,'M d Y h:i:s A'); ?></small></div>
                    <?php endif?>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label">Email <span class="symbol required">*</span></label>
                            <input type="text" name="mem_email" value="<?php if (isset($row->mem_email)) echo $row->mem_email; ?>"  class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> First Name <span class="symbol required">*</span></label>
                            <input type="text" name="mem_fname" value="<?php if (isset($row->mem_fname)) echo $row->mem_fname; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Last Name <span class="symbol required">*</span></label>
                            <input type="text" name="mem_lname" value="<?php if (isset($row->mem_lname)) echo $row->mem_lname; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Phone Number <span class="symbol required">*</span></label>
                            <input type="text" name="mem_phone" value="<?php if (isset($row->mem_phone)) echo $row->mem_phone; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Profile Nickname</label>
                            <input type="text" name="mem_profile_heading" value="<?php if (isset($row->mem_profile_heading)) echo $row->mem_profile_heading; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Date Of Birth</label>
                            <input type="text" name="mem_dob" value="<?php if (isset($row->mem_dob)) echo format_date($row->mem_dob,'m/d/Y'); ?>" class="form-control datepicker">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> SSN</label>
                            <input type="text" name="mem_ssn" value="<?php if (isset($row->mem_ssn)) echo $row->mem_ssn; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Driver’s License Number</label>
                            <input type="text" name="mem_dln" value="<?php if (isset($row->mem_dln)) echo $row->mem_dln; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> State</label>
                            <select id="mem_state" name="mem_state" class="form-control">
                                <option value="">Please select State</option>
                                <?= get_states_options('code',$row->mem_state);?>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> City</label>
                            <input type="text" name="mem_city" value="<?php if (isset($row->mem_city)) echo $row->mem_city; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Zip Code</label>
                            <input type="text" name="mem_zip" value="<?php if (isset($row->mem_zip)) echo $row->mem_zip; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label" for="mem_address1"> Address 1</label>
                            <input type="text" name="mem_address1" value="<?php if (isset($row->mem_address1)) echo $row->mem_address1; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label" for="mem_address2"> Address 2</label>
                            <input type="text" name="mem_address2" value="<?php if (isset($row->mem_address2)) echo $row->mem_address2; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Hear About us?</label>
                            <input type="text" name="mem_hear_about" value="<?php if (isset($row->mem_hear_about)) echo $row->mem_hear_about; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label"> Travel Radius (distance willing to travel) <span class="symbol required">*</span></label>
                            <input type="text" name="mem_travel_radius" value="<?php if (isset($row->mem_travel_radius)) echo $row->mem_travel_radius; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label class="control-label">Profile Bio</label>
                            <textarea name="mem_about" id="mem_about" rows="4" class="form-control ckeditor"><?=$row->mem_about; ?></textarea>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class = "col-md-6">
                            <label class="control-label"> Profile Image <span class="symbol required">*</span></label><br>
                            <img src = "<?= get_image_src($row->mem_image,150,true); ?>" height = "80"><br>
                            <input type = "file" name = "mem_image" id = "mem_image" class = "form-control file2 inline btn btn-primary" data-label = "<i class='fa fa-upload'></i> Browse" />
                            <div><br />
                                <small style = "color:#F00;">* Best resolution is <strong>600 x 600</strong>.</small><br />
                                <small style = " color:#F00;">* Allowed formats are <strong>JPG | JPEG | PNG</strong>.</small><br>
                                <small style = "color:#F00;">* Image size maximum <strong>2MB</strong> allowed.</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <h3><i class="fa fa-bars"></i> Additional Details</h3>
                        <hr class="hr-short">
                        <div class="srvcsBlk">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <ul class="qsnLst">
                                        <li>
                                            <h5>Housing conditions</h5>
                                            <label for="mem_has_home" class="control-label">
                                                <input type="checkbox" name="mem_has_home" value="1" id="mem_has_home"<?= !empty($row->mem_has_home)?' checked="true"':''?>>Has house (excludes apartments)
                                            </label>
                                            <label for="mem_has_fenced_yard" class="control-label">
                                                <input type="checkbox" name="mem_has_fenced_yard" value="1" id="mem_has_fenced_yard"<?= !empty($row->mem_has_fenced_yard)?' checked="true"':''?>>Has fenced yard
                                            </label>
                                            <label for="mem_allow_furniture" class="control-label">
                                                <input type="checkbox" name="mem_allow_furniture" value="1" id="mem_allow_furniture"<?= !empty($row->mem_allow_furniture)?' checked="true"':''?>>Dogs allowed on furniture
                                            </label>
                                            <label for="mem_allow_bed" class="control-label">
                                                <input type="checkbox" name="mem_allow_bed" value="1" id="mem_allow_bed"<?= !empty($row->mem_allow_bed)?' checked="true"':''?>>Dogs allowed on bed
                                            </label>
                                            <label for="mem_non_smoke_house" class="control-label">
                                                <input type="checkbox" name="mem_non_smoke_house" value="1" id="mem_non_smoke_house"<?= !empty($row->mem_non_smoke_house)?' checked="true"':''?>>Non-smoking home
                                            </label>
                                        </li>
                                        <li>
                                            <h5>Pets in the home</h5>
                                            <label for="mem_not_dog" class="control-label">
                                                <input type="checkbox" name="mem_not_dog" value="1" id="mem_not_dog"<?= !empty($row->mem_not_dog)?' checked="true"':''?>>Doesn't own a dog
                                            </label>
                                            <label for="mem_not_cat" class="control-label">
                                                <input type="checkbox" name="mem_not_cat" value="1" id="mem_not_cat"<?= !empty($row->mem_not_cat)?' checked="true"':''?>>Doesn't own a cat
                                            </label>
                                            <label for="mem_one_client" class="control-label">
                                                <input type="checkbox" name="mem_one_client" value="1" id="mem_one_client"<?= !empty($row->mem_one_client)?' checked="true"':''?>>Accepts only one client at a time
                                            </label>
                                            <label for="mem_caged_pet" class="control-label">
                                                <input type="checkbox" name="mem_caged_pet" value="1" id="mem_caged_pet"<?= !empty($row->mem_caged_pet)?' checked="true"':''?>>Does not own caged pets
                                            </label>
                                        </li>
                                        <li>
                                            <h5>Children in the home</h5>
                                            <label for="childrenno" class="control-label">
                                                <input type="radio" name="mem_children" value="1" id="childrenno"<?= $row->mem_children=='No'?' checked="true"':''?>>Has no children
                                            </label>
                                            <label for="children05" class="control-label">
                                                <input type="radio" name="mem_children" value="0-5" id="children05"<?= $row->mem_children=='0-5'?' checked="true"':''?>>No children 0-5 years old
                                            </label>
                                            <label for="children612" class="control-label">
                                                <input type="radio" name="mem_children" value="6-12" id="children612"<?= $row->mem_children=='6-12'?' checked="true"':''?>>No children 6-12 years old
                                            </label>
                                        </li>
                                        <li>
                                            <h5>Additional services</h5>
                                            <label for="mem_puppy_care" class="control-label">
                                                <input type="checkbox" name="mem_puppy_care" value="1" id="mem_puppy_care"<?= !empty($row->mem_puppy_care)?' checked="true"':''?>> Puppy care
                                            </label>
                                            <label for="mem_cat_care" class="control-label">
                                                <input type="checkbox" name="mem_cat_care" value="1" id="mem_cat_care"<?= !empty($row->mem_cat_care)?' checked="true"':''?>> Cat care
                                            </label>
                                            <label for="mem_play_dates" class="control-label">
                                                <input type="checkbox" name="mem_play_dates" value="1" id="mem_play_dates"<?= !empty($row->mem_play_dates)?' checked="true"':''?>> Play Dates
                                            </label>
                                            <label for="mem_first_aid_certified" class="control-label">
                                                <input type="checkbox" name="mem_first_aid_certified" value="1" id="mem_first_aid_certified"<?= !empty($row->mem_first_aid_certified)?' checked="true"':''?>> Dog first-aid certified
                                            </label>
                                        </li>
                                        <li>
                                            <h5>Sitter memberships</h5>
                                            <label for="mem_apse_member" class="control-label">
                                                <input type="checkbox" name="mem_apse_member" value="1" id="mem_apse_member"<?= !empty($row->mem_apse_member)?' checked="true"':''?>> APSE member
                                            </label>
                                            <label for="mem_petsit_member" class="control-label">
                                                <input type="checkbox" name="mem_petsit_member" value="1" id="mem_petsit_member"<?= !empty($row->mem_petsit_member)?' checked="true"':''?>> PetsitUSA member
                                            </label>
                                            <label for="mem_volunteer_member" class="control-label">
                                                <input type="checkbox" name="mem_volunteer_member" value="1" id="mem_volunteer_member"<?= !empty($row->mem_volunteer_member)?' checked="true"':''?>> Volunteer / Donor
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="col-md-12">
                        <h3><i class="fa fa-bars"></i> Availablity</h3>
                        <hr class="hr-short">
                        <div class="form-group">
                            <div class="col-md-12">
                                <?php $days=get_week_days()?>
                                <?php foreach ($days as $day_key => $day): ?>
                                    <div class="form-group col-md-12 dayLst">
                                        <label for="<?= $day?>">
                                            <input type="checkbox" name="days[<?= $day_key?>]" value="<?= $day?>" id="<?= $day?>" <?= empty($sitter_timings[$day_key]->available)?'':'checked=""' ?>> <?= $day?>
                                        </label>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="text" name="start_time[<?= $day_key?>]" value="<?= empty($sitter_timings[$day_key]->available)?'':get_meridian_time($sitter_timings[$day_key]->start_time) ?>" <?= empty($sitter_timings[$day_key]->available)?'disabled':'' ?> class="form-control timepicker">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" name="end_time[<?= $day_key?>]" value="<?= empty($sitter_timings[$day_key]->available)?'':get_meridian_time($sitter_timings[$day_key]->end_time) ?>" <?= empty($sitter_timings[$day_key]->available)?'disabled':'' ?> class="form-control timepicker">
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach ?>
                            </div>
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>

                    <div class="col-md-12">
                        <h3><i class="fa fa-bars"></i> Services</h3>
                        <hr class="hr-short">
                        <div class="srvcsBlk">
                            <?php foreach ($services as $key => $service): ?>
                                <?php $is_mem_service = is_mem_service($row->mem_id,$service->id)?>
                                <?php $disabled = $is_mem_service?'':' disabled="disabled"'?>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <h4><?= $service->title?> &emsp;<input type="checkbox" name="services[<?= $service->id?>]" id="service<?= $key?>" class="bindCls<?= $key?>" value="<?= $service->id?>"<?= $is_mem_service?' checked=""':''?>></h4>
                                        <div class="prcBlk">
                                            <label class="control-label">Price <span class="symbol required">*</span></label>
                                            <input type="text" name="prices[<?= $service->id?>]" id="price<?= $service->id?>" class="form-control bindCls<?= $key?>" placeholder="0" value="<?= empty($is_mem_service->price)?$service->default_price:$is_mem_service->price?>"<?= $disabled?>>
                                        </div>

                                        <h4>Questions</h4>
                                        <?php if ($service->id==1): ?>
                                            <ul class="qsnLst">
                                                <li>
                                                    <h5>Do you provide this service for?</h5>
                                                    <label for="service_for1_dog" class="control-label">
                                                        <input type="radio" name="service_for1" value="dog" id="service_for1_dog"<?= $is_mem_service->service_for=='dog'?' checked="true"':''?><?= $disabled?>> Dog
                                                    </label>
                                                    <label for="service_for1_cat" class="control-label">
                                                        <input type="radio" name="service_for1" value="cat" id="service_for1_cat"<?= $is_mem_service->service_for=='cat'?' checked="true"':''?><?= $disabled?>> Cat
                                                    </label>
                                                    <label for="service_for1_both" class="control-label">
                                                        <input type="radio" name="service_for1" value="both" id="service_for1_both"<?= $is_mem_service->service_for=='both'?' checked="true"':''?><?= $disabled?>> Both
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Available spaces?</h5>
                                                    <input type="number" name="available_spaces1" id="available_spaces1" value="<?= $is_mem_service->available_spaces?>" class="form-control" placeholder="0 Dogs"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Full-time home?</h5>
                                                    <label for="full_time_home_yes" class="control-label">
                                                        <input type="radio" name="full_time_home1" value="1" id="full_time_home_yes"<?= !empty($is_mem_service->full_time_home)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="full_time_home_no" class="control-label">
                                                        <input type="radio" name="full_time_home1" value="0" id="full_time_home_no"<?= empty($is_mem_service->full_time_home)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Potty breaks?</h5>
                                                    <label for="potty_break1_0-2" class="control-label">
                                                        <input type="radio" name="potty_break1" value="0-2" id="potty_break1_0-2"<?= $is_mem_service->potty_break=='0-2'?' checked="true"':''?><?= $disabled?>>0-2 hours
                                                    </label>
                                                    <label for="potty_break1_2-4" class="control-label">
                                                        <input type="radio" name="potty_break1" value="2-4" id="potty_break1_2-4"<?= $is_mem_service->potty_break=='2-4'?' checked="true"':''?><?= $disabled?>>2-4 hours
                                                    </label>
                                                    <label for="potty_break1_4-8" class="control-label">
                                                        <input type="radio" name="potty_break1" value="4-8" id="potty_break1_4-8"<?= $is_mem_service->potty_break=='4-8'?' checked="true"':''?><?= $disabled?>>4-8 hours
                                                    </label>
                                                    <label for="potty_break1_8" class="control-label">
                                                        <input type="radio" name="potty_break1" value="8+" id="potty_break1_8"<?= $is_mem_service->potty_break=='8+'?' checked="true"':''?><?= $disabled?>>8+ hours
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Flexible availability?</h5>
                                                    <label for="flex_availability_yes" class="control-label">
                                                        <input type="radio" name="flex_availability1" value="1" id="flex_availability_yes"<?= !empty($is_mem_service->flex_availability)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="flex_availability_no" class="control-label">
                                                        <input type="radio" name="flex_availability1" value="0" id="flex_availability_no"<?= empty($is_mem_service->flex_availability)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                            </ul>
                                        <?php endif ?>
                                        <?php if ($service->id==2): ?>
                                            <ul class="qsnLst">
                                                <li>
                                                    <h5>Do you provide this service for?</h5>
                                                    <label for="service_for2_dog" class="control-label">
                                                        <input type="radio" name="service_for2" value="dog" id="service_for2_dog"<?= $is_mem_service->service_for=='dog'?' checked="true"':''?><?= $disabled?>> Dog
                                                    </label>
                                                    <label for="service_for2_cat" class="control-label">
                                                        <input type="radio" name="service_for2" value="cat" id="service_for2_cat"<?= $is_mem_service->service_for=='cat'?' checked="true"':''?><?= $disabled?>> Cat
                                                    </label>
                                                    <label for="service_for2_both" class="control-label">
                                                        <input type="radio" name="service_for2" value="both" id="service_for2_both"<?= $is_mem_service->service_for=='both'?' checked="true"':''?><?= $disabled?>> Both
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Maximum travel distance?</h5>
                                                    <input type="text" name="travel_radius2" id="travel_radius2" value="<?= $is_mem_service->travel_radius?>" class="form-control" placeholder="Miles"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Per day visits?</h5>
                                                    <input type="text" name="per_day_visits2" id="per_day_visits2" class="form-control" value="<?= $is_mem_service->per_day_visits?>" placeholder="Visits"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Per day walks?</h5>
                                                    <input type="text" name="per_day_walks2" id="per_day_walks2" class="form-control" value="<?= $is_mem_service->per_day_walks?>" placeholder="Visits"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Dog Walking time? <small class="color">(check all that apply)</small></h5>
                                                    <?php $dog_walk_time2 = @explode(',', $is_mem_service->dog_walk_time)?>
                                                    <div class="selectLst">
                                                        <label for="dog_walk_time2_6am-11am" class="control-label">
                                                            <input type="checkbox" value="6am-11am" id="dog_walk_time2_6am-11am"<?= in_array('6am-11am', $dog_walk_time2)?' checked="true"':''?><?= $disabled?>>6am-11am
                                                        </label>
                                                        <label for="dog_walk_time2_11am-3pm" class="control-label">
                                                            <input type="checkbox" value="11am-3pm" id="dog_walk_time2_11am-3pm"<?= in_array('11am-3pm', $dog_walk_time2)?' checked="true"':''?><?= $disabled?>>11am-3pm
                                                        </label>
                                                        <label for="dog_walk_time2_3pm-10pm" class="control-label">
                                                            <input type="checkbox" value="3pm-10pm" id="dog_walk_time2_3pm-10pm"<?= in_array('3pm-10pm', $dog_walk_time2)?' checked="true"':''?><?= $disabled?>>3pm-10pm
                                                        </label>
                                                        <label for="dog_walk_time2_10pm–1am" class="control-label">
                                                            <input type="checkbox" value="10pm–1am" id="dog_walk_time2_10pm–1am"<?= in_array('10pm–1am', $dog_walk_time2)?' checked="true"':''?><?= $disabled?>>10pm–1am
                                                        </label>
                                                        <input type="hidden" name="dog_walk_time2" id="dog_walk_time2" value="<?= $is_mem_service->dog_walk_time?>">
                                                    </div>
                                                </li>
                                                <li>
                                                    <h5>Drop-In Visits time? <small class="color">(check all that apply)</small></h5>
                                                    <?php $dropin_visits_time2 = @explode(',', $is_mem_service->dropin_visits_time)?>
                                                    <div class="selectLst">
                                                        <label for="dropin_visits_time2_6am-11am" class="control-label">
                                                            <input type="checkbox" value="6am-11am" id="dropin_visits_time2_6am-11am"<?= in_array('6am-11am', $dropin_visits_time2)?' checked="true"':''?><?= $disabled?>>6am-11am
                                                        </label>
                                                        <label for="dropin_visits_time2_11am-3pm" class="control-label">
                                                            <input type="checkbox" value="11am-3pm" id="dropin_visits_time2_11am-3pm"<?= in_array('11am-3pm', $dropin_visits_time2)?' checked="true"':''?><?= $disabled?>>11am-3pm
                                                        </label>
                                                        <label for="dropin_visits_time2_3pm-10pm" class="control-label">
                                                            <input type="checkbox" value="3pm-10pm" id="dropin_visits_time2_3pm-10pm"<?= in_array('3pm-10pm', $dropin_visits_time2)?' checked="true"':''?><?= $disabled?>>3pm-10pm
                                                        </label>
                                                        <label for="dropin_visits_time2_10pm–1am" class="control-label">
                                                            <input type="checkbox" value="10pm–1am" id="dropin_visits_time2_10pm–1am"<?= in_array('10pm–1am', $dropin_visits_time2)?' checked="true"':''?><?= $disabled?>>10pm–1am
                                                        </label>
                                                        <input type="hidden" name="dropin_visits_time2" id="dropin_visits_time2" value="<?= $is_mem_service->dropin_visits_time?>">
                                                    </div>
                                                </li>
                                                <li>
                                                    <h5>Potty breaks?</h5>
                                                    <label for="potty_break2_0-2" class="control-label">
                                                        <input type="radio" name="potty_break2" value="0-2" id="potty_break2_0-2"<?= $is_mem_service->potty_break=='0-2'?' checked="true"':''?><?= $disabled?>>0-2 hours
                                                    </label>
                                                    <label for="potty_break2_2-4" class="control-label">
                                                        <input type="radio" name="potty_break2" value="2-4" id="potty_break2_2-4"<?= $is_mem_service->potty_break=='2-4'?' checked="true"':''?><?= $disabled?>>2-4 hours
                                                    </label>
                                                    <label for="potty_break2_4-8" class="control-label">
                                                        <input type="radio" name="potty_break2" value="4-8" id="potty_break2_4-8"<?= $is_mem_service->potty_break=='4-8'?' checked="true"':''?><?= $disabled?>>4-8 hours
                                                    </label>
                                                    <label for="potty_break2_8" class="control-label">
                                                        <input type="radio" name="potty_break2" value="8+" id="potty_break2_8"<?= $is_mem_service->potty_break=='8+'?' checked="true"':''?><?= $disabled?>>8+ hours
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Cancellation policy for House Sitting?</h5>
                                                    <label for="house_cancel_policy2_flexible" class="control-label">
                                                        <input type="radio" name="house_cancel_policy2" value="flexible" id="house_cancel_policy2_flexible"<?= $is_mem_service->house_cancel_policy=='flexible'?' checked="true"':''?><?= $disabled?>>Flexible
                                                    </label>
                                                    <label for="house_cancel_policy2_moderate" class="control-label">
                                                        <input type="radio" name="house_cancel_policy2" value="moderate" id="house_cancel_policy2_moderate"<?= $is_mem_service->house_cancel_policy=='moderate'?' checked="true"':''?><?= $disabled?>>Moderate
                                                    </label>
                                                    <label for="house_cancel_policy2_strict" class="control-label">
                                                        <input type="radio" name="house_cancel_policy2" value="strict" id="house_cancel_policy2_strict"<?= $is_mem_service->house_cancel_policy=='strict'?' checked="true"':''?><?= $disabled?>>Strict
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Cancellation policy for House Sitting?</h5>
                                                    <label for="dropin_cancel_policy2_flexible" class="control-label">
                                                        <input type="radio" name="dropin_cancel_policy2" value="flexible" id="dropin_cancel_policy2_flexible"<?= $is_mem_service->dropin_cancel_policy=='flexible'?' checked="true"':''?><?= $disabled?>>Flexible
                                                    </label>
                                                    <label for="dropin_cancel_policy2_moderate" class="control-label">
                                                        <input type="radio" name="dropin_cancel_policy2" value="moderate" id="dropin_cancel_policy2_moderate"<?= $is_mem_service->dropin_cancel_policy=='moderate'?' checked="true"':''?><?= $disabled?>>Moderate
                                                    </label>
                                                    <label for="dropin_cancel_policy2_strict" class="control-label">
                                                        <input type="radio" name="dropin_cancel_policy2" value="strict" id="dropin_cancel_policy2_strict"<?= $is_mem_service->dropin_cancel_policy=='strict'?' checked="true"':''?><?= $disabled?>>Strict
                                                    </label>
                                                </li>
                                            </ul>
                                        <?php endif ?>
                                        <?php if ($service->id==3): ?>
                                            <ul class="qsnLst">
                                                <li>
                                                    <h5>Do you provide this service for?</h5>
                                                    <label for="service_for3_dog" class="control-label">
                                                        <input type="radio" name="service_for3" value="dog" id="service_for3_dog"<?= $is_mem_service->service_for=='dog'?' checked="true"':''?><?= $disabled?>> Dog
                                                    </label>
                                                    <label for="service_for3_cat" class="control-label">
                                                        <input type="radio" name="service_for3" value="cat" id="service_for3_cat"<?= $is_mem_service->service_for=='cat'?' checked="true"':''?><?= $disabled?>> Cat
                                                    </label>
                                                    <label for="service_for3_both" class="control-label">
                                                        <input type="radio" name="service_for3" value="both" id="service_for3_both"<?= $is_mem_service->service_for=='both'?' checked="true"':''?><?= $disabled?>> Both
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Maximum travel distance?</h5>
                                                    <input type="text" name="travel_radius3" id="travel_radius3" value="<?= $is_mem_service->travel_radius?>" class="form-control" placeholder="Miles"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Per day visits?</h5>
                                                    <input type="text" name="per_day_visits3" id="per_day_visits3" class="form-control" value="<?= $is_mem_service->per_day_visits?>" placeholder="Visits"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Per day walks?</h5>
                                                    <input type="text" name="per_day_walks3" id="per_day_walks3" class="form-control" value="<?= $is_mem_service->per_day_walks?>" placeholder="Visits"<?= $disabled?>>
                                                </li>
                                                <li>
                                                    <h5>Staying at client's home?</h5>
                                                    <label for="staying_at_client3_yes" class="control-label">
                                                        <input type="radio" name="staying_at_client3" value="1" id="staying_at_client3_yes"<?= !empty($is_mem_service->staying_at_client)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="staying_at_client3_no" class="control-label">
                                                        <input type="radio" name="staying_at_client3" value="0" id="staying_at_client3_no"<?= empty($is_mem_service->staying_at_client)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Dog Walking time? <small class="color">(check all that apply)</small></h5>
                                                    <?php $dog_walk_time3 = @explode(',', $is_mem_service->dog_walk_time)?>
                                                    <div class="selectLst">
                                                        <label for="dog_walk_time3_6am-11am" class="control-label">
                                                            <input type="checkbox" value="6am-11am" id="dog_walk_time3_6am-11am"<?= in_array('6am-11am', $dog_walk_time3)?' checked="true"':''?><?= $disabled?>>6am-11am
                                                        </label>
                                                        <label for="dog_walk_time3_11am-3pm" class="control-label">
                                                            <input type="checkbox" value="11am-3pm" id="dog_walk_time3_11am-3pm"<?= in_array('11am-3pm', $dog_walk_time3)?' checked="true"':''?><?= $disabled?>>11am-3pm
                                                        </label>
                                                        <label for="dog_walk_time3_3pm-10pm" class="control-label">
                                                            <input type="checkbox" value="3pm-10pm" id="dog_walk_time3_3pm-10pm"<?= in_array('3pm-10pm', $dog_walk_time3)?' checked="true"':''?><?= $disabled?>>3pm-10pm
                                                        </label>
                                                        <label for="dog_walk_time3_10pm–1am" class="control-label">
                                                            <input type="checkbox" value="10pm–1am" id="dog_walk_time3_10pm–1am"<?= in_array('10pm–1am', $dog_walk_time3)?' checked="true"':''?><?= $disabled?>>10pm–1am
                                                        </label>
                                                        <input type="hidden" name="dog_walk_time3" id="dog_walk_time3" value="<?= $is_mem_service->dog_walk_time?>">
                                                    </div>
                                                </li>
                                                <li>
                                                    <h5>Drop-In Visits time? <small class="color">(check all that apply)</small></h5>
                                                    <?php $dropin_visits_time3 = @explode(',', $is_mem_service->dropin_visits_time)?>
                                                    <div class="selectLst">
                                                        <label for="dropin_visits_time3_6am-11am" class="control-label">
                                                            <input type="checkbox" value="6am-11am" id="dropin_visits_time3_6am-11am"<?= in_array('6am-11am', $dropin_visits_time3)?' checked="true"':''?><?= $disabled?>>6am-11am
                                                        </label>
                                                        <label for="dropin_visits_time3_11am-3pm" class="control-label">
                                                            <input type="checkbox" value="11am-3pm" id="dropin_visits_time3_11am-3pm"<?= in_array('11am-3pm', $dropin_visits_time3)?' checked="true"':''?><?= $disabled?>>11am-3pm
                                                        </label>
                                                        <label for="dropin_visits_time3_3pm-10pm" class="control-label">
                                                            <input type="checkbox" value="3pm-10pm" id="dropin_visits_time3_3pm-10pm"<?= in_array('3pm-10pm', $dropin_visits_time3)?' checked="true"':''?><?= $disabled?>>3pm-10pm
                                                        </label>
                                                        <label for="dropin_visits_time3_10pm–1am" class="control-label">
                                                            <input type="checkbox" value="10pm–1am" id="dropin_visits_time3_10pm–1am"<?= in_array('10pm–1am', $dropin_visits_time3)?' checked="true"':''?><?= $disabled?>>10pm–1am
                                                        </label>
                                                        <input type="hidden" name="dropin_visits_time3" id="dropin_visits_time3" value="<?= $is_mem_service->dropin_visits_time?>">
                                                    </div>
                                                </li>
                                                <li>
                                                    <h5>Potty breaks?</h5>
                                                    <label for="potty_break3_0-2" class="control-label">
                                                        <input type="radio" name="potty_break3" value="0-2" id="potty_break3_0-2"<?= $is_mem_service->potty_break=='0-2'?' checked="true"':''?><?= $disabled?>>0-2 hours
                                                    </label>
                                                    <label for="potty_break3_2-4" class="control-label">
                                                        <input type="radio" name="potty_break3" value="2-4" id="potty_break3_2-4"<?= $is_mem_service->potty_break=='2-4'?' checked="true"':''?><?= $disabled?>>2-4 hours
                                                    </label>
                                                    <label for="potty_break3_4-8" class="control-label">
                                                        <input type="radio" name="potty_break3" value="4-8" id="potty_break3_4-8"<?= $is_mem_service->potty_break=='4-8'?' checked="true"':''?><?= $disabled?>>4-8 hours
                                                    </label>
                                                    <label for="potty_break3_8" class="control-label">
                                                        <input type="radio" name="potty_break3" value="8+" id="potty_break3_8"<?= $is_mem_service->potty_break=='8+'?' checked="true"':''?><?= $disabled?>>8+ hours
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Cancellation policy for House Sitting?</h5>
                                                    <label for="house_cancel_policy3_flexible" class="control-label">
                                                        <input type="radio" name="house_cancel_policy3" value="flexible" id="house_cancel_policy3_flexible"<?= $is_mem_service->house_cancel_policy=='flexible'?' checked="true"':''?><?= $disabled?>>Flexible
                                                    </label>
                                                    <label for="house_cancel_policy3_moderate" class="control-label">
                                                        <input type="radio" name="house_cancel_policy3" value="moderate" id="house_cancel_policy3_moderate"<?= $is_mem_service->house_cancel_policy=='moderate'?' checked="true"':''?><?= $disabled?>>Moderate
                                                    </label>
                                                    <label for="house_cancel_policy3_strict" class="control-label">
                                                        <input type="radio" name="house_cancel_policy3" value="strict" id="house_cancel_policy3_strict"<?= $is_mem_service->house_cancel_policy=='strict'?' checked="true"':''?><?= $disabled?>>Strict
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Cancellation policy for House Sitting?</h5>
                                                    <label for="dropin_cancel_policy3_flexible" class="control-label">
                                                        <input type="radio" name="dropin_cancel_policy3" value="flexible" id="dropin_cancel_policy3_flexible"<?= $is_mem_service->dropin_cancel_policy=='flexible'?' checked="true"':''?><?= $disabled?>>Flexible
                                                    </label>
                                                    <label for="dropin_cancel_policy3_moderate" class="control-label">
                                                        <input type="radio" name="dropin_cancel_policy3" value="moderate" id="dropin_cancel_policy3_moderate"<?= $is_mem_service->dropin_cancel_policy=='moderate'?' checked="true"':''?><?= $disabled?>>Moderate
                                                    </label>
                                                    <label for="dropin_cancel_policy3_strict" class="control-label">
                                                        <input type="radio" name="dropin_cancel_policy3" value="strict" id="dropin_cancel_policy3_strict"<?= $is_mem_service->dropin_cancel_policy=='strict'?' checked="true"':''?><?= $disabled?>>Strict
                                                    </label>
                                                </li>
                                            </ul>
                                        <?php endif ?>
                                        <?php if ($service->id==4): ?>
                                            <ul class="qsnLst">
                                                <li>
                                                    <h5>Dogs size?</h5>
                                                    <?php $dog_size4 = @explode(',', $is_mem_service->dog_size)?>
                                                    <div class="selectLst">
                                                        <label for="dog_size4_small" class="control-label">
                                                            <input type="checkbox" value="small" id="dog_size4_small"<?= in_array('small', $dog_size4)?' checked="true"':''?><?= $disabled?>>Small <small>0-15lbs</small>
                                                        </label>
                                                        <label for="dog_size4_medium" class="control-label">
                                                            <input type="checkbox" value="medium" id="dog_size4_medium"<?= in_array('medium', $dog_size4)?' checked="true"':''?><?= $disabled?>>Medium <small>16-40lbs</small>
                                                        </label>
                                                        <label for="dog_size4_large" class="control-label">
                                                            <input type="checkbox" value="large" id="dog_size4_large"<?= in_array('large', $dog_size4)?' checked="true"':''?><?= $disabled?>>Large <small>41-100lbs</small>
                                                        </label>
                                                        <label for="dog_size4_giant" class="control-label">
                                                            <input type="checkbox" value="giant" id="dog_size4_giant"<?= in_array('giant', $dog_size4)?' checked="true"':''?><?= $disabled?>>Giant <small>101+lbs</small>
                                                        </label>
                                                        <input type="hidden" name="dog_size4" id="dog_size4" value="<?= $is_mem_service->dog_size?>">
                                                    </div>
                                                </li>
                                                <li>
                                                    <h5>Host cats?</h5>
                                                    <label for="host_cat4_yes" class="control-label">
                                                        <input type="radio" name="host_cat4" value="1" id="host_cat4_yes"<?= !empty($is_mem_service->host_cat)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="host_cat4_no" class="control-label">
                                                        <input type="radio" name="host_cat4" value="0" id="host_cat4_no"<?= empty($is_mem_service->host_cat)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Host puppies under 1 year old?</h5>
                                                    <label for="host_puppy_under_one4_yes" class="control-label">
                                                        <input type="radio" name="host_puppy_under_one4" value="1" id="host_puppy_under_one4_yes"<?= !empty($is_mem_service->host_puppy_under_one)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="host_puppy_under_one4_no" class="control-label">
                                                        <input type="radio" name="host_puppy_under_one4" value="0" id="host_puppy_under_one4_no"<?= empty($is_mem_service->host_puppy_under_one)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Neutered/Spayed dogs?</h5>
                                                    <label for="neutered_dog4_yes" class="control-label">
                                                        <input type="radio" name="neutered_dog4" value="1" id="neutered_dog4_yes"<?= !empty($is_mem_service->neutered_dog)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="neutered_dog4_no" class="control-label">
                                                        <input type="radio" name="neutered_dog4" value="0" id="neutered_dog4_no"<?= empty($is_mem_service->neutered_dog)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Crate trained?</h5>
                                                    <label for="crate_trained4_yes" class="control-label">
                                                        <input type="radio" name="crate_trained4" value="1" id="crate_trained4_yes"<?= !empty($is_mem_service->crate_trained)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="crate_trained4_no" class="control-label">
                                                        <input type="radio" name="crate_trained4" value="0" id="crate_trained4_no"<?= empty($is_mem_service->crate_trained)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                            </ul>
                                        <?php endif ?>
                                        <?php if ($service->id==5): ?>
                                            <ul class="qsnLst">
                                                <li>
                                                    <h5>Dogs size?</h5>
                                                    <?php $dog_size5 = @explode(',', $is_mem_service->dog_size)?>
                                                    <div class="selectLst">
                                                        <label for="dog_size5_small" class="control-label">
                                                            <input type="checkbox" value="small" id="dog_size5_small"<?= in_array('small', $dog_size5)?' checked="true"':''?><?= $disabled?>>Small <small>0-15lbs</small>
                                                        </label>
                                                        <label for="dog_size5_medium" class="control-label">
                                                            <input type="checkbox" value="medium" id="dog_size5_medium"<?= in_array('medium', $dog_size5)?' checked="true"':''?><?= $disabled?>>Medium <small>16-40lbs</small>
                                                        </label>
                                                        <label for="dog_size5_large" class="control-label">
                                                            <input type="checkbox" value="large" id="dog_size5_large"<?= in_array('large', $dog_size5)?' checked="true"':''?><?= $disabled?>>Large <small>41-100lbs</small>
                                                        </label>
                                                        <label for="dog_size5_giant" class="control-label">
                                                            <input type="checkbox" value="giant" id="dog_size5_giant"<?= in_array('giant', $dog_size5)?' checked="true"':''?><?= $disabled?>>Giant <small>101+lbs</small>
                                                        </label>
                                                        <input type="hidden" name="dog_size5" id="dog_size5" value="<?= $is_mem_service->dog_size?>">
                                                    </div>
                                                </li>
                                                <li>
                                                    <h5>Accept cats?</h5>
                                                    <label for="accept_cat5_yes" class="control-label">
                                                        <input type="radio" name="accept_cat5" value="1" id="accept_cat5_yes"<?= !empty($is_mem_service->accept_cat)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="accept_cat5_no" class="control-label">
                                                        <input type="radio" name="accept_cat5" value="0" id="accept_cat5_no"<?= empty($is_mem_service->accept_cat)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                                <li>
                                                    <h5>Host puppies under 1 year old?</h5>
                                                    <label for="host_puppy_under_one5_yes" class="control-label">
                                                        <input type="radio" name="host_puppy_under_one5" value="1" id="host_puppy_under_one5_yes"<?= !empty($is_mem_service->host_puppy_under_one)?' checked="true"':''?><?= $disabled?>> Yes
                                                    </label>
                                                    <label for="host_puppy_under_one5_no" class="control-label">
                                                        <input type="radio" name="host_puppy_under_one5" value="0" id="host_puppy_under_one5_no"<?= empty($is_mem_service->host_puppy_under_one)?' checked="true"':''?><?= $disabled?>> No
                                                    </label>
                                                </li>
                                            </ul>
                                        <?php endif ?>
                                    </div>
                                </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                        
                    <div class="col-md-12">                
                        <hr class="hr-short">
                        <div class="form-group text-right">
                            <div class="col-md-12">
                                <!-- <a href="<?= site_url(ADMIN.'/sitter-applications/declince/'.$row->mem_id); ?>" class="btn btn-danger btn-lg" onclick="return confirm('Are you sure to decline it ?')"><i class="fa fa-times"></i> Decline</a> -->
                                <!-- <button type="submit" class="btn btn-success btn-lg"><i class="fa fa-check"></i> Approve</button> -->
                                <button type="submit" class="btn btn-primary btn-lg"><i class="fa fa-save"></i> Approve</button>
                            </div>
                        </div>
                    </div>
                    <?php if ($row->mem_sitter_verified==0): ?>
                    <?php endif ?>

                </div>
            </form>
            <!-- <input type="file" id="uploadFile" name="uploadFile" accept="image/*" class="uploadFile" data-file=""> -->
            <div class="clearfix"></div>
        </div>
        <script type="text/javascript">
            (function($){
                $(function(){
                     /*$('.timepicker').timepicker({
                        template: false,
                        showInputs: false,
                        defaultTime: false,
                        minuteStep: 5
                    });*/
                    $(document).on('change', 'input[name^="days"]', function(){
                        if(this.checked){
                            $(this).parents('div.dayLst').find('input[type="text"]').attr('disabled',false);
                        } else{
                            $(this).parents('div.dayLst').find('input[type="text"]').attr('disabled',true);
                        }
                    });
                    $(document).on('change','.srvcsBlk h4 > input[type="checkbox"]',function() {
                        let chkVl = !this.checked;
                        $(this).parents('.form-group').find('.prcBlk input, .qsnLst input').attr('disabled',chkVl);
                    });
                    $(document).on('change', '.selectLst > label input[type="checkbox"]', function() {
                        let checkbox = '';
                        if (this.checked && this.value=='none')
                            $(this).parents('.selectLst').find('input[type="checkbox"]').not($(this)).prop('checked', false);
                        else
                            $(this).parents('.selectLst').find('input[type="checkbox"]:last').prop('checked', false);

                        $(this).parents('.selectLst').find('input[type="checkbox"]:checked').each(function( index ) {
                            checkbox += $( this ).val() +',';
                        });
                        checkbox = checkbox.slice(0, -1);
                        $(this).parents('.selectLst').find('input[type="hidden"]').val(checkbox);
                    });
                })
            }(jQuery))
        </script>
<?php else: ?>
    <?= showMsg(); ?>
    <?= getBredcrum(ADMIN, array('#' => 'Manage Sitter Applications')); ?>
    <div class="row margin-bottom-10">
        <div class="col-md-6">
            <h2 class="no-margin"><i class="entypo-users"></i> Manage <strong>Sitter Applications</strong></h2>
        </div>
    </div>
    <table class="table table-bordered datatable" id="table-1">
        <thead>
            <tr>
                <th width="5%" class="text-center">Sr#</th>
                <th width="60px">Photo</th>
                <th width="20%">Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Package</th>
                <th>Last Login</th>
                <th class="text-center">Application Status</th>
                <th width="12%" class="text-center">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <?php if (count($rows) > 0): $count = 0; ?>
                <?php foreach ($rows as $row): ?>
                    <tr class="odd gradeX">
                        <td class="text-center"><?= ++$count; ?></td>
                        <td class="text-center">
                            <div class="icoRound">
                                <img src = "<?= get_image_src($row->mem_image,50,true); ?>" height = "60">
                            </div>
                        </td>
                        <td><b><a href="<?= profile_url($row->mem_id,$row->mem_fname . ' ' . $row->mem_lname)?>" target="_blank"><?= $row->mem_fname . ' ' . $row->mem_lname; ?></a></b></td>
                        <td><?= $row->mem_email; ?></td>
                        <td><?= $row->mem_phone; ?></td>
                        <td><?= get_pkg_name($row->mem_package_id); ?></td>
                        <td><?= format_date($row->mem_last_login,'M d Y h:i:s A'); ?></td>
                        <td class="text-center"><?= get_application_status($row->mem_sitter_verified); ?></td>
                        
                        <td class="text-center">
                            <a href="<?= site_url(ADMIN.'/sitter-applications/view/'.$row->mem_id); ?>" class="btn btn-primary">View</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
<?php endif; ?>