<ul class="list-group">
					<li class="list-group-item active"><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/checkversion.php"><?php echo ((isset($this->_rootref['L_25_0169a'])) ? $this->_rootref['L_25_0169a'] : ((isset($MSG['25_0169a'])) ? $MSG['25_0169a'] : '{ L_25_0169a }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/maintenance.php"><?php echo ((isset($this->_rootref['L_maintenance_settings'])) ? $this->_rootref['L_maintenance_settings'] : ((isset($MSG['maintenance_settings'])) ? $MSG['maintenance_settings'] : '{ L_maintenance_settings }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/wordsfilter.php"><?php echo ((isset($this->_rootref['L_5068'])) ? $this->_rootref['L_5068'] : ((isset($MSG['5068'])) ? $MSG['5068'] : '{ L_5068 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/errorlog.php"><?php echo ((isset($this->_rootref['L_891'])) ? $this->_rootref['L_891'] : ((isset($MSG['891'])) ? $MSG['891'] : '{ L_891 }')); ?></a></li>
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