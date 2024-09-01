<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_board_management'])) ? $this->_rootref['L_board_management'] : ((isset($MSG['board_management'])) ? $MSG['board_management'] : '{ L_board_management }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5031'])) ? $this->_rootref['L_5031'] : ((isset($MSG['5031'])) ? $MSG['5031'] : '{ L_5031 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<table width="98%" cellpadding="0" cellspacing="0" class="blank">
						<tr>
							<td width="24%"><?php echo ((isset($this->_rootref['L_5034'])) ? $this->_rootref['L_5034'] : ((isset($MSG['5034'])) ? $MSG['5034'] : '{ L_5034 }')); ?></td>
							<td width="76%">
								<input type="text" name="name" size="25" maxlength="255" value="<?php echo (isset($this->_rootref['NAME'])) ? $this->_rootref['NAME'] : ''; ?>">
							</td>
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
					<input type="hidden" name="action" value="insert">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?>">
				</form>
			</div>
		</div>