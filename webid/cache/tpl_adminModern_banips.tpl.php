<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_ip_addresses'])) ? $this->_rootref['L_ip_addresses'] : ((isset($MSG['ip_addresses'])) ? $MSG['ip_addresses'] : '{ L_ip_addresses }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_ip_ban_management'])) ? $this->_rootref['L_ip_ban_management'] : ((isset($MSG['ip_ban_management'])) ? $MSG['ip_ban_management'] : '{ L_ip_ban_management }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<table class="table table-striped table-bordered">
						<tr>
							<td bgcolor="#FFFF66" colspan="5">
								<?php echo ((isset($this->_rootref['L_ban_this_ip'])) ? $this->_rootref['L_ban_this_ip'] : ((isset($MSG['ban_this_ip'])) ? $MSG['ban_this_ip'] : '{ L_ban_this_ip }')); ?>
								<input type="text" name="ip">
								<input type="submit" name="Submit2" value="&gt;&gt;">
								<?php echo ((isset($this->_rootref['L_ip_example'])) ? $this->_rootref['L_ip_example'] : ((isset($MSG['ip_example'])) ? $MSG['ip_example'] : '{ L_ip_example }')); ?>
							</td>
						</tr>
						<tr>
							<th width="29%"><b><?php echo ((isset($this->_rootref['L_087'])) ? $this->_rootref['L_087'] : ((isset($MSG['087'])) ? $MSG['087'] : '{ L_087 }')); ?></b></td>
							<th width="25%"><b><?php echo ((isset($this->_rootref['L_ip_address'])) ? $this->_rootref['L_ip_address'] : ((isset($MSG['ip_address'])) ? $MSG['ip_address'] : '{ L_ip_address }')); ?></b></td>
							<th width="19%"><b><?php echo ((isset($this->_rootref['L_560'])) ? $this->_rootref['L_560'] : ((isset($MSG['560'])) ? $MSG['560'] : '{ L_560 }')); ?></b></td>
							<th width="18%"><b><?php echo ((isset($this->_rootref['L_297'])) ? $this->_rootref['L_297'] : ((isset($MSG['297'])) ? $MSG['297'] : '{ L_297 }')); ?></b></td>
							<th width="9%"><b><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></b></td>
						</tr>
<?php $_ips_count = (isset($this->_tpldata['ips'])) ? sizeof($this->_tpldata['ips']) : 0;if ($_ips_count) {for ($_ips_i = 0; $_ips_i < $_ips_count; ++$_ips_i){$_ips_val = &$this->_tpldata['ips'][$_ips_i]; ?>
						<tr<?php if ($_ips_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
							<td><?php echo ((isset($this->_rootref['L_manually_entered'])) ? $this->_rootref['L_manually_entered'] : ((isset($MSG['manually_entered'])) ? $MSG['manually_entered'] : '{ L_manually_entered }')); ?></td>
							<td align="center"><?php echo $_ips_val['IP']; ?></td>
							<td align="center">
	<?php if ($_ips_val['ACTION'] == ('accept')) {  ?>
								<span style="color:#A2CD5A;"><b><?php echo ((isset($this->_rootref['L_accepted'])) ? $this->_rootref['L_accepted'] : ((isset($MSG['accepted'])) ? $MSG['accepted'] : '{ L_accepted }')); ?></b></span>
	<?php } else { ?>
								<span style="color:#CD0000;"><b><?php echo ((isset($this->_rootref['L_banned'])) ? $this->_rootref['L_banned'] : ((isset($MSG['banned'])) ? $MSG['banned'] : '{ L_banned }')); ?></b></span>
	<?php } ?>
							</td>
							<td>
	<?php if ($_ips_val['ACTION'] == ('accept')) {  ?>
								<input type="checkbox" name="deny[]" value="<?php echo $_ips_val['ID']; ?>">
								&nbsp;<?php echo ((isset($this->_rootref['L_ban'])) ? $this->_rootref['L_ban'] : ((isset($MSG['ban'])) ? $MSG['ban'] : '{ L_ban }')); ?>
	<?php } else { ?>
								<input type="checkbox" name="accept[]" value="<?php echo $_ips_val['ID']; ?>">
								&nbsp;<?php echo ((isset($this->_rootref['L_accept'])) ? $this->_rootref['L_accept'] : ((isset($MSG['accept'])) ? $MSG['accept'] : '{ L_accept }')); ?>
	<?php } ?>
							</td>
							<td align="center"><input type="checkbox" name="delete[]" value="<?php echo $_ips_val['ID']; ?>"></td>
<?php }} else { ?>
							<td colspan="5"><?php echo ((isset($this->_rootref['L_no_ips_banned'])) ? $this->_rootref['L_no_ips_banned'] : ((isset($MSG['no_ips_banned'])) ? $MSG['no_ips_banned'] : '{ L_no_ips_banned }')); ?></td>
<?php } ?>
						</tr>
					</table>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_process_selection'])) ? $this->_rootref['L_process_selection'] : ((isset($MSG['process_selection'])) ? $MSG['process_selection'] : '{ L_process_selection }')); ?>">
				</form>
			</div>
		</div>