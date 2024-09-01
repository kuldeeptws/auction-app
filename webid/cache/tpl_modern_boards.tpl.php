<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<legend>
			<?php echo ((isset($this->_rootref['L_5030'])) ? $this->_rootref['L_5030'] : ((isset($MSG['5030'])) ? $MSG['5030'] : '{ L_5030 }')); ?>
		</legend>
		<div class="panel panel-default">
			<table class="table table-striped table-bordered table-condensed">
				<tr>
					<th width="50%" valign="top">
						<?php echo ((isset($this->_rootref['L_5034'])) ? $this->_rootref['L_5034'] : ((isset($MSG['5034'])) ? $MSG['5034'] : '{ L_5034 }')); ?>
					</th>
					<th width="25%" valign="top">
						<?php echo ((isset($this->_rootref['L_num_messages'])) ? $this->_rootref['L_num_messages'] : ((isset($MSG['num_messages'])) ? $MSG['num_messages'] : '{ L_num_messages }')); ?>
					</th>
					<th width="25%" valign="top">
						<?php echo ((isset($this->_rootref['L_5053'])) ? $this->_rootref['L_5053'] : ((isset($MSG['5053'])) ? $MSG['5053'] : '{ L_5053 }')); ?>
					</th>
				</tr>
<?php $_boards_count = (isset($this->_tpldata['boards'])) ? sizeof($this->_tpldata['boards']) : 0;if ($_boards_count) {for ($_boards_i = 0; $_boards_i < $_boards_count; ++$_boards_i){$_boards_val = &$this->_tpldata['boards'][$_boards_i]; ?>
				<tr>
					<td width="50%" valign="top">
						<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>msgboard.php?board_id=<?php echo $_boards_val['ID']; ?>"><?php echo $_boards_val['NAME']; ?></a>
					</td>
					<td width="25%" valign="top" align="center">
						<?php echo $_boards_val['NUMMSG']; ?>
					</td>
					<td width="25%" valign="top" align="center">
						<?php echo $_boards_val['LASTMSG']; ?>
					</td>
				</tr>
<?php }} ?>
			</table>
		</div>
	</div>
</div>