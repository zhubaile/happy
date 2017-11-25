<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","head"); ?>
<!--课程大纲-->
<div class="outline">
    <div class="outline-top">
        <h1>课程大纲，节节干货</h1>
        <p>只因专业，所以自信。精研细磨，紧贴社会，时时更新</p>
    </div>
    <div class="outline-font clearfix">
        <a class="model" href="javascript:;">
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
        </a>
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
    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=1246a5bf995a58747f42607fea0a17f1&action=lists&catid=11&order=id+DESC&num=3&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 3;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'11','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'11','order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
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
        <li><div class="elos">1</div><p class="elos-p">室内装修家装设计师谈技巧客户经常提到的25个问题</p></li>
        <li><div class="elos">2</div><p class="elos-p">CAD选择对象时选中了不该选中的线条如何取消</p></li>
        <li><div class="elos">3</div><p class="elos-p">如何辨别郑州室内设计培训班哪里更专业</p></li>
        <li><div class="elos">4</div><p class="elos-p">郑州设计室内学院邀请您学习客厅什么板更好一点</p></li>
        <li><div class="elos">5</div><p class="elos-p">室内设计师盘点房子装修后后悔的事情</p></li>
        <li><div class="elos">6</div><p class="elos-p">一品讲解室内设计软件培训CAD常见的几个问题</p></li>
        <li><div class="elos">7</div><p class="elos-p">CAD软件里输入问题后双击不能编辑文字了怎么办</p></li>
        <li><div class="elos">8</div><p class="elos-p">解决如何在CAD中把两个室内设计施工图拼接成一张图纸</p></li>
        <li><div class="elos">9</div><p class="elos-p">CAD软件中文修复几个最有效的办法-乐学堂知道</p></li>
        <li><div class="elos">10</div><p class="elos-p">常见的室内装修风格都有哪些？家装风格大全</p></li>
    </ul>
</div>
<div class="clearfix"></div><!--清除浮动 清浮动还是没用好啊-->
<div class="clearfix"></div><!--为了清除浮动效果-->
<!--现场考察-->
<div class="site">
    <h1>现场考察</h1>
    <p>地址：河南省郑州市博学路与龙子湖交叉口河南经贸职业学院</p>
    <img src="<?php echo IMG_PATH;?>image/shouye/map.png" alt=""/>
</div>
<?php include template("content","foot"); ?>