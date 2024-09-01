<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_1083'])) ? $this->_rootref['L_1083'] : ((isset($MSG['1083'])) ? $MSG['1083'] : '{ L_1083 }')); ?></h4>
				<form name="tax_edit" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_1082'])) ? $this->_rootref['L_1082'] : ((isset($MSG['1082'])) ? $MSG['1082'] : '{ L_1082 }')); ?></strong></div>
								<div class="col-md-9"><input type="text" name="tax_name" value="<?php echo (isset($this->_rootref['TAX_NAME'])) ? $this->_rootref['TAX_NAME'] : ''; ?>"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_1083'])) ? $this->_rootref['L_1083'] : ((isset($MSG['1083'])) ? $MSG['1083'] : '{ L_1083 }')); ?></strong></div>
								<div class="col-md-9"><input type="text" name="tax_rate" value="<?php echo (isset($this->_rootref['TAX_RATE'])) ? $this->_rootref['TAX_RATE'] : ''; ?>"> %</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_1084'])) ? $this->_rootref['L_1084'] : ((isset($MSG['1084'])) ? $MSG['1084'] : '{ L_1084 }')); ?></strong></div>
								<div class="col-md-9">
									<select name="seller_countries[]" multiple>
										<?php echo (isset($this->_rootref['TAX_SELLER'])) ? $this->_rootref['TAX_SELLER'] : ''; ?>
									</select>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_1085'])) ? $this->_rootref['L_1085'] : ((isset($MSG['1085'])) ? $MSG['1085'] : '{ L_1085 }')); ?></strong></div>
								<div class="col-md-9">
									<select name="buyer_countries[]" multiple>
										<?php echo (isset($this->_rootref['TAX_BUYER'])) ? $this->_rootref['TAX_BUYER'] : ''; ?>
									</select>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="tax_id" value="<?php echo (isset($this->_rootref['TAX_ID'])) ? $this->_rootref['TAX_ID'] : ''; ?>">
					<input type="hidden" name="action" value="add">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?></button>
				</form>
				<br>
				<form name="tax_update" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1082'])) ? $this->_rootref['L_1082'] : ((isset($MSG['1082'])) ? $MSG['1082'] : '{ L_1082 }')); ?></strong></div>
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1083'])) ? $this->_rootref['L_1083'] : ((isset($MSG['1083'])) ? $MSG['1083'] : '{ L_1083 }')); ?></strong></div>
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1084'])) ? $this->_rootref['L_1084'] : ((isset($MSG['1084'])) ? $MSG['1084'] : '{ L_1084 }')); ?></strong></div>
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1085'])) ? $this->_rootref['L_1085'] : ((isset($MSG['1085'])) ? $MSG['1085'] : '{ L_1085 }')); ?></strong></div>
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1086'])) ? $this->_rootref['L_1086'] : ((isset($MSG['1086'])) ? $MSG['1086'] : '{ L_1086 }')); ?></strong></div>
								<div class="col-md-2"><strong>&nbsp;</strong></div>
							</div>
<?php $_tax_rates_count = (isset($this->_tpldata['tax_rates'])) ? sizeof($this->_tpldata['tax_rates']) : 0;if ($_tax_rates_count) {for ($_tax_rates_i = 0; $_tax_rates_i < $_tax_rates_count; ++$_tax_rates_i){$_tax_rates_val = &$this->_tpldata['tax_rates'][$_tax_rates_i]; ?>
							<div class="row">
								<div class="col-md-2"><?php echo $_tax_rates_val['TAX_NAME']; ?></div>
								<div class="col-md-2"><?php echo $_tax_rates_val['TAX_RATE']; ?>%</div>
								<div class="col-md-2"><?php echo $_tax_rates_val['TAX_SELLER']; ?></div>
								<div class="col-md-2"><?php echo $_tax_rates_val['TAX_BUYER']; ?></div>
								<div class="col-md-2">
									<input type="radio" name="site_fee" value="<?php echo $_tax_rates_val['ID']; ?>"<?php if ($_tax_rates_val['TAX_SITE_RATE'] == (1)) {  ?> checked="checked"<?php } ?>>
								</div>
								<div class="col-md-2">
									<a href="tax_levels.php?id=<?php echo $_tax_rates_val['ID']; ?>&type=edit"><?php echo ((isset($this->_rootref['L_298'])) ? $this->_rootref['L_298'] : ((isset($MSG['298'])) ? $MSG['298'] : '{ L_298 }')); ?></a><br>
									<a href="tax_levels.php?id=<?php echo $_tax_rates_val['ID']; ?>&type=delete" onClick="return confirm('<?php echo ((isset($this->_rootref['L_1087'])) ? $this->_rootref['L_1087'] : ((isset($MSG['1087'])) ? $MSG['1087'] : '{ L_1087 }')); ?>')"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></a>
								</div>
							</div>
<?php }} ?>
						</div>
					</div>
					<input type="hidden" name="action" value="sitefee">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?></button>
				</form>
			</div>
		</div>