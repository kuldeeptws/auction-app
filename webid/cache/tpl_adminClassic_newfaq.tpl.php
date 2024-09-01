<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5236'])) ? $this->_rootref['L_5236'] : ((isset($MSG['5236'])) ? $MSG['5236'] : '{ L_5236 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5231'])) ? $this->_rootref['L_5231'] : ((isset($MSG['5231'])) ? $MSG['5231'] : '{ L_5231 }')); ?></h4>
				<form name="newfaq" action="" method="post">
					<table width="98%" cellpadding="2" class="blank">
						<tr valign="top">
							<td align="right"><?php echo ((isset($this->_rootref['L_5231'])) ? $this->_rootref['L_5231'] : ((isset($MSG['5231'])) ? $MSG['5231'] : '{ L_5231 }')); ?>:</td>
							<td>&nbsp;</td>
							<td>
								<select name="category">
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
									<option value="<?php echo $_cats_val['ID']; ?>"><?php echo $_cats_val['CATEGORY']; ?></option>
<?php }} ?>
								</select>
							</td>
						</tr>
<?php $_qs_count = (isset($this->_tpldata['qs'])) ? sizeof($this->_tpldata['qs']) : 0;if ($_qs_count) {for ($_qs_i = 0; $_qs_i < $_qs_count; ++$_qs_i){$_qs_val = &$this->_tpldata['qs'][$_qs_i]; ?>
						<tr>
		<?php if ($_qs_val['S_ROW_COUNT'] == 0) {  ?>
							<td><?php echo ((isset($this->_rootref['L_5239'])) ? $this->_rootref['L_5239'] : ((isset($MSG['5239'])) ? $MSG['5239'] : '{ L_5239 }')); ?>:</td>
		<?php } else { ?>
							<td>&nbsp;</td>
		<?php } ?>
							<td align="right"><img src="../images/flags/<?php echo $_qs_val['LANG']; ?>.gif"></td>
							<td><input type="text" name="question[<?php echo $_qs_val['LANG']; ?>]" maxlength="200" value="<?php echo $_qs_val['QUESTION']; ?>"></td>
						</tr>
<?php }} $_as_count = (isset($this->_tpldata['as'])) ? sizeof($this->_tpldata['as']) : 0;if ($_as_count) {for ($_as_i = 0; $_as_i < $_as_count; ++$_as_i){$_as_val = &$this->_tpldata['as'][$_as_i]; ?>
						<tr>
		<?php if ($_as_val['S_ROW_COUNT'] == 0) {  ?>
							<td valign="top"><?php echo ((isset($this->_rootref['L_5240'])) ? $this->_rootref['L_5240'] : ((isset($MSG['5240'])) ? $MSG['5240'] : '{ L_5240 }')); ?>:</td>
		<?php } else { ?>
							<td>&nbsp;</td>
		<?php } ?>
							<td align="right" valign="top"><img src="../images/flags/<?php echo $_as_val['LANG']; ?>.gif"></td>
							<td><?php echo $_as_val['ANSWER']; ?></td>
						</tr>
<?php }} ?>
						</tr>
					</table>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?>">
				</form>
			</div>
		</div>