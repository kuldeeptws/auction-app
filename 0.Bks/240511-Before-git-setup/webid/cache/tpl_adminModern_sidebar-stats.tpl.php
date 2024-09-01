<ul class="list-group">
					<li class="list-group-item active"><?php echo ((isset($this->_rootref['L_25_0023'])) ? $this->_rootref['L_25_0023'] : ((isset($MSG['25_0023'])) ? $MSG['25_0023'] : '{ L_25_0023 }')); ?></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/stats_settings.php"><?php echo ((isset($this->_rootref['L_5142'])) ? $this->_rootref['L_5142'] : ((isset($MSG['5142'])) ? $MSG['5142'] : '{ L_5142 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/viewaccessstats.php"><?php echo ((isset($this->_rootref['L_5143'])) ? $this->_rootref['L_5143'] : ((isset($MSG['5143'])) ? $MSG['5143'] : '{ L_5143 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/viewbrowserstats.php"><?php echo ((isset($this->_rootref['L_5165'])) ? $this->_rootref['L_5165'] : ((isset($MSG['5165'])) ? $MSG['5165'] : '{ L_5165 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/viewplatformstats.php"><?php echo ((isset($this->_rootref['L_5318'])) ? $this->_rootref['L_5318'] : ((isset($MSG['5318'])) ? $MSG['5318'] : '{ L_5318 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/analytics.php"><?php echo ((isset($this->_rootref['L_analytics'])) ? $this->_rootref['L_analytics'] : ((isset($MSG['analytics'])) ? $MSG['analytics'] : '{ L_analytics }')); ?></a></li>
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