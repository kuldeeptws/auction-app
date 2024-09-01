<div style="width:25%; float:left;">
	<div style="margin-left:auto; margin-right:auto;">
		<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
	</div>
</div>
<div style="width:75%; float:right;">
	<div class="main-box">
		<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_445'])) ? $this->_rootref['L_445'] : ((isset($MSG['445'])) ? $MSG['445'] : '{ L_445 }')); ?></h4>
		<form name="errorlog" action="" method="post">
			<div class="info-box"><?php echo ((isset($this->_rootref['L_1142'])) ? $this->_rootref['L_1142'] : ((isset($MSG['1142'])) ? $MSG['1142'] : '{ L_1142 }')); ?></div>
			<p><?php echo ((isset($this->_rootref['L_1143'])) ? $this->_rootref['L_1143'] : ((isset($MSG['1143'])) ? $MSG['1143'] : '{ L_1143 }')); ?></p>
			<table width="98%" cellpadding="0" cellspacing="0" class="blank">
<?php $_gateways_count = (isset($this->_tpldata['gateways'])) ? sizeof($this->_tpldata['gateways']) : 0;if ($_gateways_count) {for ($_gateways_i = 0; $_gateways_i < $_gateways_count; ++$_gateways_i){$_gateways_val = &$this->_tpldata['gateways'][$_gateways_i]; ?>
				<tr>
					<th colspan="2"><b><?php echo $_gateways_val['NAME']; ?></b></th>
				</tr>
				<tr>
					<td width="50%">
						<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[id]" value="<?php echo $_gateways_val['GATEWAY_ID']; ?>">
						<a href="<?php echo $_gateways_val['WEBSITE']; ?>" target="_blank"><?php echo $_gateways_val['ADDRESS_NAME']; ?></a>:<br><input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[address]" value="<?php echo $_gateways_val['ADDRESS']; ?>" size="50">
<?php if ($_gateways_val['B_PASSWORD']) {  ?>
						<p><?php echo $_gateways_val['PASSWORD_NAME']; ?>:<br><input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" value="<?php echo $_gateways_val['PASSWORD']; ?>" size="50"></p>
<?php } else { ?>
						<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" value="">
<?php } ?>
					</td>
					<td>
						<p><input type="checkbox" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[required]"<?php echo $_gateways_val['REQUIRED']; ?>> <?php echo ((isset($this->_rootref['L_446'])) ? $this->_rootref['L_446'] : ((isset($MSG['446'])) ? $MSG['446'] : '{ L_446 }')); ?></p>
						<p><input type="checkbox" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[active]"<?php echo $_gateways_val['ENABLED']; ?>> <?php echo ((isset($this->_rootref['L_447'])) ? $this->_rootref['L_447'] : ((isset($MSG['447'])) ? $MSG['447'] : '{ L_447 }')); ?></p>
					</td>
				</tr>
<?php }} ?>
			</table>
			<input type="hidden" name="action" value="update">
			<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
			<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?>">
		</form>
	</div>
</div>