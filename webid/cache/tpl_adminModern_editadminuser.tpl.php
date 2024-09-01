<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_525'])) ? $this->_rootref['L_525'] : ((isset($MSG['525'])) ? $MSG['525'] : '{ L_525 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_562'])) ? $this->_rootref['L_562'] : ((isset($MSG['562'])) ? $MSG['562'] : '{ L_562 }')); ?></h4>
				<form name="editadmin" action="" method="post">
					<table class="table table-striped table-bordered">
						<tr>
							<td><?php echo ((isset($this->_rootref['L_username'])) ? $this->_rootref['L_username'] : ((isset($MSG['username'])) ? $MSG['username'] : '{ L_username }')); ?></td>
							<td><?php echo (isset($this->_rootref['USERNAME'])) ? $this->_rootref['USERNAME'] : ''; ?></td>
						</tr>
						<tr>
							<td><?php echo ((isset($this->_rootref['L_558'])) ? $this->_rootref['L_558'] : ((isset($MSG['558'])) ? $MSG['558'] : '{ L_558 }')); ?></td>
							<td><?php echo (isset($this->_rootref['CREATED'])) ? $this->_rootref['CREATED'] : ''; ?></td>
						</tr>
						<tr>
							<td><?php echo ((isset($this->_rootref['L_559'])) ? $this->_rootref['L_559'] : ((isset($MSG['559'])) ? $MSG['559'] : '{ L_559 }')); ?></td>
							<td><?php echo (isset($this->_rootref['LASTLOGIN'])) ? $this->_rootref['LASTLOGIN'] : ''; ?></td>
						</tr>
						<tr>
							<td colspan="2"><?php echo ((isset($this->_rootref['L_563'])) ? $this->_rootref['L_563'] : ((isset($MSG['563'])) ? $MSG['563'] : '{ L_563 }')); ?></td>
						</tr>
						<tr>
							<td><?php echo ((isset($this->_rootref['L_password'])) ? $this->_rootref['L_password'] : ((isset($MSG['password'])) ? $MSG['password'] : '{ L_password }')); ?></td>
							<td><input type="password" name="password" size="25"></td>
						</tr>
						<tr>
							<td><?php echo ((isset($this->_rootref['L_564'])) ? $this->_rootref['L_564'] : ((isset($MSG['564'])) ? $MSG['564'] : '{ L_564 }')); ?></td>
							<td><input type="password" name="repeatpassword" size="25"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								<input type="radio" name="status" value="1"<?php if ($this->_rootref['B_ACTIVE']) {  ?> checked="checked"<?php } ?>> <?php echo ((isset($this->_rootref['L_566'])) ? $this->_rootref['L_566'] : ((isset($MSG['566'])) ? $MSG['566'] : '{ L_566 }')); ?><br>
								<input type="radio" name="status" value="0"<?php if ($this->_rootref['B_INACTIVE']) {  ?> checked="checked"<?php } ?>> <?php echo ((isset($this->_rootref['L_567'])) ? $this->_rootref['L_567'] : ((isset($MSG['567'])) ? $MSG['567'] : '{ L_567 }')); ?>
							</td>
						</tr>
					</table>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?>">
				</form>
			</div>
		</div>