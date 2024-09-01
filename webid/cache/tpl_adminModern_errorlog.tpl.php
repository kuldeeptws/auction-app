<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_891'])) ? $this->_rootref['L_891'] : ((isset($MSG['891'])) ? $MSG['891'] : '{ L_891 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12" style="overflow-y:scroll; height:500px;">
									<?php echo (isset($this->_rootref['ERRORLOG'])) ? $this->_rootref['ERRORLOG'] : ''; ?>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="action" value="clearlog">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act" class="centre"><?php echo ((isset($this->_rootref['L_890'])) ? $this->_rootref['L_890'] : ((isset($MSG['890'])) ? $MSG['890'] : '{ L_890 }')); ?></button>
<?php if ($this->_rootref['TYPE'] == ('distinct')) {  ?>
					<a class="btn btn-primary"  href="errorlog.php?type=all" class="tn btn-primary"><?php echo ((isset($this->_rootref['L_all_error_messages'])) ? $this->_rootref['L_all_error_messages'] : ((isset($MSG['all_error_messages'])) ? $MSG['all_error_messages'] : '{ L_all_error_messages }')); ?></a>
<?php } else { ?>
					<a class="btn btn-primary"  href="errorlog.php?type=distinct" class="tn btn-primary"><?php echo ((isset($this->_rootref['L_unique_error_messages'])) ? $this->_rootref['L_unique_error_messages'] : ((isset($MSG['unique_error_messages'])) ? $MSG['unique_error_messages'] : '{ L_unique_error_messages }')); ?></a>
<?php } ?>
				</form>
			</div>
		</div>