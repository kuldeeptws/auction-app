<div class="row">
	<div class="col-md-12">
	<?php if ($this->_rootref['B_FIRST']) {  if ($this->_rootref['ERROR'] != ('')) {  ?>
		<div class="alert alert-danger">
			<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
		</div>
		<?php } ?>
		<form name="registration" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>register.php" method="post">
			<div class="col-md-12 well">
				<legend><?php echo ((isset($this->_rootref['L_001'])) ? $this->_rootref['L_001'] : ((isset($MSG['001'])) ? $MSG['001'] : '{ L_001 }')); ?></legend>
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING0'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_name"><?php echo ((isset($this->_rootref['L_002'])) ? $this->_rootref['L_002'] : ((isset($MSG['002'])) ? $MSG['002'] : '{ L_002 }')); ?> *</label>
					<input type="text" class="form-control" name="TPL_name" <?php if ($this->_rootref['MISSING0'] == (1)) {  ?>id="inputError1"<?php } ?> value="<?php echo (isset($this->_rootref['V_YNAME'])) ? $this->_rootref['V_YNAME'] : ''; ?>" autofocus>
					<?php if ($this->_rootref['MISSING0'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_937'])) ? $this->_rootref['L_937'] : ((isset($MSG['937'])) ? $MSG['937'] : '{ L_937 }')); ?></div><?php } ?>
				</div>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING4'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_email"><?php echo ((isset($this->_rootref['L_006'])) ? $this->_rootref['L_006'] : ((isset($MSG['006'])) ? $MSG['006'] : '{ L_006 }')); ?> *</label>
					<input type="email" name="TPL_email" class="form-control" value="<?php echo (isset($this->_rootref['V_EMAIL'])) ? $this->_rootref['V_EMAIL'] : ''; ?>" <?php if ($this->_rootref['MISSING4'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING4'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_941'])) ? $this->_rootref['L_941'] : ((isset($MSG['941'])) ? $MSG['941'] : '{ L_941 }')); ?></div><?php } ?>
				</div>
				<?php if ($this->_rootref['TEL']) {  ?>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING11'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_phone"><?php echo ((isset($this->_rootref['L_013'])) ? $this->_rootref['L_013'] : ((isset($MSG['013'])) ? $MSG['013'] : '{ L_013 }')); echo (isset($this->_rootref['REQUIRED'][6])) ? $this->_rootref['REQUIRED'][6] : ''; ?></label>
					<input type="text" name="TPL_phone" class="form-control" value="<?php echo (isset($this->_rootref['V_PHONE'])) ? $this->_rootref['V_PHONE'] : ''; ?>" <?php if ($this->_rootref['MISSING11'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING11'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_947'])) ? $this->_rootref['L_947'] : ((isset($MSG['947'])) ? $MSG['947'] : '{ L_947 }')); ?></div><?php } ?>
				</div>
				<?php } ?>
				<div class="form-group col-lg-6">
					<label><?php echo ((isset($this->_rootref['L_346'])) ? $this->_rootref['L_346'] : ((isset($MSG['346'])) ? $MSG['346'] : '{ L_346 }')); ?></label>
					<div class="timezone">
						<?php echo (isset($this->_rootref['TIMEZONE'])) ? $this->_rootref['TIMEZONE'] : ''; ?>
					</div>
				</div>
				<div class="clearfix"></div>

				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING2'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_password"><?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?> *</label>
					<input type="password" name="TPL_password" class="form-control" <?php if ($this->_rootref['MISSING2'] == (1)) {  ?>id="inputError1"<?php } ?> placeholder="<?php echo ((isset($this->_rootref['L_050'])) ? $this->_rootref['L_050'] : ((isset($MSG['050'])) ? $MSG['050'] : '{ L_050 }')); ?>">
					<?php if ($this->_rootref['MISSING2'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_939'])) ? $this->_rootref['L_939'] : ((isset($MSG['939'])) ? $MSG['939'] : '{ L_939 }')); ?></div><?php } ?>
				</div>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING3'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_repeat_password"><?php echo ((isset($this->_rootref['L_005'])) ? $this->_rootref['L_005'] : ((isset($MSG['005'])) ? $MSG['005'] : '{ L_005 }')); ?> *</label>
					<input type="password" name="TPL_repeat_password" class="form-control" <?php if ($this->_rootref['MISSING3'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING3'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_940'])) ? $this->_rootref['L_940'] : ((isset($MSG['940'])) ? $MSG['940'] : '{ L_940 }')); ?></div><?php } ?>
				</div>
				<div class="col-lg-12"></div>
				
				<?php if ($this->_rootref['BIRTHDATE']) {  ?>
				<div class="form-group col-lg-12 <?php if ($this->_rootref['MISSING5'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_year"><?php echo ((isset($this->_rootref['L_252'])) ? $this->_rootref['L_252'] : ((isset($MSG['252'])) ? $MSG['252'] : '{ L_252 }')); echo (isset($this->_rootref['REQUIRED'][0])) ? $this->_rootref['REQUIRED'][0] : ''; ?></label>
					<fieldset class="row">
						<div class="register-date col-md-8"><?php echo ((isset($this->_rootref['L_DATEFORMAT'])) ? $this->_rootref['L_DATEFORMAT'] : ((isset($MSG['DATEFORMAT'])) ? $MSG['DATEFORMAT'] : '{ L_DATEFORMAT }')); ?></div> <div class="register-date col-md-4"><input type="text" name="TPL_year" class="form-control" value="<?php echo (isset($this->_rootref['V_YEAR'])) ? $this->_rootref['V_YEAR'] : ''; ?>" <?php if ($this->_rootref['MISSING5'] == (1)) {  ?>id="inputError1"<?php } ?>></div>
					</fieldset>
					<?php if ($this->_rootref['MISSING5'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_948'])) ? $this->_rootref['L_948'] : ((isset($MSG['948'])) ? $MSG['948'] : '{ L_948 }')); ?></div><?php } ?>
				</div>
				<?php } ?>
				<div class="col-lg-12"></div>
				<?php if ($this->_rootref['ADDRESS']) {  ?>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING6'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_address"><?php echo ((isset($this->_rootref['L_009'])) ? $this->_rootref['L_009'] : ((isset($MSG['009'])) ? $MSG['009'] : '{ L_009 }')); echo (isset($this->_rootref['REQUIRED'][1])) ? $this->_rootref['REQUIRED'][1] : ''; ?></label>
					<input type="text" name="TPL_address" class="form-control" value="<?php echo (isset($this->_rootref['V_ADDRE'])) ? $this->_rootref['V_ADDRE'] : ''; ?>" <?php if ($this->_rootref['MISSING6'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING6'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_942'])) ? $this->_rootref['L_942'] : ((isset($MSG['942'])) ? $MSG['942'] : '{ L_942 }')); ?></div><?php } ?>
				</div>
				<?php } if ($this->_rootref['CITY']) {  ?>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING7'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_city"><?php echo ((isset($this->_rootref['L_010'])) ? $this->_rootref['L_010'] : ((isset($MSG['010'])) ? $MSG['010'] : '{ L_010 }')); echo (isset($this->_rootref['REQUIRED'][2])) ? $this->_rootref['REQUIRED'][2] : ''; ?></label>
					<input type="text" name="TPL_city" class="form-control" value="<?php echo (isset($this->_rootref['V_CITY'])) ? $this->_rootref['V_CITY'] : ''; ?>" <?php if ($this->_rootref['MISSING7'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING7'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_943'])) ? $this->_rootref['L_943'] : ((isset($MSG['943'])) ? $MSG['943'] : '{ L_943 }')); ?></div><?php } ?>
				</div>
				<?php } ?>
				<div class="col-lg-12"></div>

				<?php if ($this->_rootref['PROV']) {  ?>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING8'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_prov"><?php echo ((isset($this->_rootref['L_011'])) ? $this->_rootref['L_011'] : ((isset($MSG['011'])) ? $MSG['011'] : '{ L_011 }')); echo (isset($this->_rootref['REQUIRED'][3])) ? $this->_rootref['REQUIRED'][3] : ''; ?></label>
					<input type="text" name="TPL_prov" class="form-control" value="<?php echo (isset($this->_rootref['V_PROV'])) ? $this->_rootref['V_PROV'] : ''; ?>" <?php if ($this->_rootref['MISSING8'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING8'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_944'])) ? $this->_rootref['L_944'] : ((isset($MSG['944'])) ? $MSG['944'] : '{ L_944 }')); ?></div><?php } ?>
				</div>
				<?php } if ($this->_rootref['COUNTRY']) {  ?>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING9'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_country"><?php echo ((isset($this->_rootref['L_014'])) ? $this->_rootref['L_014'] : ((isset($MSG['014'])) ? $MSG['014'] : '{ L_014 }')); echo (isset($this->_rootref['REQUIRED'][4])) ? $this->_rootref['REQUIRED'][4] : ''; ?></label>
					<select name="TPL_country" class="form-control" <?php if ($this->_rootref['MISSING9'] == (1)) {  ?>id="inputError1"<?php } ?>>
						<option value=""><?php echo ((isset($this->_rootref['L_251'])) ? $this->_rootref['L_251'] : ((isset($MSG['251'])) ? $MSG['251'] : '{ L_251 }')); ?></option>
						<?php echo ((isset($this->_rootref['L_COUNTRIES'])) ? $this->_rootref['L_COUNTRIES'] : ((isset($MSG['COUNTRIES'])) ? $MSG['COUNTRIES'] : '{ L_COUNTRIES }')); ?>
					</select>
					<?php if ($this->_rootref['MISSING9'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_945'])) ? $this->_rootref['L_945'] : ((isset($MSG['945'])) ? $MSG['945'] : '{ L_945 }')); ?></div><?php } ?>
				</div>
				<?php } ?>
				<div class="col-lg-12"></div>
				<?php if ($this->_rootref['ZIP']) {  ?>
				<div class="form-group col-lg-6 <?php if ($this->_rootref['MISSING10'] == (1)) {  ?>has-error<?php } ?>">
					<label for="TPL_zip"><?php echo ((isset($this->_rootref['L_012'])) ? $this->_rootref['L_012'] : ((isset($MSG['012'])) ? $MSG['012'] : '{ L_012 }')); echo (isset($this->_rootref['REQUIRED'][5])) ? $this->_rootref['REQUIRED'][5] : ''; ?></label>
					<input type="text" name="TPL_zip" class="form-control" value="<?php echo (isset($this->_rootref['V_POSTCODE'])) ? $this->_rootref['V_POSTCODE'] : ''; ?>" <?php if ($this->_rootref['MISSING10'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($this->_rootref['MISSING10'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_946'])) ? $this->_rootref['L_946'] : ((isset($MSG['946'])) ? $MSG['946'] : '{ L_946 }')); ?></div><?php } ?>
				</div>
				<?php } ?>
				<div class="col-lg-12"></div>
				
				<?php if ($this->_rootref['B_NLETTER']) {  ?>
				<div class="form-group col-lg-12">
					<div class="alert alert-info" role="alert">
						<label><?php echo ((isset($this->_rootref['L_608'])) ? $this->_rootref['L_608'] : ((isset($MSG['608'])) ? $MSG['608'] : '{ L_608 }')); ?></label>
						<label class="checkbox-inline"><input type="radio" name="TPL_nletter" value="1" <?php echo (isset($this->_rootref['V_YNEWSL'])) ? $this->_rootref['V_YNEWSL'] : ''; ?>><?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?></label>
						<label class="checkbox-inline"><input type="radio" name="TPL_nletter" value="2" <?php echo (isset($this->_rootref['V_NNEWSL'])) ? $this->_rootref['V_NNEWSL'] : ''; ?>><?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?></label>
					</div>
				</div>
				<?php } ?>

				<legend><?php echo ((isset($this->_rootref['L_719'])) ? $this->_rootref['L_719'] : ((isset($MSG['719'])) ? $MSG['719'] : '{ L_719 }')); ?></legend>

				<?php $_gateways_count = (isset($this->_tpldata['gateways'])) ? sizeof($this->_tpldata['gateways']) : 0;if ($_gateways_count) {for ($_gateways_i = 0; $_gateways_i < $_gateways_count; ++$_gateways_i){$_gateways_val = &$this->_tpldata['gateways'][$_gateways_i]; ?>
				<div class="form-group col-lg-12">
					<label for="TPL_pp_email"><?php echo $_gateways_val['ADDRESS_NAME']; echo $_gateways_val['REQUIRED']; ?></label>
					<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[id]" value="<?php echo $_gateways_val['GATEWAY_ID']; ?>">
					<input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[address]" class="form-control" value="<?php echo $_gateways_val['ADDRESS']; ?>" <?php if ($_gateways_val['MISSING'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php if ($_gateways_val['MISSING'] == (1)) {  ?><div class="error-box missing"><?php echo $_gateways_val['ERROR_STRING']; ?></div><?php } if ($_gateways_val['B_PASSWORD']) {  ?>
					<label for="TPL_authnet_pass"><?php echo $_gateways_val['PASSWORD_NAME']; echo $_gateways_val['REQUIRED']; ?></label>
					<input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" class="form-control" value="<?php echo $_gateways_val['PASS']; ?>" <?php if ($_gateways_val['MISSING'] == (1)) {  ?>id="inputError1"<?php } ?>>
					<?php } else { ?>
					<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" value="">
					<?php } ?>
				</div>
				<?php }} ?>
				<div class="form-group col-lg-12">
					<div class="capchabox"><?php echo (isset($this->_rootref['CAPCHA'])) ? $this->_rootref['CAPCHA'] : ''; ?></div>
				</div>
				<div class="form-group col-lg-12">
					<div class="text-center">
						<div class="checkbox">
							<label><input type="checkbox" name="terms_check" id="terms_check"> <?php echo ((isset($this->_rootref['L_858'])) ? $this->_rootref['L_858'] : ((isset($MSG['858'])) ? $MSG['858'] : '{ L_858 }')); ?></label>
						</div>
					</div>
					<br><br>
					<div class="text-center">
						<input type="hidden" name="action" value="first">
						<input type="submit" name="" value="<?php echo ((isset($this->_rootref['L_235'])) ? $this->_rootref['L_235'] : ((isset($MSG['235'])) ? $MSG['235'] : '{ L_235 }')); ?>" class="btn btn-primary">
						<input type="reset" name="" value="<?php echo ((isset($this->_rootref['L_035'])) ? $this->_rootref['L_035'] : ((isset($MSG['035'])) ? $MSG['035'] : '{ L_035 }')); ?>" class="btn btn-default">
					</div>
				</div>
			</div>
		</form>
		<?php } else { ?>
		<div class="well">
			<h2><?php echo ((isset($this->_rootref['L_HEADER'])) ? $this->_rootref['L_HEADER'] : ((isset($MSG['HEADER'])) ? $MSG['HEADER'] : '{ L_HEADER }')); ?></h2>
			<p><?php echo ((isset($this->_rootref['L_MESSAGE'])) ? $this->_rootref['L_MESSAGE'] : ((isset($MSG['MESSAGE'])) ? $MSG['MESSAGE'] : '{ L_MESSAGE }')); ?></p>
			<p><?php echo ((isset($this->_rootref['L_860'])) ? $this->_rootref['L_860'] : ((isset($MSG['860'])) ? $MSG['860'] : '{ L_860 }')); ?></p>
		</div>
		<?php } ?>
	</div>
</div>