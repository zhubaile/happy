<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","head"); ?>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=7a77e246016a6e448ceab1565dff0a17&action=lists&catid=%24catid&order=id+DESC&num=5&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 5;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
<!-- <div class="title"><?php echo $CATEGORYS[$catid]['catname'];?></div>
 <div class="list-box">-->
<ul class="clearfix">
    <?php $n=1; if(is_array($data)) foreach($data AS $key => $val) { ?>
    <li  class="clearfix">
        <a class="img" href="<?php echo $val['url'];?>">
            <img src="<?php if($val[thumb]) { ?><?php echo thumb($val[thumb],220,170);?><?php } else { ?><?php echo IMG_PATH;?>qk_img/noImg.jpg<?php } ?>" alt="<?php echo $val['title'];?>" title="<?php echo $val['title'];?>"/>
        </a>
        <a class="body" href="<?php echo $val['url'];?>">
            <span class="head"><?php echo $val['title'];?></span>
            <span class="info"><?php echo $val['description'];?></span>
        </a>
    </li>
    <?php $n++;}unset($n); ?>
</ul>
<!--</div>-->
<div id="pages" class="text-c page">
    <?php echo $pages;?>
</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<?php include template("content","foot"); ?>