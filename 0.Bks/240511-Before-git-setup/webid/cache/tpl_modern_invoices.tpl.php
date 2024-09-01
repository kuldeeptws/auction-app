<?php $this->_tpl_include('user_menu_header.tpl'); ?>
<div class="panel panel-default">
	<table class="table table-bordered table-condensed table-striped">
		<tr style="background-color:<?php echo (isset($this->_rootref['TBLHEADERCOLOUR'])) ? $this->_rootref['TBLHEADERCOLOUR'] : ''; ?>">
			<th style="width: 10%; text-align: center;" class="titTable7"><?php echo ((isset($this->_rootref['L_1041'])) ? $this->_rootref['L_1041'] : ((isset($MSG['1041'])) ? $MSG['1041'] : '{ L_1041 }')); ?></th>
			<th class="titTable7"><?php echo ((isset($this->_rootref['L_1039'])) ? $this->_rootref['L_1039'] : ((isset($MSG['1039'])) ? $MSG['1039'] : '{ L_1039 }')); ?></th>
			<th style="width: 10%; text-align: center;" class="titTable7"><?php echo ((isset($this->_rootref['L_1053'])) ? $this->_rootref['L_1053'] : ((isset($MSG['1053'])) ? $MSG['1053'] : '{ L_1053 }')); ?></th>
			<th style="width: 10%; text-align: center;" class="titTable7"><?php echo ((isset($this->_rootref['L_560'])) ? $this->_rootref['L_560'] : ((isset($MSG['560'])) ? $MSG['560'] : '{ L_560 }')); ?></th>
		</tr>
<?php $_topay_count = (isset($this->_tpldata['topay'])) ? sizeof($this->_tpldata['topay']) : 0;if ($_topay_count) {for ($_topay_i = 0; $_topay_i < $_topay_count; ++$_topay_i){$_topay_val = &$this->_tpldata['topay'][$_topay_i]; ?>
		<tr>
			<td style="text-align: center;">
				<small><?php echo ((isset($this->_rootref['L_1041'])) ? $this->_rootref['L_1041'] : ((isset($MSG['1041'])) ? $MSG['1041'] : '{ L_1041 }')); ?>: <?php echo $_topay_val['INVOICE']; ?></small>
				<p class="smallspan"><small><?php echo $_topay_val['DATE']; ?></small></p>
			</td>
			<td><?php echo $_topay_val['INFO']; ?></td>
			<td style="text-align: center;"><?php echo $_topay_val['TOTAL']; ?></td>
			<td style="text-align: center;">
				<?php if ($_topay_val['PAID']) {  ?><span class="label label-success"><?php echo ((isset($this->_rootref['L_898'])) ? $this->_rootref['L_898'] : ((isset($MSG['898'])) ? $MSG['898'] : '{ L_898 }')); ?></span><br><br><?php } ?><a class="btn btn-default btn-xs" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>order_print.php?id=<?php echo $_topay_val['INVOICE']; ?>" target="_blank"><?php echo ((isset($this->_rootref['L_1058'])) ? $this->_rootref['L_1058'] : ((isset($MSG['1058'])) ? $MSG['1058'] : '{ L_1058 }')); ?></a>
			</td>
		</tr>
<?php }} ?>
	</table>
</div>
<br /><br />
<div class="text-center">
	<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
	<br />
	<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
	<?php echo $_pages_val['PAGE']; ?>&nbsp;&nbsp;
<?php }} ?>
	<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>
</div>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>