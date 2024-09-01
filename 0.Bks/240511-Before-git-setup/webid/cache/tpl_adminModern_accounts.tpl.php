<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>includes/calendar.css">
		<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_854'])) ? $this->_rootref['L_854'] : ((isset($MSG['854'])) ? $MSG['854'] : '{ L_854 }')); ?></h4>
				<form action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_855'])) ? $this->_rootref['L_855'] : ((isset($MSG['855'])) ? $MSG['855'] : '{ L_855 }')); ?></div>
								<div class="col-md-9">
									<?php echo ((isset($this->_rootref['L_monthly_report'])) ? $this->_rootref['L_monthly_report'] : ((isset($MSG['monthly_report'])) ? $MSG['monthly_report'] : '{ L_monthly_report }')); ?> <input type="radio" name="type" value="m"<?php if ($this->_rootref['TYPE'] == ('m')) {  ?> checked="checked"<?php } ?>>
									<?php echo ((isset($this->_rootref['L_weekly_report'])) ? $this->_rootref['L_weekly_report'] : ((isset($MSG['weekly_report'])) ? $MSG['weekly_report'] : '{ L_weekly_report }')); ?> <input type="radio" name="type" value="w"<?php if ($this->_rootref['TYPE'] == ('w')) {  ?> checked="checked"<?php } ?>>
									<?php echo ((isset($this->_rootref['L_5285'])) ? $this->_rootref['L_5285'] : ((isset($MSG['5285'])) ? $MSG['5285'] : '{ L_5285 }')); ?> <input type="radio" name="type" value="d"<?php if ($this->_rootref['TYPE'] == ('d')) {  ?> checked="checked"<?php } ?>>
									<?php echo ((isset($this->_rootref['L_2__0027'])) ? $this->_rootref['L_2__0027'] : ((isset($MSG['2__0027'])) ? $MSG['2__0027'] : '{ L_2__0027 }')); ?> <input type="radio" name="type" value="a"<?php if ($this->_rootref['TYPE'] == ('a')) {  ?> checked="checked"<?php } ?>>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_856'])) ? $this->_rootref['L_856'] : ((isset($MSG['856'])) ? $MSG['856'] : '{ L_856 }')); ?></div>
								<div class="col-md-9">
									<input type="text" name="from_date" id="from_date" value="<?php echo (isset($this->_rootref['FROM_DATE'])) ? $this->_rootref['FROM_DATE'] : ''; ?>" size="20" maxlength="19">
									<script type="text/javascript">
										new tcal ({'id': 'from_date','controlname': 'from_date'});
									</script>
									-
									<input type="text" name="to_date" id="to_date" value="<?php echo (isset($this->_rootref['TO_DATE'])) ? $this->_rootref['TO_DATE'] : ''; ?>" size="20" maxlength="19">
									<script type="text/javascript">
										new tcal ({'id': 'to_date','controlname': 'to_date'});
									</script>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_275'])) ? $this->_rootref['L_275'] : ((isset($MSG['275'])) ? $MSG['275'] : '{ L_275 }')); ?></button>
				</form>
				<br>
				<div class="panel panel-default">
					<div class="panel-body">
<?php if ($this->_rootref['PAGNATION']) {  ?>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_313'])) ? $this->_rootref['L_313'] : ((isset($MSG['313'])) ? $MSG['313'] : '{ L_313 }')); ?></strong></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_766'])) ? $this->_rootref['L_766'] : ((isset($MSG['766'])) ? $MSG['766'] : '{ L_766 }')); ?></strong></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_314'])) ? $this->_rootref['L_314'] : ((isset($MSG['314'])) ? $MSG['314'] : '{ L_314 }')); ?></strong></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_391'])) ? $this->_rootref['L_391'] : ((isset($MSG['391'])) ? $MSG['391'] : '{ L_391 }')); ?></strong></div>
						</div>
<?php } else { ?>
						<div class="row">
							<div class="col-md-6"><?php echo ((isset($this->_rootref['L_314'])) ? $this->_rootref['L_314'] : ((isset($MSG['314'])) ? $MSG['314'] : '{ L_314 }')); ?></div>
							<div class="col-md-6"><?php echo ((isset($this->_rootref['L_857'])) ? $this->_rootref['L_857'] : ((isset($MSG['857'])) ? $MSG['857'] : '{ L_857 }')); ?></div>
						</div>
<?php } $_accounts_count = (isset($this->_tpldata['accounts'])) ? sizeof($this->_tpldata['accounts']) : 0;if ($_accounts_count) {for ($_accounts_i = 0; $_accounts_i < $_accounts_count; ++$_accounts_i){$_accounts_val = &$this->_tpldata['accounts'][$_accounts_i]; if ($this->_rootref['PAGNATION']) {  ?>
						<div class="row">
							<div class="col-md-3"><?php echo $_accounts_val['RNAME']; ?> (<?php echo $_accounts_val['NICK']; ?>)</div>
							<div class="col-md-3"><?php echo $_accounts_val['TEXT']; ?></div>
							<div class="col-md-3"><?php echo $_accounts_val['DATE']; ?></div>
							<div class="col-md-3"><?php echo $_accounts_val['AMOUNT']; ?></div>
						</div>
	<?php } else { ?>
						<div class="row">
							<div class="col-md-6"><?php echo $_accounts_val['DATE']; ?></div>
							<div class="col-md-6"><?php echo $_accounts_val['TOTAL']; ?></div>
						</div>
	<?php } }} if ($this->_rootref['PAGNATION']) {  ?>
						<div class="row">
							<div class="col-md-12 text-center">
								<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
								<br>
								<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>
	<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
								<?php echo $_pages_val['PAGE']; ?>&nbsp;&nbsp;
	<?php }} ?>
								<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>
							</div>
						</div>
<?php } ?>
					</div>
				</div>
			</div>
		</div>