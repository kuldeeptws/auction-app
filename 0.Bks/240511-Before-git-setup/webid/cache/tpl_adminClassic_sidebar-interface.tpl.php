<div class="box">
					<h4 class="rounded-top"><?php echo ((isset($this->_rootref['L_25_0009'])) ? $this->_rootref['L_25_0009'] : ((isset($MSG['25_0009'])) ? $MSG['25_0009'] : '{ L_25_0009 }')); ?></h4>
					<div class="rounded-bottom">
						<ul class="menu">
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/theme.php"><?php echo ((isset($this->_rootref['L_26_0002'])) ? $this->_rootref['L_26_0002'] : ((isset($MSG['26_0002'])) ? $MSG['26_0002'] : '{ L_26_0002 }')); ?></a></li>
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/clearcache.php"><?php echo ((isset($this->_rootref['L_clear_cache'])) ? $this->_rootref['L_clear_cache'] : ((isset($MSG['clear_cache'])) ? $MSG['clear_cache'] : '{ L_clear_cache }')); ?></a></li>
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/clear_image_cache.php"><?php echo ((isset($this->_rootref['L_clear_image_cache'])) ? $this->_rootref['L_clear_image_cache'] : ((isset($MSG['clear_image_cache'])) ? $MSG['clear_image_cache'] : '{ L_clear_image_cache }')); ?></a></li>
                        	<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/logo_upload.php"><?php echo ((isset($this->_rootref['L_30_0215'])) ? $this->_rootref['L_30_0215'] : ((isset($MSG['30_0215'])) ? $MSG['30_0215'] : '{ L_30_0215 }')); ?></a></li>
						</ul>
					</div>
				</div>
				<div class="box">
					<h4 class="rounded-top"><?php echo ((isset($this->_rootref['L_1061'])) ? $this->_rootref['L_1061'] : ((isset($MSG['1061'])) ? $MSG['1061'] : '{ L_1061 }')); ?></h4>
					<div class="rounded-bottom">
						<form name="anotes" action="" method="post">
							<textarea rows="15" name="anotes" class="anotes"><?php echo (isset($this->_rootref['ADMIN_NOTES'])) ? $this->_rootref['ADMIN_NOTES'] : ''; ?></textarea>
							<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
							<input type="submit" name="act" value="<?php echo ((isset($this->_rootref['L_submit'])) ? $this->_rootref['L_submit'] : ((isset($MSG['submit'])) ? $MSG['submit'] : '{ L_submit }')); ?>">
						</form>
					</div>
				</div>