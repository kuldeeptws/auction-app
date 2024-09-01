<div class="alert alert-info" role="alert"><?php echo (isset($this->_rootref['TOP_MESSAGE'])) ? $this->_rootref['TOP_MESSAGE'] : ''; ?></div>
<div class="well">
	<div class="row">
<?php $_gateways_count = (isset($this->_tpldata['gateways'])) ? sizeof($this->_tpldata['gateways']) : 0;if ($_gateways_count) {for ($_gateways_i = 0; $_gateways_i < $_gateways_count; ++$_gateways_i){$_gateways_val = &$this->_tpldata['gateways'][$_gateways_i]; if ($_gateways_val['NAME'] == ('paypal') && $_gateways_val['B_ACTIVE']) {  ?>
		<div class="col-md-3">
			<img src="images/paypal.gif">
		</div>
		<div class="col-md-7">
			<?php echo ((isset($this->_rootref['L_767'])) ? $this->_rootref['L_767'] : ((isset($MSG['767'])) ? $MSG['767'] : '{ L_767 }')); ?>
		</div>
		<div class="col-md-2 text-right">
			<form action="<?php if ($this->_rootref['SANDBOX']) {  ?>https://www.sandbox.paypal.com/cgi-bin/webscr<?php } else { ?>https://www.paypal.com/cgi-bin/webscr<?php } ?>" method="post" id="form_paypal">
				<input type="hidden" name="cmd" value="_xclick">
				<input type="hidden" name="business" value="<?php echo $_gateways_val['PAY_ADDRESS']; ?>">
				<input type="hidden" name="receiver_email" value="<?php echo $_gateways_val['PAY_ADDRESS']; ?>">
				<input type="hidden" name="amount" value="<?php echo (isset($this->_rootref['PAY_VAL'])) ? $this->_rootref['PAY_VAL'] : ''; ?>">
				<input type="hidden" name="currency_code" value="<?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?>">
				<input type="hidden" name="return" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?completed">
				<input type="hidden" name="cancel_return" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?fail">
				<input type="hidden" name="item_name" value="<?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?>">
				<input type="hidden" name="undefined_quantity" value="0">
				<input type="hidden" name="no_shipping" value="1">
				<input type="hidden" name="no_note" value="1">
				<input type="hidden" name="custom" value="<?php echo (isset($this->_rootref['CUSTOM_CODE'])) ? $this->_rootref['CUSTOM_CODE'] : ''; ?>">
				<input type="hidden" name="notify_url" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?paypal">
				<input class="btn btn-primary" name="submit" type="submit" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" border="0">
			</form>
		</div>
<?php } if ($_gateways_val['NAME'] == ('authnet') && $_gateways_val['B_ACTIVE']) {  ?>
		<div class="col-md-3">
			<img src="images/authnet.gif">
		</div>
		<div class="col-md-7">
			Authorize.Net
		</div>
		<div class="col-md-2 text-right">
			<form action="<?php if ($this->_rootref['SANDBOX']) {  ?>https://test.authorize.net/gateway/transact.dll<?php } else { ?>https://secure.authorize.net/gateway/transact.dll<?php } ?>" method="post" id="form_authnet">
				<input type="hidden" name="x_description" value="<?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?>">
				<input type="hidden" name="x_login" value="<?php echo $_gateways_val['PAY_ADDRESS']; ?>">
				<input type="hidden" name="x_amount" value="<?php echo (isset($this->_rootref['PAY_VAL'])) ? $this->_rootref['PAY_VAL'] : ''; ?>">
				<input type="hidden" name="x_show_form" value="PAYMENT_FORM">
				<input type="hidden" name="x_relay_response" value="TRUE">
				<input type="hidden" name="x_relay_url" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?authnet">
				<input type="hidden" name="x_fp_sequence" value="<?php echo $_gateways_val['AN_SEQUENCE']; ?>">
				<input type="hidden" name="x_fp_timestamp" value="<?php echo (isset($this->_rootref['TIMESTAMP'])) ? $this->_rootref['TIMESTAMP'] : ''; ?>">
				<input type="hidden" name="x_fp_hash" value="<?php echo $_gateways_val['AN_KEY']; ?>">
				<input type="hidden" name="custom" value="<?php echo (isset($this->_rootref['CUSTOM_CODE'])) ? $this->_rootref['CUSTOM_CODE'] : ''; ?>">
				<input class="btn btn-primary" name="submit" type="submit" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" border="0">
			</form>
		</div>
<?php } if ($_gateways_val['NAME'] == ('worldpay') && $_gateways_val['B_ACTIVE']) {  ?>
		<div class="col-md-3">
			<img src="images/worldpay.gif">
		</div>
		<div class="col-md-7">
			WorldPay
		</div>
		<div class="col-md-2 text-right">
			<form action="<?php if ($this->_rootref['SANDBOX']) {  ?>https://secure-test.worldpay.com/wcc/purchase<?php } else { ?>https://select.worldpay.com/wcc/purchase<?php } ?>" method="post" id="form_worldpay">
				<input type="hidden" name="instId" value="<?php echo $_gateways_val['PAY_ADDRESS']; ?>">
				<input type="hidden" name="amount" value="<?php echo (isset($this->_rootref['PAY_VAL'])) ? $this->_rootref['PAY_VAL'] : ''; ?>">
				<input type="hidden" name="currency" value="<?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?>">
				<input type="hidden" name="desc" value="<?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?>">
				<input type="hidden" name="MC_callback" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?worldpay">
				<input type="hidden" name="cartId" value="<?php echo (isset($this->_rootref['CUSTOM_CODE'])) ? $this->_rootref['CUSTOM_CODE'] : ''; ?>">
				<input class="btn btn-primary" name="submit" type="submit" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" border="0">
			</form>
		</div>
<?php } if ($_gateways_val['NAME'] == ('skrill') && $_gateways_val['B_ACTIVE']) {  ?>
		<div class="col-md-3">
			<img src="images/skrill.png">
		</div>
		<div class="col-md-7">
			Skrill
		</div>
		<div class="col-md-2 text-right">
			<form action="<?php if ($this->_rootref['SANDBOX']) {  ?>http://www.skrill.com/app/test_payment.pl<?php } else { ?>https://pay.skrill.com<?php } ?>" method="post" id="form_skrill">
				<input type="hidden" name="pay_to_email" value="<?php echo $_gateways_val['PAY_ADDRESS']; ?>">
				<input type="hidden" name="amount" value="<?php echo (isset($this->_rootref['PAY_VAL'])) ? $this->_rootref['PAY_VAL'] : ''; ?>">
				<input type="hidden" name="language" value="EN">
				<input type="hidden" name="merchant_fields" value="trans_id">
				<input type="hidden" name="currency" value="<?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?>">
				<input type="hidden" name="return_url" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?completed">
				<input type="hidden" name="cancel_url" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?fail">
				<input type="hidden" name="status_url" value="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>validate.php?skrill">
				<input type="hidden" name="trans_id" value="<?php echo (isset($this->_rootref['CUSTOM_CODE'])) ? $this->_rootref['CUSTOM_CODE'] : ''; ?>">
				<input class="btn btn-primary" name="submit" type="submit" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" border="0">
			</form>
		</div>
<?php } if ($_gateways_val['NAME'] == ('toocheckout') && $_gateways_val['B_ACTIVE']) {  ?>
		<div class="col-md-3">
			<img src="images/toocheckout.gif">
		</div>
		<div class="col-md-7">
			2Checkout
		</div>
		<div class="col-md-2 text-right">
			<form action="<?php if ($this->_rootref['SANDBOX']) {  ?>https://sandbox.2checkout.com/checkout/purchase<?php } else { ?>https://www2.2checkout.com/2co/buyer/purchase<?php } ?>" method="post" id="form_toocheckout">
				<input type="hidden" name="sid" value="<?php echo $_gateways_val['PAY_ADDRESS']; ?>">
				<input type="hidden" name="currency_code" value="<?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?>">
				<input type="hidden" name="total" value="<?php echo (isset($this->_rootref['PAY_VAL'])) ? $this->_rootref['PAY_VAL'] : ''; ?>">
				<input type="hidden" name="cart_order_id" value="<?php echo (isset($this->_rootref['CUSTOM_CODE'])) ? $this->_rootref['CUSTOM_CODE'] : ''; ?>">
				<input class="btn btn-primary" name="submit" type="submit" value="<?php echo ((isset($this->_rootref['L_756'])) ? $this->_rootref['L_756'] : ((isset($MSG['756'])) ? $MSG['756'] : '{ L_756 }')); ?>" border="0">
			</form>
		</div>
<?php } }} ?>
	</div>
</div>
<?php if ($this->_rootref['NO_ONLINE_GATEWAYS']) {  ?>
<div class="alert alert-danger text-center" role="alert">
		<?php echo ((isset($this->_rootref['L_778a'])) ? $this->_rootref['L_778a'] : ((isset($MSG['778a'])) ? $MSG['778a'] : '{ L_778a }')); ?>
</div>
<?php } if ($this->_rootref['B_TOUSER']) {  ?>
<div class="alert alert-danger text-center" role="alert">
	<?php echo (isset($this->_rootref['TOUSER_STRING'])) ? $this->_rootref['TOUSER_STRING'] : ''; ?>
</div>
<?php } ?>