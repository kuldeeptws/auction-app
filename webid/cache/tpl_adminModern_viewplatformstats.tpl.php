<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0023'])) ? $this->_rootref['L_25_0023'] : ((isset($MSG['25_0023'])) ? $MSG['25_0023'] : '{ L_25_0023 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5318'])) ? $this->_rootref['L_5318'] : ((isset($MSG['5318'])) ? $MSG['5318'] : '{ L_5318 }')); ?></h4>
				<div style="font-size: 16px; font-weight: bold; text-align: center;" class="centre">
					<?php echo ((isset($this->_rootref['L_5438'])) ? $this->_rootref['L_5438'] : ((isset($MSG['5438'])) ? $MSG['5438'] : '{ L_5438 }')); ?><i><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?></i><br>
					<?php echo (isset($this->_rootref['STATSMONTH'])) ? $this->_rootref['STATSMONTH'] : ''; ?>
				</div>
				<div style="text-align: center;" class="centre">
					<a href="viewaccessstats.php"><?php echo ((isset($this->_rootref['L_5143'])) ? $this->_rootref['L_5143'] : ((isset($MSG['5143'])) ? $MSG['5143'] : '{ L_5143 }')); ?></a> | <a href="viewbrowserstats.php"><?php echo ((isset($this->_rootref['L_5165'])) ? $this->_rootref['L_5165'] : ((isset($MSG['5165'])) ? $MSG['5165'] : '{ L_5165 }')); ?></a>
				</div>

				<table class="table table-striped table-bordered">
					<tr>
						<th align="center" width="80"><b><?php echo ((isset($this->_rootref['L_5156'])) ? $this->_rootref['L_5156'] : ((isset($MSG['5156'])) ? $MSG['5156'] : '{ L_5156 }')); ?></b></td>
						<th height="21" style="text-align:right;">&nbsp;</td>
					</tr>
<?php $_sitestats_count = (isset($this->_tpldata['sitestats'])) ? sizeof($this->_tpldata['sitestats']) : 0;if ($_sitestats_count) {for ($_sitestats_i = 0; $_sitestats_i < $_sitestats_count; ++$_sitestats_i){$_sitestats_val = &$this->_tpldata['sitestats'][$_sitestats_i]; ?>
					<tr class="bg">
						<td align="center" height="45"><b><?php echo $_sitestats_val['PLATFORM']; ?></b></td>
						<td>
	<?php if ($_sitestats_val['NUM'] == 0) {  ?>
							<div style="height:15px;"><b>0</b></div>
	<?php } else { ?>
							<div style="height:15px; width:<?php echo $_sitestats_val['WIDTH']; ?>%; background-color:#006699; color:#FFFFFF;"><b><?php echo $_sitestats_val['PERCENTAGE']; ?>%</b></div>
	<?php } ?>
						</td>
					</tr>
<?php }} ?>
				</table>
			</div>
		</div>