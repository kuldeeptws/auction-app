<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_25_0169a'])) ? $this->_rootref['L_25_0169a'] : ((isset($MSG['25_0169a'])) ? $MSG['25_0169a'] : '{ L_25_0169a }')); ?></h4>
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">Your Version: <b><?php echo (isset($this->_rootref['MYVERSION'])) ? $this->_rootref['MYVERSION'] : ''; ?></b></div>
						</div>
						<div class="row">
							<div class="col-md-12">Current Version: <?php echo (isset($this->_rootref['REALVERSION'])) ? $this->_rootref['REALVERSION'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-12"><?php echo (isset($this->_rootref['TEXT'])) ? $this->_rootref['TEXT'] : ''; ?></div>
						</div>
					</div>
				</div>
			</div>
		</div>