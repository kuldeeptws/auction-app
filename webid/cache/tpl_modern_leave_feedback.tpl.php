<?php $this->_tpl_include('user_menu_header.tpl'); ?>

<div class="panel panel-default">
	<table class="table table-bordered table-condensed table-striped">
		<tr>
			<th>
				<?php echo ((isset($this->_rootref['L_458'])) ? $this->_rootref['L_458'] : ((isset($MSG['458'])) ? $MSG['458'] : '{ L_458 }')); ?>
			</th>
			<th>
				<?php echo ((isset($this->_rootref['L_25_0004'])) ? $this->_rootref['L_25_0004'] : ((isset($MSG['25_0004'])) ? $MSG['25_0004'] : '{ L_25_0004 }')); ?>
			</th>
			<th class="hidden-xs">
				<?php echo ((isset($this->_rootref['L_303'])) ? $this->_rootref['L_303'] : ((isset($MSG['303'])) ? $MSG['303'] : '{ L_303 }')); ?>
			</th>
			<th>
				<?php echo ((isset($this->_rootref['L_25_0006'])) ? $this->_rootref['L_25_0006'] : ((isset($MSG['25_0006'])) ? $MSG['25_0006'] : '{ L_25_0006 }')); ?>
			</th>
			<th class="hidden-xs">
				<?php echo ((isset($this->_rootref['L_284'])) ? $this->_rootref['L_284'] : ((isset($MSG['284'])) ? $MSG['284'] : '{ L_284 }')); ?>
			</th>
		</tr>
<?php $_fbs_count = (isset($this->_tpldata['fbs'])) ? sizeof($this->_tpldata['fbs']) : 0;if ($_fbs_count) {for ($_fbs_i = 0; $_fbs_i < $_fbs_count; ++$_fbs_i){$_fbs_val = &$this->_tpldata['fbs'][$_fbs_i]; ?>
		<tr <?php if (( $_fbs_val['S_ROW_COUNT'] % (2) ) == (1)) {  ?> bgcolor="#FFFEEE"<?php } ?>>
			<td>
				<b><a href="item.php?id=<?php echo $_fbs_val['ID']; ?>" target="_blank"><?php echo $_fbs_val['TITLE']; ?></a></b><br />
				<small><span class="text-muted"><b><?php echo ((isset($this->_rootref['L_869'])) ? $this->_rootref['L_869'] : ((isset($MSG['869'])) ? $MSG['869'] : '{ L_869 }')); ?>:</b> <?php echo $_fbs_val['CLOSINGDATE']; ?></span></small>
			</td>
			<td>
				<?php echo $_fbs_val['WINORSELLNICK']; ?> , <?php echo $_fbs_val['WINORSELL']; ?> <br> <a class="label label-primary" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>feedback.php?auction_id=<?php echo $_fbs_val['ID']; ?>&wid=<?php echo $_fbs_val['WINNER']; ?>&sid=<?php echo $_fbs_val['SELLER']; ?>&ws=<?php echo $_fbs_val['WS']; ?>"><?php echo ((isset($this->_rootref['L_207'])) ? $this->_rootref['L_207'] : ((isset($MSG['207'])) ? $MSG['207'] : '{ L_207 }')); ?></a>
			</td>
			<td class="hidden-xs">
				<a href="mailto:<?php echo $_fbs_val['WINORSELLEMAIL']; ?>"><?php echo $_fbs_val['WINORSELLEMAIL']; ?></a>
			</td>
			<td>
				<?php echo $_fbs_val['BIDFORM']; ?>
			</td>
			<td class="hidden-xs">
				<?php echo $_fbs_val['QTY']; ?>
			</td>
		</tr>
<?php }} else { ?>
		<tr>
			<td>
				<b><?php echo ((isset($this->_rootref['L_30_0213'])) ? $this->_rootref['L_30_0213'] : ((isset($MSG['30_0213'])) ? $MSG['30_0213'] : '{ L_30_0213 }')); ?></b>
			</td>
		</tr>
<?php } ?>
	</table>
</div>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>