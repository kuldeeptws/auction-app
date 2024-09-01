<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_069'])) ? $this->_rootref['L_069'] : ((isset($MSG['069'])) ? $MSG['069'] : '{ L_069 }')); ?></h4>
				<?php echo ((isset($this->_rootref['L_122'])) ? $this->_rootref['L_122'] : ((isset($MSG['122'])) ? $MSG['122'] : '{ L_122 }')); ?>
				<form name="durations" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_097'])) ? $this->_rootref['L_097'] : ((isset($MSG['097'])) ? $MSG['097'] : '{ L_097 }')); ?></strong></div>
								<div class="col-md-6"><strong><?php echo ((isset($this->_rootref['L_087'])) ? $this->_rootref['L_087'] : ((isset($MSG['087'])) ? $MSG['087'] : '{ L_087 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_dur_count = (isset($this->_tpldata['dur'])) ? sizeof($this->_tpldata['dur']) : 0;if ($_dur_count) {for ($_dur_i = 0; $_dur_i < $_dur_count; ++$_dur_i){$_dur_val = &$this->_tpldata['dur'][$_dur_i]; ?>
							<div class="row">
								<div class="col-md-3"><input type="text" name="new_days[<?php echo $_dur_val['S_ROW_COUNT']; ?>]" value="<?php echo $_dur_val['DAYS']; ?>" size="5"></div>
								<div class="col-md-6"><input type="text" name="new_durations[<?php echo $_dur_val['S_ROW_COUNT']; ?>]" value="<?php echo $_dur_val['DESC']; ?>" size="25"></div>
								<div class="col-md-3"><input type="checkbox" name="delete[]" value="<?php echo $_dur_val['S_ROW_COUNT']; ?>"></div>
							</div>
<?php }} ?>
							<div class="row">
								<div class="col-md-9 text-right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></div>
								<div class="col-md-3"><input type="checkbox" class="selectall" value="delete"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_394'])) ? $this->_rootref['L_394'] : ((isset($MSG['394'])) ? $MSG['394'] : '{ L_394 }')); ?>: <input type="text" name="new_days[]" size="5" maxlength="5"></div>
								<div class="col-md-6"><input type="text" name="new_durations[]" size="25"></div>
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