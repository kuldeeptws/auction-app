<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<legend><?php echo ((isset($this->_rootref['L_139'])) ? $this->_rootref['L_139'] : ((isset($MSG['139'])) ? $MSG['139'] : '{ L_139 }')); ?></legend>
		<a class="btn btn-default btn-xs grid-margin-btm" href="item.php?id=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span> <?php echo ((isset($this->_rootref['L_138'])) ? $this->_rootref['L_138'] : ((isset($MSG['138'])) ? $MSG['138'] : '{ L_138 }')); ?></a>
<?php if ($this->_rootref['EMAILSENT'] == ('')) {  ?>
		<div class="alert alert-success" role="alert">
			<p>
				<b><?php echo ((isset($this->_rootref['L_017'])) ? $this->_rootref['L_017'] : ((isset($MSG['017'])) ? $MSG['017'] : '{ L_017 }')); ?> : <?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?></b><br>
				<b><?php echo ((isset($this->_rootref['L_146'])) ? $this->_rootref['L_146'] : ((isset($MSG['146'])) ? $MSG['146'] : '{ L_146 }')); ?> <?php echo (isset($this->_rootref['FRIEND_EMAIL'])) ? $this->_rootref['FRIEND_EMAIL'] : ''; ?></b>
			</p>
		</div>
<?php } else { if ($this->_rootref['ERROR'] != ('')) {  ?>
		<div class="alert alert-danger" role="alert">
			<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
		</div>
	<?php } ?>
		<div class="well">
			<form class="form-horizontal" name="friend" action="friend.php" method="post">
				<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
				<div class="alert alert-info" role="alert"><?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?></div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo ((isset($this->_rootref['L_140'])) ? $this->_rootref['L_140'] : ((isset($MSG['140'])) ? $MSG['140'] : '{ L_140 }')); ?></label>
					<div class="col-sm-9"><input type="text" name="friend_name" class="form-control" value="<?php echo (isset($this->_rootref['FRIEND_NAME'])) ? $this->_rootref['FRIEND_NAME'] : ''; ?>"></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo ((isset($this->_rootref['L_141'])) ? $this->_rootref['L_141'] : ((isset($MSG['141'])) ? $MSG['141'] : '{ L_141 }')); ?></label>
					<div class="col-sm-9"><input type="text" name="friend_email" class="form-control" value="<?php echo (isset($this->_rootref['FRIEND_EMAIL'])) ? $this->_rootref['FRIEND_EMAIL'] : ''; ?>"></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo ((isset($this->_rootref['L_002'])) ? $this->_rootref['L_002'] : ((isset($MSG['002'])) ? $MSG['002'] : '{ L_002 }')); ?></label>
					<div class="col-sm-9"><input type="text" name="sender_name" class="form-control" value="<?php echo (isset($this->_rootref['YOUR_NAME'])) ? $this->_rootref['YOUR_NAME'] : ''; ?>"></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo ((isset($this->_rootref['L_143'])) ? $this->_rootref['L_143'] : ((isset($MSG['143'])) ? $MSG['143'] : '{ L_143 }')); ?></label>
					<div class="col-sm-9"><input type="text" name="sender_email" class="form-control" value="<?php echo (isset($this->_rootref['YOUR_EMAIL'])) ? $this->_rootref['YOUR_EMAIL'] : ''; ?>"></div>
				</div>
				<div class="form-group">
					<div class="capchabox2"><?php echo (isset($this->_rootref['CAPCHA'])) ? $this->_rootref['CAPCHA'] : ''; ?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo ((isset($this->_rootref['L_144'])) ? $this->_rootref['L_144'] : ((isset($MSG['144'])) ? $MSG['144'] : '{ L_144 }')); ?></label>
					<div class="col-sm-9">
						<textarea name="sender_comment" class="form-control" rows="6"><?php echo (isset($this->_rootref['COMMENT'])) ? $this->_rootref['COMMENT'] : ''; ?></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="text-center">
						<input type="hidden" name="id" value="<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>">
						<input type="hidden" name="item_title" value="<?php echo (isset($this->_rootref['TITLE'])) ? $this->_rootref['TITLE'] : ''; ?>">
						<input type="hidden" name="action" value="sendmail">
						<input type="submit" name="" value="<?php echo ((isset($this->_rootref['L_5201'])) ? $this->_rootref['L_5201'] : ((isset($MSG['5201'])) ? $MSG['5201'] : '{ L_5201 }')); ?>" class="btn btn-primary">
						<input type="reset" name="" value="<?php echo ((isset($this->_rootref['L_035'])) ? $this->_rootref['L_035'] : ((isset($MSG['035'])) ? $MSG['035'] : '{ L_035 }')); ?>" class="btn btn-default">
					</div>
				</div>
			</form>
		</div>
<?php } ?>
	</div>
</div>