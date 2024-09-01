<div class="box">
					<h4 class="rounded-top"><?php echo ((isset($this->_rootref['L_239'])) ? $this->_rootref['L_239'] : ((isset($MSG['239'])) ? $MSG['239'] : '{ L_239 }')); ?></h4>
					<div class="rounded-bottom">
						<ul class="menu">
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/listauctions.php"><?php echo ((isset($this->_rootref['L_view_open_auctions'])) ? $this->_rootref['L_view_open_auctions'] : ((isset($MSG['view_open_auctions'])) ? $MSG['view_open_auctions'] : '{ L_view_open_auctions }')); ?></a></li>
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/listclosedauctions.php"><?php echo ((isset($this->_rootref['L_214'])) ? $this->_rootref['L_214'] : ((isset($MSG['214'])) ? $MSG['214'] : '{ L_214 }')); ?></a></li>
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/listreportedauctions.php"><?php echo ((isset($this->_rootref['L_view_reported_auctions'])) ? $this->_rootref['L_view_reported_auctions'] : ((isset($MSG['view_reported_auctions'])) ? $MSG['view_reported_auctions'] : '{ L_view_reported_auctions }')); ?></a></li>
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/listsuspendedauctions.php"><?php echo ((isset($this->_rootref['L_view_suspended_auctions'])) ? $this->_rootref['L_view_suspended_auctions'] : ((isset($MSG['view_suspended_auctions'])) ? $MSG['view_suspended_auctions'] : '{ L_view_suspended_auctions }')); ?></a></li>
							<li><a href="searchauctions.php"><?php echo ((isset($this->_rootref['L_search_auctions'])) ? $this->_rootref['L_search_auctions'] : ((isset($MSG['search_auctions'])) ? $MSG['search_auctions'] : '{ L_search_auctions }')); ?></a></li>
						</ul>
					</div>
				</div>
				<div class="box">
					<h4 class="rounded-top"><?php echo ((isset($this->_rootref['L_moderation'])) ? $this->_rootref['L_moderation'] : ((isset($MSG['moderation'])) ? $MSG['moderation'] : '{ L_moderation }')); ?></h4>
					<div class="rounded-bottom">
						<ul class="menu">
							<li><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/moderateauctions.php"><?php echo ((isset($this->_rootref['L_moderation_queue'])) ? $this->_rootref['L_moderation_queue'] : ((isset($MSG['moderation_queue'])) ? $MSG['moderation_queue'] : '{ L_moderation_queue }')); ?></a></li>
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