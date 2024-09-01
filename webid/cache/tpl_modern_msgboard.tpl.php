<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<legend>
			<?php echo ((isset($this->_rootref['L_5030'])) ? $this->_rootref['L_5030'] : ((isset($MSG['5030'])) ? $MSG['5030'] : '{ L_5030 }')); ?>
		</legend>
		<div class="row">
			<div class="col-md-12 grid-margin-btm">
				<a class="btn btn-default btn-xs" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>boards.php"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span> <?php echo ((isset($this->_rootref['L_5058'])) ? $this->_rootref['L_5058'] : ((isset($MSG['5058'])) ? $MSG['5058'] : '{ L_5058 }')); ?></a>
			</div>
<?php if ($this->_rootref['B_LOGGED_IN'] == (false)) {  ?>
			<div class="alert alert-danger" role="alert">
				<?php echo ((isset($this->_rootref['L_5056'])) ? $this->_rootref['L_5056'] : ((isset($MSG['5056'])) ? $MSG['5056'] : '{ L_5056 }')); ?>
			</div>
<?php } ?>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="alert alert-info text-center" role="alert"><?php echo ((isset($this->_rootref['L_30_0181'])) ? $this->_rootref['L_30_0181'] : ((isset($MSG['30_0181'])) ? $MSG['30_0181'] : '{ L_30_0181 }')); ?> <?php echo (isset($this->_rootref['BOARD_NAME'])) ? $this->_rootref['BOARD_NAME'] : ''; ?></div>
<?php if ($this->_rootref['ERROR'] != ('')) {  ?>
				<div class="alert alert-danger text-center" role="alert"><?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?></div>
<?php } ?>
				<form name="messageboard" action="" method="post">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="hidden" name="action" value="insertmessage">
					<input type="hidden" name="board_id" value="<?php echo (isset($this->_rootref['BOARD_ID'])) ? $this->_rootref['BOARD_ID'] : ''; ?>">
					<textarea class="form-control" name="newmessage"  rows="5"></textarea>
					<br>
					<div class="text-center">
						<input type="submit" name="Submit" value="<?php echo ((isset($this->_rootref['L_5057'])) ? $this->_rootref['L_5057'] : ((isset($MSG['5057'])) ? $MSG['5057'] : '{ L_5057 }')); ?>" class="btn btn-primary">
					</div>
				</form>
				<div class="row">
					<div class="col-md-12">
						<legend><?php echo ((isset($this->_rootref['L_5059'])) ? $this->_rootref['L_5059'] : ((isset($MSG['5059'])) ? $MSG['5059'] : '{ L_5059 }')); ?></legend>
<?php $_msgs_count = (isset($this->_tpldata['msgs'])) ? sizeof($this->_tpldata['msgs']) : 0;if ($_msgs_count) {for ($_msgs_i = 0; $_msgs_i < $_msgs_count; ++$_msgs_i){$_msgs_val = &$this->_tpldata['msgs'][$_msgs_i]; ?>
						<div class="well well-sm">
	<?php if ($_msgs_val['USERNAME'] != ('')) {  ?>
							<small><?php echo ((isset($this->_rootref['L_5060'])) ? $this->_rootref['L_5060'] : ((isset($MSG['5060'])) ? $MSG['5060'] : '{ L_5060 }')); ?></small> <b><?php echo $_msgs_val['USERNAME']; ?></b> - <small><?php echo $_msgs_val['POSTED']; ?></small><hr />
	<?php } else { ?>
							<?php echo ((isset($this->_rootref['L_5060'])) ? $this->_rootref['L_5060'] : ((isset($MSG['5060'])) ? $MSG['5060'] : '{ L_5060 }')); ?> <b><?php echo ((isset($this->_rootref['L_5061'])) ? $this->_rootref['L_5061'] : ((isset($MSG['5061'])) ? $MSG['5061'] : '{ L_5061 }')); ?></b> - <?php echo $_msgs_val['POSTED']; ?>
	<?php } ?>
							<span class="glyphicon glyphicon-envelope" style="margin-right: 10px;" aria-hidden="true"></span><?php echo $_msgs_val['MSG']; ?>
						</div>
<?php }} ?>
					</div>
				</div>
				<div class="col-md-12 text-center">
					<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
					<br>
					<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
					<?php echo $_pages_val['PAGE']; ?>&nbsp;
<?php }} ?>
					<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>
				</div>
			</div>
		</div>
	</div>
</div>