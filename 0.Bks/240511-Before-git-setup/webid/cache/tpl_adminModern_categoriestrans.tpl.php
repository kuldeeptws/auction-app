<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_276'])) ? $this->_rootref['L_276'] : ((isset($MSG['276'])) ? $MSG['276'] : '{ L_276 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_132'])) ? $this->_rootref['L_132'] : ((isset($MSG['132'])) ? $MSG['132'] : '{ L_132 }')); ?></h4>
				<form name="errorlog" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_161'])) ? $this->_rootref['L_161'] : ((isset($MSG['161'])) ? $MSG['161'] : '{ L_161 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-12">
<?php $_langs_count = (isset($this->_tpldata['langs'])) ? sizeof($this->_tpldata['langs']) : 0;if ($_langs_count) {for ($_langs_i = 0; $_langs_i < $_langs_count; ++$_langs_i){$_langs_val = &$this->_tpldata['langs'][$_langs_i]; ?>
									<a href="categoriestrans.php?lang=<?php echo $_langs_val['LANG']; ?>"><img align="middle" src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/flags/<?php echo $_langs_val['LANG']; ?>.gif" border="0"></a>
<?php }} ?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6"><strong><?php echo ((isset($this->_rootref['L_771'])) ? $this->_rootref['L_771'] : ((isset($MSG['771'])) ? $MSG['771'] : '{ L_771 }')); ?></strong></div>
								<div class="col-md-6"><strong><?php echo ((isset($this->_rootref['L_772'])) ? $this->_rootref['L_772'] : ((isset($MSG['772'])) ? $MSG['772'] : '{ L_772 }')); ?></strong></div>
							</div>
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
							<div class="row<?php if ($_cats_val['S_ROW_COUNT'] % (2) == (1)) {  ?> bg<?php } ?>">
								<div class="col-md-6"><input type="text" name="categories_o[]" value="<?php echo $_cats_val['CAT_NAME']; ?>" size="45" disabled></div>
								<div class="col-md-6"><input type="text" name="categories[<?php echo $_cats_val['CAT_ID']; ?>]" value="<?php echo $_cats_val['TRAN_CAT']; ?>" size="45"></div>
							</div>
<?php }} ?>
						</div>
					</div>
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_089'])) ? $this->_rootref['L_089'] : ((isset($MSG['089'])) ? $MSG['089'] : '{ L_089 }')); ?></button>
				</form>
			</div>
		</div>