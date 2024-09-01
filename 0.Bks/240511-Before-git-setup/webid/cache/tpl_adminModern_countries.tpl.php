<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_081'])) ? $this->_rootref['L_081'] : ((isset($MSG['081'])) ? $MSG['081'] : '{ L_081 }')); ?></h4>
				<form name="payments" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_094'])) ? $this->_rootref['L_094'] : ((isset($MSG['094'])) ? $MSG['094'] : '{ L_094 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-12"><img src="../images/nodelete.gif" width="20" height="21" style="vertical-align:middle;"> <?php echo ((isset($this->_rootref['L_2__0030'])) ? $this->_rootref['L_2__0030'] : ((isset($MSG['2__0030'])) ? $MSG['2__0030'] : '{ L_2__0030 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-9"><strong><?php echo ((isset($this->_rootref['L_087'])) ? $this->_rootref['L_087'] : ((isset($MSG['087'])) ? $MSG['087'] : '{ L_087 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_countries_count = (isset($this->_tpldata['countries'])) ? sizeof($this->_tpldata['countries']) : 0;if ($_countries_count) {for ($_countries_i = 0; $_countries_i < $_countries_count; ++$_countries_i){$_countries_val = &$this->_tpldata['countries'][$_countries_i]; ?>
							<div class="row">
								<div class="col-md-9">
									<input type="text" name="new_countries[]" size="45" value="<?php echo $_countries_val['COUNTRY']; ?>">
									<input type="hidden" name="old_countries[]" value="<?php echo $_countries_val['COUNTRY']; ?>">
								</div>
								<div class="col-md-3">
	                <?php if ($_countries_val['B_CAN_DELETE']) {  ?>
	                <input type="checkbox" name="delete[]" value="<?php echo $_countries_val['COUNTRY']; ?>">
	                <?php } else { ?>
	                <img src="../images/nodelete.gif" alt="<?php echo ((isset($this->_rootref['L_cannot_delete'])) ? $this->_rootref['L_cannot_delete'] : ((isset($MSG['cannot_delete'])) ? $MSG['cannot_delete'] : '{ L_cannot_delete }')); ?>">
	                <?php } ?>
								</div>
							</div>
<?php }} ?>
							<div class="row">
								<div class="col-md-9 text-right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></div>
								<div class="col-md-3"><input type="checkbox" class="selectall" value="delete"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-9"><?php echo ((isset($this->_rootref['L_394'])) ? $this->_rootref['L_394'] : ((isset($MSG['394'])) ? $MSG['394'] : '{ L_394 }')); ?>: <input type="text" name="new_countries[]" size="45"></div>
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