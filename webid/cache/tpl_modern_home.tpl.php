<div class="row">
	<div class="col-md-9 col-md-push-3">
		<div class="row">
<?php if ($this->_rootref['B_FEATURED_ITEMS']) {  ?>
			<div class="col-md-12">
				<div class="section-header"><h2><?php echo ((isset($this->_rootref['L_NAY_01'])) ? $this->_rootref['L_NAY_01'] : ((isset($MSG['NAY_01'])) ? $MSG['NAY_01'] : '{ L_NAY_01 }')); ?></h2></div>
			</div>
	<?php $_featured_count = (isset($this->_tpldata['featured'])) ? sizeof($this->_tpldata['featured']) : 0;if ($_featured_count) {for ($_featured_i = 0; $_featured_i < $_featured_count; ++$_featured_i){$_featured_val = &$this->_tpldata['featured'][$_featured_i]; ?>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="featured-item">
					<div class="item-ads-grid">
						<div class="img-grid">
							<div class="item-meta">
								<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_featured_val['ID']; ?>"><img class="img-center" src="<?php echo $_featured_val['IMAGE']; ?>"></a>
								<div class="feat-title"><h4><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_featured_val['ID']; ?>"><?php echo $_featured_val['TITLE']; ?></a></h4></div>
								<div class="grid-margin-btm-lg">
									<small><span class="text-muted"><span class="glyphicon glyphicon-time" aria-hidden="true"></span><?php echo $_featured_val['ENDS']; ?></span></small>
								</div>
							</div>
							<div class="bid-price">
								<span class="pull-left"><h4><?php echo $_featured_val['BID']; ?></h4></span>
								<span class="pull-right"><a class="btn btn-primary btn-sm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_featured_val['ID']; ?>"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
	<?php }} } ?>
		</div>
		<div class="row">
<?php if ($this->_rootref['B_HOT_ITEMS']) {  ?>
			<div class="col-md-12">
				<div class="section-header"><h2><?php echo ((isset($this->_rootref['L_279'])) ? $this->_rootref['L_279'] : ((isset($MSG['279'])) ? $MSG['279'] : '{ L_279 }')); ?></h2></div>
			</div>
	<?php $_hotitems_count = (isset($this->_tpldata['hotitems'])) ? sizeof($this->_tpldata['hotitems']) : 0;if ($_hotitems_count) {for ($_hotitems_i = 0; $_hotitems_i < $_hotitems_count; ++$_hotitems_i){$_hotitems_val = &$this->_tpldata['hotitems'][$_hotitems_i]; ?>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="featured-item">
					<div class="item-ads-grid">
						<div class="img-grid">
							<div class="item-meta">
								<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_hotitems_val['ID']; ?>"><img class="img-center" src="<?php echo $_hotitems_val['IMAGE']; ?>"></a>
								<div class="feat-title"><h4><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_hotitems_val['ID']; ?>"><?php echo $_hotitems_val['TITLE']; ?></a></h4></div>
								<div class="grid-margin-btm-lg">
									<small><span class="text-muted"><span class="glyphicon glyphicon-time" aria-hidden="true"></span>  <?php echo $_hotitems_val['ENDS']; ?></span></small>
								</div>
							</div>
							<div class="bid-price">
								<span class="pull-left"><h4><?php echo $_hotitems_val['BID']; ?></h4></span>
								<span class="pull-right"><a class="btn btn-primary btn-sm" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_hotitems_val['ID']; ?>"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
	<?php }} } ?>
		</div>
		<div class="row">
<?php if ($this->_rootref['B_AUC_LAST']) {  ?>
			<div class="col-md-6">
				<div class="section-header"><h2><?php echo ((isset($this->_rootref['L_278'])) ? $this->_rootref['L_278'] : ((isset($MSG['278'])) ? $MSG['278'] : '{ L_278 }')); ?></h2></div>
				<table class="table table-condensed">
	<?php $_auc_last_count = (isset($this->_tpldata['auc_last'])) ? sizeof($this->_tpldata['auc_last']) : 0;if ($_auc_last_count) {for ($_auc_last_i = 0; $_auc_last_i < $_auc_last_count; ++$_auc_last_i){$_auc_last_val = &$this->_tpldata['auc_last'][$_auc_last_i]; ?>
					<tr class="well">
						<td>
							<p style="display:block;">
								<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_auc_last_val['ID']; ?>"><?php echo $_auc_last_val['TITLE']; ?></a>
								<br><span class="text-muted"><small><?php echo $_auc_last_val['DATE']; ?></small></span>
							</p>
						</td>
					</tr>
	<?php }} ?>
				</table>
			</div>
<?php } if ($this->_rootref['B_AUC_ENDSOON']) {  ?>
			<div class="col-md-6">
				<div class="section-header"><h2><?php echo ((isset($this->_rootref['L_280'])) ? $this->_rootref['L_280'] : ((isset($MSG['280'])) ? $MSG['280'] : '{ L_280 }')); ?></h2></div>
				<table class="table table-condensed">
	<?php $_end_soon_count = (isset($this->_tpldata['end_soon'])) ? sizeof($this->_tpldata['end_soon']) : 0;if ($_end_soon_count) {for ($_end_soon_i = 0; $_end_soon_i < $_end_soon_count; ++$_end_soon_i){$_end_soon_val = &$this->_tpldata['end_soon'][$_end_soon_i]; ?>
					<tr class="well">
						<td>
							<p style="display:block;">
								<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_end_soon_val['ID']; ?>"><?php echo $_end_soon_val['TITLE']; ?></a>
								<br><span class="text-muted"><small><?php echo $_end_soon_val['DATE']; ?></small></span>
							</p>
						</td>
					</tr>
	<?php }} ?>
				</table>
			</div>
<?php } ?>
		</div>
	</div>
	<div class="col-md-3 col-md-pull-9">
		<div class="visible-xs visible-sm">
			<div class="dropdown">
				<button class="btn btn-default btn-block dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					<span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="padding-right: 10px;"></span><?php echo ((isset($this->_rootref['L_276'])) ? $this->_rootref['L_276'] : ((isset($MSG['276'])) ? $MSG['276'] : '{ L_276 }')); ?>
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu drop-width" role="menu" aria-labelledby="dropdownMenu1">
<?php $_cat_list_count = (isset($this->_tpldata['cat_list'])) ? sizeof($this->_tpldata['cat_list']) : 0;if ($_cat_list_count) {for ($_cat_list_i = 0; $_cat_list_i < $_cat_list_count; ++$_cat_list_i){$_cat_list_val = &$this->_tpldata['cat_list'][$_cat_list_i]; ?>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="browse.php?id=<?php echo $_cat_list_val['ID']; ?>"><?php echo $_cat_list_val['IMAGE']; echo $_cat_list_val['NAME']; ?><span><?php if ($_cat_list_val['CATAUCNUM'] != ('')) {  ?> (<?php echo $_cat_list_val['CATAUCNUM']; ?>)<?php } ?></span></a></li>
<?php }} ?>
					<li role="presentation" class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>browse.php?id=0"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>  <?php echo ((isset($this->_rootref['L_277'])) ? $this->_rootref['L_277'] : ((isset($MSG['277'])) ? $MSG['277'] : '{ L_277 }')); ?></a></li>
				</ul>
			</div>
			<br>
		</div>
		<div class="panel panel-default hidden-xs hidden-sm">
			<!-- Default panel contents -->
			<div class="panel-heading"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="padding-right: 10px;"></span><?php echo ((isset($this->_rootref['L_276'])) ? $this->_rootref['L_276'] : ((isset($MSG['276'])) ? $MSG['276'] : '{ L_276 }')); ?></div>
			<div class="list-group">
<?php $_cat_list_count = (isset($this->_tpldata['cat_list'])) ? sizeof($this->_tpldata['cat_list']) : 0;if ($_cat_list_count) {for ($_cat_list_i = 0; $_cat_list_i < $_cat_list_count; ++$_cat_list_i){$_cat_list_val = &$this->_tpldata['cat_list'][$_cat_list_i]; ?>
				<a class="list-group-item" href="browse.php?id=<?php echo $_cat_list_val['ID']; ?>"><?php echo $_cat_list_val['IMAGE']; echo $_cat_list_val['NAME']; ?><span class="pull-right">
				<?php if ($_cat_list_val['CATAUCNUM'] != ('')) {  ?> (<?php echo $_cat_list_val['CATAUCNUM']; ?>)<?php } ?></span></a>
<?php }} ?>
				<a class="list-group-item" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>browse.php?id=0"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>  <?php echo ((isset($this->_rootref['L_277'])) ? $this->_rootref['L_277'] : ((isset($MSG['277'])) ? $MSG['277'] : '{ L_277 }')); ?></a>
			</div>
		</div>
<?php if ($this->_rootref['B_MULT_LANGS']) {  ?>
		<div class="well">
			<div><?php echo ((isset($this->_rootref['L_2__0001'])) ? $this->_rootref['L_2__0001'] : ((isset($MSG['2__0001'])) ? $MSG['2__0001'] : '{ L_2__0001 }')); ?></div>
			<div><?php echo (isset($this->_rootref['FLAGS'])) ? $this->_rootref['FLAGS'] : ''; ?></div>
		</div>
<?php } if ($this->_rootref['B_LOGIN_BOX']) {  if ($this->_rootref['B_LOGGED_IN']) {  ?>
		<div class="panel panel-default">
			<div class="panel-heading"><?php echo ((isset($this->_rootref['L_200'])) ? $this->_rootref['L_200'] : ((isset($MSG['200'])) ? $MSG['200'] : '{ L_200 }')); ?> <?php echo (isset($this->_rootref['YOURUSERNAME'])) ? $this->_rootref['YOURUSERNAME'] : ''; ?></div>
			<div class="list-group">
				<a class="list-group-item" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>edit_data.php?"><?php echo ((isset($this->_rootref['L_244'])) ? $this->_rootref['L_244'] : ((isset($MSG['244'])) ? $MSG['244'] : '{ L_244 }')); ?></a>
				<a class="list-group-item" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>user_menu.php"><?php echo ((isset($this->_rootref['L_622'])) ? $this->_rootref['L_622'] : ((isset($MSG['622'])) ? $MSG['622'] : '{ L_622 }')); ?></a>
				<a class="list-group-item" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>logout.php"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> <?php echo ((isset($this->_rootref['L_245'])) ? $this->_rootref['L_245'] : ((isset($MSG['245'])) ? $MSG['245'] : '{ L_245 }')); ?></a>
			</div>
		</div>
	<?php } else { ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<?php echo ((isset($this->_rootref['L_221'])) ? $this->_rootref['L_221'] : ((isset($MSG['221'])) ? $MSG['221'] : '{ L_221 }')); ?>
			</div>
			<div class="panel-body">
				<form name="login" action="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>user_login.php" method="post">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
						<input type="text" name="username" id="username" class="form-control" placeholder="<?php echo ((isset($this->_rootref['L_username'])) ? $this->_rootref['L_username'] : ((isset($MSG['username'])) ? $MSG['username'] : '{ L_username }')); ?>">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
						<input type="password" name="password" id="password" class="form-control" placeholder="<?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?>">
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label for="rememberme"><input type="checkbox" name="rememberme" id="rememberme" value="1">&nbsp;<?php echo ((isset($this->_rootref['L_25_0085'])) ? $this->_rootref['L_25_0085'] : ((isset($MSG['25_0085'])) ? $MSG['25_0085'] : '{ L_25_0085 }')); ?></label>
						</div>
					</div>
					<div class="text-center">
						<button type="submit" name="action" class="btn btn-primary btn-block" value="Go"><?php echo ((isset($this->_rootref['L_275a'])) ? $this->_rootref['L_275a'] : ((isset($MSG['275a'])) ? $MSG['275a'] : '{ L_275a }')); ?></button>
					</div>
					<div class="text-center">
						<small><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>forgotpasswd.php"><?php echo ((isset($this->_rootref['L_215'])) ? $this->_rootref['L_215'] : ((isset($MSG['215'])) ? $MSG['215'] : '{ L_215 }')); ?></a></small>
					</div>
				</form>
			</div>
		</div>
	<?php } } if ($this->_rootref['B_HELPBOX']) {  ?>
		<div class="panel panel-default">
			<div class="panel-heading"><?php echo ((isset($this->_rootref['L_281'])) ? $this->_rootref['L_281'] : ((isset($MSG['281'])) ? $MSG['281'] : '{ L_281 }')); ?></div>
			<div class="list-group">
	<?php if ($this->_rootref['B_BOARDS']) {  ?>
				<a class="list-group-item" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>boards.php"><span class="glyphicon glyphicon-th-list" aria-hidden="true" style="padding-right: 10px;"></span><?php echo ((isset($this->_rootref['L_5030'])) ? $this->_rootref['L_5030'] : ((isset($MSG['5030'])) ? $MSG['5030'] : '{ L_5030 }')); ?></a>
	<?php } $_helpbox_count = (isset($this->_tpldata['helpbox'])) ? sizeof($this->_tpldata['helpbox']) : 0;if ($_helpbox_count) {for ($_helpbox_i = 0; $_helpbox_i < $_helpbox_count; ++$_helpbox_i){$_helpbox_val = &$this->_tpldata['helpbox'][$_helpbox_i]; ?>
				<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>viewhelp.php?cat=<?php echo $_helpbox_val['ID']; ?>" alt="faqs" class="list-group-item new-window"><?php echo $_helpbox_val['TITLE']; ?></a>
	<?php }} ?>
			</div>
		</div>
<?php } if ($this->_rootref['B_NEWS_BOX']) {  ?>
		<div class="panel panel-default">
			<div class="panel-heading"><?php echo ((isset($this->_rootref['L_282'])) ? $this->_rootref['L_282'] : ((isset($MSG['282'])) ? $MSG['282'] : '{ L_282 }')); ?></div>
			<div class="panel-body">
				<ul class="nav">
	<?php $_newsbox_count = (isset($this->_tpldata['newsbox'])) ? sizeof($this->_tpldata['newsbox']) : 0;if ($_newsbox_count) {for ($_newsbox_i = 0; $_newsbox_i < $_newsbox_count; ++$_newsbox_i){$_newsbox_val = &$this->_tpldata['newsbox'][$_newsbox_i]; ?>
					<span class="glyphicon glyphicon-file" aria-hidden="true" style="padding-right: 5px;"></span><a href="viewnews.php?id=<?php echo $_newsbox_val['ID']; ?>"><?php echo $_newsbox_val['TITLE']; ?></a><br>
					<span class="text-muted"><small><?php echo $_newsbox_val['DATE']; ?></small></span>
					<li class="divider"></li>
					<br>
	<?php }} ?>
				</ul>
				<div class="pull-right"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>viewallnews.php"><?php echo ((isset($this->_rootref['L_341'])) ? $this->_rootref['L_341'] : ((isset($MSG['341'])) ? $MSG['341'] : '{ L_341 }')); ?></a></div>
				<br>
			</div>
		</div>
<?php } ?>
	</div>
</div>