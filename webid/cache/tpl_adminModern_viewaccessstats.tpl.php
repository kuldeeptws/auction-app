<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_25_0023'])) ? $this->_rootref['L_25_0023'] : ((isset($MSG['25_0023'])) ? $MSG['25_0023'] : '{ L_25_0023 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5143'])) ? $this->_rootref['L_5143'] : ((isset($MSG['5143'])) ? $MSG['5143'] : '{ L_5143 }')); ?></h4>
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong><?php echo ((isset($this->_rootref['L_5158'])) ? $this->_rootref['L_5158'] : ((isset($MSG['5158'])) ? $MSG['5158'] : '{ L_5158 }')); ?><i><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?></i></strong>
						<br>
						<?php echo (isset($this->_rootref['STATSMONTH'])) ? $this->_rootref['STATSMONTH'] : ''; ?>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12">
								<a href="viewbrowserstats.php"><?php echo ((isset($this->_rootref['L_5165'])) ? $this->_rootref['L_5165'] : ((isset($MSG['5165'])) ? $MSG['5165'] : '{ L_5165 }')); ?></a> | <a href="viewplatformstats.php"><?php echo ((isset($this->_rootref['L_5318'])) ? $this->_rootref['L_5318'] : ((isset($MSG['5318'])) ? $MSG['5318'] : '{ L_5318 }')); ?></a>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12"><strong><?php echo ((isset($this->_rootref['L_5164'])) ? $this->_rootref['L_5164'] : ((isset($MSG['5164'])) ? $MSG['5164'] : '{ L_5164 }')); ?></strong></div>
						</div>
						<div class="row">
							<div class="col-md-1" style="background-color: #006699">&nbsp;</div>
							<div class="col-md-3"><strong>&nbsp;<?php echo ((isset($this->_rootref['L_5161'])) ? $this->_rootref['L_5161'] : ((isset($MSG['5161'])) ? $MSG['5161'] : '{ L_5161 }')); ?> : </strong></div>
							<div class="col-md-8"><strong><?php echo (isset($this->_rootref['TOTAL_PAGEVIEWS'])) ? $this->_rootref['TOTAL_PAGEVIEWS'] : ''; ?></strong></div>
						</div>
						<div class="row">
							<div class="col-md-1" style="background-color: #66CC00">&nbsp;</div>
							<div class="col-md-3"><strong>&nbsp;<?php echo ((isset($this->_rootref['L_5162'])) ? $this->_rootref['L_5162'] : ((isset($MSG['5162'])) ? $MSG['5162'] : '{ L_5162 }')); ?> : </strong></div>
							<div class="col-md-8"><strong><?php echo (isset($this->_rootref['TOTAL_UNIQUEVISITORS'])) ? $this->_rootref['TOTAL_UNIQUEVISITORS'] : ''; ?></strong></div>
						</div>
						<div class="row">
							<div class="col-md-1" style="background-color: #FFFF00">&nbsp;</div>
							<div class="col-md-3"><strong>&nbsp;<?php echo ((isset($this->_rootref['L_5163'])) ? $this->_rootref['L_5163'] : ((isset($MSG['5163'])) ? $MSG['5163'] : '{ L_5163 }')); ?> :</strong></div>
							<div class="col-md-8"><strong><?php echo (isset($this->_rootref['TOTAL_USERSESSIONS'])) ? $this->_rootref['TOTAL_USERSESSIONS'] : ''; ?></strong></div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-2"><strong><?php echo (isset($this->_rootref['STATSTEXT'])) ? $this->_rootref['STATSTEXT'] : ''; ?></strong></div>
							<div class="col-md-10 text-right"><strong><?php echo ((isset($this->_rootref['L_829'])) ? $this->_rootref['L_829'] : ((isset($MSG['829'])) ? $MSG['829'] : '{ L_829 }')); ?><a href="viewaccessstats.php?type=d"><?php echo ((isset($this->_rootref['L_109'])) ? $this->_rootref['L_109'] : ((isset($MSG['109'])) ? $MSG['109'] : '{ L_109 }')); ?></a>/ <a href="viewaccessstats.php?type=w"><?php echo ((isset($this->_rootref['L_828'])) ? $this->_rootref['L_828'] : ((isset($MSG['828'])) ? $MSG['828'] : '{ L_828 }')); ?></a>/ <a href="	viewaccessstats.php?type=m"><?php echo ((isset($this->_rootref['L_830'])) ? $this->_rootref['L_830'] : ((isset($MSG['830'])) ? $MSG['830'] : '{ L_830 }')); ?></a></strong></div>
						</div>
<?php $_sitestats_count = (isset($this->_tpldata['sitestats'])) ? sizeof($this->_tpldata['sitestats']) : 0;if ($_sitestats_count) {for ($_sitestats_i = 0; $_sitestats_i < $_sitestats_count; ++$_sitestats_i){$_sitestats_val = &$this->_tpldata['sitestats'][$_sitestats_i]; ?>
						<div class="row">
							<div class="col-md-2"><strong><?php echo $_sitestats_val['DATE']; ?></strong></div>
							<div class="col-md-10">
<?php if ($_sitestats_val['PAGEVIEWS'] == 0) {  ?>
								<div style="height:15px;"><b>0</b></div>
	<?php } else { ?>
								<div style="height:15px; width:<?php echo $_sitestats_val['PAGEVIEWS_WIDTH']; ?>%; background-color:#006699; color:#FFFFFF;"><b><?php echo $_sitestats_val['PAGEVIEWS']; ?></b></div>
	<?php } if ($_sitestats_val['UNIQUEVISITORS'] == 0) {  ?>
								<div style="height:15px;"><b>0</b></div>
	<?php } else { ?>
								<div style="height:15px; width:<?php echo $_sitestats_val['UNIQUEVISITORS_WIDTH']; ?>%; background-color:#66CC00; color:#FFFFFF;"><b><?php echo $_sitestats_val['UNIQUEVISITORS']; ?></b></div>
	<?php } if ($_sitestats_val['USERSESSIONS'] == 0) {  ?>
								<div style="height:15px;"><b>0</b></div>
	<?php } else { ?>
								<div style="height:15px; width:<?php echo $_sitestats_val['USERSESSIONS_WIDTH']; ?>%; background-color:#FFFF00;"><b><?php echo $_sitestats_val['USERSESSIONS']; ?></b></div>
	<?php } ?>
							</div>
						</div>
<?php }} ?>
					</div>
				</div>
			</div>
		</div>