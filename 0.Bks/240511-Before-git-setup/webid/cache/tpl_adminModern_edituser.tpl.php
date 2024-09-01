<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_045'])) ? $this->_rootref['L_045'] : ((isset($MSG['045'])) ? $MSG['045'] : '{ L_045 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_511'])) ? $this->_rootref['L_511'] : ((isset($MSG['511'])) ? $MSG['511'] : '{ L_511 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<table class="table table-striped table-bordered">
					<tr>
						<td width="204"><?php echo ((isset($this->_rootref['L_302'])) ? $this->_rootref['L_302'] : ((isset($MSG['302'])) ? $MSG['302'] : '{ L_302 }')); ?> *</td>
						<td><input type="text" name="name" size="40" maxlength="255" value="<?php echo (isset($this->_rootref['REALNAME'])) ? $this->_rootref['REALNAME'] : ''; ?>"></td>
						<td><b><?php echo ((isset($this->_rootref['L_448'])) ? $this->_rootref['L_448'] : ((isset($MSG['448'])) ? $MSG['448'] : '{ L_448 }')); ?></b></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_username'])) ? $this->_rootref['L_username'] : ((isset($MSG['username'])) ? $MSG['username'] : '{ L_username }')); ?></td>
						<td><?php echo (isset($this->_rootref['USERNAME'])) ? $this->_rootref['USERNAME'] : ''; ?></td>
						<td rowspan="15" width="33%" valign="top">
						<?php $_usergroups_count = (isset($this->_tpldata['usergroups'])) ? sizeof($this->_tpldata['usergroups']) : 0;if ($_usergroups_count) {for ($_usergroups_i = 0; $_usergroups_i < $_usergroups_count; ++$_usergroups_i){$_usergroups_val = &$this->_tpldata['usergroups'][$_usergroups_i]; ?>
							<p><input type="checkbox" name="group[]" value="<?php echo $_usergroups_val['ID']; ?>"<?php if ($_usergroups_val['B_SELECTED']) {  ?> checked="true"<?php } ?>> <?php echo $_usergroups_val['NAME']; ?></p>
						<?php }} ?>
						</td>
					</tr>
					<tr class="bg">
						<td>&nbsp;</td>
						<td><small><?php echo ((isset($this->_rootref['L_243'])) ? $this->_rootref['L_243'] : ((isset($MSG['243'])) ? $MSG['243'] : '{ L_243 }')); ?></small></td>
					</tr>
					<tr class="bg">
						<td><?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?> *</td>
						<td><input type="password" name="password" size="20" maxlength="20"></td>
					</tr>
					<tr class="bg">
						<td><?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?> *</td>
						<td><input type="password" name="repeat_password" size="20" maxlength="20"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_303'])) ? $this->_rootref['L_303'] : ((isset($MSG['303'])) ? $MSG['303'] : '{ L_303 }')); ?> *</td>
						<td><input type="text" name="email" size="50" maxlength="50" value="<?php echo (isset($this->_rootref['EMAIL'])) ? $this->_rootref['EMAIL'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_252'])) ? $this->_rootref['L_252'] : ((isset($MSG['252'])) ? $MSG['252'] : '{ L_252 }')); echo (isset($this->_rootref['REQUIRED'][0])) ? $this->_rootref['REQUIRED'][0] : ''; ?></td>
						<td><input type="text" name="birthdate" size="10" maxlength="10" value="<?php echo (isset($this->_rootref['DOB'])) ? $this->_rootref['DOB'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_009'])) ? $this->_rootref['L_009'] : ((isset($MSG['009'])) ? $MSG['009'] : '{ L_009 }')); echo (isset($this->_rootref['REQUIRED'][1])) ? $this->_rootref['REQUIRED'][1] : ''; ?></td>
						<td><input type="text" name="address" size="40" maxlength="255" value="<?php echo (isset($this->_rootref['ADDRESS'])) ? $this->_rootref['ADDRESS'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_010'])) ? $this->_rootref['L_010'] : ((isset($MSG['010'])) ? $MSG['010'] : '{ L_010 }')); echo (isset($this->_rootref['REQUIRED'][2])) ? $this->_rootref['REQUIRED'][2] : ''; ?></td>
						<td><input type="text" name="city" size="40" maxlength="255" value="<?php echo (isset($this->_rootref['CITY'])) ? $this->_rootref['CITY'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_011'])) ? $this->_rootref['L_011'] : ((isset($MSG['011'])) ? $MSG['011'] : '{ L_011 }')); echo (isset($this->_rootref['REQUIRED'][3])) ? $this->_rootref['REQUIRED'][3] : ''; ?></td>
						<td><input type="text" name="prov" size="40" maxlength="255" value="<?php echo (isset($this->_rootref['PROV'])) ? $this->_rootref['PROV'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_012'])) ? $this->_rootref['L_012'] : ((isset($MSG['012'])) ? $MSG['012'] : '{ L_012 }')); echo (isset($this->_rootref['REQUIRED'][5])) ? $this->_rootref['REQUIRED'][5] : ''; ?></td>
						<td><input type="text" name="zip" size="15" maxlength="15" value="<?php echo (isset($this->_rootref['ZIP'])) ? $this->_rootref['ZIP'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_014'])) ? $this->_rootref['L_014'] : ((isset($MSG['014'])) ? $MSG['014'] : '{ L_014 }')); echo (isset($this->_rootref['REQUIRED'][4])) ? $this->_rootref['REQUIRED'][4] : ''; ?></td>
						<td>
							<select name="country">
								<option value=""></option>
								<?php $_countries_count = (isset($this->_tpldata['countries'])) ? sizeof($this->_tpldata['countries']) : 0;if ($_countries_count) {for ($_countries_i = 0; $_countries_i < $_countries_count; ++$_countries_i){$_countries_val = &$this->_tpldata['countries'][$_countries_i]; ?>
									<option value="<?php echo $_countries_val['COUNTRY']; ?>"<?php if ($_countries_val['B_SELECTED']) {  ?> selected="true"<?php } ?>><?php echo $_countries_val['COUNTRY']; ?></option>
								<?php }} ?>
							</select>
						</td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_013'])) ? $this->_rootref['L_013'] : ((isset($MSG['013'])) ? $MSG['013'] : '{ L_013 }')); echo (isset($this->_rootref['REQUIRED'][6])) ? $this->_rootref['REQUIRED'][6] : ''; ?></td>
						<td><input type="text" name="phone" size="40" maxlength="40" value="<?php echo (isset($this->_rootref['PHONE'])) ? $this->_rootref['PHONE'] : ''; ?>"></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_763'])) ? $this->_rootref['L_763'] : ((isset($MSG['763'])) ? $MSG['763'] : '{ L_763 }')); ?></td>
						<td><input type="text" name="balance" size="40" maxlength="10" value="<?php echo (isset($this->_rootref['BALANCE'])) ? $this->_rootref['BALANCE'] : ''; ?>"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><a href="userfeedback.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_208'])) ? $this->_rootref['L_208'] : ((isset($MSG['208'])) ? $MSG['208'] : '{ L_208 }')); ?></a></td>
					</tr>
					</table>
					<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
					<input type="hidden" name="offset" value="<?php echo (isset($this->_rootref['OFFSET'])) ? $this->_rootref['OFFSET'] : ''; ?>">
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_071'])) ? $this->_rootref['L_071'] : ((isset($MSG['071'])) ? $MSG['071'] : '{ L_071 }')); ?>">
				</form>
			</div>
		</div>