<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_25_0169'])) ? $this->_rootref['L_25_0169'] : ((isset($MSG['25_0169'])) ? $MSG['25_0169'] : '{ L_25_0169 }')); ?></h4>
				<form name="memberlevels" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_25_0170'])) ? $this->_rootref['L_25_0170'] : ((isset($MSG['25_0170'])) ? $MSG['25_0170'] : '{ L_25_0170 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0171'])) ? $this->_rootref['L_25_0171'] : ((isset($MSG['25_0171'])) ? $MSG['25_0171'] : '{ L_25_0171 }')); ?></strong></div>
								<div class="col-md-6"><strong><?php echo ((isset($this->_rootref['L_25_0167'])) ? $this->_rootref['L_25_0167'] : ((isset($MSG['25_0167'])) ? $MSG['25_0167'] : '{ L_25_0167 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_mtype_count = (isset($this->_tpldata['mtype'])) ? sizeof($this->_tpldata['mtype']) : 0;if ($_mtype_count) {for ($_mtype_i = 0; $_mtype_i < $_mtype_count; ++$_mtype_i){$_mtype_val = &$this->_tpldata['mtype'][$_mtype_i]; ?>
							<div class="row">
								<div class="col-md-3">
									<input type="hidden" name="old_membertypes[<?php echo $_mtype_val['ID']; ?>][feedbacks]" value="<?php echo $_mtype_val['FEEDBACK']; ?>">
									<input type="text" name="new_membertypes[<?php echo $_mtype_val['ID']; ?>][feedbacks]" value="<?php echo $_mtype_val['FEEDBACK']; ?>" size="5"></div>
								<div class="col-md-5">
									<input type="hidden" name="old_membertypes[<?php echo $_mtype_val['ID']; ?>][icon]" value="<?php echo $_mtype_val['ICON']; ?>">
									<input type="text" name="new_membertypes[<?php echo $_mtype_val['ID']; ?>][icon]" value="<?php echo $_mtype_val['ICON']; ?>" size="25">
								</div>
								<div class="col-md-1"><img src="../images/icons/<?php echo $_mtype_val['ICON']; ?>" align="middle"></div>
								<div class="col-md-3"><input type="checkbox" name="delete[]" value="<?php echo $_mtype_val['ID']; ?>"></div>
							</div>
<?php }} ?>
							<div class="row">
								<div class="col-md-9 text-right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></div>
								<div class="col-md-3"><input type="checkbox" class="selectall" value="delete"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_394'])) ? $this->_rootref['L_394'] : ((isset($MSG['394'])) ? $MSG['394'] : '{ L_394 }')); ?>: <input type="text" name="new_membertype[feedbacks]" size="5"></div>
								<div class="col-md-6"><input type="text" name="new_membertype[icon]" size="30"></div>
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