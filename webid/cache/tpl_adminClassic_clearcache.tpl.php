<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_clear_cache'])) ? $this->_rootref['L_clear_cache'] : ((isset($MSG['clear_cache'])) ? $MSG['clear_cache'] : '{ L_clear_cache }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<?php echo ((isset($this->_rootref['L_clear_cache_explain'])) ? $this->_rootref['L_clear_cache_explain'] : ((isset($MSG['clear_cache_explain'])) ? $MSG['clear_cache_explain'] : '{ L_clear_cache_explain }')); ?>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_clear_cache'])) ? $this->_rootref['L_clear_cache'] : ((isset($MSG['clear_cache'])) ? $MSG['clear_cache'] : '{ L_clear_cache }')); ?>">
				</form>
			</div>
		</div>