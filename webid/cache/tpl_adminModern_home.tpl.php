<div class="row">
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading"><?php echo ((isset($this->_rootref['L_1061'])) ? $this->_rootref['L_1061'] : ((isset($MSG['1061'])) ? $MSG['1061'] : '{ L_1061 }')); ?></div>
					<div class="panel-body">
						<form name="anotes" action="" method="post">
							<textarea rows="15" name="anotes" class="form-control"><?php echo (isset($this->_rootref['ADMIN_NOTES'])) ? $this->_rootref['ADMIN_NOTES'] : ''; ?></textarea>
							<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
							<br>
							<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_submit'])) ? $this->_rootref['L_submit'] : ((isset($MSG['submit'])) ? $MSG['submit'] : '{ L_submit }')); ?></button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-9">
<?php if ($this->_rootref['UPDATE_AVAILABLE']) {  ?>
				<div class="alert alert-danger" role="alert"><?php echo ((isset($this->_rootref['L_outdated_version'])) ? $this->_rootref['L_outdated_version'] : ((isset($MSG['outdated_version'])) ? $MSG['outdated_version'] : '{ L_outdated_version }')); ?></div>
<?php } else { ?>
				<div class="alert alert-info" role="alert"><?php echo ((isset($this->_rootref['L_current_version'])) ? $this->_rootref['L_current_version'] : ((isset($MSG['current_version'])) ? $MSG['current_version'] : '{ L_current_version }')); ?></div>
<?php } ?>
				<div class="panel panel-default">
					<div class="panel-heading"><strong><?php echo ((isset($this->_rootref['L_25_0025'])) ? $this->_rootref['L_25_0025'] : ((isset($MSG['25_0025'])) ? $MSG['25_0025'] : '{ L_25_0025 }')); ?></strong></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_site_url'])) ? $this->_rootref['L_site_url'] : ((isset($MSG['site_url'])) ? $MSG['site_url'] : '{ L_site_url }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_site_name'])) ? $this->_rootref['L_site_name'] : ((isset($MSG['site_name'])) ? $MSG['site_name'] : '{ L_site_name }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_admin_email'])) ? $this->_rootref['L_admin_email'] : ((isset($MSG['admin_email'])) ? $MSG['admin_email'] : '{ L_admin_email }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['ADMINMAIL'])) ? $this->_rootref['ADMINMAIL'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0026'])) ? $this->_rootref['L_25_0026'] : ((isset($MSG['25_0026'])) ? $MSG['25_0026'] : '{ L_25_0026 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['CRON'])) ? $this->_rootref['CRON'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_663'])) ? $this->_rootref['L_663'] : ((isset($MSG['663'])) ? $MSG['663'] : '{ L_663 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['GALLERY'])) ? $this->_rootref['GALLERY'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_2__0025'])) ? $this->_rootref['L_2__0025'] : ((isset($MSG['2__0025'])) ? $MSG['2__0025'] : '{ L_2__0025 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['BUY_NOW'])) ? $this->_rootref['BUY_NOW'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_default_currency'])) ? $this->_rootref['L_default_currency'] : ((isset($MSG['default_currency'])) ? $MSG['default_currency'] : '{ L_default_currency }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0035'])) ? $this->_rootref['L_25_0035'] : ((isset($MSG['25_0035'])) ? $MSG['25_0035'] : '{ L_25_0035 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['TIMEZONE'])) ? $this->_rootref['TIMEZONE'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_date_format'])) ? $this->_rootref['L_date_format'] : ((isset($MSG['date_format'])) ? $MSG['date_format'] : '{ L_date_format }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['DATEFORMAT'])) ? $this->_rootref['DATEFORMAT'] : ''; ?> <small>(<?php echo (isset($this->_rootref['DATEEXAMPLE'])) ? $this->_rootref['DATEEXAMPLE'] : ''; ?>)</small></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_email_settings'])) ? $this->_rootref['L_email_settings'] : ((isset($MSG['email_settings'])) ? $MSG['email_settings'] : '{ L_email_settings }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['EMAIL_HANDLER'])) ? $this->_rootref['EMAIL_HANDLER'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_default_country'])) ? $this->_rootref['L_default_country'] : ((isset($MSG['default_country'])) ? $MSG['default_country'] : '{ L_default_country }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['DEFULTCONTRY'])) ? $this->_rootref['DEFULTCONTRY'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_multilingual_support'])) ? $this->_rootref['L_multilingual_support'] : ((isset($MSG['multilingual_support'])) ? $MSG['multilingual_support'] : '{ L_multilingual_support }')); ?></strong></div>
							<div class="col-md-9">
<?php $_langs_count = (isset($this->_tpldata['langs'])) ? sizeof($this->_tpldata['langs']) : 0;if ($_langs_count) {for ($_langs_i = 0; $_langs_i < $_langs_count; ++$_langs_i){$_langs_val = &$this->_tpldata['langs'][$_langs_i]; ?>
								<p><?php echo $_langs_val['LANG']; if ($_langs_val['B_DEFAULT']) {  ?> (<?php echo ((isset($this->_rootref['L_current_default_language'])) ? $this->_rootref['L_current_default_language'] : ((isset($MSG['current_default_language'])) ? $MSG['current_default_language'] : '{ L_current_default_language }')); ?>)<?php } ?></p>
<?php }} ?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_30_0214'])) ? $this->_rootref['L_30_0214'] : ((isset($MSG['30_0214'])) ? $MSG['30_0214'] : '{ L_30_0214 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['THIS_VERSION'])) ? $this->_rootref['THIS_VERSION'] : ''; ?> (<?php echo (isset($this->_rootref['CUR_VERSION'])) ? $this->_rootref['CUR_VERSION'] : ''; ?>)</div>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading"><strong><?php echo ((isset($this->_rootref['L_25_0031'])) ? $this->_rootref['L_25_0031'] : ((isset($MSG['25_0031'])) ? $MSG['25_0031'] : '{ L_25_0031 }')); ?></strong></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0055'])) ? $this->_rootref['L_25_0055'] : ((isset($MSG['25_0055'])) ? $MSG['25_0055'] : '{ L_25_0055 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_USERS'])) ? $this->_rootref['C_USERS'] : ''; ?></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0056'])) ? $this->_rootref['L_25_0056'] : ((isset($MSG['25_0056'])) ? $MSG['25_0056'] : '{ L_25_0056 }')); ?></strong></div>
							<div class="col-md-3">
<?php if ($this->_rootref['USERCONF'] == 0) {  ?>
								<strong><?php echo ((isset($this->_rootref['L_893'])) ? $this->_rootref['L_893'] : ((isset($MSG['893'])) ? $MSG['893'] : '{ L_893 }')); ?></strong>: <?php echo (isset($this->_rootref['C_IUSERS'])) ? $this->_rootref['C_IUSERS'] : ''; ?><br>
								<strong><?php echo ((isset($this->_rootref['L_892'])) ? $this->_rootref['L_892'] : ((isset($MSG['892'])) ? $MSG['892'] : '{ L_892 }')); ?></strong>: <?php echo (isset($this->_rootref['C_UUSERS'])) ? $this->_rootref['C_UUSERS'] : ''; ?> (<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/listusers.php?usersfilter=admin_approve"><?php echo ((isset($this->_rootref['L_5295'])) ? $this->_rootref['L_5295'] : ((isset($MSG['5295'])) ? $MSG['5295'] : '{ L_5295 }')); ?></a>)
<?php } else { ?>
								<?php echo (isset($this->_rootref['C_IUSERS'])) ? $this->_rootref['C_IUSERS'] : ''; ?>
<?php } ?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0057'])) ? $this->_rootref['L_25_0057'] : ((isset($MSG['25_0057'])) ? $MSG['25_0057'] : '{ L_25_0057 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_AUCTIONS'])) ? $this->_rootref['C_AUCTIONS'] : ''; ?></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_204'])) ? $this->_rootref['L_204'] : ((isset($MSG['204'])) ? $MSG['204'] : '{ L_204 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_CLOSED'])) ? $this->_rootref['C_CLOSED'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0059'])) ? $this->_rootref['L_25_0059'] : ((isset($MSG['25_0059'])) ? $MSG['25_0059'] : '{ L_25_0059 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_BIDS'])) ? $this->_rootref['C_BIDS'] : ''; ?></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0063'])) ? $this->_rootref['L_25_0063'] : ((isset($MSG['25_0063'])) ? $MSG['25_0063'] : '{ L_25_0063 }')); ?></strong></div>
							<div class="col-md-3">
								<strong><?php echo ((isset($this->_rootref['L_5161'])) ? $this->_rootref['L_5161'] : ((isset($MSG['5161'])) ? $MSG['5161'] : '{ L_5161 }')); ?></strong>: <?php echo (isset($this->_rootref['A_PAGEVIEWS'])) ? $this->_rootref['A_PAGEVIEWS'] : ''; ?><br>
								<strong><?php echo ((isset($this->_rootref['L_5162'])) ? $this->_rootref['L_5162'] : ((isset($MSG['5162'])) ? $MSG['5162'] : '{ L_5162 }')); ?></strong>: <?php echo (isset($this->_rootref['A_UVISITS'])) ? $this->_rootref['A_UVISITS'] : ''; ?><br>
								<strong><?php echo ((isset($this->_rootref['L_5163'])) ? $this->_rootref['L_5163'] : ((isset($MSG['5163'])) ? $MSG['5163'] : '{ L_5163 }')); ?></strong>: <?php echo (isset($this->_rootref['A_USESSIONS'])) ? $this->_rootref['A_USESSIONS'] : ''; ?><br>
							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading"><strong><?php echo ((isset($this->_rootref['L_080'])) ? $this->_rootref['L_080'] : ((isset($MSG['080'])) ? $MSG['080'] : '{ L_080 }')); ?></strong></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-9"><?php echo ((isset($this->_rootref['L_clear_cache_explain'])) ? $this->_rootref['L_clear_cache_explain'] : ((isset($MSG['clear_cache_explain'])) ? $MSG['clear_cache_explain'] : '{ L_clear_cache_explain }')); ?></div>
							<div class="col-md-3">
								<form action="?action=clearcache" method="post">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="submit"><?php echo ((isset($this->_rootref['L_clear_cache'])) ? $this->_rootref['L_clear_cache'] : ((isset($MSG['clear_cache'])) ? $MSG['clear_cache'] : '{ L_clear_cache }')); ?></button>
								</form>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-9"><?php echo ((isset($this->_rootref['L_clear_image_cache_explain'])) ? $this->_rootref['L_clear_image_cache_explain'] : ((isset($MSG['clear_image_cache_explain'])) ? $MSG['clear_image_cache_explain'] : '{ L_clear_image_cache_explain }')); ?></div>
							<div class="col-md-3">
								<form action="?action=clear_image_cache" method="post">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="submit"><?php echo ((isset($this->_rootref['L_clear_image_cache'])) ? $this->_rootref['L_clear_image_cache'] : ((isset($MSG['clear_image_cache'])) ? $MSG['clear_image_cache'] : '{ L_clear_image_cache }')); ?></button>
								</form>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-9"><?php echo ((isset($this->_rootref['L_1030'])) ? $this->_rootref['L_1030'] : ((isset($MSG['1030'])) ? $MSG['1030'] : '{ L_1030 }')); ?></div>
							<div class="col-md-3">
								<form action="?action=updatecounters" method="post">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="submit"><?php echo ((isset($this->_rootref['L_1031'])) ? $this->_rootref['L_1031'] : ((isset($MSG['1031'])) ? $MSG['1031'] : '{ L_1031 }')); ?></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>