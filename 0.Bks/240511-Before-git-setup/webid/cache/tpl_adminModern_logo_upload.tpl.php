<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_30_0215'])) ? $this->_rootref['L_30_0215'] : ((isset($MSG['30_0215'])) ? $MSG['30_0215'] : '{ L_30_0215 }')); ?></h4>
				<form name="logo" action="" method="post" enctype="multipart/form-data">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_your_logo'])) ? $this->_rootref['L_your_logo'] : ((isset($MSG['your_logo'])) ? $MSG['your_logo'] : '{ L_your_logo }')); ?></div>
								<div class="col-md-9"><img src="<?php echo (isset($this->_rootref['IMAGEURL'])) ? $this->_rootref['IMAGEURL'] : ''; ?>"></div>
							</div>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_upload_new_logo'])) ? $this->_rootref['L_upload_new_logo'] : ((isset($MSG['upload_new_logo'])) ? $MSG['upload_new_logo'] : '{ L_upload_new_logo }')); ?></div>
								<div class="col-md-9">
									<label class="btn btn-primary" for="logo">
										Browse <input id="logo" type="file" name="logo" style="display:none;">
									</label>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_30_0215'])) ? $this->_rootref['L_30_0215'] : ((isset($MSG['30_0215'])) ? $MSG['30_0215'] : '{ L_30_0215 }')); ?></button>
				</form>
			</div>
		</div>