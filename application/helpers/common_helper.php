<?php

$CI = & get_instance();
/*** start file function ***/

function upload_vfile($field_name, $type = 'image', $size = 2100000) {
    $type_arr = array('image' => 'gif|jpg|png|svg','file' => 'gif|jpg|png|pdf|doc|docx|xlsx|word|xls|csv|txt|text','att' => 'gif|jpg|png|pdf|doc|docx|xlsx|word|xls|csv|txt|text|mp3|mp4','audio' => 'mp3','video' => 'mp4');
    $upload_path = $type=='image'?UPLOAD_VPATH . "vp":UPLOAD_VPATH . "attachments";
    $types = $type_arr[$type];
    $CI = get_instance();
    $stamp = md5(rand(100, 1000)) . '_' .time() . '_' . rand(1111, 9999);
    $config['upload_path'] = $upload_path;
    $config['allowed_types'] = $types;
    $config['max_size'] = $size;
    $config['file_name'] = $stamp;
    $CI->load->library('upload', $config);
    $CI->upload->initialize($config);
    if (!$CI->upload->do_upload($field_name)) {
        $image['error'] = $CI->upload->display_errors();
        return $image;
    } else {
        $image = $CI->upload->data();
        if($type == 'image'){
            generate_vimage_thumbs($image['file_name']);
        }
        return $image;
    }
}

function get_vsize_dirs() {
    return array('50' => 'p50x50/', '150' => 'p150x150/', '300' => 'p300x300/', '350' => 'p350x350/', '400' => 'p400x400/');
}
function generate_vimage_thumbs($image) {
    $img_sizes = get_vsize_dirs();
    foreach ($img_sizes as $size => $directory) {
        $directory = UPLOAD_VPATH . $directory;
        /*if (!file_exists($directory)) {
            mkdir($directory, 0777, true);
            create_file_copy(UPLOAD_PATH . "index.html", $directory."index.html");
        }*/
        generate_thumb(UPLOAD_VPATH . "vp/", $directory, $image, $size);
    }
}
function remove_vfile($img, $type = 'image') {
    if(!empty($img)){
        if ($type== 'image') {
            $img_sizes = get_vsize_dirs();
            $img_sizes['vp'] = 'vp/';
        }else{
            $img_sizes['attachments'] = 'attachments/';
        }
        foreach ($img_sizes as $size => $directory) {
            $filepath = UPLOAD_VPATH . $directory . $img;
            if (is_file($filepath))
                unlink($filepath);
        }
        return true;
    }
    return false;
}

function remove_gellary_vfile($ref_id, $ref_type) {
    $CI = get_instance();
    $mem_images = $CI->master->getRows('gallery', array('ref_id' => $ref_id, 'ref_type' => $ref_type));
    if(count($mem_images)>0){
        foreach ($mem_images as $key => $img) {
            $img_sizes = get_vsize_dirs();
            $img_sizes['vp'] = 'vp/';
            foreach ($img_sizes as $size => $directory) {
                $filepath = UPLOAD_VPATH . $directory . $img->image;
                if (is_file($filepath))
                    unlink($filepath);
            }
            $CI->master->delete('gallery', 'id' , $img->id);
        }
        return true;
    }
    return false;
}

function upload_image($path, $field_name, $pre_fix = 'image') {
    $CI = get_instance();

    $stamp = time() . '_' . rand(1111, 9999);
    $config['upload_path'] = $path;
    $config['allowed_types'] = 'gif|jpg|png';
    $config['max_size'] = 2100000;
    $config['file_name'] = $pre_fix."_" . $stamp;

    $CI->load->library('upload', $config);
    $CI->upload->initialize($config);

    if (!$CI->upload->do_upload($field_name)) {
        $image['error'] = $CI->upload->display_errors();
        return $image;
    } else {
        $image = $CI->upload->data();
        return $image;
    }
}
function upload_file($path, $field_name,$type = 'image',$custom_name='',$size=2100000) {
    $type_arr=array('image'=>'gif|jpg|png|svg','file'=>'gif|jpg|png|pdf|doc|docx|xlsx|word|xls|csv|txt|text','attach'=>'gif|jpg|png|pdf|doc|docx|xlsx|word|xls|csv|txt|text','audio'=>'mp3','video'=>'mp4');
    $type=$type_arr[$type];

    $stamp = empty($custom_name)?(md5(rand(100, 1000)) . '_' .time() . '_' . rand(1111, 9999)):$custom_name;
    
    $CI = get_instance();
    $config['upload_path'] = $path;
    $config['allowed_types'] = '*';
    $config['max_size'] = $size;
    $config['file_name'] = $stamp;

    $CI->load->library('upload', $config);
    $CI->upload->initialize($config);

    if (!$CI->upload->do_upload($field_name)) {
        $image['error'] = $CI->upload->display_errors();
        return $image;
    } else {
        $image = $CI->upload->data();
        return $image;
    }
}

function create_file_copy($src,$destination) {
    $res = copy($src, $destination);
    return $res ;
}

function upload_audio($path, $field_name) {
    global $CI;
    $CI = & get_instance();
    $stamp = time();
    $config['upload_path'] = $path;
    $config['allowed_types'] = 'mp3';
    $config['max_size'] = 2100000;
    $config['file_name'] = "audio_" . $stamp;

    $CI->load->library('upload');
    $CI->upload->initialize($config);

    if (!$CI->upload->do_upload($field_name)) {
        $image['error'] = $CI->upload->display_errors();
        return $image;
    } else {
        $image = $CI->upload->data();
        return $image;
    }
}

function upload_video($path, $field_name) {
    global $CI;
    $CI = & get_instance();
    $stamp = time();
    $config['upload_path'] = $path;
    $config['allowed_types'] = '*';
    $config['max_size'] = 2100000;
    $config['file_name'] = "video_" . $stamp;

    $CI->load->library('upload');
    $CI->upload->initialize($config);

    if (!$CI->upload->do_upload($field_name)) {
        $image['error'] = $CI->upload->display_errors();
        return $image;
    } else {
        $image = $CI->upload->data();
        return $image;
    }
}

function generate_thumb($frompath, $topath, $file_name, $thumb_width = 100,$type='') {

    $CI = &get_instance();
    $CI->load->library('Simpleimage');
    $CI->simpleimage->load($frompath . $file_name);
    $CI->simpleimage->resizeToWidth($thumb_width);
    $CI->simpleimage->save($topath . $type . $file_name);
    return $type . $file_name;
}

function get_image_src($image, $type = 'full', $user_image = '') {
    // if(date('H')>=18){
    $path_arr=array('50' => 'p50x50','150' => 'p150x150','300' => 'p300x300','350' => 'p350x350','400' => 'p400x400','full' => 'vp','att' => 'attachments','temp' =>'temp','temp_ico' =>'temp/p150x150');

    $filepath=SITE_VPATH.$path_arr[$type].'/'.$image;
    if (!empty($image) && @getimagesize($filepath)) {
        return $filepath;
    }
    // }
    return empty($user_image)?base_url('assets/images/no-image.svg'):base_url('assets/images/no-user.svg');
}

function get_site_image_src($path,$image,$type='',$user_image=false) {

    $filepath=SITE_IMAGES.$path.'/'.$type.$image;
    if (!empty($image) && @file_exists(FCPATH.'uploads/'.$path.'/'.$type.$image)) {
    // if (!empty($image) && @getimagesize($filepath)) {
        return $filepath;
    }
    return empty($user_image)?base_url('assets/images/no-image.svg'):base_url('assets/images/no-user.svg');
}

function getImageDimension($image) {
    if (!empty($image)) {
        $ary = explode("/", $image);
        if (file_exists($image) && !empty($ary[count($ary) - 1])) {
            list($width, $height) = getimagesize($image);
            return $width . "x" . $height;
        }
    }
    // return '768x1191';
    return '';
}
/*** end file function ***/
function getBredcrum($section, $ary) {
    $bcrum = '
    <ol class="breadcrumb">
    <li>
    <a href="' . base_url($section) . '"><i class="fa fa-home"></i>Home</a>
    </li>';
    foreach ($ary as $key => $value) {
        if ($key == '#') {
            $bcrum .= '<li class="active"><strong>' . $value . '</strong></li>';
        } else {
            $bcrum .= '<li><a href="' . base_url($section . '/' . $key) . '">' . $value . '</a></li>';
        }
    }
    $bcrum .= '</ol>';
    return $bcrum;
}

function sepreat_comb($comb) {
    $label = "";
    $arr = explode(',', $comb);
    foreach ($arr as $keys => $vals) {
        $label .= "<span class='badge'>" . $vals . "</span>";
    }
    return $label;
}
function checkEmptyp($val) {
    if (!empty($val)) {
        return $val;
    }
    return "N/A";
}

function pr($ary, $exit = true) {
    echo "<pre>";
    print_r($ary);
    echo "</pre>";
    if ($exit)
        exit;
}

function print_query(){
    global $CI;
    die($CI->db->last_query());
}

function get_default($value, $default = 'None') {
    if (empty($value))
        return $default;
    else
        return $value;
}

function showMsg($type = '', $msg = '') {
    global $CI;
    if (empty($type) && empty($msg)) {
        $type = $CI->session->userdata('f_type');
        $msg = $CI->session->userdata('f_msg');
        $CI->session->unset_userdata('f_type');
        $CI->session->unset_userdata('f_msg');
    }
    if ($type != '' && $msg != '') {
        switch ($type) {
            case 'success':
            /*return '<div class="alertMsg"><div class="alert alert-success"><button data-dismiss="alert" class="close"> × </button><strong>Success:</strong> ' . $msg . '</div><div class="clearfix"></div></div>';*/
            return '<div class="alertMsg"><div class="alert alert-success"><strong>Success:</strong> ' . $msg . '</div><div class="clearfix"></div></div>';
            break;
            case 'error':
            // return '<div class="alertMsg"><div class="alert alert-danger"><button data-dismiss="alert" class="close"> × </button><strong>Error: </strong> ' . $msg . '</div><div class="clearfix"></div></div>';
            return '<div class="alertMsg"><div class="alert alert-danger"><!--<strong>Error: </strong>--> ' . $msg . '</div><div class="clearfix"></div></div>';
            break;
            case 'warning':
            // return '<div class="alertMsg"><div class="alert alert-warning"><button data-dismiss="alert" class="close"> × </button><strong>Warning:</strong> ' . $msg . '</div><div class="clearfix"></div></div>';
            return '<div class="alertMsg"><div class="alert alert-warning"><strong>Warning:</strong> ' . $msg . '</div><div class="clearfix"></div></div>';
            break;
            default:
            // return '<div class="alertMsg"><div class="alert alert-info"><button data-dismiss="alert" class="close"> × </button><strong>Info:</strong> ' . $msg . '</div><div class="clearfix"></div></div>';
            return '<div class="alertMsg"><div class="alert alert-info"><strong>Info:</strong> ' . $msg . '</div><div class="clearfix"></div></div>';
            break;
        }
    }
}

function setMsg($type, $msg) {
    global $CI;
    $CI->session->set_userdata('f_type', $type);
    $CI->session->set_userdata('f_msg', $msg);
}

function setPost($vals) {
    $CI = & get_instance();
    $CI->session->set_flashdata('f_post', $vals);
}

function showVal($val) {
    if (isset($val))
        return $val;
}

function get_application_status($status) {
    if ($status == 0) {
        return '<span class="miniLbl yellow">Pending</span>';
    } elseif($status==1) {
        return '<span class="miniLbl green">Accepted</span>';
    } else {
        return '<span class="miniLbl red">Declined</span>';
    }
}

function get_promocode_status($status) {
    if ($status == 0) {
        return '<span class="miniLbl green">New</span>';
    } elseif($status==1) {
        return '<span class="miniLbl red">Used</span>';
    } else {
        return '<span class="miniLbl green">Expired</span>';
    }
}

function get_paid_status($status) {
    if ($status == 0) {
        return '<span class="miniLbl yellow">Pending</span>';
    } else {
        return '<span class="miniLbl green">Complete</span>';
    }
}
function verified_status($status) {
    if ($status == '1') {
        return '<strong style="color:green;">Yes</strong>';
    } else {
        return '<strong style="color:red;">No</strong>';
    }
}
function getStatus($status) {
    if ($status == '1') {
        return '<strong style="color:green;">Active</strong>';
    } else {
        return '<strong style="color:red;">Inactive</strong>';
    }
}
function get_registration_status($status) {
    $status_arr=array('new'=>'yellow','accepted'=>'green','deposit paid','paid','declined','hold','waitlist'=>'gray','canceled'=>'red');
    return '<span class="miniLbl '.$status_arr[$status].'">'.ucwords($status).'</span>';
}
function get_active_status($status) {
    if ($status == 1) {
        return '<span class="miniLbl green">Active</span>';
    } else {
        return '<span class="miniLbl red">Inactive</span>';
    }
}

function SubscriptionStatus($row) {
    $current_date = date("Y-m-d");
    $expire_date = date("Y-m-d", strtotime($row->expire_date));
    if ($current_date <= $expire_date) {
        return '<strong style="color:green;">Active</strong>';
    } else {
        return '<strong style="color:red;">Expire</strong>';
    }
}

function getFeatured($status) {
    if ($status == '1') {
        return '<strong style="color:green;">Yes</strong>';
    } else {
        return '<strong style="color:red;">No</strong>';
    }
}

function getPayStatus($status) {
    if ($status == '1') {
        return '<strong style="color:green;">Complete</strong>';
    } else {
        return '<strong style="color:red;">Pending</strong>';
    }
}

function getStatusYesNo($status) {
    if ($status == '1') {
        return '   <span class="green">Complete</span>';
    } else {
        return '   <span class="yellow">Pending</span>';
    }
}

function doEncode($string, $key = 'preciousprotection') {
    $string = base64_encode($string);
    $key = sha1($key);
    $strLen = strlen($string);
    $keyLen = strlen($key);
    for ($i = 0; $i < $strLen; $i++) {
        $ordStr = ord(substr($string, $i, 1));
        if ($j == $keyLen) {
            $j = 0;
        }
        $ordKey = ord(substr($key, $j, 1));
        $j++;
        $hash .= strrev(base_convert(dechex($ordStr + $ordKey), 16, 36));
    }
    return ($hash);
}

function doDecode($string, $key = 'preciousprotection') {
    $key = sha1($key);
    $strLen = strlen($string);
    $keyLen = strlen($key);
    for ($i = 0; $i < $strLen; $i += 2) {
        $ordStr = hexdec(base_convert(strrev(substr($string, $i, 2)), 36, 16));
        if ($j == $keyLen) {
            $j = 0;
        }
        $ordKey = ord(substr($key, $j, 1));
        $j++;
        $hash .= chr($ordStr - $ordKey);
    }
    $hash = base64_decode($hash);
    return ($hash);
}

function format_amount($amount, $size = 2) {
    $amount=floatval($amount);
    return $amount>=0?"$".number_format($amount, $size):"$ (".number_format(abs($amount), $size).')';
}
function num($val, $size = 2) {
    return number_format(floatval($val), $size, '.', '');
}

function randCode($length = 8, $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890') {
    $chars_length = (strlen($chars) - 1);
    $string = $chars[rand(0, $chars_length)];

    for ($i = 1; $i < $length; $i = strlen($string)) {
        $r = $chars[rand(0, $chars_length)];
        if ($r != $string[$i - 1])
            $string .= $r;
    }

    return strtoupper($string);
}

function checkEmail($email) {
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        return true;
    }
    return false;
}

function checkUsername($username) {
    if (preg_match('/^[a-zA-Z0-9]{3,}$/', $username)) {
        return true;
    }
    return false;
}

function checkPassword($password) {
    if (preg_match('/^[a-zA-Z0-9]{5,}$/', $password)) {
        return true;
    }
    return false;
}

function setZeroVal($val, $length = 6) {
    $output = NULL;
    for ($i = 0; $i < intval($length) - strlen($val); $i++) {
        $output .= '0';
    }
    return $output . $val;
}
function toSlugUrl($text) {

    $text = trim($text);
    $text = str_replace("&quot", '', $text);
    $text = preg_replace('/[^A-Za-z0-9-]+/', '-', $text);
    $text = str_replace("--", '-', $text);
    $text = str_replace("--", '-', $text);
    return strtolower($text);
}

function getImgSize($image) {
    $size = filesize($image);
    return intval($size / 1024);
}

function currentURL() {
    $s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on" ? "s" : "");
    $proto = strtolower($_SERVER["SERVER_PROTOCOL"]);
    $protocol = substr($proto, 0, strpos($proto, "/")) . $s;
    $port = ($_SERVER["SERVER_PORT"] == "80") ? "" : (":" . $_SERVER["SERVER_PORT"]);

    return $protocol . "://" . $_SERVER['SERVER_NAME'] . $port . $_SERVER['REQUEST_URI'];
}

function makeExternalUrl($url) {
    if (strpos($url, 'http') === false) {
        $url = 'http://' . $url;
    }
    return $url;
}

function remove_file_from_directry($id, $table_name) {
    global $CI;
    $ary = $CI->master->getRow($table_name, array('id' => $id));
    unlink('./assets/site-content/images/' . $ary->src);
    unlink('./assets/site-content/images/thumb/' . $ary->src);
    return;
}

function send_email($vals) {
    global $CI;
    $CI = get_instance();
    if ($vals) {
        $email_to = $vals['site_email'];
        $msg = "User Type: Pet " . $vals['type'] . "<br>";
        $msg = "Name: " . $vals['name'] . "<br>";
        $msg .= "Phone: " . $vals['phone'] . "<br>";
        $msg .= "Subject: " . $vals['subject'] . "<br>";
        $msg .= "Email: " . $vals['email'] . "<br>";
        $msg .= "Message: " . $vals['msg'] . "<br>";
        $sub = "Contact Email";
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        $headers .= "From: " . stripslashes($vals['name']) . $vals['site_noreply_email']. "\r\n";
        if (@mail($email_to, $sub, $msg, $headers)) {
            return 1;
        } else {
            return 0;
        }
    }
    redirect(currentURL());
}

function send_site_email($mem_data,$key) {
    $CI = get_instance();
    $settings = $CI->master->getRow("siteadmin", array('site_id' => '1'));

    $name=$mem_data['name'];
    $msg_body=getSiteText('email',$key);
    eval("\$msg_body = \"$msg_body\";");
    if(!empty($mem_data['link']))
        $msg_body.="<p><a href='{$mem_data['link']}' style='color: #37b36f; text-decoration: none;'>".$mem_data['link']."</a></p>";

    $emailto = $mem_data['email'];
    $subject = $settings->site_name." - ".getSiteText('email', $key,'subject');
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html;charset=utf-8\r\n";
    $headers .= "From: " . $settings->site_name . " <" . $settings->site_email . ">" . "\r\n";
    $headers .= "Reply-To: " . $settings->site_name . " <" . $settings->site_email . ">" . "\r\n";

    $data['email_body'] = $msg_body;
    $data['email_subject'] = $subject;
    $ebody = $CI->load->view('includes/email_template', $data, TRUE);
    if (@mail($emailto, $subject, $ebody, $headers)) {
        return 1;
    } else {
        return 0;
    }
}

function imageToBase64($path, $image) {
    //return $path . $image;
    $type = pathinfo($path . $image, PATHINFO_EXTENSION);
    $data = file_get_contents($path . $image);
    $base64 = 'data:image/' . $type . ';base64,' . base64_encode($data);
    return $base64;
}

function base64ToImage($path, $base64Image) {
    list($type, $data) = explode(';', $base64Image);
    list(, $data) = explode(',', $data);
    $data = base64_decode($data);
    $imagename = time() . '_' . rand(1111, 9999) . '.png';
    file_put_contents($path . $imagename, $data);
    return $imagename;
}
function is_in_string($str, $main_str = 'Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday'){
    $pos = strpos($main_str, $str);
    if ($pos === false) {
        $CI = get_instance();
        $CI->form_validation->set_message('is_in_string', 'Please select valid {field}');
        return false;
    }
    return true;
}
function show_time_option() {
    /*$options = '<option value="00:00">00:00 AM</option>';
    foreach (range(1, 11) as $t) {
        $options .= '<option value="'.sprintf('%02d',$t).':00">'.sprintf('%02d',$t).':00 AM</option>';
    }
    $options .= '<option value="12:00">12:00 PM</option>';
    foreach (range(1, 11) as $t) {
        $options .= '<option value="'.sprintf('%02d',$t).':00">'.sprintf('%02d',$t).':00 PM</option>';
    }
    return $options;*/
    $options = '<option value="12 AM">12 AM</option>';
    foreach (range(1, 23) as $t) {
        $medridian = $t>11?'PM':'AM';
        $time = $t<=12?$t:$t-12;
        $options .= '<option value="'.$time.' '.$medridian.'">'.$time.' '.$medridian.'</option>';
        // $options .= '<option value="'.sprintf('%02d',$time).':00">'.$time.' '.$medridian.'</option>';
        // $options .= '<option value="'.sprintf('%02d',$time).':00 '.$medridian.'">'.sprintf('%02d', $time).':00 '.$medridian.'</option>';
        // $options .= '<option value="'.sprintf('%02d',$t).':00">'.sprintf('%02d', $time).':00 '.$medridian.'</option>';
    }
    return $options;
}

function get_meridian_time($d){
    $d = str_replace('/', '-', $d);
    return date("h:i A", strtotime($d));
}

function get_full_time($d){
    $d = str_replace('/', '-', $d);
    return date("H:i", strtotime($d));
}

function hours_format($h){
    $d=@explode('.', $h);
    // return count($d)==2?$d[0].'h '.$d[1].'m':$d[0].'h';
    if (count($d)==1 && $d[0]!=0)
        return $d[0].'h';
    if (count($d)==2 && $d[0]!=0 && $d[1]!=0)
        return $d[0].'h '.($d[1]*6).'m';
    if (count($d)==2 && $d[0]==0 && $d[1]!=0)
        return ($d[1]*6).'m';
}

function format_date($d,$format='',$default_show='TBD'){
    $format=empty($format)?'M d, Y':$format;
    $d = str_replace('/', '-', $d);
    if($d=='0000:00:00' || $d=='0000-00-00' || !$d)
        return $default_show;
    $d=( is_numeric($d) && (int)$d == $d )?$d:strtotime($d);
    return date($format,$d);
}
function db_format_date($d){

    $d = str_replace('-', '/', $d);
    return empty($d)?'':date('Y-m-d', strtotime($d));
}

function is_valid_date($date, $format = 'm/d/Y'){
    $CI = get_instance();
    $d = DateTime::createFromFormat($format, $date);
    // The Y ( 4 digits year ) returns TRUE for any integer with any number of digits so changing the comparison from == to === fixes the issue.
    $CI->form_validation->set_message('is_valid_date', 'Please select valid {field}');
    return $d && $d->format($format) === $date;
}
function is_min_valid_date($date, $format = 'm/d/Y'){
    $d = DateTime::createFromFormat($format, $date);
    // The Y ( 4 digits year ) returns TRUE for any integer with any number of digits so changing the comparison from == to === fixes the issue.
    if($d && $d->format($format) === $date){
        $date_now = new DateTime();
        $date2    = new DateTime($date);

        // if ($date_now<$date2) {
        if ($date_now->format($format)<=$date2->format($format)) {
            return true;
        }
    }
    $CI = get_instance();
    $CI->form_validation->set_message('is_min_valid_date', 'Please select valid {field}');
    return false;
}
function compare_dates($date1, $date2, $format = 'Y-m-d'){
    $date1 = str_replace('/', '-', $date1);
    $date2 = str_replace('/', '-', $date2);
    $date1 = new DateTime($date1);
    $date2 = new DateTime($date2);
    if ($date1->format($format)<=$date2->format($format)) {
        return true;
    }
    return false;
}

function get_dates_days($date1, $date2, $format = 'm/d/Y'){
    $d1 = DateTime::createFromFormat($format, $date1);
    $d2 = DateTime::createFromFormat($format, $date2);
    $interval = $d1->diff($d2);
    return $interval->d;
}

function get_between_dates($date1, $date2){
    $date1 = new DateTime($date1);
    $date2 = new DateTime($date2);
    $dates = array();
    while ($date1<$date2) {
        $dates[] = $date1->format('m/d/Y');
        $date1->modify('+1 day');
    }
    return $dates;
}

function get_year_difference($d1,$d2){
    $d1 = new DateTime($d1);
    $d2 = new DateTime($d2);

    $diff = $d2->diff($d1);
    return $diff->y;
}
function time_ago($time) {
    $time=str_replace('/', '-', $time);
    $timestamp = ( is_numeric($time) && (int)$time == $time )?$time:strtotime($time);

    // $strTime = array("second", "minute", "hour", "day", "month", "year");
    $strTime = array(" sec", " min", " hr", " day", " month", " year");
    $length = array("60", "60", "24", "30", "12", "10");

    $currentTime = time();
    if($currentTime >= $timestamp) {
        $diff     = $currentTime- $timestamp;
        for($i = 0; $diff >= $length[$i] && $i < count($length)-1; $i++) {
            $diff = $diff / $length[$i];
        }
        $diff = round($diff);
        if($strTime[$i]=='y' || $strTime[$i]=='y')
            return date('M d, Y h:i a',$timestamp);
        $ago=$diff>1?' ago':' ago';
        $ago=$diff>1?'s ago':' ago';
        // return $diff .$strTime[$i];
        if($diff==1&&$strTime[$i]==' day')
            return 'yesterday';
        return $diff . $strTime[$i] .$ago;
    }
}

function short_text($str, $length=150) {
    return strip_tags(strlen($str)>$length?substr($str, 0, $length).'...':$str);
} 
function short_number_format($num) {
    $x = round($num);
    $x_number_format = number_format($x);
    $x_array = explode(',', $x_number_format);
    $x_parts = array('k', 'm', 'b', 't');
    $x_count_parts = count($x_array) - 1;
    $x_display = $x;
    $x_display = $x_array[0] . ((int) $x_array[1][0] !== 0 ? '.' . $x_array[1][0] : '');
    $x_display .= $x_parts[$x_count_parts - 1];
    return $x_display;
}
function num_size($num,$size=6){
    return sprintf('%0'.$size.'d',$num);

}
function profile_url($mem_id, $title) {
    $CI = get_instance();
    return ($CI->session->mem_id==$mem_id && $CI->session->has_userdata('mem_type'))?site_url('profile'):site_url('profile/'.doEncode($mem_id).'/'.toSlugUrl($title));
}
function get_video_link($link){
    $arr=explode('/', $link);
    $cod=$arr[count($arr)-1];
    return substr($cod, (strpos($cod, '?')+3));
    // return 'https://www.youtube.com/embed/'.substr($cod, (strpos($cod, '?')+3)).'?rel=0&amp;controls=0&amp;showinfo=0';
    // ?modestbranding=1&fs=0&iv_load_policy=3&rel=0
    // ?autoplay=1&loop=1&rel=0&wmode=transparent
}
function get_genders($key = '') {
    $ary = array(
        'Male' => 'Male',
        'Female' => 'Female',
        'Coed' => 'Coed'
    );
    if(!empty($key))
        return $ary[$key];
    
    return $ary;
}
function get_week_days($key = '') {
    $days = array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
    // $days=array('sun'=>'Sunday','mon'=>'Monday','tue'=>'Tuesday','wed'=>'Wednesday','thu'=>'Thursday','fri'=>'Friday','sat'=>'Saturday');
    if(!empty($key))
        return $days[$key];
    
    return $days;
}
function get_month_name($month){
    return date("F", mktime(0, 0, 0, $month, 10));
}
function send_twilio_msg($phone,$msg){
// use Twilio\Rest\Client;

    $client = new Client(TWILIO_SID, TWILIO_TOEKN);
    $client->messages->create($phone,array("from" => TWILIO_NUMBER,"body" => $msg));
}
function send_noti_email($email_to,$msg) {
    global $CI;
    $settings = $CI->data['site_settings'];
    if ($email_to!='' && $msg!='') {

        $emailto = $email_to;
        $subject = "Job Notification";
        $headers = "MIME-Version: 1.0\r\n";
        $headers .= "Content-type: text/html;charset=utf-8\r\n";
        $headers .= "From: " . $settings->site_name . " <" . $settings->site_noreply_email . ">" . "\r\n";
        $headers .= "Reply-To: " . $settings->site_name . " <" . $settings->site_email . ">" . "\r\n";


        $CI->data['email_body'] = $msg;
        $CI->data['email_subject'] = $subject;
        $ebody = $CI->load->view('includes/email_template', $CI->data, TRUE);

        if (@mail($email_to, $subject, $ebody, $headers)) {
            return 1;
        } else {
            return 0;
        }
    }
}
function curl_call($url,$parms=''){
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
    if (!empty($parms))
        curl_setopt($ch, CURLOPT_POSTFIELDS, $parms);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
    curl_setopt($ch, CURLOPT_FORBID_REUSE, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Connection: Close'));

    if ( !($res = curl_exec($ch)) ) {
        error_log("Got " . curl_error($ch) . " when processing curl data");
        curl_close($ch);
        return false;
    }
    curl_close($ch);
    return $res;
}
?>