<?php if ($this->uri->segment(3) == 'manage'): ?>
    <?= showMsg(); ?>
    <?= getBredcrum(ADMIN, array('#' => 'Add/Update Sitter Registrations')); ?>
    <div class="row margin-bottom-10">
        <div class="col-md-6">
            <h2 class="no-margin"><i class="entypo-users"></i> Add/Update <strong>Sitter Registrations</strong></h2>
        </div>
        <div class="col-md-6 text-right">
            <a href="<?= site_url(ADMIN . '/sitters'); ?>" class="btn btn-lg btn-default"><i class="fa fa-arrow-left"></i> Cancel</a>
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
                            <label class="control-label">Profile Bio <span class="symbol required">*</span></label>
                            <textarea name="mem_about" id="mem_about" rows="4" class="form-control ckeditor"><?=$row->mem_about; ?></textarea>
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
                            <label class="control-label"> Address</label>
                            <input type="text" name="mem_address1" value="<?php if (isset($row->mem_address1)) echo $row->mem_address1; ?>" class="form-control">
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
                            <label class="control-label">Profile Bio <span class="symbol required">*</span></label>
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

                    <div class="form-group">
                        <div class="col-md-6">
                            <label class="control-label"> Verified</label>
                            <select name="mem_verified" id="mem_verified" class="form-control">
                                <option value="0" <?php
                                if (isset($row->mem_verified) && '0' == $row->mem_verified) {
                                    echo 'selected';
                                }
                                ?>>No</option>
                                <option value="1" <?php
                                if (isset($row->mem_verified) && '1' == $row->mem_verified) {
                                    echo 'selected';
                                }
                                ?>>Yes</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label class="control-label"> Verify Email</label>
                            <select name="mem_email_verified" id="mem_email_verified" class="form-control">
                                <option value="0" <?php
                                if (isset($row->mem_email_verified) && '0' == $row->mem_email_verified) {
                                    echo 'selected';
                                }
                                ?>>No</option>
                                <option value="1" <?php
                                if (isset($row->mem_email_verified) && '1' == $row->mem_email_verified) {
                                    echo 'selected';
                                }
                                ?>>Yes</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6">
                            <label class="control-label"> Status</label>
                            <select name="mem_status" id="mem_status" class="form-control">
                                <option value="0" <?php
                                if (isset($row->mem_status) && '0' == $row->mem_status) {
                                    echo 'selected';
                                }
                                ?>>InActive</option>
                                <option value="1" <?php
                                if (isset($row->mem_status) && '1' == $row->mem_status) {
                                    echo 'selected';
                                }
                                ?>>Active</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="control-label"> Featured</label>
                            <select name="mem_featured" id="mem_featured" class="form-control">
                                <option value="0" <?php
                                if (isset($row->mem_featured) && '0' == $row->mem_featured) {
                                    echo 'selected';
                                }
                                ?>>No</option>
                                <option value="1" <?php
                                if (isset($row->mem_featured) && '1' == $row->mem_featured) {
                                    echo 'selected';
                                }
                                ?>>Yes</option>
                            </select>
                        </div>
                    </div>

                </div>
                
                <div class="col-md-6">

                    <div class="col-md-12">
                        <h3><i class="fa fa-lock"></i> Login Credentials</h3>
                        <hr class="hr-short">
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class="control-label">Email <span class="symbol required">*</span></label>
                                <input type="text" name="mem_email" value="<?php if (isset($row->mem_email)) echo $row->mem_email; ?>"  class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label class="control-label">Password </label>
                                <input type="text"  name="mem_pswd" value="<?php  if (isset($row->mem_pswd)) echo doDecode($row->mem_pswd);  ?>" class="form-control" autocomplete="off" placeholder="password" <?php  if (!empty($row->mem_pswd)) echo 'required';  ?> >
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                    <div class="col-md-12">
                        <hr class="hr-short">
                        <div class="form-group text-right">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-lg"><i class="fa fa-save"></i> Save</button>
                            </div>
                        </div>
                    </div>

                </div>
            </form>
            <input type="file" id="uploadFile" name="uploadFile" accept="image/*" class="uploadFile" data-file="">
            <div class="clearfix"></div>
        </div>
        <script type="text/javascript">
            (function($){
                $(function(){
                    $('#subject').change(function(){
                        var subject=this.value;
                        $("ul.subjLst").html('<li>Please Wait subjects are loading</li>');
                        $.ajax({
                            url: base_url+'ajax/get-subjects',
                            data : {'subject':subject,'mem_id':'<?= $sitter_main_subject->mem_id?>'},
                            method: 'POST',
                            dataType: 'json',
                            success: function (data) {
                                setTimeout(function(){
                                    if(data.option!='')
                                        $('ul.subjLst').html(data.option);
                                },3000)
                            }
                        })
                    })
                    <?php if($sitter_main_subject->subject_id>0):?>
                        $('#subject').trigger('change');
                    <?php endif?>
                     /*$('.timepicker5').timepicker({
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
                })
            }(jQuery))
        </script>
        <?php else: ?>
            <?= showMsg(); ?>
            <?= getBredcrum(ADMIN, array('#' => 'Manage Sitter Registrations')); ?>
            <div class="row margin-bottom-10">
                <div class="col-md-6">
                    <h2 class="no-margin"><i class="entypo-users"></i> Manage <strong>Sitter Registrations</strong></h2>
                </div>
                <div class="col-md-6 text-right">
                    <!-- <a href="<?= site_url(ADMIN . '/sitters/manage'); ?>" class="btn btn-lg btn-primary"><i class="fa fa-plus-circle"></i> Add New</a> -->
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
                        <th>Last Login</th>
                        <th width="8%" class="text-center">Verified</th>
                        <th width="8%" class="text-center">Status</th>
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
                                <td><?= format_date($row->mem_last_login,'M d Y h:i:s A'); ?></td>
                                <td class="text-center"><?= verified_status($row->mem_verified); ?></td>
                                <td class="text-center"><?= getStatus($row->mem_status); ?></td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> Action <span class="caret"></span></button>
                                        <ul class="dropdown-menu dropdown-primary" role="menu">
                                            <?php if ($row->mem_status == '0'): ?>
                                                <li><a href="<?= site_url(ADMIN); ?>/sitters/active/<?= $row->mem_id; ?>">Active</a></li>
                                            <?php else: ?>
                                                <li><a href="<?= site_url(ADMIN); ?>/sitters/inactive/<?= $row->mem_id; ?>">Inactive</a></li>
                                            <?php endif; ?>

                                            <li><a href="<?= site_url(ADMIN); ?>/sitters/manage/<?= $row->mem_id; ?>">Edit</a></li>
                                            <?php if(access(10)):?>
                                                <li><a href="<?= site_url(ADMIN); ?>/sitters/delete/<?= $row->mem_id; ?>" onclick="return confirm('Are you sure?');">Delete</a></li>
                                            <?php endif?>
                                            <!-- <li class="divider"></li> -->
                                            <!-- <li><a href="<?= site_url(ADMIN.'/sitters/bank-accounts/'.$row->mem_id); ?>" >Bank Accounts</a></li> -->
                                            <!-- <li><a href="<?= site_url(ADMIN.'/sitters/transactions/'.$row->mem_id); ?>" >Transactions</a></li> -->
                                            <!-- <li><a href="<?= site_url(ADMIN.'/sitters/withdraws/'.$row->mem_id); ?>" >Withdraws</a></li> -->
                                            <!-- <li><a href="<?= site_url(ADMIN.'/sitters/chats/'.$row->mem_id); ?>" >Chats</a></li> -->
                                </ul>
                            </div>  
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </tbody>
    </table>
<?php endif; ?>