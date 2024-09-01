<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_board_management'])) ? $this->_rootref['L_board_management'] : ((isset($MSG['board_management'])) ? $MSG['board_management'] : '{ L_board_management }')); ?></h4>
				<form name="deletelogs" action="" method="post">
					<div class="plain-box"><b><?php echo ((isset($this->_rootref['L_delete_board_warning'])) ? $this->_rootref['L_delete_board_warning'] : ((isset($MSG['delete_board_warning'])) ? $MSG['delete_board_warning'] : '{ L_delete_board_warning }')); ?></b></div>
					<table class="table table-striped table-bordered">
					<tr>
						<th width="6%"><?php echo ((isset($this->_rootref['L_129'])) ? $this->_rootref['L_129'] : ((isset($MSG['129'])) ? $MSG['129'] : '{ L_129 }')); ?></th>
						<th><?php echo ((isset($this->_rootref['L_294'])) ? $this->_rootref['L_294'] : ((isset($MSG['294'])) ? $MSG['294'] : '{ L_294 }')); ?></th>
						<th width="10%" align="center"><?php echo ((isset($this->_rootref['L_show'])) ? $this->_rootref['L_show'] : ((isset($MSG['show'])) ? $MSG['show'] : '{ L_show }')); ?></th>
						<th width="12%" align="center"><?php echo ((isset($this->_rootref['L_num_messages'])) ? $this->_rootref['L_num_messages'] : ((isset($MSG['num_messages'])) ? $MSG['num_messages'] : '{ L_num_messages }')); ?></th>
						<th width="16%">&nbsp;</th>
					</tr>
<?php $_boards_count = (isset($this->_tpldata['boards'])) ? sizeof($this->_tpldata['boards']) : 0;if ($_boards_count) {for ($_boards_i = 0; $_boards_i < $_boards_count; ++$_boards_i){$_boards_val = &$this->_tpldata['boards'][$_boards_i]; ?>
					<tr>
						<td><?php echo $_boards_val['ID']; ?></td>
						<td>
							<a href="editboards.php?id=<?php echo $_boards_val['ID']; ?>"><?php echo $_boards_val['NAME']; ?></a>
	<?php if ($_boards_val['ACTIVE'] == (2)) {  ?>
							<b>[<?php echo ((isset($this->_rootref['L_5039'])) ? $this->_rootref['L_5039'] : ((isset($MSG['5039'])) ? $MSG['5039'] : '{ L_5039 }')); ?>]</b>
	<?php } ?>
						</td>
						<td align="center"><?php echo $_boards_val['MSGTOSHOW']; ?></td>
						<td align="center"><?php echo $_boards_val['MSGCOUNT']; ?></td>
						<td align="center">
							<input type="checkbox" name="delete[]" value="<?php echo $_boards_val['ID']; ?>">
						</td>
					</tr>
<?php }} ?>
					<tr>
						<td colspan="4" align="right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></td>
						<td align="center"><input type="checkbox" class="selectall" value="delete"></td>
					</tr>
					</table>
					<input type="hidden" name="action" value="delete">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?>">
				</form>
			</div>
		</div>