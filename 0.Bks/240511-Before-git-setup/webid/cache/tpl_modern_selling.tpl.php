<?php $this->_tpl_include('user_menu_header.tpl'); $_a_count = (isset($this->_tpldata['a'])) ? sizeof($this->_tpldata['a']) : 0;if ($_a_count) {for ($_a_i = 0; $_a_i < $_a_count; ++$_a_i){$_a_val = &$this->_tpldata['a'][$_a_i]; ?>
<div class="panel panel-default">
	<div class="panel-heading">
		<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_a_val['AUCTIONID']; ?>" target="_blank"><?php echo $_a_val['TITLE']; ?></a> <small><span class="text-muted"> (ID: <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_a_val['AUCTIONID']; ?>" target="_blank"><?php echo $_a_val['AUCTIONID']; ?></a> - <?php echo ((isset($this->_rootref['L_25_0121'])) ? $this->_rootref['L_25_0121'] : ((isset($MSG['25_0121'])) ? $MSG['25_0121'] : '{ L_25_0121 }')); ?> <?php echo $_a_val['ENDS']; ?>)</span></small>
	</div>
	<div class="panel-body">
		<div class="col-md-8 col-sm-7">
			<p>
				<small><span class="text-muted"><?php echo ((isset($this->_rootref['L_455'])) ? $this->_rootref['L_455'] : ((isset($MSG['455'])) ? $MSG['455'] : '{ L_455 }')); ?>:</span></small> <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>profile.php?user_id=<?php echo $_a_val['WINNERID']; ?>&auction_id=<?php echo $_a_val['AUCTIONID']; ?>"><?php echo $_a_val['NICK']; ?></a> <?php echo $_a_val['FB']; ?><br>
				<small><span class="text-muted"><?php echo ((isset($this->_rootref['L_457'])) ? $this->_rootref['L_457'] : ((isset($MSG['457'])) ? $MSG['457'] : '{ L_457 }')); ?>:</span></small> <?php echo $_a_val['BIDF']; ?><br>
				<small><span class="text-muted"><?php echo ((isset($this->_rootref['L_284'])) ? $this->_rootref['L_284'] : ((isset($MSG['284'])) ? $MSG['284'] : '{ L_284 }')); ?>:</span></small> <?php echo $_a_val['QTY']; ?>
			</p>
		</div>
		<div class="col-md-4 col-sm-5 text-right">
			<form name="" method="post" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>order_packingslip.php" id="fees" target="_blank">
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				<input type="hidden" name="pfval" value="<?php echo $_a_val['AUCTIONID']; ?>">
				<input type="hidden" name="pfwon" value="<?php echo $_a_val['ID']; ?>">
				<input type="hidden" name="user_id" value="<?php echo (isset($this->_rootref['SELLER_ID'])) ? $this->_rootref['SELLER_ID'] : ''; ?>">
				<input type="submit" type="button" class="btn btn-default btn-xs" value="<?php echo ((isset($this->_rootref['L_1106'])) ? $this->_rootref['L_1106'] : ((isset($MSG['1106'])) ? $MSG['1106'] : '{ L_1106 }')); ?>">
<?php if ($_a_val['B_PAID']) {  ?>
				<span class="btn btn-success btn-xs"><?php echo ((isset($this->_rootref['L_898'])) ? $this->_rootref['L_898'] : ((isset($MSG['898'])) ? $MSG['898'] : '{ L_898 }')); ?></span>
<?php } else { ?>
				<a class="btn btn-warning btn-xs" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>selling.php?paid=<?php echo $_a_val['ID']; echo (isset($this->_rootref['AUCID'])) ? $this->_rootref['AUCID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_899'])) ? $this->_rootref['L_899'] : ((isset($MSG['899'])) ? $MSG['899'] : '{ L_899 }')); ?></a>
<?php } ?>
			</form>
<?php if ($_a_val['SHIPPED'] == 0) {  ?>
			<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/clock.png"> <span class="smallspan"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>selling.php?shipped=<?php echo $_a_val['ID']; echo (isset($this->_rootref['AUCID'])) ? $this->_rootref['AUCID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_1116'])) ? $this->_rootref['L_1116'] : ((isset($MSG['1116'])) ? $MSG['1116'] : '{ L_1116 }')); ?></a></span>
	<?php } else if ($_a_val['SHIPPED'] == (1)) {  ?>
			<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/lorry_go.png" border="0"> <span class="smallspan"><?php echo ((isset($this->_rootref['L_1117'])) ? $this->_rootref['L_1117'] : ((isset($MSG['1117'])) ? $MSG['1117'] : '{ L_1117 }')); ?></span>
	<?php } else if ($_a_val['SHIPPED'] == (2)) {  ?>
			<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/box.png" border="0"> <span class="smallspan"><?php echo ((isset($this->_rootref['L_1109'])) ? $this->_rootref['L_1109'] : ((isset($MSG['1109'])) ? $MSG['1109'] : '{ L_1109 }')); ?></span>
	<?php } ?>
		</div>
	</div>
</div>
<?php }} if ($this->_rootref['NUM_WINNERS'] == 0) {  ?>
<div class="alert alert-danger" role="alert">
	<?php echo ((isset($this->_rootref['L_198'])) ? $this->_rootref['L_198'] : ((isset($MSG['198'])) ? $MSG['198'] : '{ L_198 }')); ?>
</div>
<?php } ?>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td align="center">
			<small><span class="text-muted"><?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?></span></small>
			<nav>
				<ul class="pagination">
					<br>
					<li><?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?></li>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
					<li><?php echo $_pages_val['PAGE']; ?></li>
<?php }} ?>
					<li><?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?></li>
				</ul>
			</nav>
		</td>
	</tr>
</table>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>