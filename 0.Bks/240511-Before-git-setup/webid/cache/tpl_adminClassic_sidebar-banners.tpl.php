<div class="box">
					<h4 class="rounded-top"><?php echo ((isset($this->_rootref['L_25_0011'])) ? $this->_rootref['L_25_0011'] : ((isset($MSG['25_0011'])) ? $MSG['25_0011'] : '{ L_25_0011 }')); ?></h4>
					<div class="rounded-bottom">
						<ul class="menu">
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/banners.php"><?php echo ((isset($this->_rootref['L_5205'])) ? $this->_rootref['L_5205'] : ((isset($MSG['5205'])) ? $MSG['5205'] : '{ L_5205 }')); ?></a></li>
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/managebanners.php"><?php echo ((isset($this->_rootref['L_banner_admin'])) ? $this->_rootref['L_banner_admin'] : ((isset($MSG['banner_admin'])) ? $MSG['banner_admin'] : '{ L_banner_admin }')); ?></a></li>
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