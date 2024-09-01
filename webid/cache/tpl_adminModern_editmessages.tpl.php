<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_board_management'])) ? $this->_rootref['L_board_management'] : ((isset($MSG['board_management'])) ? $MSG['board_management'] : '{ L_board_management }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo (isset($this->_rootref['BOARD_NAME'])) ? $this->_rootref['BOARD_NAME'] : ''; ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5063'])) ? $this->_rootref['L_5063'] : ((isset($MSG['5063'])) ? $MSG['5063'] : '{ L_5063 }')); ?></h4>
				<table class="table table-striped table-bordered">
					<tr>
						<td bgcolor="#FFFF66" colspan="4">
							<form name="clearmessages" action="" method="post">
							<?php echo ((isset($this->_rootref['L_5065'])) ? $this->_rootref['L_5065'] : ((isset($MSG['5065'])) ? $MSG['5065'] : '{ L_5065 }')); ?>
							<input type="text" name="days">
							<?php echo ((isset($this->_rootref['L_5115'])) ? $this->_rootref['L_5115'] : ((isset($MSG['5115'])) ? $MSG['5115'] : '{ L_5115 }')); ?>
							<input type="hidden" name="action" value="purge">
							<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
							<input type="submit" name="submit" value="<?php echo ((isset($this->_rootref['L_5029'])) ? $this->_rootref['L_5029'] : ((isset($MSG['5029'])) ? $MSG['5029'] : '{ L_5029 }')); ?>">
							</form>
						</td>
					</tr>
					<tr>
						<th width="55%"><?php echo ((isset($this->_rootref['L_5059'])) ? $this->_rootref['L_5059'] : ((isset($MSG['5059'])) ? $MSG['5059'] : '{ L_5059 }')); ?></th>
						<th width="15%"><?php echo ((isset($this->_rootref['L_5060'])) ? $this->_rootref['L_5060'] : ((isset($MSG['5060'])) ? $MSG['5060'] : '{ L_5060 }')); ?></th>
						<th width="15%"><?php echo ((isset($this->_rootref['L_314'])) ? $this->_rootref['L_314'] : ((isset($MSG['314'])) ? $MSG['314'] : '{ L_314 }')); ?></th>
						<th width="15%">&nbsp;</th>
					</tr>
<?php $_msgs_count = (isset($this->_tpldata['msgs'])) ? sizeof($this->_tpldata['msgs']) : 0;if ($_msgs_count) {for ($_msgs_i = 0; $_msgs_i < $_msgs_count; ++$_msgs_i){$_msgs_val = &$this->_tpldata['msgs'][$_msgs_i]; ?>
					<tr<?php if ($_msgs_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
						<td><?php echo $_msgs_val['MESSAGE']; ?></td>
						<td><?php echo $_msgs_val['POSTED_BY']; ?></td>
						<td><?php echo $_msgs_val['POSTED_AT']; ?></td>
						<td><a href="editmessage.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>&msg=<?php echo $_msgs_val['ID']; ?>"><?php echo ((isset($this->_rootref['L_298'])) ? $this->_rootref['L_298'] : ((isset($MSG['298'])) ? $MSG['298'] : '{ L_298 }')); ?></a>&nbsp;|&nbsp;<a href="deletemessage.php?board_id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>&id=<?php echo $_msgs_val['ID']; ?>"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></a></td>
					</tr>
<?php }} ?>
				</table>
			</div>
		</div>