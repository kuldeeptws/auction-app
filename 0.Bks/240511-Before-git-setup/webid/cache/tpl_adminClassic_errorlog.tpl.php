<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="main-box">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_891'])) ? $this->_rootref['L_891'] : ((isset($MSG['891'])) ? $MSG['891'] : '{ L_891 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<div style="margin:10px; overflow:scroll; height:500px; width: 98%;">
						<?php echo (isset($this->_rootref['ERRORLOG'])) ? $this->_rootref['ERRORLOG'] : ''; ?>
					</div>
					<input type="hidden" name="action" value="clearlog">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="submit" name="act" class="centre" value="<?php echo ((isset($this->_rootref['L_890'])) ? $this->_rootref['L_890'] : ((isset($MSG['890'])) ? $MSG['890'] : '{ L_890 }')); ?>">
<?php if ($this->_rootref['TYPE'] == ('distinct')) {  ?>
					<a href="errorlog.php?type=all" class="button"><?php echo ((isset($this->_rootref['L_all_error_messages'])) ? $this->_rootref['L_all_error_messages'] : ((isset($MSG['all_error_messages'])) ? $MSG['all_error_messages'] : '{ L_all_error_messages }')); ?></a>
<?php } else { ?>
					<a href="errorlog.php?type=distinct" class="button"><?php echo ((isset($this->_rootref['L_unique_error_messages'])) ? $this->_rootref['L_unique_error_messages'] : ((isset($MSG['unique_error_messages'])) ? $MSG['unique_error_messages'] : '{ L_unique_error_messages }')); ?></a>
<?php } ?>
				</form>
			</div>
		</div>