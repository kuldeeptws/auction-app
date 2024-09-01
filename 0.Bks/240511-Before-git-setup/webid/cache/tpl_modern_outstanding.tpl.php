<?php $this->_tpl_include('user_menu_header.tpl'); ?>

<div class="well">
	<div class="alert alert-info" role="alert"><b><?php echo ((isset($this->_rootref['L_846'])) ? $this->_rootref['L_846'] : ((isset($MSG['846'])) ? $MSG['846'] : '{ L_846 }')); ?>:</b>
		<?php echo (isset($this->_rootref['USER_BALANCE'])) ? $this->_rootref['USER_BALANCE'] : ''; ?></div>
	<div class="row">
		<div class="col-lg-6">
			<form name="" method="post" action="pay.php?a=1" id="fees">
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?></span>
						<input type="text" name="pfval" value="<?php echo (isset($this->_rootref['PAY_BALANCE'])) ? $this->_rootref['PAY_BALANCE'] : ''; ?>" class="form-control">
						<span class="input-group-btn"><input type="submit" name="<?php echo ((isset($this->_rootref['L_1104'])) ? $this->_rootref['L_1104'] : ((isset($MSG['1104'])) ? $MSG['1104'] : '{ L_1104 }')); ?>" value="<?php echo ((isset($this->_rootref['L_1104'])) ? $this->_rootref['L_1104'] : ((isset($MSG['1104'])) ? $MSG['1104'] : '{ L_1104 }')); ?>" class="btn btn-primary"></span>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-6">
			<div class="form-group">
				<a class="btn btn-warning" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>invoices.php"><?php echo ((isset($this->_rootref['L_1057'])) ? $this->_rootref['L_1057'] : ((isset($MSG['1057'])) ? $MSG['1057'] : '{ L_1057 }')); ?></a>
			</div>
		</div>
	</div>
</div>
<?php $_to_pay_count = (isset($this->_tpldata['to_pay'])) ? sizeof($this->_tpldata['to_pay']) : 0;if ($_to_pay_count) {for ($_to_pay_i = 0; $_to_pay_i < $_to_pay_count; ++$_to_pay_i){$_to_pay_val = &$this->_tpldata['to_pay'][$_to_pay_i]; ?>
<div class="panel panel-default">
	<div class="panel-heading">
	<?php if ($_to_pay_val['B_NOTITLE']) {  ?>
		<?php echo ((isset($this->_rootref['L_113'])) ? $this->_rootref['L_113'] : ((isset($MSG['113'])) ? $MSG['113'] : '{ L_113 }')); ?> <?php echo $_to_pay_val['AUC_ID']; ?>
	<?php } else { ?>
		<a href="<?php echo $_to_pay_val['URL']; ?>" target="_blank"><?php echo $_to_pay_val['TITLE']; ?></a>
	<?php } ?>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-md-3 col-sm-3">
				<p><small><?php echo ((isset($this->_rootref['L_847'])) ? $this->_rootref['L_847'] : ((isset($MSG['847'])) ? $MSG['847'] : '{ L_847 }')); ?>:</small> <?php echo $_to_pay_val['BID']; ?></p>
				<p><small><?php echo ((isset($this->_rootref['L_350_1004'])) ? $this->_rootref['L_350_1004'] : ((isset($MSG['350_1004'])) ? $MSG['350_1004'] : '{ L_350_1004 }')); ?>:</small> <?php echo $_to_pay_val['QUANTITY']; ?></p>
			</div>
			<div class="col-md-9 col-sm-9">
				<div class="well well-sm">
					<small><?php echo ((isset($this->_rootref['L_319'])) ? $this->_rootref['L_319'] : ((isset($MSG['319'])) ? $MSG['319'] : '{ L_319 }')); ?>:</small> <?php echo $_to_pay_val['SHIPPING']; ?><br>
					<small><?php echo ((isset($this->_rootref['L_189'])) ? $this->_rootref['L_189'] : ((isset($MSG['189'])) ? $MSG['189'] : '{ L_189 }')); ?>:</small> <?php echo $_to_pay_val['TOTAL_SHIPPING_COST']; ?>
	<?php if ($_to_pay_val['PAY_SHIPPING'] && $_to_pay_val['ADDITIONAL_SHIPPING_QUANTITYS'] != 0 && $_to_pay_val['ADDITIONAL_SHIPPING_PLAIN'] != 0) {  ?>
					<span class="smallspan">(<?php echo $_to_pay_val['SHIPPING']; ?> X 1) + (<?php echo $_to_pay_val['ADDITIONAL_SHIPPING']; ?> X <?php echo $_to_pay_val['ADDITIONAL_SHIPPING_QUANTITYS']; ?>)</span>
	<?php } ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-6 col-sm-6 col-sm-offset-4 col-xs-7">
				<div class="alert alert-danger text-center" role="alert"><?php echo ((isset($this->_rootref['L_189'])) ? $this->_rootref['L_189'] : ((isset($MSG['189'])) ? $MSG['189'] : '{ L_189 }')); ?>: <?php echo $_to_pay_val['TOTAL']; ?></div>
			</div>
			<div class="col-md-2 col-sm-2 col-sx-5 text-right">
				<form name="" method="post" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>pay.php?a=2" id="fees" title="<?php echo ((isset($this->_rootref['L_1153'])) ? $this->_rootref['L_1153'] : ((isset($MSG['1153'])) ? $MSG['1153'] : '{ L_1153 }')); ?>" target="_blank">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="hidden" name="pfval" value="<?php echo $_to_pay_val['ID']; ?>">
					<input type="submit" name="Pay" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" class="btn btn-primary btn-xs">
				</form>
				<p>
					<form name="" method="post" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>order_print.php" id="fees" title="Print Invoice" target="_blank">
						<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
						<input type="hidden" name="pfval" value="<?php echo $_to_pay_val['AUC_ID']; ?>">
						<input type="hidden" name="pfwon" value="<?php echo $_to_pay_val['WINID']; ?>">
						<input type="submit" type="button" value="<?php echo ((isset($this->_rootref['L_1058'])) ? $this->_rootref['L_1058'] : ((isset($MSG['1058'])) ? $MSG['1058'] : '{ L_1058 }')); ?>" class="btn btn-default btn-xs">
					</form>
				</p>
			</div>
		</div>
	</div>
</div>
<?php }} ?>
<br />
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