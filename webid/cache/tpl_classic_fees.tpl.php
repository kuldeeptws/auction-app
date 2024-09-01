<div class="content">
	<div class="tableContent2">
		<div class="titTable2 rounded-top rounded-bottom">
			<?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?>
		</div>
		<div class="table2">
<?php if ($this->_rootref['B_SETUP_FEE']) {  ?>
			<table width="100%" border="0" cellpadding="4" cellspacing="1">
				<tr>
					<th colspan="2"><?php echo ((isset($this->_rootref['L_431'])) ? $this->_rootref['L_431'] : ((isset($MSG['431'])) ? $MSG['431'] : '{ L_431 }')); ?></th>
				</tr>
	<?php $_setup_fees_count = (isset($this->_tpldata['setup_fees'])) ? sizeof($this->_tpldata['setup_fees']) : 0;if ($_setup_fees_count) {for ($_setup_fees_i = 0; $_setup_fees_i < $_setup_fees_count; ++$_setup_fees_i){$_setup_fees_val = &$this->_tpldata['setup_fees'][$_setup_fees_i]; ?>
				<tr <?php echo $_setup_fees_val['BGCOLOUR']; ?>>
					<td align="left"><?php echo ((isset($this->_rootref['L_240'])) ? $this->_rootref['L_240'] : ((isset($MSG['240'])) ? $MSG['240'] : '{ L_240 }')); ?> <?php echo $_setup_fees_val['FROM']; ?> <?php echo ((isset($this->_rootref['L_241'])) ? $this->_rootref['L_241'] : ((isset($MSG['241'])) ? $MSG['241'] : '{ L_241 }')); ?> <?php echo $_setup_fees_val['TO']; ?></td>
					<td align="right"><?php echo $_setup_fees_val['VALUE']; ?></td>
	<?php }} ?>
				</tr>
			</table>
<?php } if ($this->_rootref['B_BUYER_FEE']) {  ?>
			<table width="100%" border="0" cellpadding="4" cellspacing="1">
				<tr>
					<th colspan="2"><?php echo ((isset($this->_rootref['L_775'])) ? $this->_rootref['L_775'] : ((isset($MSG['775'])) ? $MSG['775'] : '{ L_775 }')); ?></th>
				</tr>
	<?php $_buyer_fee_count = (isset($this->_tpldata['buyer_fee'])) ? sizeof($this->_tpldata['buyer_fee']) : 0;if ($_buyer_fee_count) {for ($_buyer_fee_i = 0; $_buyer_fee_i < $_buyer_fee_count; ++$_buyer_fee_i){$_buyer_fee_val = &$this->_tpldata['buyer_fee'][$_buyer_fee_i]; ?>
				<tr <?php echo $_buyer_fee_val['BGCOLOUR']; ?>>
					<td align="left"><?php echo ((isset($this->_rootref['L_240'])) ? $this->_rootref['L_240'] : ((isset($MSG['240'])) ? $MSG['240'] : '{ L_240 }')); ?> <?php echo $_buyer_fee_val['FROM']; ?> <?php echo ((isset($this->_rootref['L_241'])) ? $this->_rootref['L_241'] : ((isset($MSG['241'])) ? $MSG['241'] : '{ L_241 }')); ?> <?php echo $_buyer_fee_val['TO']; ?></td>
					<td align="right"><?php echo $_buyer_fee_val['VALUE']; ?></td>
	<?php }} ?>
				</tr>
			</table>
<?php } if ($this->_rootref['B_ENDAUC_FEE']) {  ?>
			<table width="100%" border="0" cellpadding="4" cellspacing="1">
				<tr>
					<th colspan="2"><?php echo ((isset($this->_rootref['L_791'])) ? $this->_rootref['L_791'] : ((isset($MSG['791'])) ? $MSG['791'] : '{ L_791 }')); ?></th>
				</tr>
	<?php $_endauc_fee_count = (isset($this->_tpldata['endauc_fee'])) ? sizeof($this->_tpldata['endauc_fee']) : 0;if ($_endauc_fee_count) {for ($_endauc_fee_i = 0; $_endauc_fee_i < $_endauc_fee_count; ++$_endauc_fee_i){$_endauc_fee_val = &$this->_tpldata['endauc_fee'][$_endauc_fee_i]; ?>
				<tr <?php echo $_endauc_fee_val['BGCOLOUR']; ?>>
					<td align="left"><?php echo ((isset($this->_rootref['L_240'])) ? $this->_rootref['L_240'] : ((isset($MSG['240'])) ? $MSG['240'] : '{ L_240 }')); ?> <?php echo $_endauc_fee_val['FROM']; ?> <?php echo ((isset($this->_rootref['L_241'])) ? $this->_rootref['L_241'] : ((isset($MSG['241'])) ? $MSG['241'] : '{ L_241 }')); ?> <?php echo $_endauc_fee_val['TO']; ?></td>
					<td align="right"><?php echo $_endauc_fee_val['VALUE']; ?></td>
	<?php }} ?>
				</tr>
			</table>
<?php } ?>
			<div align="center" style="text-align:center; margin-top:15px;">
<?php if ($this->_rootref['B_SIGNUP_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_430'])) ? $this->_rootref['L_430'] : ((isset($MSG['430'])) ? $MSG['430'] : '{ L_430 }')); ?>: <?php echo (isset($this->_rootref['SIGNUP_FEE'])) ? $this->_rootref['SIGNUP_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_HPFEAT_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_433'])) ? $this->_rootref['L_433'] : ((isset($MSG['433'])) ? $MSG['433'] : '{ L_433 }')); ?>: <?php echo (isset($this->_rootref['HPFEAT_FEE'])) ? $this->_rootref['HPFEAT_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_BOLD_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_439'])) ? $this->_rootref['L_439'] : ((isset($MSG['439'])) ? $MSG['439'] : '{ L_439 }')); ?>: <?php echo (isset($this->_rootref['BOLD_FEE'])) ? $this->_rootref['BOLD_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_HL_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_434'])) ? $this->_rootref['L_434'] : ((isset($MSG['434'])) ? $MSG['434'] : '{ L_434 }')); ?>: <?php echo (isset($this->_rootref['HL_FEE'])) ? $this->_rootref['HL_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_RP_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_440'])) ? $this->_rootref['L_440'] : ((isset($MSG['440'])) ? $MSG['440'] : '{ L_440 }')); ?>: <?php echo (isset($this->_rootref['RP_FEE'])) ? $this->_rootref['RP_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_PICTURE_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_435'])) ? $this->_rootref['L_435'] : ((isset($MSG['435'])) ? $MSG['435'] : '{ L_435 }')); ?>: <?php echo (isset($this->_rootref['PICTURE_FEE'])) ? $this->_rootref['PICTURE_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_RELIST_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_437'])) ? $this->_rootref['L_437'] : ((isset($MSG['437'])) ? $MSG['437'] : '{ L_437 }')); ?>: <?php echo (isset($this->_rootref['RELIST_FEE'])) ? $this->_rootref['RELIST_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_BUYNOW_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_436'])) ? $this->_rootref['L_436'] : ((isset($MSG['436'])) ? $MSG['436'] : '{ L_436 }')); ?>: <?php echo (isset($this->_rootref['BUYNOW_FEE'])) ? $this->_rootref['BUYNOW_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_EXCAT_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_804'])) ? $this->_rootref['L_804'] : ((isset($MSG['804'])) ? $MSG['804'] : '{ L_804 }')); ?>: <?php echo (isset($this->_rootref['EXCAT_FEE'])) ? $this->_rootref['EXCAT_FEE'] : ''; ?></p>
<?php } if ($this->_rootref['B_SUBTITLE_FEE']) {  ?>
				<p><?php echo ((isset($this->_rootref['L_803'])) ? $this->_rootref['L_803'] : ((isset($MSG['803'])) ? $MSG['803'] : '{ L_803 }')); ?>: <?php echo (isset($this->_rootref['SUBTITLE_FEE'])) ? $this->_rootref['SUBTITLE_FEE'] : ''; ?></p>
<?php } ?>
			</div>
		</div>
	</div>
</div>