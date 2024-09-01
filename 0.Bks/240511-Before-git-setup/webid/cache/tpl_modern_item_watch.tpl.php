<?php $this->_tpl_include('user_menu_header.tpl'); if ($this->_rootref['USER_MESSAGE'] != ('')) {  ?>
<div class="success-box"><?php echo (isset($this->_rootref['USER_MESSAGE'])) ? $this->_rootref['USER_MESSAGE'] : ''; ?></div>
<?php } $_items_count = (isset($this->_tpldata['items'])) ? sizeof($this->_tpldata['items']) : 0;if ($_items_count) {for ($_items_i = 0; $_items_i < $_items_count; ++$_items_i){$_items_val = &$this->_tpldata['items'][$_items_i]; ?>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading" <?php if ($_items_val['B_BOLD']) {  ?> style="font-weight: bold;"<?php } ?>>
				<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_items_val['ID']; ?>"><?php echo $_items_val['TITLE']; ?></a>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-4">
						<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_items_val['ID']; ?>"><img class="img-rounded img-responsive" style="width: 100%;" src="<?php echo $_items_val['IMAGE']; ?>" border="0"></a>
					</div>
					<div class="col-md-10 col-sm-10 col-xs-8">
	<?php if ($this->_rootref['B_SUBTITLE'] && $_items_val['SUBTITLE'] != ('')) {  ?>
						<span class="text-muted"><?php echo $_items_val['SUBTITLE']; ?></span><br>
	<?php } ?>
						<small><span class="text-muted"><?php echo ((isset($this->_rootref['L_949'])) ? $this->_rootref['L_949'] : ((isset($MSG['949'])) ? $MSG['949'] : '{ L_949 }')); ?> <?php echo $_items_val['CLOSES']; ?></span></small>
						<div class="text-right">
	<?php if ($_items_val['BUY_NOW'] != ('')) {  ?>
							<span class="buy-now-feat"><?php echo $_items_val['BUY_NOW']; ?></span><br>
	<?php } ?>
							<span class="bigfont"><?php echo $_items_val['BIDFORM']; ?></span><br>
							<span class="label label-success"><?php echo $_items_val['NUMBIDS']; ?></span>
						</div>
						<div class="text-right grid-margin-top-sm">
							<a class="btn btn-danger btn-xs" href="item_watch.php?delete=<?php echo $_items_val['ID']; ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> <?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php }} else { ?>
<?php echo ((isset($this->_rootref['L_853'])) ? $this->_rootref['L_853'] : ((isset($MSG['853'])) ? $MSG['853'] : '{ L_853 }')); ?>
<?php } $this->_tpl_include('user_menu_footer.tpl'); ?>