<div class="list-group">
	<h3><i class="fa fa-user"></i> <?php echo $heading_title; ?></h3>
	<?php if (!$logged) { ?>
	<a href="<?php echo $login; ?>" class="list-group-item"><i class="fa fa-sign-in"></i> <?php echo $text_login; ?></a>
	<a href="<?php echo $register; ?>" class="list-group-item"><i class="fa fa-user-plus"></i> <?php echo $text_register; ?></a>
	<a href="<?php echo $forgotten; ?>" class="list-group-item"><i class="fa fa-lock"></i> <?php echo $text_forgotten; ?></a>
	<?php } ?>
	<a href="<?php echo $account; ?>" class="list-group-item"><i class="fa fa-user"></i> <?php echo $text_account; ?></a>
	<?php if ($logged) { ?>
	<a href="<?php echo $edit; ?>" class="list-group-item"><i class="fa fa-pencil-square-o"></i> <?php echo $text_edit; ?></a>
	<a href="<?php echo $password; ?>" class="list-group-item"><i class="fa fa-unlock"></i> <?php echo $text_password; ?></a>
	<?php } ?>
	<a href="<?php echo $address; ?>" class="list-group-item"><i class="fa fa-truck"></i> <?php echo $text_address; ?></a>
	<a href="<?php echo $order; ?>" class="list-group-item"><i class="fa fa-history"></i> <?php echo $text_order; ?></a>
	
	
	<a href="<?php echo $reward; ?>" class="list-group-item"><i class="fa fa-cart-plus"></i> <?php echo $text_reward; ?></a>
	
	
	<a href="<?php echo $newsletter; ?>" class="list-group-item"><i class="fa fa-newspaper-o"></i> <?php echo $text_newsletter; ?></a>
	<?php if ($logged) { ?>
	<a href="<?php echo $logout; ?>" class="list-group-item"><i class="fa fa-sign-out"></i> <?php echo $text_logout; ?></a>
	<?php } ?>
</div>
