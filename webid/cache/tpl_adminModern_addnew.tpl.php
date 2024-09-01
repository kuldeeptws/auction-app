<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_516'])) ? $this->_rootref['L_516'] : ((isset($MSG['516'])) ? $MSG['516'] : '{ L_516 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?></h4>
				<form name="addnew" action="" method="post">
					<table class="table table-striped table-bordered">
<?php $_lang_count = (isset($this->_tpldata['lang'])) ? sizeof($this->_tpldata['lang']) : 0;if ($_lang_count) {for ($_lang_i = 0; $_lang_i < $_lang_count; ++$_lang_i){$_lang_val = &$this->_tpldata['lang'][$_lang_i]; ?>
						<tr valign="top">
	<?php if ($_lang_val['S_ROW_COUNT'] == 0) {  ?>
							<td align="right"><?php echo ((isset($this->_rootref['L_519'])) ? $this->_rootref['L_519'] : ((isset($MSG['519'])) ? $MSG['519'] : '{ L_519 }')); ?>:</td>
	<?php } else { ?>
							<td>&nbsp;</td>
	<?php } ?>
							<td width="35" align="right"><img src="../images/flags/<?php echo $_lang_val['LANG']; ?>.gif"></td>
							<td><input type="text" name="title[<?php echo $_lang_val['LANG']; ?>]" size="40" maxlength="255" value="<?php echo $_lang_val['TITLE']; ?>"></td>
						</tr>
<?php }} $_lang_count = (isset($this->_tpldata['lang'])) ? sizeof($this->_tpldata['lang']) : 0;if ($_lang_count) {for ($_lang_i = 0; $_lang_i < $_lang_count; ++$_lang_i){$_lang_val = &$this->_tpldata['lang'][$_lang_i]; ?>
						<tr>
	<?php if ($_lang_val['S_ROW_COUNT'] == 0) {  ?>
							<td valign="top" align="right"><?php echo ((isset($this->_rootref['L_520'])) ? $this->_rootref['L_520'] : ((isset($MSG['520'])) ? $MSG['520'] : '{ L_520 }')); ?>:</td>
	<?php } else { ?>
							<td>&nbsp;</td>
	<?php } ?>
							<td align="right" valign="top"><img src="../images/flags/<?php echo $_lang_val['LANG']; ?>.gif"></td>
							<td><?php echo $_lang_val['CONTENT']; ?></td>
						</tr>
<?php }} ?>
						</tr>
						<tr>
							<td align="right"><?php echo ((isset($this->_rootref['L_521'])) ? $this->_rootref['L_521'] : ((isset($MSG['521'])) ? $MSG['521'] : '{ L_521 }')); ?></td>
							<td>&nbsp;</td>
							<td>
								<input type="radio" name="suspended" value="0"<?php if ($this->_rootref['B_ACTIVE']) {  ?> checked="checked"<?php } ?>> <?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?>
								<input type="radio" name="suspended" value="1"<?php if ($this->_rootref['B_INACTIVE']) {  ?> checked="checked"<?php } ?>> <?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?>
							</td>
						</tr>
					</table>
<?php if ($this->_rootref['ID'] != ('')) {  ?>
					<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
<?php } ?>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" class="centre" value="<?php echo (isset($this->_rootref['BUTTON'])) ? $this->_rootref['BUTTON'] : ''; ?>">
				</form>
			</div>
		</div>