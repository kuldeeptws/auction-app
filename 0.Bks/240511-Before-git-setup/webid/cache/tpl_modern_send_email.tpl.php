<script type="text/javascript">
function SubmitFriendForm() {
	document.friend.submit();
}
function ResetFriendForm() {
	document.friend.reset();
}
</script>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div class="grid-margin-btm-md">
			<a class="btn btn-default btn-xs" href="item.php?id=<?php echo (isset($this->_rootref['AUCT_ID'])) ? $this->_rootref['AUCT_ID'] : ''; ?>"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span> <?php echo ((isset($this->_rootref['L_138'])) ? $this->_rootref['L_138'] : ((isset($MSG['138'])) ? $MSG['138'] : '{ L_138 }')); ?></a>
		</div>
<?php if ($this->_rootref['MESSAGE'] != ('')) {  ?>
		<div class="alert alert-success" role="alert"><?php echo (isset($this->_rootref['MESSAGE'])) ? $this->_rootref['MESSAGE'] : ''; ?></div>
<?php } else { if ($this->_rootref['ERROR'] != ('')) {  ?>
		<div class="alert alert-danger" role="alert">
			<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
		</div>
	<?php } ?>
		<div class="well">
			<legend>
				<?php echo ((isset($this->_rootref['L_645'])) ? $this->_rootref['L_645'] : ((isset($MSG['645'])) ? $MSG['645'] : '{ L_645 }')); ?>
			</legend>
			<form name="sendemail" action="send_email.php" method="post">
				<div class="form-group">
					<label><?php echo ((isset($this->_rootref['L_125'])) ? $this->_rootref['L_125'] : ((isset($MSG['125'])) ? $MSG['125'] : '{ L_125 }')); ?></label>
					<input type="hidden" name="seller_nick" class="form-control" value="<?php echo (isset($this->_rootref['SELLER_NICK'])) ? $this->_rootref['SELLER_NICK'] : ''; ?>">
					<?php echo (isset($this->_rootref['SELLER_NICK'])) ? $this->_rootref['SELLER_NICK'] : ''; ?>
				</div>
	<?php if ($this->_rootref['B_LOGGED_IN'] == (false)) {  ?>
				<div class="form-group">
					<label><?php echo ((isset($this->_rootref['L_006'])) ? $this->_rootref['L_006'] : ((isset($MSG['006'])) ? $MSG['006'] : '{ L_006 }')); ?></label>
					<input type="text" name="sender_email" class="form-control" value="">
				</div>
	<?php } ?>
				<div class="form-group">
					<label><?php echo ((isset($this->_rootref['L_017'])) ? $this->_rootref['L_017'] : ((isset($MSG['017'])) ? $MSG['017'] : '{ L_017 }')); ?></label>
					<input type="hidden" name="item_title" class="form-control" value="<?php echo (isset($this->_rootref['ITEM_TITLE'])) ? $this->_rootref['ITEM_TITLE'] : ''; ?>">
					<?php echo (isset($this->_rootref['ITEM_TITLE'])) ? $this->_rootref['ITEM_TITLE'] : ''; ?>
				</div>
		<!-- your email -->
				<div class="form-group">
					<label><?php echo ((isset($this->_rootref['L_002'])) ? $this->_rootref['L_002'] : ((isset($MSG['002'])) ? $MSG['002'] : '{ L_002 }')); ?></label>
					<input type="text" name="sender_name" class="form-control" value="<?php echo (isset($this->_rootref['YOURUSERNAME'])) ? $this->_rootref['YOURUSERNAME'] : ''; ?>">
				</div>
		<!-- comment -->
				<div class="form-group">
					<label><?php echo ((isset($this->_rootref['L_650'])) ? $this->_rootref['L_650'] : ((isset($MSG['650'])) ? $MSG['650'] : '{ L_650 }')); ?></label>
					<textarea name="sender_question" class="form-control" rows="6"><?php echo (isset($this->_rootref['SELLER_QUESTION'])) ? $this->_rootref['SELLER_QUESTION'] : ''; ?></textarea>
				</div>
				<br>
				<input type="hidden" name="seller_email" value="<?php echo (isset($this->_rootref['SELLER_EMAIL'])) ? $this->_rootref['SELLER_EMAIL'] : ''; ?>">
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['AUCT_ID'])) ? $this->_rootref['AUCT_ID'] : ''; ?>">
				<input type="hidden" name="action" value="<?php echo ((isset($this->_rootref['L_106'])) ? $this->_rootref['L_106'] : ((isset($MSG['106'])) ? $MSG['106'] : '{ L_106 }')); ?>">
				<input type="submit" name="" value="<?php echo ((isset($this->_rootref['L_5201'])) ? $this->_rootref['L_5201'] : ((isset($MSG['5201'])) ? $MSG['5201'] : '{ L_5201 }')); ?>" class="btn btn-primary">
	<?php if ($this->_rootref['B_LOGGED_IN']) {  ?>
				<input type="hidden" name="sender_email" size="25" value="<?php echo (isset($this->_rootref['EMAIL'])) ? $this->_rootref['EMAIL'] : ''; ?>">
	<?php } ?>
				<input type="reset" name="" value="<?php echo ((isset($this->_rootref['L_035'])) ? $this->_rootref['L_035'] : ((isset($MSG['035'])) ? $MSG['035'] : '{ L_035 }')); ?>" class="btn btn-default">
			</form>
		</div>
<?php } ?>
	</div>
</div>