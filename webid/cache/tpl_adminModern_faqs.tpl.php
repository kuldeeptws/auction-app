<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5232'])) ? $this->_rootref['L_5232'] : ((isset($MSG['5232'])) ? $MSG['5232'] : '{ L_5232 }')); ?></h4>
				<form name="deletefaqs" action="" method="post">
					<table class="table table-striped table-bordered">
					<tr>
						<td colspan="3"><a href="newfaq.php"><?php echo ((isset($this->_rootref['L_5231'])) ? $this->_rootref['L_5231'] : ((isset($MSG['5231'])) ? $MSG['5231'] : '{ L_5231 }')); ?></a></td>
					</tr>
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
					<tr>
						<th width="86%"><?php echo $_cats_val['CAT']; ?></th>
						<th>&nbsp;</th>
					</tr>
	<?php $_faqs_count = (isset($_cats_val['faqs'])) ? sizeof($_cats_val['faqs']) : 0;if ($_faqs_count) {for ($_faqs_i = 0; $_faqs_i < $_faqs_count; ++$_faqs_i){$_faqs_val = &$_cats_val['faqs'][$_faqs_i]; ?>
					<tr>
						<td><a href="editfaq.php?id=<?php echo $_faqs_val['ID']; ?>"><?php echo $_faqs_val['FAQ']; ?></a></td>
						<td align="center">
							<input type="checkbox" name="delete[]" value="<?php echo $_faqs_val['ID']; ?>">
						</td>
					</tr>
	<?php }} }} ?>
					<tr>
						<td align="right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></td>
						<td align="center"><input type="checkbox" class="selectall" value="delete"></td>
					</tr>
					</table>
					<input type="hidden" name="action" value="delete">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?>">
				</form>
			</div>
		</div>