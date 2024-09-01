<div style="width:25%; float:left;">
			<div style="margin-left:auto; margin-right:auto;">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
		</div>
		<div style="width:75%; float:right;">
			<div class="container">
				<h4 class="rounded-top rounded-bottom"><?php echo ((isset($this->_rootref['L_239'])) ? $this->_rootref['L_239'] : ((isset($MSG['239'])) ? $MSG['239'] : '{ L_239 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo (isset($this->_rootref['PAGE_TITLE'])) ? $this->_rootref['PAGE_TITLE'] : ''; ?></h4>
				<div class="plain-box"><?php echo (isset($this->_rootref['NUM_AUCTIONS'])) ? $this->_rootref['NUM_AUCTIONS'] : ''; ?> <?php echo ((isset($this->_rootref['L_311'])) ? $this->_rootref['L_311'] : ((isset($MSG['311'])) ? $MSG['311'] : '{ L_311 }')); if ($this->_rootref['B_SEARCHUSER']) {  ?> <?php echo ((isset($this->_rootref['L_934'])) ? $this->_rootref['L_934'] : ((isset($MSG['934'])) ? $MSG['934'] : '{ L_934 }')); echo (isset($this->_rootref['USERNAME'])) ? $this->_rootref['USERNAME'] : ''; } ?></div>
				<table class="table table-striped table-bordered">
				<tr>
					<th align="center"><b><?php echo ((isset($this->_rootref['L_017'])) ? $this->_rootref['L_017'] : ((isset($MSG['017'])) ? $MSG['017'] : '{ L_017 }')); ?></b></th>
					<th align="center"><b><?php echo ((isset($this->_rootref['L_557'])) ? $this->_rootref['L_557'] : ((isset($MSG['557'])) ? $MSG['557'] : '{ L_557 }')); ?></b></th>
					<th align="left"><b><?php echo ((isset($this->_rootref['L_297'])) ? $this->_rootref['L_297'] : ((isset($MSG['297'])) ? $MSG['297'] : '{ L_297 }')); ?></b></th>
				<tr>
				<?php $_auctions_count = (isset($this->_tpldata['auctions'])) ? sizeof($this->_tpldata['auctions']) : 0;if ($_auctions_count) {for ($_auctions_i = 0; $_auctions_i < $_auctions_count; ++$_auctions_i){$_auctions_val = &$this->_tpldata['auctions'][$_auctions_i]; ?>
				<tr<?php if ($_auctions_val['S_ROW_COUNT'] % (2) == (1)) {  ?> class="bg"<?php } ?>>
					<td>
						<?php if ($_auctions_val['SUSPENDED'] == (1)) {  ?>
						<span style="color:#FF0000"><?php echo $_auctions_val['TITLE']; ?></span>
						<?php } else { ?>
						<?php echo $_auctions_val['TITLE']; ?>
						<?php } ?>
						<p>[ <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>item.php?id=<?php echo $_auctions_val['ID']; ?>" target="_blank"><?php echo ((isset($this->_rootref['L_5295'])) ? $this->_rootref['L_5295'] : ((isset($MSG['5295'])) ? $MSG['5295'] : '{ L_5295 }')); ?></a> ]</p>
					</td>
					<td>
						<b><?php echo ((isset($this->_rootref['L_username'])) ? $this->_rootref['L_username'] : ((isset($MSG['username'])) ? $MSG['username'] : '{ L_username }')); ?>:</b> <?php echo $_auctions_val['USERNAME']; ?><br>
						<b><?php echo ((isset($this->_rootref['L_625'])) ? $this->_rootref['L_625'] : ((isset($MSG['625'])) ? $MSG['625'] : '{ L_625 }')); ?>:</b> <?php echo $_auctions_val['START_TIME']; ?><br>
						<b><?php echo ((isset($this->_rootref['L_626'])) ? $this->_rootref['L_626'] : ((isset($MSG['626'])) ? $MSG['626'] : '{ L_626 }')); ?>:</b> <?php echo $_auctions_val['END_TIME']; ?><br>
						<b><?php echo ((isset($this->_rootref['L_041'])) ? $this->_rootref['L_041'] : ((isset($MSG['041'])) ? $MSG['041'] : '{ L_041 }')); ?>:</b> <?php echo $_auctions_val['CATEGORY']; ?>
					</td>
					<td align="left">
						<a href="editauction.php?id=<?php echo $_auctions_val['ID']; ?>&offset=<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>"><?php echo ((isset($this->_rootref['L_298'])) ? $this->_rootref['L_298'] : ((isset($MSG['298'])) ? $MSG['298'] : '{ L_298 }')); ?></a><br>
						<a href="deleteauction.php?id=<?php echo $_auctions_val['ID']; ?>&offset=<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>"><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></a><br>
						<a href="excludeauction.php?id=<?php echo $_auctions_val['ID']; ?>&offset=<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>">
					<?php if ($_auctions_val['SUSPENDED'] == 0) {  ?>
						<?php echo ((isset($this->_rootref['L_300'])) ? $this->_rootref['L_300'] : ((isset($MSG['300'])) ? $MSG['300'] : '{ L_300 }')); ?>
					<?php } else { ?>
						<?php echo ((isset($this->_rootref['L_310'])) ? $this->_rootref['L_310'] : ((isset($MSG['310'])) ? $MSG['310'] : '{ L_310 }')); ?>
					<?php } ?>
						</a>
					<?php if ($_auctions_val['IN_MODERATION_QUEUE']) {  ?>
						<br><a href="removefrommoderation.php?id=<?php echo $_auctions_val['ID']; ?>&offset=<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>"><?php echo ((isset($this->_rootref['L_moderator_dismiss'])) ? $this->_rootref['L_moderator_dismiss'] : ((isset($MSG['moderator_dismiss'])) ? $MSG['moderator_dismiss'] : '{ L_moderator_dismiss }')); ?></a>
					<?php } if ($_auctions_val['B_HASWINNERS']) {  ?>
						<br><a href="viewwinners.php?id=<?php echo $_auctions_val['ID']; ?>&offset=<?php echo (isset($this->_rootref['PAGE'])) ? $this->_rootref['PAGE'] : ''; ?>"><?php echo ((isset($this->_rootref['L__0163'])) ? $this->_rootref['L__0163'] : ((isset($MSG['_0163'])) ? $MSG['_0163'] : '{ L__0163 }')); ?></a>
					<?php } ?>
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