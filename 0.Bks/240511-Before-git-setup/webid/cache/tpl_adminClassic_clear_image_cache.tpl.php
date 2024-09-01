<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_clear_image_cache'])) ? $this->_rootref['L_clear_image_cache'] : ((isset($MSG['clear_image_cache'])) ? $MSG['clear_image_cache'] : '{ L_clear_image_cache }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<?php echo ((isset($this->_rootref['L_clear_image_cache_explain'])) ? $this->_rootref['L_clear_image_cache_explain'] : ((isset($MSG['clear_image_cache_explain'])) ? $MSG['clear_image_cache_explain'] : '{ L_clear_image_cache_explain }')); ?>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_clear_image_cache'])) ? $this->_rootref['L_clear_image_cache'] : ((isset($MSG['clear_image_cache'])) ? $MSG['clear_image_cache'] : '{ L_clear_image_cache }')); ?>">
				</form>
			</div>
		</div>