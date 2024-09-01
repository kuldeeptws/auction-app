<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0011'])) ? $this->_rootref['L_25_0011'] : ((isset($MSG['25_0011'])) ? $MSG['25_0011'] : '{ L_25_0011 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_banner_admin'])) ? $this->_rootref['L_banner_admin'] : ((isset($MSG['banner_admin'])) ? $MSG['banner_admin'] : '{ L_banner_admin }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L__0026'])) ? $this->_rootref['L__0026'] : ((isset($MSG['_0026'])) ? $MSG['_0026'] : '{ L__0026 }')); ?></h4>
				<form name="newuser" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-6"><?php echo ((isset($this->_rootref['L_302'])) ? $this->_rootref['L_302'] : ((isset($MSG['302'])) ? $MSG['302'] : '{ L_302 }')); ?></div>
								<div class="col-md-6"><input type="text" name="name" value="<?php echo (isset($this->_rootref['NAME'])) ? $this->_rootref['NAME'] : ''; ?>"></div>
							</div>
							<div class="row">
								<div class="col-md-6"><?php echo ((isset($this->_rootref['L__0022'])) ? $this->_rootref['L__0022'] : ((isset($MSG['_0022'])) ? $MSG['_0022'] : '{ L__0022 }')); ?></div>
								<div class="col-md-6"><input type="text" name="company" value="<?php echo (isset($this->_rootref['COMPANY'])) ? $this->_rootref['COMPANY'] : ''; ?>"></div>
							</div>
							<div class="row">
								<div class="col-md-6"><?php echo ((isset($this->_rootref['L_107'])) ? $this->_rootref['L_107'] : ((isset($MSG['107'])) ? $MSG['107'] : '{ L_107 }')); ?></div>
								<div class="col-md-6"><input type="text" name="email" value="<?php echo (isset($this->_rootref['EMAIL'])) ? $this->_rootref['EMAIL'] : ''; ?>"></div>
							</div>
						</div>
					</div>
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<input type="hidden" name="action" value="insert">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_569'])) ? $this->_rootref['L_569'] : ((isset($MSG['569'])) ? $MSG['569'] : '{ L_569 }')); ?></button>
				</form>
			</div>
		</div>