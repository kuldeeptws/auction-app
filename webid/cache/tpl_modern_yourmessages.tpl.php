<?php $this->_tpl_include('user_menu_header.tpl'); ?>

<div class="col-md-10 col-md-offset-1">
	<div class="well well-sm">
		<small><?php echo ((isset($this->_rootref['L_332'])) ? $this->_rootref['L_332'] : ((isset($MSG['332'])) ? $MSG['332'] : '{ L_332 }')); ?>:</small> <strong><?php echo (isset($this->_rootref['SUBJECT'])) ? $this->_rootref['SUBJECT'] : ''; ?></strong><br>
		<small><?php echo ((isset($this->_rootref['L_340'])) ? $this->_rootref['L_340'] : ((isset($MSG['340'])) ? $MSG['340'] : '{ L_340 }')); ?>:</small> <strong><?php echo (isset($this->_rootref['SENDERNAME'])) ? $this->_rootref['SENDERNAME'] : ''; ?></strong> - <small><?php echo (isset($this->_rootref['SENT'])) ? $this->_rootref['SENT'] : ''; ?></small><br>
		<br>
		<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <?php echo (isset($this->_rootref['MESSAGE'])) ? $this->_rootref['MESSAGE'] : ''; ?><br>
	</div>
	<div class="text-center">
		<a class="btn btn-primary" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>mail.php?reply=1&amp;message=<?php echo (isset($this->_rootref['HASH'])) ? $this->_rootref['HASH'] : ''; ?>"><?php echo ((isset($this->_rootref['L_349'])) ? $this->_rootref['L_349'] : ((isset($MSG['349'])) ? $MSG['349'] : '{ L_349 }')); ?></a>
		<a class="btn btn-danger" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>mail.php?deleteid[]=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>" onClick="if ( !confirm('<?php echo ((isset($this->_rootref['L_delete_message_confirm'])) ? $this->_rootref['L_delete_message_confirm'] : ((isset($MSG['delete_message_confirm'])) ? $MSG['delete_message_confirm'] : '{ L_delete_message_confirm }')); ?>') ) { return false; }"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></a>
		<br>
		<br>
		<a class="btn btn-default btn-sm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>mail.php"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <?php echo ((isset($this->_rootref['L_351'])) ? $this->_rootref['L_351'] : ((isset($MSG['351'])) ? $MSG['351'] : '{ L_351 }')); ?></a>
	</div>
</div>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>