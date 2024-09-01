<?php $this->_tpl_include('user_menu_header.tpl'); ?>
<div class="jumbotron">
	<h3><?php echo (isset($this->_rootref['NAME'])) ? $this->_rootref['NAME'] : ''; ?><i> <span class="text-muted"><small><?php echo (isset($this->_rootref['NICK'])) ? $this->_rootref['NICK'] : ''; ?></small></span></i></h3>
</div>
<form name="details" action="" method="post">
	<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
	<div class="well">
		<div class="alert alert-info" role="alert"><?php echo ((isset($this->_rootref['L_617'])) ? $this->_rootref['L_617'] : ((isset($MSG['617'])) ? $MSG['617'] : '{ L_617 }')); ?></div>
		<div class="row">
			<div class="form-group col-lg-6">
				<label for="TPL_password"><?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?></label>
				<input type="password" name="TPL_password" class="form-control" placeholder="<?php echo ((isset($this->_rootref['L_050'])) ? $this->_rootref['L_050'] : ((isset($MSG['050'])) ? $MSG['050'] : '{ L_050 }')); ?>">
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_repeat_password"><?php echo ((isset($this->_rootref['L_005'])) ? $this->_rootref['L_005'] : ((isset($MSG['005'])) ? $MSG['005'] : '{ L_005 }')); ?></label>
				<input type="password" name="TPL_repeat_password" class="form-control" />
			</div>
			<div class="form-group col-lg-12">
				<label for="TPL_email"><?php echo ((isset($this->_rootref['L_006'])) ? $this->_rootref['L_006'] : ((isset($MSG['006'])) ? $MSG['006'] : '{ L_006 }')); ?></label>
				<input type="email" name="TPL_email" class="form-control" value="<?php echo (isset($this->_rootref['EMAIL'])) ? $this->_rootref['EMAIL'] : ''; ?>">
			</div>
			<div class="form-group col-lg-12">
				<label for="TPL_year"><?php echo ((isset($this->_rootref['L_252'])) ? $this->_rootref['L_252'] : ((isset($MSG['252'])) ? $MSG['252'] : '{ L_252 }')); ?></label>
				<fieldset class="row">
					<div class="register-date col-md-8"><?php echo (isset($this->_rootref['DATEFORMAT'])) ? $this->_rootref['DATEFORMAT'] : ''; ?></div>
					<div class="register-date col-md-4"> <input type="text" name="TPL_year" class="form-control" value="<?php echo (isset($this->_rootref['YEAR'])) ? $this->_rootref['YEAR'] : ''; ?>"></div>
				</fieldset>
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_address"><?php echo ((isset($this->_rootref['L_009'])) ? $this->_rootref['L_009'] : ((isset($MSG['009'])) ? $MSG['009'] : '{ L_009 }')); ?></label>
				<input type="text" name="TPL_address" class="form-control" value="<?php echo (isset($this->_rootref['ADDRESS'])) ? $this->_rootref['ADDRESS'] : ''; ?>">
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_city"><?php echo ((isset($this->_rootref['L_010'])) ? $this->_rootref['L_010'] : ((isset($MSG['010'])) ? $MSG['010'] : '{ L_010 }')); ?></label>
				<input type="text" name="TPL_city" class="form-control" value="<?php echo (isset($this->_rootref['CITY'])) ? $this->_rootref['CITY'] : ''; ?>">
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_prov"><?php echo ((isset($this->_rootref['L_011'])) ? $this->_rootref['L_011'] : ((isset($MSG['011'])) ? $MSG['011'] : '{ L_011 }')); ?></label>
				<input type="text" name="TPL_prov" class="form-control" value="<?php echo (isset($this->_rootref['PROV'])) ? $this->_rootref['PROV'] : ''; ?>">
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_country"><?php echo ((isset($this->_rootref['L_014'])) ? $this->_rootref['L_014'] : ((isset($MSG['014'])) ? $MSG['014'] : '{ L_014 }')); ?></label>
				<select name="TPL_country" class="form-control">
					<?php echo (isset($this->_rootref['COUNTRYLIST'])) ? $this->_rootref['COUNTRYLIST'] : ''; ?>
				</select>
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_zip"><?php echo ((isset($this->_rootref['L_012'])) ? $this->_rootref['L_012'] : ((isset($MSG['012'])) ? $MSG['012'] : '{ L_012 }')); ?></label>
				<input type="text" name="TPL_zip" class="form-control" value="<?php echo (isset($this->_rootref['ZIP'])) ? $this->_rootref['ZIP'] : ''; ?>">
			</div>
			<div class="form-group col-lg-6">
				<label for="TPL_phone"><?php echo ((isset($this->_rootref['L_013'])) ? $this->_rootref['L_013'] : ((isset($MSG['013'])) ? $MSG['013'] : '{ L_013 }')); ?></label>
				<input type="text" name="TPL_phone" class="form-control" value="<?php echo (isset($this->_rootref['PHONE'])) ? $this->_rootref['PHONE'] : ''; ?>">
			</div>
			<div class="form-group col-lg-12">
				<label><?php echo ((isset($this->_rootref['L_346'])) ? $this->_rootref['L_346'] : ((isset($MSG['346'])) ? $MSG['346'] : '{ L_346 }')); ?></label>
				<div class="timezone">
					<?php echo (isset($this->_rootref['TIMEZONE'])) ? $this->_rootref['TIMEZONE'] : ''; ?>
				</div>
			</div>
		</div>
	</div>
	<div class="well">
		<div class="row">
			<div class="form-group col-lg-6">
				<label><?php echo ((isset($this->_rootref['L_352'])) ? $this->_rootref['L_352'] : ((isset($MSG['352'])) ? $MSG['352'] : '{ L_352 }')); ?></label>
				<div class="radio">
					<label>
						<input type="radio" name="TPL_emailtype" value="html" <?php echo (isset($this->_rootref['EMAILTYPE1'])) ? $this->_rootref['EMAILTYPE1'] : ''; ?> />
						<?php echo ((isset($this->_rootref['L_902'])) ? $this->_rootref['L_902'] : ((isset($MSG['902'])) ? $MSG['902'] : '{ L_902 }')); ?>
					</label>
					<label>
						<input type="radio" name="TPL_emailtype" value="text" <?php echo (isset($this->_rootref['EMAILTYPE2'])) ? $this->_rootref['EMAILTYPE2'] : ''; ?> />
						<?php echo ((isset($this->_rootref['L_915'])) ? $this->_rootref['L_915'] : ((isset($MSG['915'])) ? $MSG['915'] : '{ L_915 }')); ?>
					</label>
				</div>
			</div>
<?php if ($this->_rootref['B_NEWLETTER']) {  ?>
			<div class="form-group col-lg-6">
				<label><?php echo ((isset($this->_rootref['L_603'])) ? $this->_rootref['L_603'] : ((isset($MSG['603'])) ? $MSG['603'] : '{ L_603 }')); ?></label>
				<div class="radio">
					<label>
						<input type="radio" name="TPL_nletter" value="1" <?php echo (isset($this->_rootref['NLETTER1'])) ? $this->_rootref['NLETTER1'] : ''; ?> />
						<?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?>
					</label>
					<label>
						<input type="radio" name="TPL_nletter" value="2" <?php echo (isset($this->_rootref['NLETTER2'])) ? $this->_rootref['NLETTER2'] : ''; ?> />
						<?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?>
					</label>
				</div>
				<br>
				<div class="alert alert-info" role="alert"><?php echo ((isset($this->_rootref['L_609'])) ? $this->_rootref['L_609'] : ((isset($MSG['609'])) ? $MSG['609'] : '{ L_609 }')); ?></div>
			</div>
<?php } ?>
		</div>
	</div>
	<div class="well">
		<legend>
			<?php echo ((isset($this->_rootref['L_719'])) ? $this->_rootref['L_719'] : ((isset($MSG['719'])) ? $MSG['719'] : '{ L_719 }')); ?>
		</legend>
		<div class="row">
			<div class="col-lg-6 col-md-6">
		<?php $_gateways_count = (isset($this->_tpldata['gateways'])) ? sizeof($this->_tpldata['gateways']) : 0;if ($_gateways_count) {for ($_gateways_i = 0; $_gateways_i < $_gateways_count; ++$_gateways_i){$_gateways_val = &$this->_tpldata['gateways'][$_gateways_i]; ?>
			<div class="form-group col-lg-12">
				<label for="<?php echo $_gateways_val['PLAIN_NAME']; ?>[address]"><?php echo $_gateways_val['ADDRESS_NAME']; echo $_gateways_val['REQUIRED']; ?></label>
				<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[id]" value="<?php echo $_gateways_val['GATEWAY_ID']; ?>">
				<input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[address]" class="form-control" value="<?php echo $_gateways_val['ADDRESS']; ?>">
			<?php if ($_gateways_val['B_PASSWORD']) {  ?>
				<label for="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]"><?php echo $_gateways_val['PASSWORD_NAME']; echo $_gateways_val['REQUIRED']; ?></label>
				<input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" class="form-control" value="<?php echo $_gateways_val['PASSWORD']; ?>">
			<?php } else { ?>
				<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" value="">
			<?php } ?>
			</div>
		<?php }} ?>
			</div>
		</div>
	</div>
	<div class="text-center">
		<input type="submit" name="Input" value="<?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?>" class="btn btn-primary">
		<input type="reset" name="Input" class="btn btn-default">
	</div>
	<input type="hidden" name="action" value="update">
</form>

<?php $this->_tpl_include('user_menu_footer.tpl'); ?>