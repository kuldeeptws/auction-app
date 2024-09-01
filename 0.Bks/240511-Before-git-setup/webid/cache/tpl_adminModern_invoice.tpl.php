<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_766'])) ? $this->_rootref['L_766'] : ((isset($MSG['766'])) ? $MSG['766'] : '{ L_766 }')); ?></h4>
				<form action="" method="get">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_313'])) ? $this->_rootref['L_313'] : ((isset($MSG['313'])) ? $MSG['313'] : '{ L_313 }')); ?></div>
								<div class="col-md-9"><input type="text" name="username" value="<?php echo (isset($this->_rootref['USER_SEARCH'])) ? $this->_rootref['USER_SEARCH'] : ''; ?>"></div>
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
						<div class="row">
							<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1041'])) ? $this->_rootref['L_1041'] : ((isset($MSG['1041'])) ? $MSG['1041'] : '{ L_1041 }')); ?></strong></div>
<?php if ($this->_rootref['NO_USER_SEARCH']) {  ?>
							<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_313'])) ? $this->_rootref['L_313'] : ((isset($MSG['313'])) ? $MSG['313'] : '{ L_313 }')); ?></strong></div>
<?php } ?>
							<div class="col-md-4"><strong><?php echo ((isset($this->_rootref['L_1039'])) ? $this->_rootref['L_1039'] : ((isset($MSG['1039'])) ? $MSG['1039'] : '{ L_1039 }')); ?></strong></div>
							<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_1053'])) ? $this->_rootref['L_1053'] : ((isset($MSG['1053'])) ? $MSG['1053'] : '{ L_1053 }')); ?></strong></div>
							<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_560'])) ? $this->_rootref['L_560'] : ((isset($MSG['560'])) ? $MSG['560'] : '{ L_560 }')); ?></strong></div>
						</div>
<?php $_invoices_count = (isset($this->_tpldata['invoices'])) ? sizeof($this->_tpldata['invoices']) : 0;if ($_invoices_count) {for ($_invoices_i = 0; $_invoices_i < $_invoices_count; ++$_invoices_i){$_invoices_val = &$this->_tpldata['invoices'][$_invoices_i]; ?>
						<div class="row">
							<div class="col-md-2">
								<?php echo ((isset($this->_rootref['L_1041'])) ? $this->_rootref['L_1041'] : ((isset($MSG['1041'])) ? $MSG['1041'] : '{ L_1041 }')); ?>: <?php echo $_invoices_val['INVOICE']; ?>
								<br>
								<?php echo $_invoices_val['DATE']; ?>
							</div>
<?php if ($this->_rootref['NO_USER_SEARCH']) {  ?>
							<div class="col-md-2"><?php echo $_invoices_val['USER']; ?></div>
<?php } ?>
							<div class="col-md-4"><?php echo $_invoices_val['INFO']; ?></div>
							<div class="col-md-2"><?php echo $_invoices_val['TOTAL']; ?></div>
							<div class="col-md-2">
								<?php if ($_invoices_val['PAID']) {  ?><p><?php echo ((isset($this->_rootref['L_898'])) ? $this->_rootref['L_898'] : ((isset($MSG['898'])) ? $MSG['898'] : '{ L_898 }')); ?></p><?php } ?><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>order_print.php?id=<?php echo $_invoices_val['INVOICE']; ?>&hash=<?php echo (isset($this->_rootref['HASH'])) ? $this->_rootref['HASH'] : ''; ?>" tagret="_blank"><?php echo ((isset($this->_rootref['L_1058'])) ? $this->_rootref['L_1058'] : ((isset($MSG['1058'])) ? $MSG['1058'] : '{ L_1058 }')); ?></a>
							</div>
						</div>
<?php }} if ($this->_rootref['PAGNATION']) {  ?>
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