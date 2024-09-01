<ul class="list-group">
					<li class="list-group-item active"><?php echo ((isset($this->_rootref['L_25_0018'])) ? $this->_rootref['L_25_0018'] : ((isset($MSG['25_0018'])) ? $MSG['25_0018'] : '{ L_25_0018 }')); ?></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/news.php"><?php echo ((isset($this->_rootref['L_516'])) ? $this->_rootref['L_516'] : ((isset($MSG['516'])) ? $MSG['516'] : '{ L_516 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/aboutus.php"><?php echo ((isset($this->_rootref['L_about_us_page'])) ? $this->_rootref['L_about_us_page'] : ((isset($MSG['about_us_page'])) ? $MSG['about_us_page'] : '{ L_about_us_page }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/terms.php"><?php echo ((isset($this->_rootref['L_terms_conditions_page'])) ? $this->_rootref['L_terms_conditions_page'] : ((isset($MSG['terms_conditions_page'])) ? $MSG['terms_conditions_page'] : '{ L_terms_conditions_page }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/privacypolicy.php"><?php echo ((isset($this->_rootref['L_privacy_policy'])) ? $this->_rootref['L_privacy_policy'] : ((isset($MSG['privacy_policy'])) ? $MSG['privacy_policy'] : '{ L_privacy_policy }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/cookiespolicy.php"><?php echo ((isset($this->_rootref['L_cookie_policy'])) ? $this->_rootref['L_cookie_policy'] : ((isset($MSG['cookie_policy'])) ? $MSG['cookie_policy'] : '{ L_cookie_policy }')); ?></a></li>
					<li class="list-group-item active"><?php echo ((isset($this->_rootref['L_5236'])) ? $this->_rootref['L_5236'] : ((isset($MSG['5236'])) ? $MSG['5236'] : '{ L_5236 }')); ?></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/faqscategories.php"><?php echo ((isset($this->_rootref['L_5230'])) ? $this->_rootref['L_5230'] : ((isset($MSG['5230'])) ? $MSG['5230'] : '{ L_5230 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/newfaq.php"><?php echo ((isset($this->_rootref['L_5231'])) ? $this->_rootref['L_5231'] : ((isset($MSG['5231'])) ? $MSG['5231'] : '{ L_5231 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/faqs.php"><?php echo ((isset($this->_rootref['L_5232'])) ? $this->_rootref['L_5232'] : ((isset($MSG['5232'])) ? $MSG['5232'] : '{ L_5232 }')); ?></a></li>
					<li class="list-group-item active"><?php echo ((isset($this->_rootref['L_5030'])) ? $this->_rootref['L_5030'] : ((isset($MSG['5030'])) ? $MSG['5030'] : '{ L_5030 }')); ?></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/boardsettings.php"><?php echo ((isset($this->_rootref['L_msg_board_settings'])) ? $this->_rootref['L_msg_board_settings'] : ((isset($MSG['msg_board_settings'])) ? $MSG['msg_board_settings'] : '{ L_msg_board_settings }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/newboard.php"><?php echo ((isset($this->_rootref['L_5031'])) ? $this->_rootref['L_5031'] : ((isset($MSG['5031'])) ? $MSG['5031'] : '{ L_5031 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/boards.php"><?php echo ((isset($this->_rootref['L_board_management'])) ? $this->_rootref['L_board_management'] : ((isset($MSG['board_management'])) ? $MSG['board_management'] : '{ L_board_management }')); ?></a></li>
				</ul>
				<div class="panel panel-default">
					<div class="panel-heading"><?php echo ((isset($this->_rootref['L_1061'])) ? $this->_rootref['L_1061'] : ((isset($MSG['1061'])) ? $MSG['1061'] : '{ L_1061 }')); ?></div>
					<div class="panel-body">
						<form name="anotes" action="" method="post">
							<textarea rows="15" name="anotes" class="form-control"><?php echo (isset($this->_rootref['ADMIN_NOTES'])) ? $this->_rootref['ADMIN_NOTES'] : ''; ?></textarea>
							<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
							<br>
							<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_submit'])) ? $this->_rootref['L_submit'] : ((isset($MSG['submit'])) ? $MSG['submit'] : '{ L_submit }')); ?></button>
						</form>
					</div>
				</div>