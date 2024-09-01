<?php $this->_tpl_include('user_menu_header.tpl'); $_items_count = (isset($this->_tpldata['items'])) ? sizeof($this->_tpldata['items']) : 0;if ($_items_count) {for ($_items_i = 0; $_items_i < $_items_count; ++$_items_i){$_items_val = &$this->_tpldata['items'][$_items_i]; ?>
<div class="panel panel-default">
	<div class="panel-heading">
		<?php echo ((isset($this->_rootref['L_458'])) ? $this->_rootref['L_458'] : ((isset($MSG['458'])) ? $MSG['458'] : '{ L_458 }')); ?> <b><a href="item.php?id=<?php echo $_items_val['AUC_ID']; ?>" target="_blank"><?php echo $_items_val['TITLE']; ?></a></b>
		<small>ID: <a href="item.php?id=<?php echo $_items_val['AUC_ID']; ?>" target="_blank"><?php echo $_items_val['AUC_ID']; ?></a> - <?php echo ((isset($this->_rootref['L_25_0121'])) ? $this->_rootref['L_25_0121'] : ((isset($MSG['25_0121'])) ? $MSG['25_0121'] : '{ L_25_0121 }')); ?> <?php echo $_items_val['ENDS']; ?></small>
	</div>
	<div class="panel-body">
		<small><?php echo ((isset($this->_rootref['L_125'])) ? $this->_rootref['L_125'] : ((isset($MSG['125'])) ? $MSG['125'] : '{ L_125 }')); ?>:</small> <?php echo $_items_val['SELLNICK']; ?>&nbsp;&nbsp;<span class="label label-info"><?php echo $_items_val['FB_LINK']; ?></span><br>
		<small><?php echo ((isset($this->_rootref['L_460'])) ? $this->_rootref['L_460'] : ((isset($MSG['460'])) ? $MSG['460'] : '{ L_460 }')); ?>:</small> <a href="mailto:<?php echo $_items_val['SELLEMAIL']; ?>"><?php echo $_items_val['SELLEMAIL']; ?></a><br>
		<small><?php echo ((isset($this->_rootref['L_461'])) ? $this->_rootref['L_461'] : ((isset($MSG['461'])) ? $MSG['461'] : '{ L_461 }')); ?>:</small> <?php echo $_items_val['FBID']; ?><br>
		<small><?php echo ((isset($this->_rootref['L_284'])) ? $this->_rootref['L_284'] : ((isset($MSG['284'])) ? $MSG['284'] : '{ L_284 }')); ?>:</small> <?php echo $_items_val['QTY']; ?><br>
		<small><?php echo ((isset($this->_rootref['L_189'])) ? $this->_rootref['L_189'] : ((isset($MSG['189'])) ? $MSG['189'] : '{ L_189 }')); ?>:</small> <?php echo $_items_val['TOTAL']; ?><br>
<?php if ($_items_val['SHIPPED'] == 0) {  ?>
		<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/clock.png"> <span class="smallspan"><?php echo ((isset($this->_rootref['L_1107'])) ? $this->_rootref['L_1107'] : ((isset($MSG['1107'])) ? $MSG['1107'] : '{ L_1107 }')); ?></span>
	<?php } else if ($_items_val['SHIPPED'] == (1)) {  ?>
		<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/lorry_go.png" border="0"> <span class="smallspan"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>buying.php?shipped=<?php echo $_items_val['ID']; ?>"><?php echo ((isset($this->_rootref['L_1108'])) ? $this->_rootref['L_1108'] : ((isset($MSG['1108'])) ? $MSG['1108'] : '{ L_1108 }')); ?></a></span>
	<?php } else if ($_items_val['SHIPPED'] == (2)) {  ?>
		<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/box.png" border="0"> <span class="smallspan"><?php echo ((isset($this->_rootref['L_1109'])) ? $this->_rootref['L_1109'] : ((isset($MSG['1109'])) ? $MSG['1109'] : '{ L_1109 }')); ?></span>
	<?php } ?>
		<div class="text-right">
		<?php if ($_items_val['B_PAID']) {  ?>
			<span class="label label-success"><?php echo ((isset($this->_rootref['L_898'])) ? $this->_rootref['L_898'] : ((isset($MSG['898'])) ? $MSG['898'] : '{ L_898 }')); ?></span>
	<?php } else { ?>
			<form name="" method="post" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>pay.php?a=2" id="fees">
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				<input type="hidden" name="pfval" value="<?php echo $_items_val['ID']; ?>">
				<input type="submit" name="Pay" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" class="btn btn-primary btn-sm">
			</form>
	<?php } ?>
		</div>
	</div>
</div>
<?php }} ?>
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