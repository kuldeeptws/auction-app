<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_clear_image_cache'])) ? $this->_rootref['L_clear_image_cache'] : ((isset($MSG['clear_image_cache'])) ? $MSG['clear_image_cache'] : '{ L_clear_image_cache }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_clear_image_cache_explain'])) ? $this->_rootref['L_clear_image_cache_explain'] : ((isset($MSG['clear_image_cache_explain'])) ? $MSG['clear_image_cache_explain'] : '{ L_clear_image_cache_explain }')); ?></div>
							</div>
						</div>
					</div>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_clear_image_cache'])) ? $this->_rootref['L_clear_image_cache'] : ((isset($MSG['clear_image_cache'])) ? $MSG['clear_image_cache'] : '{ L_clear_image_cache }')); ?></button>
				</form>
			</div>
		</div>