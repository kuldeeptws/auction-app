<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_045'])) ? $this->_rootref['L_045'] : ((isset($MSG['045'])) ? $MSG['045'] : '{ L_045 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_2_0004'])) ? $this->_rootref['L_2_0004'] : ((isset($MSG['2_0004'])) ? $MSG['2_0004'] : '{ L_2_0004 }')); ?></h4>
				<form name="banips" action="" method="post">
					<table class="table table-striped table-bordered">
						<tr>
							<td colspan="3"><?php echo ((isset($this->_rootref['L_667'])) ? $this->_rootref['L_667'] : ((isset($MSG['667'])) ? $MSG['667'] : '{ L_667 }')); ?> <b><?php echo (isset($this->_rootref['NICK'])) ? $this->_rootref['NICK'] : ''; ?></b></td>
							<td align="right"><?php echo ((isset($this->_rootref['L_559'])) ? $this->_rootref['L_559'] : ((isset($MSG['559'])) ? $MSG['559'] : '{ L_559 }')); ?>: <?php echo (isset($this->_rootref['LASTLOGIN'])) ? $this->_rootref['LASTLOGIN'] : ''; ?></td>
						</tr>
						<tr>
							<th width="35%"><b><?php echo ((isset($this->_rootref['L_087'])) ? $this->_rootref['L_087'] : ((isset($MSG['087'])) ? $MSG['087'] : '{ L_087 }')); ?></b></th>
							<th width="27%"><b><?php echo ((isset($this->_rootref['L_ip_address'])) ? $this->_rootref['L_ip_address'] : ((isset($MSG['ip_address'])) ? $MSG['ip_address'] : '{ L_ip_address }')); ?></b></th>
							<th width="21%"><b><?php echo ((isset($this->_rootref['L_560'])) ? $this->_rootref['L_560'] : ((isset($MSG['560'])) ? $MSG['560'] : '{ L_560 }')); ?></b></th>
							<th width="17%"><b><?php echo ((isset($this->_rootref['L_297'])) ? $this->_rootref['L_297'] : ((isset($MSG['297'])) ? $MSG['297'] : '{ L_297 }')); ?></b></th>
						</tr>
<?php $_ips_count = (isset($this->_tpldata['ips'])) ? sizeof($this->_tpldata['ips']) : 0;if ($_ips_count) {for ($_ips_i = 0; $_ips_i < $_ips_count; ++$_ips_i){$_ips_val = &$this->_tpldata['ips'][$_ips_i]; ?>
						<tr<?php if ($_ips_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
							<td>
	<?php if ($_ips_val['TYPE'] == ('first')) {  ?>
								<?php echo ((isset($this->_rootref['L_registration_ip'])) ? $this->_rootref['L_registration_ip'] : ((isset($MSG['registration_ip'])) ? $MSG['registration_ip'] : '{ L_registration_ip }')); ?>
	<?php } else { ?>
								<?php echo $_ips_val['TYPE']; ?>
	<?php } ?>
							</td>
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
						</tr>
<?php }} ?>
					</table>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_process_selection'])) ? $this->_rootref['L_process_selection'] : ((isset($MSG['process_selection'])) ? $MSG['process_selection'] : '{ L_process_selection }')); ?>">
				</form>
				<table class="table table-striped table-bordered">
					<tr>
						<td align="center">
							<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
							<br>
							<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
							<?php echo $_pages_val['PAGE']; ?>&nbsp;&nbsp;
<?php }} ?>
							<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>
						</td>
					</tr>
				</table>
				<div class="plain-box"><a href="listusers.php" class="small"><?php echo ((isset($this->_rootref['L_5279'])) ? $this->_rootref['L_5279'] : ((isset($MSG['5279'])) ? $MSG['5279'] : '{ L_5279 }')); ?></a></div>
			</div>
		</div>