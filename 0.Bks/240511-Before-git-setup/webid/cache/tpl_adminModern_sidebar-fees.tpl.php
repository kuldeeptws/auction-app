<ul class="list-group">
					<li class="list-group-item active"><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/fees.php"><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/fee_gateways.php"><?php echo ((isset($this->_rootref['L_445'])) ? $this->_rootref['L_445'] : ((isset($MSG['445'])) ? $MSG['445'] : '{ L_445 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/enablefees.php"><?php echo ((isset($this->_rootref['L_enable_fees'])) ? $this->_rootref['L_enable_fees'] : ((isset($MSG['enable_fees'])) ? $MSG['enable_fees'] : '{ L_enable_fees }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/accounts.php"><?php echo ((isset($this->_rootref['L_854'])) ? $this->_rootref['L_854'] : ((isset($MSG['854'])) ? $MSG['854'] : '{ L_854 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/invoice_settings.php"><?php echo ((isset($this->_rootref['L_invoice_settings'])) ? $this->_rootref['L_invoice_settings'] : ((isset($MSG['invoice_settings'])) ? $MSG['invoice_settings'] : '{ L_invoice_settings }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/invoice.php"><?php echo ((isset($this->_rootref['L_766'])) ? $this->_rootref['L_766'] : ((isset($MSG['766'])) ? $MSG['766'] : '{ L_766 }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/tax.php"><?php echo ((isset($this->_rootref['L_tax_settings'])) ? $this->_rootref['L_tax_settings'] : ((isset($MSG['tax_settings'])) ? $MSG['tax_settings'] : '{ L_tax_settings }')); ?></a></li>
					<li class="list-group-item"><a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/tax_levels.php"><?php echo ((isset($this->_rootref['L_1083'])) ? $this->_rootref['L_1083'] : ((isset($MSG['1083'])) ? $MSG['1083'] : '{ L_1083 }')); ?></a></li>
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