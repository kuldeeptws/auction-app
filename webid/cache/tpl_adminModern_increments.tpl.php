<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_128'])) ? $this->_rootref['L_128'] : ((isset($MSG['128'])) ? $MSG['128'] : '{ L_128 }')); ?></h4>
				<form name="increments" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_135'])) ? $this->_rootref['L_135'] : ((isset($MSG['135'])) ? $MSG['135'] : '{ L_135 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_240'])) ? $this->_rootref['L_240'] : ((isset($MSG['240'])) ? $MSG['240'] : '{ L_240 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_241'])) ? $this->_rootref['L_241'] : ((isset($MSG['241'])) ? $MSG['241'] : '{ L_241 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_137'])) ? $this->_rootref['L_137'] : ((isset($MSG['137'])) ? $MSG['137'] : '{ L_137 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_increments_count = (isset($this->_tpldata['increments'])) ? sizeof($this->_tpldata['increments']) : 0;if ($_increments_count) {for ($_increments_i = 0; $_increments_i < $_increments_count; ++$_increments_i){$_increments_val = &$this->_tpldata['increments'][$_increments_i]; ?>
							<div class="row">
								<div class="col-md-3">
									<input type="hidden" name="id[]" value="<?php echo $_increments_val['ID']; ?>">
									<input type="text" name="lows[]" value="<?php echo $_increments_val['LOW']; ?>" size="10">
								</div>
								<div class="col-md-3"><input type="text" name="highs[]" value="<?php echo $_increments_val['HIGH']; ?>" size="10"></div>
								<div class="col-md-3"><input type="text" name="increments[]" value="<?php echo $_increments_val['INCREMENT']; ?>" size="10"></div>
								<div class="col-md-3"><input type="checkbox" name="delete[]" value="<?php echo $_increments_val['ID']; ?>"></div>
							</div>
<?php }} ?>
							<div class="row">
								<div class="col-md-9 text-right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></div>
								<div class="col-md-3"><input type="checkbox" class="selectall" value="delete"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_394'])) ? $this->_rootref['L_394'] : ((isset($MSG['394'])) ? $MSG['394'] : '{ L_394 }')); ?>: <input type="hidden" name="id[]" value=""><input type="text" name="lows[]" size="10"></div>
								<div class="col-md-3"><input type="text" name="highs[]" size="10"></div>
								<div class="col-md-3"><input type="text" name="increments[]" size="10"></div>
								<div class="col-md-3">&nbsp;</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act" class="centre"><?php echo ((isset($this->_rootref['L_089'])) ? $this->_rootref['L_089'] : ((isset($MSG['089'])) ? $MSG['089'] : '{ L_089 }')); ?></button>
				</form>
			</div>
		</div>