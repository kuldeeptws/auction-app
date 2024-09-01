<html>
<head>
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>/themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/style.css" />
</head>
<body style="margin:0;">
<div style="width:400px; padding:40px;" class="centre">
	<div class="plain-box" style="text-align:center; padding: 10px; font-size: 1.4em;">
	<form action="" method="post">
	<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
	<?php echo ((isset($this->_rootref['L_delete_category_move_auctions'])) ? $this->_rootref['L_delete_category_move_auctions'] : ((isset($MSG['delete_category_move_auctions'])) ? $MSG['delete_category_move_auctions'] : '{ L_delete_category_move_auctions }')); ?>
	<table cellpadding="0" cellspacing="0">
<?php $_categories_count = (isset($this->_tpldata['categories'])) ? sizeof($this->_tpldata['categories']) : 0;if ($_categories_count) {for ($_categories_i = 0; $_categories_i < $_categories_count; ++$_categories_i){$_categories_val = &$this->_tpldata['categories'][$_categories_i]; if ($_categories_val['HAS_CHILDREN']) {  ?>
			<tr>
				<td><?php echo $_categories_val['NAME']; ?></td><td>
					<select name="delete[<?php echo $_categories_val['ID']; ?>]">
						<option value="delete"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></option>
						<option value="move"><?php echo ((isset($this->_rootref['L_840'])) ? $this->_rootref['L_840'] : ((isset($MSG['840'])) ? $MSG['840'] : '{ L_840 }')); ?>: </option>
					</select>
				</td>
				<td><input type="text" size="5" name="moveid[<?php echo $_categories_val['ID']; ?>]"></td>
			</tr>
	<?php } else { ?>
			<input type="hidden" name="delete[<?php echo $_categories_val['ID']; ?>]" value="delete">
	<?php } }} ?>
		</table>
		<p><?php echo ((isset($this->_rootref['L_this_cannot_be_undone'])) ? $this->_rootref['L_this_cannot_be_undone'] : ((isset($MSG['this_cannot_be_undone'])) ? $MSG['this_cannot_be_undone'] : '{ L_this_cannot_be_undone }')); ?></p>
		<div class="break">&nbsp;</div>
		<button type="submit" name="action" value="Yes"><?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?></button>
		<button type="submit" name="action" value="No"><?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?></button>
	</form>
	</div>
</div>
<div>