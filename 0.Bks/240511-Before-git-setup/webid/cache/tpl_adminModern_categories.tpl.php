<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_276'])) ? $this->_rootref['L_276'] : ((isset($MSG['276'])) ? $MSG['276'] : '{ L_276 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_078'])) ? $this->_rootref['L_078'] : ((isset($MSG['078'])) ? $MSG['078'] : '{ L_078 }')); ?></h4>
				<form name="newcat" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12"><?php echo ((isset($this->_rootref['L_845'])) ? $this->_rootref['L_845'] : ((isset($MSG['845'])) ? $MSG['845'] : '{ L_845 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-12">
<?php $_crumbs_count = (isset($this->_tpldata['crumbs'])) ? sizeof($this->_tpldata['crumbs']) : 0;if ($_crumbs_count) {for ($_crumbs_i = 0; $_crumbs_i < $_crumbs_count; ++$_crumbs_i){$_crumbs_val = &$this->_tpldata['crumbs'][$_crumbs_i]; if ($_crumbs_val['S_ROW_COUNT'] > 0) {  ?> > <?php } ?>
									<a href="categories.php?parent=<?php echo $_crumbs_val['CAT_ID']; ?>"><?php echo $_crumbs_val['CAT_NAME']; ?></a>
<?php }} ?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1"><strong>&nbsp;</strong></div>
								<div class="col-md-4"><strong><?php echo ((isset($this->_rootref['L_087'])) ? $this->_rootref['L_087'] : ((isset($MSG['087'])) ? $MSG['087'] : '{ L_087 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_328'])) ? $this->_rootref['L_328'] : ((isset($MSG['328'])) ? $MSG['328'] : '{ L_328 }')); ?></strong></div>
								<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_329'])) ? $this->_rootref['L_329'] : ((isset($MSG['329'])) ? $MSG['329'] : '{ L_329 }')); ?></strong></div>
								<div class="col-md-1"><strong><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></strong></div>
							</div>
<?php $_cats_count = (isset($this->_tpldata['cats'])) ? sizeof($this->_tpldata['cats']) : 0;if ($_cats_count) {for ($_cats_i = 0; $_cats_i < $_cats_count; ++$_cats_i){$_cats_val = &$this->_tpldata['cats'][$_cats_i]; ?>
							<div class="row">
								<div class="col-md-1 text-right">
									<a href="categories.php?parent=<?php echo $_cats_val['CAT_ID']; ?>"><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/plus.gif" border="0" alt="Browse Subcategories"></a>
								</div>
								<div class="col-md-4"><input type="text" name="categories[<?php echo $_cats_val['CAT_ID']; ?>]" value="<?php echo $_cats_val['CAT_NAME']; ?>" size="50"></div>
								<div class="col-md-3"><input type="text" name="colour[<?php echo $_cats_val['CAT_ID']; ?>]" value="<?php echo $_cats_val['CAT_COLOUR']; ?>" size="25"></div>
								<div class="col-md-3"><input type="text" name="image[<?php echo $_cats_val['CAT_ID']; ?>]" value="<?php echo $_cats_val['CAT_IMAGE']; ?>" size="25"></div>
								<div class="col-md-1">
									<input type="checkbox" name="delete[]" value="<?php echo $_cats_val['CAT_ID']; ?>">
	<?php if ($_cats_val['B_SUBCATS']) {  ?>
									<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/images/bullet_blue.png">
	<?php } if ($_cats_val['B_AUCTIONS']) {  ?>
									<img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/images/bullet_red.png">
	<?php } ?>
								</div>
							</div>
<?php }} ?>
							<div class="row">
								<div class="col-md-11 text-right"><?php echo ((isset($this->_rootref['L_30_0102'])) ? $this->_rootref['L_30_0102'] : ((isset($MSG['30_0102'])) ? $MSG['30_0102'] : '{ L_30_0102 }')); ?></div>
								<div class="col-md-1"><input type="checkbox" class="selectall" value="delete"></div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-1">&nbsp;</div>
								<div class="col-md-4"><?php echo ((isset($this->_rootref['L_394'])) ? $this->_rootref['L_394'] : ((isset($MSG['394'])) ? $MSG['394'] : '{ L_394 }')); ?>: <input type="text" name="new_category" size="25"></div>
								<div class="col-md-3"><input type="text" name="cat_colour" size="25"></div>
								<div class="col-md-3"><input type="text" name="cat_image" size="25"></div>
								<div class="col-md-1">&nbsp;</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-5"><?php echo ((isset($this->_rootref['L_368'])) ? $this->_rootref['L_368'] : ((isset($MSG['368'])) ? $MSG['368'] : '{ L_368 }')); ?></div>
								<div class="col-md-6"><textarea name="mass_add" cols="35" rows="6"></textarea></div>
							</div>
						</div>
					</div>
					<input type="hidden" name="parent" value="<?php echo (isset($this->_rootref['PARENT'])) ? $this->_rootref['PARENT'] : ''; ?>">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="action" value="Process"><?php echo ((isset($this->_rootref['L_089'])) ? $this->_rootref['L_089'] : ((isset($MSG['089'])) ? $MSG['089'] : '{ L_089 }')); ?></button>
				</form>
			</div>
		</div>