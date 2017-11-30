<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title><?php if(isset($SEO['title']) && !empty($SEO['title'])) { ?><?php echo $SEO['title'];?><?php } ?><?php echo $SEO['site_title'];?></title>
    <meta name="keywords" content="<?php echo $SEO['keyword'];?>">
    <meta name="description" content="<?php echo $SEO['description'];?>">
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>happy/base.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>happy/animate.min.css" type="text/css"/>
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>happy/index.css" type="text/css"/>
    <script src="<?php echo JS_PATH;?>happy/jquery/jquery.js"></script>
</head>
<body>
<div class="happy">
<div class="main">
    <div class="main-nav">        
        <!--导航栏-->
        <div class="main-nav-ion">
            <div class="main-nav-le">
                <img src="<?php echo IMG_PATH;?>image/shouye/le.png" alt="" />
            </div>
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=172d3e742399e5ace943301e16f256b0&action=category&catid=0&num=10&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'10',));}?>
            <ul class="clearfix">
                <li class="ion-t"><a  href="<?php echo siteurl($siteid);?>">网站首页</a></li>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <li class="ion-t"><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                <?php $n++;}unset($n); ?>
            </ul>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
    </div>
    <!--大图片-->
    <div class="main-goal">
<!--        <div class="main-goal-top">
            <p>乐学堂-专为培养前端精英</p>
        </div>
        <div class="main-goal-font">
            <h1>你值得拥有好的工作境遇！</h1>
            <p>适学对象：具有html，css，javascript基础人员</p>
        </div>-->
        <div class="top">
            <div class="lbtp one"><img src="<?php echo IMG_PATH;?>image/lunbo/01.jpg" alt=""/></div>
            <div class="lbtp one"><img src="<?php echo IMG_PATH;?>image/lunbo/02.jpg" alt=""/></div>
            <div class="lbtp one"><img src="<?php echo IMG_PATH;?>image/lunbo/03.jpg" alt=""/></div>
            <div class="lbtp one"><img src="<?php echo IMG_PATH;?>image/lunbo/04.jpg" alt=""/></div>
            <div class="lbtp one"><img src="<?php echo IMG_PATH;?>image/lunbo/05.jpg" alt=""/></div>
            <div class="lbtp one"><img src="<?php echo IMG_PATH;?>image/lunbo/06.jpg" alt=""/></div>
        </div>
        <div class="but">
            <ul>
                <li class="shuzi nub">1</li>
                <li class="shuzi">2</li>
                <li class="shuzi">3</li>
                <li class="shuzi">4</li>
                <li class="shuzi">5</li>
                <li class="shuzi">6</li>
            </ul>
        </div>
        <div class="box zuo"><</div>
        <div class="box you">></div>
    </div>
</div>