<div class="content">
	<div class="tableContent2">
		<div class="titTable2">
			<?php echo ((isset($this->_rootref['L_001'])) ? $this->_rootref['L_001'] : ((isset($MSG['001'])) ? $MSG['001'] : '{ L_001 }')); ?>
		</div>
<?php if ($this->_rootref['B_FIRST']) {  if ($this->_rootref['ERROR'] != ('')) {  ?>
		<div class="error-box">
			<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
		</div>
	<?php } ?>
		<div class="table2">
			<form name="registration" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>register.php" method="post">
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				<table width="90%" border="0" cellpadding="4" cellspacing="0">
					<tr>
						<td width="40%" valign="top" align="right"></td>
						<td width="60%" ><h2><?php echo ((isset($this->_rootref['L_163'])) ? $this->_rootref['L_163'] : ((isset($MSG['163'])) ? $MSG['163'] : '{ L_163 }')); ?></h2></td>
					</tr>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_002'])) ? $this->_rootref['L_002'] : ((isset($MSG['002'])) ? $MSG['002'] : '{ L_002 }')); ?></b> *</td>
						<td width="60%">
							<input type="text" name="TPL_name" <?php if ($this->_rootref['MISSING0'] == (1)) {  ?>class="missing"<?php } ?> size=40 maxlength=255 value="<?php echo (isset($this->_rootref['V_YNAME'])) ? $this->_rootref['V_YNAME'] : ''; ?>" autofocus>
							<?php if ($this->_rootref['MISSING0'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_937'])) ? $this->_rootref['L_937'] : ((isset($MSG['937'])) ? $MSG['937'] : '{ L_937 }')); ?></div><?php } ?>
						</td>
					</tr>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_username'])) ? $this->_rootref['L_username'] : ((isset($MSG['username'])) ? $MSG['username'] : '{ L_username }')); ?></b> *</td>
						<td width="60%">
							<input type="text" name="TPL_nick" size=20 maxlength=20  value="<?php echo (isset($this->_rootref['V_UNAME'])) ? $this->_rootref['V_UNAME'] : ''; ?>" <?php if ($this->_rootref['MISSING1'] == (1)) {  ?>class="missing"<?php } ?>> <?php echo ((isset($this->_rootref['L_050'])) ? $this->_rootref['L_050'] : ((isset($MSG['050'])) ? $MSG['050'] : '{ L_050 }')); ?>
							<?php if ($this->_rootref['MISSING1'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_938'])) ? $this->_rootref['L_938'] : ((isset($MSG['938'])) ? $MSG['938'] : '{ L_938 }')); ?></div><?php } ?>
						</td>
					</tr>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?></b> *</td>
						<td width="60%">
							<input type="password" name="TPL_password" size="20" <?php if ($this->_rootref['MISSING2'] == (1)) {  ?>class="missing"<?php } ?>> <?php echo ((isset($this->_rootref['L_050'])) ? $this->_rootref['L_050'] : ((isset($MSG['050'])) ? $MSG['050'] : '{ L_050 }')); ?>
							<?php if ($this->_rootref['MISSING2'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_939'])) ? $this->_rootref['L_939'] : ((isset($MSG['939'])) ? $MSG['939'] : '{ L_939 }')); ?></div><?php } ?>
						</td>
					</tr>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_005'])) ? $this->_rootref['L_005'] : ((isset($MSG['005'])) ? $MSG['005'] : '{ L_005 }')); ?></b> *</td>
						<td width="60%">
							<input type="password" name="TPL_repeat_password" size="20" <?php if ($this->_rootref['MISSING3'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING3'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_940'])) ? $this->_rootref['L_940'] : ((isset($MSG['940'])) ? $MSG['940'] : '{ L_940 }')); ?></div><?php } ?>
						</td>
					</tr>
					<tr>
						<td width="40%"  valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_006'])) ? $this->_rootref['L_006'] : ((isset($MSG['006'])) ? $MSG['006'] : '{ L_006 }')); ?></b> *</td>
						<td width="60%">
							<input type="email" name="TPL_email" size="20" maxlength="50" value="<?php echo (isset($this->_rootref['V_EMAIL'])) ? $this->_rootref['V_EMAIL'] : ''; ?>" <?php if ($this->_rootref['MISSING4'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING4'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_941'])) ? $this->_rootref['L_941'] : ((isset($MSG['941'])) ? $MSG['941'] : '{ L_941 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php if ($this->_rootref['BIRTHDATE']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_252'])) ? $this->_rootref['L_252'] : ((isset($MSG['252'])) ? $MSG['252'] : '{ L_252 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][0])) ? $this->_rootref['REQUIRED'][0] : ''; ?></td>
						<td width="60%">
							<?php echo ((isset($this->_rootref['L_DATEFORMAT'])) ? $this->_rootref['L_DATEFORMAT'] : ((isset($MSG['DATEFORMAT'])) ? $MSG['DATEFORMAT'] : '{ L_DATEFORMAT }')); ?> <input type="text" name="TPL_year" size="4" maxlength="4" value="<?php echo (isset($this->_rootref['V_YEAR'])) ? $this->_rootref['V_YEAR'] : ''; ?>" <?php if ($this->_rootref['MISSING5'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING5'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_948'])) ? $this->_rootref['L_948'] : ((isset($MSG['948'])) ? $MSG['948'] : '{ L_948 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } if ($this->_rootref['ADDRESS'] || $this->_rootref['CITY'] || $this->_rootref['PROV'] || $this->_rootref['COUNTRY']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"></td>
						<td width="60%" ><h2><?php echo ((isset($this->_rootref['L_009'])) ? $this->_rootref['L_009'] : ((isset($MSG['009'])) ? $MSG['009'] : '{ L_009 }')); ?></h2></td>
					</tr>
		<?php } if ($this->_rootref['ADDRESS']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_009'])) ? $this->_rootref['L_009'] : ((isset($MSG['009'])) ? $MSG['009'] : '{ L_009 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][1])) ? $this->_rootref['REQUIRED'][1] : ''; ?></td>
						<td width="60%">
							<input type="text" name="TPL_address" size="40" maxlength="255" value="<?php echo (isset($this->_rootref['V_ADDRE'])) ? $this->_rootref['V_ADDRE'] : ''; ?>" <?php if ($this->_rootref['MISSING6'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING6'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_942'])) ? $this->_rootref['L_942'] : ((isset($MSG['942'])) ? $MSG['942'] : '{ L_942 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } if ($this->_rootref['CITY']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_010'])) ? $this->_rootref['L_010'] : ((isset($MSG['010'])) ? $MSG['010'] : '{ L_010 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][2])) ? $this->_rootref['REQUIRED'][2] : ''; ?></td>
						<td width="60%">
							<input type="text" name="TPL_city" size="25" maxlength="25" value="<?php echo (isset($this->_rootref['V_CITY'])) ? $this->_rootref['V_CITY'] : ''; ?>" <?php if ($this->_rootref['MISSING7'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING7'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_943'])) ? $this->_rootref['L_943'] : ((isset($MSG['943'])) ? $MSG['943'] : '{ L_943 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } if ($this->_rootref['PROV']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_011'])) ? $this->_rootref['L_011'] : ((isset($MSG['011'])) ? $MSG['011'] : '{ L_011 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][3])) ? $this->_rootref['REQUIRED'][3] : ''; ?></td>
						<td width="60%">
							<input type="text" name="TPL_prov" size="20" maxlength="20" value="<?php echo (isset($this->_rootref['V_PROV'])) ? $this->_rootref['V_PROV'] : ''; ?>" <?php if ($this->_rootref['MISSING8'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING8'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_944'])) ? $this->_rootref['L_944'] : ((isset($MSG['944'])) ? $MSG['944'] : '{ L_944 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } if ($this->_rootref['COUNTRY']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_014'])) ? $this->_rootref['L_014'] : ((isset($MSG['014'])) ? $MSG['014'] : '{ L_014 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][4])) ? $this->_rootref['REQUIRED'][4] : ''; ?></td>
						<td width="60%">
							<select name="TPL_country" <?php if ($this->_rootref['MISSING9'] == (1)) {  ?>class="missing"<?php } ?>>
								<option value=""><?php echo ((isset($this->_rootref['L_251'])) ? $this->_rootref['L_251'] : ((isset($MSG['251'])) ? $MSG['251'] : '{ L_251 }')); ?></option>
								<?php echo ((isset($this->_rootref['L_COUNTRIES'])) ? $this->_rootref['L_COUNTRIES'] : ((isset($MSG['COUNTRIES'])) ? $MSG['COUNTRIES'] : '{ L_COUNTRIES }')); ?>
							</select>
							<?php if ($this->_rootref['MISSING9'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_945'])) ? $this->_rootref['L_945'] : ((isset($MSG['945'])) ? $MSG['945'] : '{ L_945 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } if ($this->_rootref['ZIP']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_012'])) ? $this->_rootref['L_012'] : ((isset($MSG['012'])) ? $MSG['012'] : '{ L_012 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][5])) ? $this->_rootref['REQUIRED'][5] : ''; ?></td>
						<td width="60%">
							<input type="text" name="TPL_zip" size="8" value="<?php echo (isset($this->_rootref['V_POSTCODE'])) ? $this->_rootref['V_POSTCODE'] : ''; ?>" <?php if ($this->_rootref['MISSING10'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING10'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_946'])) ? $this->_rootref['L_946'] : ((isset($MSG['946'])) ? $MSG['946'] : '{ L_946 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } if ($this->_rootref['TEL']) {  ?>
					<tr>
						<td width="40%" valign="top" align="right"><b><?php echo ((isset($this->_rootref['L_013'])) ? $this->_rootref['L_013'] : ((isset($MSG['013'])) ? $MSG['013'] : '{ L_013 }')); ?></b><?php echo (isset($this->_rootref['REQUIRED'][6])) ? $this->_rootref['REQUIRED'][6] : ''; ?></td>
						<td width="60%">
							<input type="text" name="TPL_phone" size=40 maxlength=40 value="<?php echo (isset($this->_rootref['V_PHONE'])) ? $this->_rootref['V_PHONE'] : ''; ?>" <?php if ($this->_rootref['MISSING11'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($this->_rootref['MISSING11'] == (1)) {  ?><div class="error-box missing"><?php echo ((isset($this->_rootref['L_947'])) ? $this->_rootref['L_947'] : ((isset($MSG['947'])) ? $MSG['947'] : '{ L_947 }')); ?></div><?php } ?>
						</td>
					</tr>
		<?php } ?>
					<tr>
						<td width="40%" valign="top" align="right"></td>
						<td width="60%" ><h2><?php echo ((isset($this->_rootref['L_5233'])) ? $this->_rootref['L_5233'] : ((isset($MSG['5233'])) ? $MSG['5233'] : '{ L_5233 }')); ?></h2></td>
					</tr>
					<tr>
						<td valign="top" align="right"><?php echo ((isset($this->_rootref['L_346'])) ? $this->_rootref['L_346'] : ((isset($MSG['346'])) ? $MSG['346'] : '{ L_346 }')); ?></td>
						<td>
							<?php echo (isset($this->_rootref['TIMEZONE'])) ? $this->_rootref['TIMEZONE'] : ''; ?>
						</td>
					</tr>
		<?php if ($this->_rootref['B_NLETTER']) {  ?>
					<tr>
						<td width="40%" align="right"><b><?php echo ((isset($this->_rootref['L_608'])) ? $this->_rootref['L_608'] : ((isset($MSG['608'])) ? $MSG['608'] : '{ L_608 }')); ?></b></td>
						<td width="60%">
							<input type="radio" name="TPL_nletter" value="1" <?php echo (isset($this->_rootref['V_YNEWSL'])) ? $this->_rootref['V_YNEWSL'] : ''; ?>>
							<?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?>
							<input type="radio" name="TPL_nletter" value="2" <?php echo (isset($this->_rootref['V_NNEWSL'])) ? $this->_rootref['V_NNEWSL'] : ''; ?>>
							<?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?>
						</td>
					</tr>
		<?php } ?>
					<tr>
						<td width="40%" valign="top" align="right"></td>
						<td width="60%" ><h2><?php echo ((isset($this->_rootref['L_719'])) ? $this->_rootref['L_719'] : ((isset($MSG['719'])) ? $MSG['719'] : '{ L_719 }')); ?></h2></td>
					</tr>
				<?php $_gateways_count = (isset($this->_tpldata['gateways'])) ? sizeof($this->_tpldata['gateways']) : 0;if ($_gateways_count) {for ($_gateways_i = 0; $_gateways_i < $_gateways_count; ++$_gateways_i){$_gateways_val = &$this->_tpldata['gateways'][$_gateways_i]; ?>
					<tr>
						<td align="right" width="30%"><?php echo $_gateways_val['ADDRESS_NAME']; echo $_gateways_val['REQUIRED']; ?></td>
						<td>
							<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[id]" value="<?php echo $_gateways_val['GATEWAY_ID']; ?>">
							<input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[address]" size=40 value="<?php echo $_gateways_val['ADDRESS']; ?>" <?php if ($_gateways_val['MISSING'] == (1)) {  ?>class="missing"<?php } ?>>
							<?php if ($_gateways_val['MISSING'] == (1)) {  ?><div class="error-box missing"><?php echo $_gateways_val['ERROR_STRING']; ?></div><?php } ?>
						</td>
					</tr>
					<?php if ($_gateways_val['B_PASSWORD']) {  ?>
						<tr>
							<td align="right" width="30%"><?php echo $_gateways_val['PASSWORD_NAME']; echo $_gateways_val['REQUIRED']; ?></td>
							<td>
								<input type="text" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" size=40 value="<?php echo $_gateways_val['PASS']; ?>" <?php if ($_gateways_val['MISSING'] == (1)) {  ?>class="missing"<?php } ?>>
							</td>
						</tr>
					<?php } else { ?>
						<input type="hidden" name="<?php echo $_gateways_val['PLAIN_NAME']; ?>[password]" value="">
					<?php } }} ?>
						<tr>
						<td colspan="2">
							<?php echo (isset($this->_rootref['CAPCHA'])) ? $this->_rootref['CAPCHA'] : ''; ?>
						</td>
					</tr>
				</table>
				<?php if ($this->_rootref['B_FEES']) {  ?>
				<div style="text-align:center">
					<p><?php echo ((isset($this->_rootref['L_430'])) ? $this->_rootref['L_430'] : ((isset($MSG['430'])) ? $MSG['430'] : '{ L_430 }')); ?>: <?php echo (isset($this->_rootref['FEES'])) ? $this->_rootref['FEES'] : ''; ?></p>
				</div>
				<?php } ?>
				<div style="text-align:center">
					<p><input type="checkbox" name="terms_check" id="terms_check"> <?php echo ((isset($this->_rootref['L_858'])) ? $this->_rootref['L_858'] : ((isset($MSG['858'])) ? $MSG['858'] : '{ L_858 }')); ?></p>
					<input type="hidden" name="action" value="first">
					<input type="submit" name="" value="<?php echo ((isset($this->_rootref['L_235'])) ? $this->_rootref['L_235'] : ((isset($MSG['235'])) ? $MSG['235'] : '{ L_235 }')); ?>" class="button">
					<input type="reset" name="" value="<?php echo ((isset($this->_rootref['L_035'])) ? $this->_rootref['L_035'] : ((isset($MSG['035'])) ? $MSG['035'] : '{ L_035 }')); ?>" class="button">
				</div>
			</form>
		</div>
<?php } else { ?>
		<div class="padding">
			<h2><?php echo ((isset($this->_rootref['L_HEADER'])) ? $this->_rootref['L_HEADER'] : ((isset($MSG['HEADER'])) ? $MSG['HEADER'] : '{ L_HEADER }')); ?></h2>
			<p><?php echo ((isset($this->_rootref['L_MESSAGE'])) ? $this->_rootref['L_MESSAGE'] : ((isset($MSG['MESSAGE'])) ? $MSG['MESSAGE'] : '{ L_MESSAGE }')); ?></p>
			<p><?php echo ((isset($this->_rootref['L_860'])) ? $this->_rootref['L_860'] : ((isset($MSG['860'])) ? $MSG['860'] : '{ L_860 }')); ?></p>
		</div>
<?php } ?>
	</div>
</div>