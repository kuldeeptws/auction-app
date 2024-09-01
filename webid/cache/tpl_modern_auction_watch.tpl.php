<?php $this->_tpl_include('user_menu_header.tpl'); ?>
<div class="row">
	<form action="auction_watch.php?insert=true" method="post">
		<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
		<div class="col-lg-6">
			<div class="input-group">
				<input type="text" class="form-control" name="add" placeholder="<?php echo ((isset($this->_rootref['L_25_0084'])) ? $this->_rootref['L_25_0084'] : ((isset($MSG['25_0084'])) ? $MSG['25_0084'] : '{ L_25_0084 }')); ?>">
				<span class="input-group-btn"><input type="submit" value="<?php echo ((isset($this->_rootref['L_5204'])) ? $this->_rootref['L_5204'] : ((isset($MSG['5204'])) ? $MSG['5204'] : '{ L_5204 }')); ?>" class="btn btn-default"></span>
			</div>
		</div>
	</form>
</div>
<div class="grid-margin-top-lg grid-margin-btm-lg">
<?php $_items_count = (isset($this->_tpldata['items'])) ? sizeof($this->_tpldata['items']) : 0;if ($_items_count) {for ($_items_i = 0; $_items_i < $_items_count; ++$_items_i){$_items_val = &$this->_tpldata['items'][$_items_i]; ?>
	<a class="btn btn-primary btn-xs" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>auction_watch.php?delete=<?php echo $_items_val['ITEMENCODE']; ?>">
		<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
		<?php echo $_items_val['ITEM']; ?>
	</a>
<?php }} ?>
</div>
<div class="alert alert-warning" role="alert"><?php echo ((isset($this->_rootref['L_30_0210'])) ? $this->_rootref['L_30_0210'] : ((isset($MSG['30_0210'])) ? $MSG['30_0210'] : '{ L_30_0210 }')); ?></div>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>