<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5236'])) ? $this->_rootref['L_5236'] : ((isset($MSG['5236'])) ? $MSG['5236'] : '{ L_5236 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5230'])) ? $this->_rootref['L_5230'] : ((isset($MSG['5230'])) ? $MSG['5230'] : '{ L_5230 }')); ?></h4>
				<form name="newfaqcat" action="" method="post">
					<table width="98%" cellpadding="0" cellspacing="0">
<?php if ($this->_rootref['B_ADDCAT']) {  ?>
						<tr bgcolor="#FFFF66">
							<td><?php echo ((isset($this->_rootref['L_165'])) ? $this->_rootref['L_165'] : ((isset($MSG['165'])) ? $MSG['165'] : '{ L_165 }')); ?></td>
							<td colspan="2">
	<?php $_lang_count = (isset($this->_tpldata['lang'])) ? sizeof($this->_tpldata['lang']) : 0;if ($_lang_count) {for ($_lang_i = 0; $_lang_i < $_lang_count; ++$_lang_i){$_lang_val = &$this->_tpldata['lang'][$_lang_i]; ?>
								<p><?php echo $_lang_val['LANG']; ?>:&nbsp;<input type="text" name="cat_name[<?php echo $_lang_val['LANG']; ?>]" size="25" maxlength="200"></p>
	<?php }} ?>
								<button type="submit" name="action" value="Insert"><?php echo ((isset($this->_rootref['L_5204'])) ? $this->_rootref['L_5204'] : ((isset($MSG['5204'])) ? $MSG['5204'] : '{ L_5204 }')); ?></button>
							</td>
						</tr>
<?php } else { ?>
						<tr>
							<td colspan="3"><a href="faqscategories.php?do=add"><?php echo ((isset($this->_rootref['L_5234'])) ? $this->_rootref['L_5234'] : ((isset($MSG['5234'])) ? $MSG['5234'] : '{ L_5234 }')); ?></a></td>
						</tr>
<?php } ?>
						<tr>
							<th width="14%"><b><?php echo ((isset($this->_rootref['L_5237'])) ? $this->_rootref['L_5237'] : ((isset($MSG['5237'])) ? $MSG['5237'] : '{ L_5237 }')); ?></b></th>
							<th><b><?php echo ((isset($this->_rootref['L_287'])) ? $this->_rootref['L_287'] : ((isset($MSG['287'])) ? $MSG['287'] : '{ L_287 }')); ?></b></th>
							<th width="14%"><b><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></b></th>
						</tr>
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
						<tr<?php if ($_cats_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
							<td><?php echo $_cats_val['ID']; ?></td>
							<td><a href="editfaqscategory.php?id=<?php echo $_cats_val['ID']; ?>"><?php echo $_cats_val['CATEGORY']; ?></a> <?php if ($_cats_val['FAQS'] > 0) {  echo $_cats_val['FAQSTXT']; } ?></td>
							<td align="center"><input type="checkbox" name="delete[]" value="<?php echo $_cats_val['ID']; ?>"></td>
						</tr>
<?php }} ?>
					</table>
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button type="submit" name="action" value="Delete" class="button"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></button>
				</form>
			</div>
		</div>