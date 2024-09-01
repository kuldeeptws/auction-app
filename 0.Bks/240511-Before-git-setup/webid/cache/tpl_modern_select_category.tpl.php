<style type="text/css">.box {height: 100; width:300;}</style>
<script type="text/javascript">
function SubmitBoxes(N)
{
	$('#catformbox').val(N);
	$('#catform').submit();
}
</script>
<div class="row">
	<div class="col-sm-12">
		<div class="col-sm-6 col-sm-offset-3 well">
			<legend><?php echo ((isset($this->_rootref['L_028'])) ? $this->_rootref['L_028'] : ((isset($MSG['028'])) ? $MSG['028'] : '{ L_028 }')); ?></legend>
<?php if ($this->_rootref['ERROR'] != ('')) {  ?>
			<div class="alert alert-danger" role="alert">
				<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
			</div>
<?php } ?>
			<div class="row">
				<a name="goto"></a>
				<form name="catform" id="catform" action="select_category.php#goto" method="post">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="hidden" name="action" value="process">
					<input type="hidden" name="box" value="" id="catformbox">
					<input type="hidden" name="cat_no" value="<?php echo (isset($this->_rootref['CAT_NO'])) ? $this->_rootref['CAT_NO'] : ''; ?>">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="form-group">
							<label><?php if ($this->_rootref['CAT_NO'] == (2)) {  echo ((isset($this->_rootref['L_2__0041'])) ? $this->_rootref['L_2__0041'] : ((isset($MSG['2__0041'])) ? $MSG['2__0041'] : '{ L_2__0041 }')); ?> <?php echo (isset($this->_rootref['COST'])) ? $this->_rootref['COST'] : ''; } else { echo ((isset($this->_rootref['L_2__0038'])) ? $this->_rootref['L_2__0038'] : ((isset($MSG['2__0038'])) ? $MSG['2__0038'] : '{ L_2__0038 }')); } ?></label>
<?php $_boxes_count = (isset($this->_tpldata['boxes'])) ? sizeof($this->_tpldata['boxes']) : 0;if ($_boxes_count) {for ($_boxes_i = 0; $_boxes_i < $_boxes_count; ++$_boxes_i){$_boxes_val = &$this->_tpldata['boxes'][$_boxes_i]; ?>
							<select name="cat<?php echo $_boxes_val['I']; ?>" class="form-control" onchange="SubmitBoxes(<?php echo $_boxes_val['I']; ?>)">
								<option value="any"}><?php echo ((isset($this->_rootref['L_2__0047'])) ? $this->_rootref['L_2__0047'] : ((isset($MSG['2__0047'])) ? $MSG['2__0047'] : '{ L_2__0047 }')); ?></option>
	<?php $_cats_count = (isset($_boxes_val['cats'])) ? sizeof($_boxes_val['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$_boxes_val['cats'][$_cats_i]; ?>
								<option value="<?php echo $_cats_val['K']; ?>" <?php echo $_cats_val['SELECTED']; ?>><?php echo $_cats_val['CATNAME']; ?></option>
	<?php }} ?>
							</select>
							<br>
	<?php if ($_boxes_val['B_NOWLINE']) {  } }} ?>
						</div>
					</div>
<?php if ($this->_rootref['B_SHOWBUTTON']) {  ?>
					<div class="text-center">
						<input type="submit" name="submitit" value="<?php if ($this->_rootref['B_EDITING']) {  echo ((isset($this->_rootref['L_25_0168'])) ? $this->_rootref['L_25_0168'] : ((isset($MSG['25_0168'])) ? $MSG['25_0168'] : '{ L_25_0168 }')); } else { echo ((isset($this->_rootref['L_2__0047'])) ? $this->_rootref['L_2__0047'] : ((isset($MSG['2__0047'])) ? $MSG['2__0047'] : '{ L_2__0047 }')); } ?>" class="btn btn-primary">
					</div>
<?php } ?>
				</form>
			</div>
<?php if ($this->_rootref['CAT_NO'] == (2) && ! $this->_rootref['B_SHOWBUTTON']) {  ?>
			<div class="text-center">
				<form name="catform" action="sell.php" method="post">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="hidden" name="act" value="skipexcat">
					<input type="submit" name="submitit" value="<?php echo ((isset($this->_rootref['L_805'])) ? $this->_rootref['L_805'] : ((isset($MSG['805'])) ? $MSG['805'] : '{ L_805 }')); ?>" class="btn btn-primary">
				</form>
			</div>
<?php } ?>
		</div>
	</div>
</div>