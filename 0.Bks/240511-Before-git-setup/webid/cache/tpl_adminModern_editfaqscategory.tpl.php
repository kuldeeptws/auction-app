<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5236'])) ? $this->_rootref['L_5236'] : ((isset($MSG['5236'])) ? $MSG['5236'] : '{ L_5236 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5230'])) ? $this->_rootref['L_5230'] : ((isset($MSG['5230'])) ? $MSG['5230'] : '{ L_5230 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo (isset($this->_rootref['FAQ_NAME'])) ? $this->_rootref['FAQ_NAME'] : ''; ?></h4>
				<form name="errorlog" action="" method="post">
					<table class="table table-striped table-bordered">
<?php $_flangs_count = (isset($this->_tpldata['flangs'])) ? sizeof($this->_tpldata['flangs']) : 0;if ($_flangs_count) {for ($_flangs_i = 0; $_flangs_i < $_flangs_count; ++$_flangs_i){$_flangs_val = &$this->_tpldata['flangs'][$_flangs_i]; ?>
					<tr>
	<?php if ($_flangs_val['S_ROW_COUNT'] == 0) {  ?>
						<td width="20%"><?php echo ((isset($this->_rootref['L_5284'])) ? $this->_rootref['L_5284'] : ((isset($MSG['5284'])) ? $MSG['5284'] : '{ L_5284 }')); ?></td>
	<?php } else { ?>
						<td>&nbsp;</td>
	<?php } ?>
						<td width="5%"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/flags/<?php echo $_flangs_val['LANGUAGE']; ?>.gif"></td>
						<td width="75%" valign="top">
							<input type="text" name="category[<?php echo $_flangs_val['LANGUAGE']; ?>]" size="50" maxlength="150" value="<?php echo $_flangs_val['TRANSLATION']; ?>">
						</td>
					</tr>
<?php }} ?>
					</table>
					<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?>">
				</form>
			</div>
		</div>