<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<meta name="yandex-verification" content="a60537922fbbccaf" />
<script src="catalog/view/theme/oilplus/stylesheet/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/oilplus/stylesheet/stylesheet.css" rel="stylesheet">

// snow winter
<!--
<script src="http://daruse.ru/assets/js/snowfall.js"></script>
-->

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<script type="text/javascript" >
$(document).ready(function() {
$('.my_minus').click(function () {
var $input = $(this).parent().find('.quant');
var count = parseInt($input.val()) - 1;
count = count < 1 ? 1 : count;
$input.val(count);
$input.change();
return false;
});
$('.my_plus').click(function () {
var $input = $(this).parent().find('.quant');
$input.val(parseInt($input.val()) + 1);
$input.change();
return false;
});
});
</script>

<!--Start of Zendesk Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="https://v2.zopim.com/?4U0LuYJPO3NuQHPk4k5UlgL09UeMjdI9";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zendesk Chat Script-->

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter41932729 = new Ya.Metrika({
                    id:41932729,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/41932729" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</head>
<body class="<?php echo $class; ?>">
<nav id="top">
<div class="navbar navbar-inverse navbar-fixed-top pad">
	<div class="container-fluid">
	<div class="navbar-header">
		<div class="row" style="margin-left: 10px;">
				<div class="col-xs-4 hidden-md hidden-lg nav navbar-header">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<button type="button" class="btn btn-primary" >
							<span class="fa fa-phone" aria-hidden="true"></span><i>&nbsp;Позвоните</i><span class="caret"></span>
						</button>
					</a>
					<ul class="dropdown-menu">
						<li><i class="fa fa-phone"></i><?php echo $telephone; ?></li>
						<?php if ($telephone2=="")
						{echo "";}
						else {echo "<li><i class='fa fa-phone' aria-hidden='true'></i>"; echo $telephone2; echo "</li>";}
						?>
						<?php if ($telephone3=="")
						{echo "";}
						else {echo "<li><i class='fa fa-phone' aria-hidden='true'></i>"; echo $telephone3;echo "</li>";}
						?>
					</ul>
				</div>
				<div class="col-xs-4 hidden-md hidden-lg nav navbar-header">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<button type="button" class="btn btn-primary" >
							<span class="glyphicon glyphicon-time" aria-hidden="true"></span><i>&nbsp;Работаем</i><span class="caret"></span>
						</button>&nbsp;
					</a>
					<ul class="dropdown-menu">
						<li> <?php if ($open=="") {echo "";}
						else {echo "<i class='fa fa-clock-o' aria-hidden='true'></i>&nbsp;"; echo $open;} ?>
						</li>
					</ul>
				</div>
				<div class="col-xs-4 hidden-md hidden-lg nav navbar-header">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<button type="button" class="btn btn-primary" >
							<span class="fa fa-user-o" aria-hidden="true"></span><i>&nbsp;Вход</i><span class="caret"></span>
						</button>&nbsp;
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
						<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
						<li><a href="<?php echo $text_wishlist; ?>">&nbsp;<?php echo $text_wishlist; ?></a></li>
					</ul>
				</div>
				<div class="hidden-md hidden-lg" style="position: fixed; top: 55px; right: 10px; z-index: 99;"><?php echo $cart; ?></div>
		</div>

		<div class="row hidden-sm hidden-xs">
			<div class="container">
				<div class="col-md-2" >
					<p class="vyrovnyat" style="white-space: nowrap; margin-left: -25px;">
							<i>&nbsp;</i>
							&nbsp;<i class="fa fa-phone" aria-hidden="true"></i><?php echo $telephone;?>
							<?php if ($telephone2)
							{echo "<i class='fa fa-phone' aria-hidden='true'></i>"; echo $telephone2;}
							?>

					</p>
				</div>
				<div class="col-md-4" style="margin-left: 5px;">
					<p class="vyrovnyat">
							<?php if ($open)
							{echo "<i class='fa fa-clock-o' aria-hidden='true'></i>&nbsp;"; echo $open;}
							else {echo "";}
							?>
					</p>
				</div>
				<div class="col-md-6" style="margin-left: -10px;">

						<?php if (!$logged)
							{?>
								<a class="colorh btn btn-primary" href="<?php echo $login; ?>"><i class="fa fa-sign-in" style="color: #ffffff;"></i><span style="color: #ffffff;">&nbsp;<?php echo $text_login; ?></span></a>
								<a class="colorh btn btn-primary" href="<?php echo $register; ?>"><i class="fa fa-user-plus" style="color: #ffffff;"></i><span style="color: #ffffff;">&nbsp;<?php echo $text_register; ?></span></a>
						<?php } else { ?>
							<span style="color: #ffffff;"><i class="fa fa-user"></i> <?php echo $text_logged; ?></span>
						<?php } ?>
						<a class="colorh btn btn-primary" href="<?php echo $wishlist; ?>" id="wishlis-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart" style="color: #ffffff;"></i><span style="color: #ffffff;">&nbsp;<?php echo $text_wishlist; ?></span></a>
						<a class="colorh btn btn-primary" href="<?php echo $compare; ?>" id="compare-total" title="<?php echo $text_compare; ?>"><i class="fa fa-balance-scale" style="color: #ffffff;"></i><span style="color: #ffffff;">&nbsp;<?php echo $text_compare; ?></span></a>
						<div style="position: fixed; top: 5px; right: 10px; z-index: 99;"><?php echo $cart; ?></div>

				</div>
			</div>
		</div>
	</div>
	</div>
</div>
</nav>

<header>

<div class="container">
	<div class="row" style="margin-top: 10px;">
		<div class="col-md-2 col-lg-2 hidden-md hidden-lg vyrovnyat" style="margin-top: 25px;">
			<div id="logo">
				  <?php if ($logo) { ?>
					<?php if ($home == $og_url) { ?>
					  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
					<?php } else { ?>
					  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
					<?php } ?>
				  <?php } else { ?>
					<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
				  <?php } ?>
			</div>
		</div>
		<div class="col-md-2 col-lg-2 hidden-sm hidden-xs" style="margin-top: 5px;">
			<div id="logo">
			  <?php if ($logo) { ?>
				<?php if ($home == $og_url) { ?>
				  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
				<?php } else { ?>
				  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
				<?php } ?>
			  <?php } else { ?>
				<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			  <?php } ?>
			</div>
		</div>
		<div class="col-md-4"><?php echo $search; ?></div>
		<div class="col-md-6">

				<div class="nav navbar-header navbar-default">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#reversive-menu">
						<span class="sr-only">Открыть навигацию</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<span class="navbar-brand hidden-lg hidden-md">Top - меню</span>
				</div>
				<div class="collapse navbar-collapse" id="reversive-menu">
					<div class="nav navbar-header navbar-default topmenu">

						<ul class="nav navbar-nav">
							<li class="bor"><a href="http://oilplus.com.ua/o-magazin.html"><i class="colr2">О магазине</i></a></li>
							<li class="bor"><a href="http://oilplus.com.ua/dostavka-i-oplata.html"><i class="colr2">Доставка и оплата</i></a></li>
							<li class="bor"><a href="http://oilplus.com.ua/kontakty.html"><i class="colr2">Контакты</i></a></li>
							<li class="bor"><a href="http://oilplus.com.ua/aktsii.html"><i class="colr">Акции!</i></a></li>
						</ul>

					</div>
				</div>

		</div>
	</div>
</div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu">
  <div class="navbar navbar-inverse">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"><h4 class="vyrovnyat"><?php echo $category['name']; ?></h4></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>" style="white-space: nowrap "><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
             </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><h4 class="vyrovnyat"><?php echo $category['name']; ?></h4></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
	</div>
  </nav>
</div>
<script type="text/javascript" charset="utf-8" src="/callme/js/callme.js"></script>
<?php } ?>
