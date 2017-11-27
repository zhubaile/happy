<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","head"); ?>
<!--课程大纲-->
<div class="outline">
    <div class="outline-top">
        <h1>课程大纲，节节干货</h1>
        <p>只因专业，所以自信。精研细磨，紧贴社会，时时更新</p>
    </div>
    <div class="outline-font clearfix">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=39c078d46b32ae2361ebea3c9b9c6c6a&action=lists&catid=12&order=id+DESC&num=5&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 5;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'12','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'12','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
            <?php $n=1; if(is_array($data)) foreach($data AS $key => $val) { ?>
            <a href="<?php echo $val['url'];?>" class="model">
                <img src="<?php echo $val['thumb'];?>" alt=""/>
                <h1><?php echo $val['title'];?></h1>
                <p>含：ES6，TypeScript，Linux等</p>
            </a>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
       <!-- <a class="model" href="javascript:;">
            <img src="<?php echo IMG_PATH;?>image/shouye/a.png" alt=""/>
            <h1>《javascript语言新发展》</h1>
            <p>含：ES6，TypeScript，Linux等</p>
        </a>
        <a class="model" href="javascript:;">
            <img src="<?php echo IMG_PATH;?>image/shouye/b.png" alt="" />
            <h1>《大话Nade72般变化》</h1>
            <p>含：ES6，TypeScript，Linux等</p>
        </a>
        <a class="model" href="javascript:;">
            <img src="<?php echo IMG_PATH;?>image/shouye/c.png" alt="" />
            <h1>《前端工程化那些事儿》</h1>
            <p>含：ES6，TypeScript，Linux等</p>
        </a>
        <a class="model" href="javascript:;">
            <img src="<?php echo IMG_PATH;?>image/shouye/d.png" alt="" />
            <h1>《性能优化与工程师》</h1>
            <p>含：ES6，TypeScript，Linux等</p>
        </a>
        <a class="model" href="javascript:;">
            <img src="<?php echo IMG_PATH;?>image/shouye/e.png" alt="" />
            <h1>《MV*框架大集合》</h1>
            <p>含：Veu2，React，Angular2等</p>
        </a>-->
    </div>
</div>
<!--持续学习流程-->
<div class="study">
    <img src="<?php echo IMG_PATH;?>image/shouye/study.png" alt=""/>
</div>
<!--导师团队-->
<div class="tutor">
    <div class="tutor-top">
        <h1>来看看谁带你学习</h1>
        <p>我们的讲师团队由三位主讲和一线名企大牛讲师团组成，主讲带你细致入微，名企讲师带你深入企业内部实战分享</p>
    </div>
    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=1246a5bf995a58747f42607fea0a17f1&action=lists&catid=11&order=id+DESC&num=3&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 3;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'11','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'11','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
    <div class="tutor-center">
        <?php $n=1; if(is_array($data)) foreach($data AS $key => $val) { ?>
        <div class="teacher">
            <img src="<?php if($val[thumb]) { ?><?php echo thumb($val[thumb],220,170);?><?php } else { ?><?php echo IMG_PATH;?>qk_img/noImg.jpg<?php } ?>" alt=""/>
            <div class="teacher-ity">
                <span class="one"><a  href="<?php echo $val['url'];?>"><?php echo $val['title'];?></a></span>&nbsp;
                <span class="two">乐学堂创始人</span>&nbsp;
                <p><?php echo $val['description'];?></p>
            </div>
        </div>
        <?php $n++;}unset($n); ?>
    </div>
    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
<!-- 新闻中心-->
<div class="journalism">
    <h1>新闻中心</h1>
    <ul>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=cd90a1e2bdc99b0cabf0b15afbc95a55&action=lists&catid=13&order=id+DESC&num=10&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 10;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'13','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'13','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
        <?php $n=1; if(is_array($data)) foreach($data AS $key => $val) { ?>
        <li><div class="elos"><?php echo $val['listorder'];?></div><p class="elos-p"><a href="<?php echo $val['url'];?>"><?php echo $val['title'];?></a></p></li>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </ul>
</div>
<div class="clearfix"></div><!--清除浮动 清浮动还是没用好啊-->
<!--现场考察-->
<div class="site">
    <h1>现场考察</h1>
    <p>地址：河南省郑州市博学路与龙子湖交叉口河南经贸职业学院</p>
    <img src="<?php echo IMG_PATH;?>image/shouye/map.png" alt=""/>
</div>
<?php include template("content","foot"); ?>