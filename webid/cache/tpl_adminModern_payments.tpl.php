<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_075'])) ? $this->_rootref['L_075'] : ((isset($MSG['075'])) ? $MSG['075'] : '{ L_075 }')); ?></h4>
				<form name="payments" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_092'])) ? $this->_rootref['L_092'] : ((isset($MSG['092'])) ? $MSG['092'] : '{ L_092 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-5"><strong><?php echo ((isset($this->_rootref['L_payment_name'])) ? $this->_rootref['L_payment_name'] : ((isset($MSG['payment_name'])) ? $MSG['payment_name'] : '{ L_payment_name }')); ?></strong></div>
								<div class="col-md-5"><strong><?php echo ((isset($this->_rootref['L_clean_payment_name'])) ? $this->_rootref['L_clean_payment_name'] : ((isset($MSG['clean_payment_name'])) ? $MSG['clean_payment_name'] : '{ L_clean_payment_name }')); ?></strong></div>
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_payments_count = (isset($this->_tpldata['payments'])) ? sizeof($this->_tpldata['payments']) : 0;if ($_payments_count) {for ($_payments_i = 0; $_payments_i < $_payments_count; ++$_payments_i){$_payments_val = &$this->_tpldata['payments'][$_payments_i]; ?>
							<div class="row">
								<div class="col-md-5">
									<input type="hidden" name="payment[<?php echo $_payments_val['ID']; ?>][id]" value="<?php echo $_payments_val['ID']; ?>" size="25">
									<input type="text" name="payment[<?php echo $_payments_val['ID']; ?>][name]" value="<?php echo $_payments_val['NAME']; ?>" size="25">
								</div>
								<div class="col-md-5">
									<input type="text" name="payment[<?php echo $_payments_val['ID']; ?>][clean]" value="<?php echo $_payments_val['CLEAN']; ?>" size="25">
								</div>
								<div class="col-md-2"><input type="checkbox" name="delete[]" value="<?php echo $_payments_val['ID']; ?>"></div>
							</div>
<?php }} ?>
							<div class="row">
								<div class="col-md-10 text-right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></div>
								<div class="col-md-2"><input type="checkbox" class="selectall" value="delete"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-5"><?php echo ((isset($this->_rootref['L_394'])) ? $this->_rootref['L_394'] : ((isset($MSG['394'])) ? $MSG['394'] : '{ L_394 }')); ?>: <input type="text" name="new_payments" size="25"></div>
								<div class="col-md-5"><input type="text" name="new_payments_clean" size="25"></div>
								<div class="col-md-2">&nbsp;</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act" class="centre"><?php echo ((isset($this->_rootref['L_089'])) ? $this->_rootref['L_089'] : ((isset($MSG['089'])) ? $MSG['089'] : '{ L_089 }')); ?></button>
				</form>
			</div>
		</div>