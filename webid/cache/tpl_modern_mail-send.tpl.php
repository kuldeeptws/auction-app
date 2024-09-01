<script type="text/JavaScript">
$(".form1").submit(function(){
	if ($(".to").val() == "")
	{
		return false;
	}
	if ($(".subject").val() == "")
	{
		return false;
	}
	if ($(".message").val() == "")
	{
		return false;
	}
	return true;
});
</script>
<div class="well">
	<form class="form-horizontal" name="form1" id="form1" method="post" action="mail.php">
		<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
		<div class="form-group">
			<label for="to" class="col-sm-2 control-label"><?php echo ((isset($this->_rootref['L_241'])) ? $this->_rootref['L_241'] : ((isset($MSG['241'])) ? $MSG['241'] : '{ L_241 }')); ?>:</label>
			<div class="col-sm-10">
				<input name="sendto" type="text" class="form-control" value="<?php echo (isset($this->_rootref['REPLY_TO'])) ? $this->_rootref['REPLY_TO'] : ''; ?>" id="to">
			</div>
		</div>
		<div class="form-group">
			<label for="subject" class="col-sm-2 control-label"><?php echo ((isset($this->_rootref['L_332'])) ? $this->_rootref['L_332'] : ((isset($MSG['332'])) ? $MSG['332'] : '{ L_332 }')); ?>:</label>
			<div class="col-sm-10">
				<input name="subject" type="text" value="<?php echo (isset($this->_rootref['REPLY_SUBJECT'])) ? $this->_rootref['REPLY_SUBJECT'] : ''; ?>" id="subject" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label for="message" class="col-sm-2 control-label"><?php echo ((isset($this->_rootref['L_333'])) ? $this->_rootref['L_333'] : ((isset($MSG['333'])) ? $MSG['333'] : '{ L_333 }')); ?>:</label>
			<div class="col-sm-10">
				<textarea name="message" rows="5" id="message" class="form-control"></textarea>
			</div>
		</div>
		<div class="text-center">
<?php if ($this->_rootref['B_QMKPUBLIC']) {  ?>
			<div class="checkbox">
				<label><input type="checkbox" name="public"<?php echo (isset($this->_rootref['REPLY_PUBLIC'])) ? $this->_rootref['REPLY_PUBLIC'] : ''; ?>> <?php echo ((isset($this->_rootref['L_543'])) ? $this->_rootref['L_543'] : ((isset($MSG['543'])) ? $MSG['543'] : '{ L_543 }')); ?></label>
			</div>
			<input type="hidden" name="is_question" value="0">
<?php } ?>
			<input type="hidden" name="hash" value="<?php echo (isset($this->_rootref['HASH'])) ? $this->_rootref['HASH'] : ''; ?>">
			<input class="btn btn-primary" name="submit" type="submit" value="<?php echo ((isset($this->_rootref['L_submit'])) ? $this->_rootref['L_submit'] : ((isset($MSG['submit'])) ? $MSG['submit'] : '{ L_submit }')); ?>">
		</div>
	</form>
</div>
<div class="text-center">
<?php if ($this->_rootref['B_CONVO']) {  ?>
	<br>
	<div style="overflow:scroll; min-height:100px; max-height:500px;">
	<?php $_convo_count = (isset($this->_tpldata['convo'])) ? sizeof($this->_tpldata['convo']) : 0;if ($_convo_count) {for ($_convo_i = 0; $_convo_i < $_convo_count; ++$_convo_i){$_convo_val = &$this->_tpldata['convo'][$_convo_i]; ?>
		<div style=" padding: 5px; <?php echo $_convo_val['BGCOLOUR']; ?>">
			<?php echo $_convo_val['MSG']; ?>
		</div>
	<?php }} ?>
	</div>
<?php } ?>
</div>
<br>