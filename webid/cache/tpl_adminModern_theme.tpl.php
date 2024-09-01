<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php if ($this->_rootref['B_EDIT_FILE']) {  if ($this->_rootref['FILENAME'] != ('')) {  echo ((isset($this->_rootref['L_298'])) ? $this->_rootref['L_298'] : ((isset($MSG['298'])) ? $MSG['298'] : '{ L_298 }')); ?>: <?php echo (isset($this->_rootref['FILENAME'])) ? $this->_rootref['FILENAME'] : ''; } else { echo ((isset($this->_rootref['L_518'])) ? $this->_rootref['L_518'] : ((isset($MSG['518'])) ? $MSG['518'] : '{ L_518 }')); } } else { echo ((isset($this->_rootref['L_26_0002'])) ? $this->_rootref['L_26_0002'] : ((isset($MSG['26_0002'])) ? $MSG['26_0002'] : '{ L_26_0002 }')); } ?></h4>
<?php if ($this->_rootref['B_EDIT_FILE']) {  ?>
				<form name="editfile" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_812'])) ? $this->_rootref['L_812'] : ((isset($MSG['812'])) ? $MSG['812'] : '{ L_812 }')); ?></div>
								<div class="col-md-9">
									<?php if ($this->_rootref['FILENAME'] != ('')) {  ?><b><?php echo (isset($this->_rootref['FILENAME'])) ? $this->_rootref['FILENAME'] : ''; ?></b><?php } else { ?><input type="text" name="new_filename" value="" class="form-control"><?php } ?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_813'])) ? $this->_rootref['L_813'] : ((isset($MSG['813'])) ? $MSG['813'] : '{ L_813 }')); ?></div>
								<div class="col-md-9">
									<textarea class="form-control" name="content" rows="15"><?php echo (isset($this->_rootref['FILECONTENTS'])) ? $this->_rootref['FILECONTENTS'] : ''; ?></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<input type="hidden" name="action" value="<?php if ($this->_rootref['FILENAME'] != ('')) {  ?>edit<?php } else { ?>add<?php } ?>">
									<input type="hidden" name="filename" value="<?php echo (isset($this->_rootref['FILENAME'])) ? $this->_rootref['FILENAME'] : ''; ?>">
									<input type="hidden" name="theme" value="<?php echo (isset($this->_rootref['EDIT_THEME'])) ? $this->_rootref['EDIT_THEME'] : ''; ?>">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_071'])) ? $this->_rootref['L_071'] : ((isset($MSG['071'])) ? $MSG['071'] : '{ L_071 }')); ?></button>
								</div>
							</div>
						</div>
					</div>
				</form>
<?php } ?>
				<form name="theme" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
<?php $_themes_count = (isset($this->_tpldata['themes'])) ? sizeof($this->_tpldata['themes']) : 0;if ($_themes_count) {for ($_themes_i = 0; $_themes_i < $_themes_count; ++$_themes_i){$_themes_val = &$this->_tpldata['themes'][$_themes_i]; ?>
							<div class="row">
								<div class="col-md-6">
									<input type="radio" name="dtheme" value="<?php echo $_themes_val['NAME']; ?>" <?php if ($_themes_val['B_CHECKED']) {  ?>checked="checked" <?php } ?>/>
									<b><?php echo $_themes_val['NAME']; ?></b>
								</div>
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-12"><a href="theme.php?do=listfiles&theme=<?php echo $_themes_val['NAME']; ?>"><?php echo ((isset($this->_rootref['L_26_0003'])) ? $this->_rootref['L_26_0003'] : ((isset($MSG['26_0003'])) ? $MSG['26_0003'] : '{ L_26_0003 }')); ?></a></div>
									</div>
									<div class="row">
										<div class="col-md-12"><a href="theme.php?do=addfile&theme=<?php echo $_themes_val['NAME']; ?>"><?php echo ((isset($this->_rootref['L_26_0004'])) ? $this->_rootref['L_26_0004'] : ((isset($MSG['26_0004'])) ? $MSG['26_0004'] : '{ L_26_0004 }')); ?></a></div>
									</div>
								</div>
							</div>
	<?php if ($_themes_val['B_LISTFILES']) {  ?>
							<div class="row">
								<div class="col-md-6">&nbsp;</div>
								<div class="col-md-6">
									<select name="file" multiple size="24" style="font-weight:bold; width:350px"
								ondblclick="document.getElementById('action').value = ''; document.getElementById('theme').value = '<?php echo $_themes_val['NAME']; ?>'; this.form.submit();">
		<?php $_files_count = (isset($_themes_val['files'])) ? sizeof($_themes_val['files']) : 0;if ($_files_count) {for ($_files_i = 0; $_files_i < $_files_count; ++$_files_i){$_files_val = &$_themes_val['files'][$_files_i]; ?>
										<option value="<?php echo $_files_val['FILE']; ?>"><?php echo $_files_val['FILE']; ?></option>
		<?php }} ?>
									</select>
								</div>
							</div>
	<?php } }} ?>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-body">
<?php $_admin_themes_count = (isset($this->_tpldata['admin_themes'])) ? sizeof($this->_tpldata['admin_themes']) : 0;if ($_admin_themes_count) {for ($_admin_themes_i = 0; $_admin_themes_i < $_admin_themes_count; ++$_admin_themes_i){$_admin_themes_val = &$this->_tpldata['admin_themes'][$_admin_themes_i]; ?>
							<div class="row">
								<div class="col-md-6">
									<input type="radio" name="admin_theme" value="<?php echo $_admin_themes_val['NAME']; ?>" <?php if ($_admin_themes_val['B_CHECKED']) {  ?>checked="checked" <?php } ?>/>
									<b><?php echo $_admin_themes_val['NAME']; ?></b>
								</div>
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-12"><a href="theme.php?do=listfiles&theme=<?php echo $_admin_themes_val['NAME']; ?>"><?php echo ((isset($this->_rootref['L_26_0003'])) ? $this->_rootref['L_26_0003'] : ((isset($MSG['26_0003'])) ? $MSG['26_0003'] : '{ L_26_0003 }')); ?></a></div>
									</div>
									<div class="row">
										<div class="col-md-12"><a href="theme.php?do=addfile&theme=<?php echo $_admin_themes_val['NAME']; ?>"><?php echo ((isset($this->_rootref['L_26_0004'])) ? $this->_rootref['L_26_0004'] : ((isset($MSG['26_0004'])) ? $MSG['26_0004'] : '{ L_26_0004 }')); ?></a></div>
									</div>
								</div>
							</div>
	<?php if ($_admin_themes_val['B_LISTFILES']) {  ?>
							<div class="row">
								<div class="col-md-6">&nbsp;</div>
								<div class="col-md-6">
									<select name="file" multiple size="24" style="font-weight:bold; width:350px"
								ondblclick="document.getElementById('action').value = ''; document.getElementById('theme').value = '<?php echo $_admin_themes_val['NAME']; ?>'; this.form.submit();">
		<?php $_files_count = (isset($_admin_themes_val['files'])) ? sizeof($_admin_themes_val['files']) : 0;if ($_files_count) {for ($_files_i = 0; $_files_i < $_files_count; ++$_files_i){$_files_val = &$_admin_themes_val['files'][$_files_i]; ?>
										<option value="<?php echo $_files_val['FILE']; ?>"><?php echo $_files_val['FILE']; ?></option>
		<?php }} ?>
									</select>
								</div>
							</div>
	<?php } }} ?>
						</div>
					</div>
					<input type="hidden" name="action" value="update" id="action">
					<input type="hidden" name="theme" value="" id="theme">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_26_0000'])) ? $this->_rootref['L_26_0000'] : ((isset($MSG['26_0000'])) ? $MSG['26_0000'] : '{ L_26_0000 }')); ?></button>
				</form>
			</div>
		</div>