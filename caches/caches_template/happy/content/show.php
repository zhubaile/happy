<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","head"); ?>
<div class="details">
    <div class="article">
        <div class="article-title"><?php echo $title;?></div>
        <div class="article-subhead">
            <span>来源：<?php if($copyfrom) { ?><?php echo $copyfrom;?><?php } else { ?>乐学堂<?php } ?>&nbsp;&nbsp;&nbsp;</span>
        </div>
        <!--<div class="article-img">
            <img src="<?php echo $thumb;?>" alt="<?php echo $title;?>">
        </div>-->
        <div class="article-content" >
            <?php echo $content;?>
        </div>
        <div class="article-footer"><!--"<?php echo $previous_page['url'];?>""<?php echo $next_page['url'];?>"-->
          <!--  <?php echo $previous_page['title'];?>      <?php echo $next_page['title'];?>-->
            <p>上一篇：<a href="<?php echo $next_page['url'];?>" class="c-333 text-a-underline"><?php echo $next_page['title'];?></a></p>
            <p>下一篇：<a href="<?php echo $previous_page['url'];?>"  class="c-333 text-a-underline"> <?php echo $previous_page['title'];?></a></p>
        </div>
    </div>
</div>
<?php include template("content","foot"); ?>