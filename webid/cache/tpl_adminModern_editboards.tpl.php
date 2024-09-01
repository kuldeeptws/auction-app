<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="ontainer">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_board_management'])) ? $this->_rootref['L_board_management'] : ((isset($MSG['board_management'])) ? $MSG['board_management'] : '{ L_board_management }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5052'])) ? $this->_rootref['L_5052'] : ((isset($MSG['5052'])) ? $MSG['5052'] : '{ L_5052 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<table class="table table-striped table-bordered">
					<tr>
						<td width="24%"><?php echo ((isset($this->_rootref['L_5034'])) ? $this->_rootref['L_5034'] : ((isset($MSG['5034'])) ? $MSG['5034'] : '{ L_5034 }')); ?></td>
						<td width="76%">
							<input type="text" name="name" size="25" maxlength="255" value="<?php echo (isset($this->_rootref['NAME'])) ? $this->_rootref['NAME'] : ''; ?>">
						</td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_num_messages'])) ? $this->_rootref['L_num_messages'] : ((isset($MSG['num_messages'])) ? $MSG['num_messages'] : '{ L_num_messages }')); ?></td>
						<td><?php echo (isset($this->_rootref['MESSAGES'])) ? $this->_rootref['MESSAGES'] : ''; ?> (<a href="editmessages.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_5063'])) ? $this->_rootref['L_5063'] : ((isset($MSG['5063'])) ? $MSG['5063'] : '{ L_5063 }')); ?></a>)</td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_5053'])) ? $this->_rootref['L_5053'] : ((isset($MSG['5053'])) ? $MSG['5053'] : '{ L_5053 }')); ?></td>
						<td><?php echo (isset($this->_rootref['LAST_POST'])) ? $this->_rootref['LAST_POST'] : ''; ?></td>
					</tr>
					<tr>
						<td><?php echo ((isset($this->_rootref['L_5035'])) ? $this->_rootref['L_5035'] : ((isset($MSG['5035'])) ? $MSG['5035'] : '{ L_5035 }')); ?></td>
						<td>
							<p><?php echo ((isset($this->_rootref['L_5036'])) ? $this->_rootref['L_5036'] : ((isset($MSG['5036'])) ? $MSG['5036'] : '{ L_5036 }')); ?></p>
							<input type="text" name="msgstoshow" size="4" maxlength="4" value="<?php echo (isset($this->_rootref['MSGTOSHOW'])) ? $this->_rootref['MSGTOSHOW'] : ''; ?>">
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<input type="radio" name="active" value="1"<?php if ($this->_rootref['B_ACTIVE']) {  ?> checked="checked"<?php } ?>> <?php echo ((isset($this->_rootref['L_5038'])) ? $this->_rootref['L_5038'] : ((isset($MSG['5038'])) ? $MSG['5038'] : '{ L_5038 }')); ?><br>
							<input type="radio" name="active" value="0"<?php if ($this->_rootref['B_DEACTIVE']) {  ?> checked="checked"<?php } ?>> <?php echo ((isset($this->_rootref['L_5039'])) ? $this->_rootref['L_5039'] : ((isset($MSG['5039'])) ? $MSG['5039'] : '{ L_5039 }')); ?>
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