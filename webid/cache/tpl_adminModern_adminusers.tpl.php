<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_525'])) ? $this->_rootref['L_525'] : ((isset($MSG['525'])) ? $MSG['525'] : '{ L_525 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<div class="plain-box"><a href="newadminuser.php"><?php echo ((isset($this->_rootref['L_new_admin_user'])) ? $this->_rootref['L_new_admin_user'] : ((isset($MSG['new_admin_user'])) ? $MSG['new_admin_user'] : '{ L_new_admin_user }')); ?></a></div>
					<table class="table table-striped table-bordered">
						<tr>
							<th width="30%"><?php echo ((isset($this->_rootref['L_username'])) ? $this->_rootref['L_username'] : ((isset($MSG['username'])) ? $MSG['username'] : '{ L_username }')); ?></th>
							<th width="16%"><?php echo ((isset($this->_rootref['L_558'])) ? $this->_rootref['L_558'] : ((isset($MSG['558'])) ? $MSG['558'] : '{ L_558 }')); ?></th>
							<th width="19%"><?php echo ((isset($this->_rootref['L_559'])) ? $this->_rootref['L_559'] : ((isset($MSG['559'])) ? $MSG['559'] : '{ L_559 }')); ?></th>
							<th width="12%"><?php echo ((isset($this->_rootref['L_560'])) ? $this->_rootref['L_560'] : ((isset($MSG['560'])) ? $MSG['560'] : '{ L_560 }')); ?></th>
							<th width="23%"><?php echo ((isset($this->_rootref['L_561'])) ? $this->_rootref['L_561'] : ((isset($MSG['561'])) ? $MSG['561'] : '{ L_561 }')); ?></th>
						</tr>
<?php $_users_count = (isset($this->_tpldata['users'])) ? sizeof($this->_tpldata['users']) : 0;if ($_users_count) {for ($_users_i = 0; $_users_i < $_users_count; ++$_users_i){$_users_val = &$this->_tpldata['users'][$_users_i]; ?>
						<tr<?php if ($_users_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
							<td><a href="editadminuser.php?id=<?php echo $_users_val['ID']; ?>"><?php echo $_users_val['USERNAME']; ?></a></td>
							<td align="center"><?php echo $_users_val['CREATED']; ?></td>
							<td align="center"><?php echo $_users_val['LASTLOGIN']; ?></td>
							<td align="center"><?php echo $_users_val['STATUS']; ?></td>
							<td align="center"><input type="checkbox" name="delete[]" value="<?php echo $_users_val['ID']; ?>"></td>
						</tr>
<?php }} ?>
					</table>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="Submit" value="<?php echo ((isset($this->_rootref['L_561'])) ? $this->_rootref['L_561'] : ((isset($MSG['561'])) ? $MSG['561'] : '{ L_561 }')); ?>">
				</form>
			</div>
		</div>