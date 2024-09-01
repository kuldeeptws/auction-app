<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0011'])) ? $this->_rootref['L_25_0011'] : ((isset($MSG['25_0011'])) ? $MSG['25_0011'] : '{ L_25_0011 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_banner_admin'])) ? $this->_rootref['L_banner_admin'] : ((isset($MSG['banner_admin'])) ? $MSG['banner_admin'] : '{ L_banner_admin }')); ?></h4>
				<form name="deleteusers" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><a class="btn-primary btn" href="newbannersuser.php"><?php echo ((isset($this->_rootref['L__0026'])) ? $this->_rootref['L__0026'] : ((isset($MSG['_0026'])) ? $MSG['_0026'] : '{ L__0026 }')); ?></a></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_5180'])) ? $this->_rootref['L_5180'] : ((isset($MSG['5180'])) ? $MSG['5180'] : '{ L_5180 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L__0022'])) ? $this->_rootref['L__0022'] : ((isset($MSG['_0022'])) ? $MSG['_0022'] : '{ L__0022 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_303'])) ? $this->_rootref['L_303'] : ((isset($MSG['303'])) ? $MSG['303'] : '{ L_303 }')); ?></strong></div>
								<div class="col-md-1"><strong><?php echo ((isset($this->_rootref['L__0025'])) ? $this->_rootref['L__0025'] : ((isset($MSG['_0025'])) ? $MSG['_0025'] : '{ L__0025 }')); ?></strong></div>
								<div class="col-md-1"><strong>&nbsp;</strong></div>
								<div class="col-md-2"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_busers_count = (isset($this->_tpldata['busers'])) ? sizeof($this->_tpldata['busers']) : 0;if ($_busers_count) {for ($_busers_i = 0; $_busers_i < $_busers_count; ++$_busers_i){$_busers_val = &$this->_tpldata['busers'][$_busers_i]; ?>
							<div class="row">
								<div class="col-md-2"><a href="editbannersuser.php?id=<?php echo $_busers_val['ID']; ?>"><?php echo $_busers_val['NAME']; ?></a></div>
								<div class="col-md-3"><?php echo $_busers_val['COMPANY']; ?></div>
								<div class="col-md-3"><a href="mailto:<?php echo $_busers_val['EMAIL']; ?>"><?php echo $_busers_val['EMAIL']; ?></a></div>
								<div class="col-md-1"><?php echo $_busers_val['NUM_BANNERS']; ?></div>
								<div class="col-md-1"><a href="userbanners.php?id=<?php echo $_busers_val['ID']; ?>"><?php echo ((isset($this->_rootref['L__0024'])) ? $this->_rootref['L__0024'] : ((isset($MSG['_0024'])) ? $MSG['_0024'] : '{ L__0024 }')); ?></a></div>
								<div class="col-md-2"><input type="checkbox" name="delete[]" value="<?php echo $_busers_val['ID']; ?>"></div>
							</div>
<?php }} ?>
						</div>
					</div>
					<input type="hidden" name="action" value="deleteusers">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L__0028'])) ? $this->_rootref['L__0028'] : ((isset($MSG['_0028'])) ? $MSG['_0028'] : '{ L__0028 }')); ?></button>
				</form>
			</div>
		</div>