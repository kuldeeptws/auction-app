<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_25_0010'])) ? $this->_rootref['L_25_0010'] : ((isset($MSG['25_0010'])) ? $MSG['25_0010'] : '{ L_25_0010 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_045'])) ? $this->_rootref['L_045'] : ((isset($MSG['045'])) ? $MSG['045'] : '{ L_045 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_222'])) ? $this->_rootref['L_222'] : ((isset($MSG['222'])) ? $MSG['222'] : '{ L_222 }')); ?></h4>
				<table class="table table-striped table-bordered">
					<tr>
						<td align="right" colspan="2"><b><?php echo (isset($this->_rootref['NICK'])) ? $this->_rootref['NICK'] : ''; ?> (<?php echo (isset($this->_rootref['FB_NUM'])) ? $this->_rootref['FB_NUM'] : ''; ?>) <?php if ($this->_rootref['FB_ICON'] != ('')) {  ?><img src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/icons/<?php echo (isset($this->_rootref['FB_ICON'])) ? $this->_rootref['FB_ICON'] : ''; ?>" alt="<?php echo (isset($this->_rootref['FB_ICON'])) ? $this->_rootref['FB_ICON'] : ''; ?>" class="fbstar"><?php } ?></b></td>
					</tr>
<?php $_feedback_count = (isset($this->_tpldata['feedback'])) ? sizeof($this->_tpldata['feedback']) : 0;if ($_feedback_count) {for ($_feedback_i = 0; $_feedback_i < $_feedback_count; ++$_feedback_i){$_feedback_val = &$this->_tpldata['feedback'][$_feedback_i]; ?>
					<tr<?php if ($_feedback_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
						<td>
							<img align="middle" src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>images/<?php echo $_feedback_val['FB_TYPE']; ?>.png">&nbsp;&nbsp;<b><?php echo $_feedback_val['FB_FROM']; ?></b>&nbsp;&nbsp;<span class="small">(<?php echo ((isset($this->_rootref['L_506'])) ? $this->_rootref['L_506'] : ((isset($MSG['506'])) ? $MSG['506'] : '{ L_506 }')); ?>{feedback.	FB_TIME})</span>
							<p><?php echo $_feedback_val['FB_MSG']; ?></p>
						</td>
						<td align="right">
							<a href="edituserfeed.php?id=<?php echo $_feedback_val['FB_ID']; ?>"><?php echo ((isset($this->_rootref['L_298'])) ? $this->_rootref['L_298'] : ((isset($MSG['298'])) ? $MSG['298'] : '{ L_298 }')); ?></a> | <a href="deleteuserfeed.php?id=<?php echo $_feedback_val['FB_ID']; ?>&user=<?php echo (isset($this->_rootref['ID'])) ? $this->_rootref['ID'] : ''; ?>"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></a>
						</td>
					</tr>
<?php }} ?>
				</table>
				<table class="table table-striped table-bordered">
					<tr>
						<td align="center">
							<?php echo ((isset($this->_rootref['L_5117'])) ? $this->_rootref['L_5117'] : ((isset($MSG['5117'])) ? $MSG['5117'] : '{ L_5117 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>&nbsp;<?php echo ((isset($this->_rootref['L_5118'])) ? $this->_rootref['L_5118'] : ((isset($MSG['5118'])) ? $MSG['5118'] : '{ L_5118 }')); ?>&nbsp;<?php echo (isset($this->_rootref['PAGES'])) ? $this->_rootref['PAGES'] : ''; ?>
							<br>
							<?php echo (isset($this->_rootref['PREV'])) ? $this->_rootref['PREV'] : ''; ?>
<?php $_pages_count = (isset($this->_tpldata['pages'])) ? sizeof($this->_tpldata['pages']) : 0;if ($_pages_count) {for ($_pages_i = 0; $_pages_i < $_pages_count; ++$_pages_i){$_pages_val = &$this->_tpldata['pages'][$_pages_i]; ?>
							<?php echo $_pages_val['PAGE']; ?>&nbsp;&nbsp;
<?php }} ?>
							<?php echo (isset($this->_rootref['NEXT'])) ? $this->_rootref['NEXT'] : ''; ?>
						</td>
					</tr>
				</table>
			</div>
		</div>