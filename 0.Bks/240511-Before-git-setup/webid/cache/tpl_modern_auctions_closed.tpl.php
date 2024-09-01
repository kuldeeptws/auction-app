<div class="well">
	<h4><?php echo ((isset($this->_rootref['L_220'])) ? $this->_rootref['L_220'] : ((isset($MSG['220'])) ? $MSG['220'] : '{ L_220 }')); ?><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>profile.php?user_id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>"><?php echo (isset($this->_rootref['USERNAME'])) ? $this->_rootref['USERNAME'] : ''; ?></a></h4>
</div>
<table class="table table-bordered table-condensed table-striped">
	<tr align="center">
		<th width="10%"><?php echo ((isset($this->_rootref['L_167'])) ? $this->_rootref['L_167'] : ((isset($MSG['167'])) ? $MSG['167'] : '{ L_167 }')); ?></th>
		<th width="45%"><?php echo ((isset($this->_rootref['L_168'])) ? $this->_rootref['L_168'] : ((isset($MSG['168'])) ? $MSG['168'] : '{ L_168 }')); ?></th>
		<th width="15%"><?php echo ((isset($this->_rootref['L_169'])) ? $this->_rootref['L_169'] : ((isset($MSG['169'])) ? $MSG['169'] : '{ L_169 }')); ?></th>
		<th width="15%"><?php echo ((isset($this->_rootref['L_170'])) ? $this->_rootref['L_170'] : ((isset($MSG['170'])) ? $MSG['170'] : '{ L_170 }')); ?></th>
		<th width="15%"><?php echo ((isset($this->_rootref['L_171a'])) ? $this->_rootref['L_171a'] : ((isset($MSG['171a'])) ? $MSG['171a'] : '{ L_171a }')); ?></th>
	</tr>
<?php $_auctions_count = (isset($this->_tpldata['auctions'])) ? sizeof($this->_tpldata['auctions']) : 0;if ($_auctions_count) {for ($_auctions_i = 0; $_auctions_i < $_auctions_count; ++$_auctions_i){$_auctions_val = &$this->_tpldata['auctions'][$_auctions_i]; ?>
	<tr <?php echo $_auctions_val['BGCOLOUR']; ?>>
		<td width="10%"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_auctions_val['ID']; ?>"><img class="img-rounded" src="<?php echo $_auctions_val['PIC_URL']; ?>" width="100%" border='0' alt="image"></a></td>
		<td width="45%">
			<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_auctions_val['ID']; ?>"><?php echo $_auctions_val['TITLE']; ?></a>
	<?php if ($_auctions_val['B_BUY_NOW'] && ! $_auctions_val['B_BNONLY']) {  ?>
			&nbsp;&nbsp;(<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>buy_now.php?id=<?php echo $_auctions_val['ID']; ?>"><img align="middle" src="<?php echo $_auctions_val['BNIMG']; ?>" border="0"></a> <?php echo $_auctions_val['BNFORMAT']; ?>)
	<?php } ?>
		</td>
		<td width="15%">
	<?php if ($_auctions_val['B_BNONLY']) {  ?>
			<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>buy_now.php?id=<?php echo $_auctions_val['ID']; ?>"><img src="<?php echo $_auctions_val['BNIMG']; ?>" border="0" class="buynow"></a> <?php echo $_auctions_val['BNFORMAT']; ?>
	<?php } else { ?>
			<?php echo $_auctions_val['BIDFORMAT']; ?>
	<?php } ?>
		</td>
		<td width="15%"><?php echo $_auctions_val['NUM_BIDS']; ?></td>
		<td width="15%"><small><?php echo $_auctions_val['TIMELEFT']; ?></small></td>
	</tr>
<?php }} $_no_auctions_count = (isset($this->_tpldata['no_auctions'])) ? sizeof($this->_tpldata['no_auctions']) : 0;if ($_no_auctions_count) {for ($_no_auctions_i = 0; $_no_auctions_i < $_no_auctions_count; ++$_no_auctions_i){$_no_auctions_val = &$this->_tpldata['no_auctions'][$_no_auctions_i]; ?>
	<tr align="center">
		<td colspan="5"><div class="alert alert-danger" role="alert"><?php echo ((isset($this->_rootref['L_910'])) ? $this->_rootref['L_910'] : ((isset($MSG['910'])) ? $MSG['910'] : '{ L_910 }')); ?></div></td>
	</tr>
<?php }} ?>
</table>
<?php if ($this->_rootref['B_MULPAG']) {  ?>
<div class="text-center">
	<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?> <?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?> <?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?> <?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
	<br>
	<?php if ($this->_rootref['B_NOTLAST']) {  ?>
	<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>active_auctions.php?PAGE=<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>&user_id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>"><u><?php echo ((isset($this->_rootref['L_5119'])) ? $this->_rootref['L_5119'] : ((isset($MSG['5119'])) ? $MSG['5119'] : '{ L_5119 }')); ?></u></a>&nbsp;&nbsp;
	<?php } ?>
	<?php echo (isset($this->_rootref['PAGENA'])) ? $this->_rootref['PAGENA'] : ''; ?>
	&nbsp;&nbsp;
	<?php if ($this->_rootref['B_NOTLAST']) {  ?>
	<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>active_auctions.php?PAGE=<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>&user_id=<?php echo (isset($this->_rootref['USER_ID'])) ? $this->_rootref['USER_ID'] : ''; ?>"><u><?php echo ((isset($this->_rootref['L_5120'])) ? $this->_rootref['L_5120'] : ((isset($MSG['5120'])) ? $MSG['5120'] : '{ L_5120 }')); ?></u></a>
	<?php } ?>
</div>
<?php } ?>