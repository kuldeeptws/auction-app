<div class="row">
			<div class="col-md-3">
				<?php $this->_tpl_include('sidebar-' . ((isset($this->_rootref['CURRENT_PAGE'])) ? $this->_rootref['CURRENT_PAGE'] : '') . '.tpl'); ?>
			</div>
			<div class="col-md-9">
				<h4><?php echo ((isset($this->_rootref['L_5436'])) ? $this->_rootref['L_5436'] : ((isset($MSG['5436'])) ? $MSG['5436'] : '{ L_5436 }')); ?>&nbsp;&gt;&gt;&nbsp;<?php echo ((isset($this->_rootref['L_5068'])) ? $this->_rootref['L_5068'] : ((isset($MSG['5068'])) ? $MSG['5068'] : '{ L_5068 }')); ?></h4>
				<form name="wordlist" action="" method="post">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">&nbsp;</div>
								<div class="col-md-9"><?php echo ((isset($this->_rootref['L_5069'])) ? $this->_rootref['L_5069'] : ((isset($MSG['5069'])) ? $MSG['5069'] : '{ L_5069 }')); ?></div>
							</div>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_5070'])) ? $this->_rootref['L_5070'] : ((isset($MSG['5070'])) ? $MSG['5070'] : '{ L_5070 }')); ?></div>
								<div class="col-md-9">
									<input type="radio" name="wordsfilter" value="y"<?php echo (isset($this->_rootref['WFYES'])) ? $this->_rootref['WFYES'] : ''; ?>> <?php echo ((isset($this->_rootref['L_yes'])) ? $this->_rootref['L_yes'] : ((isset($MSG['yes'])) ? $MSG['yes'] : '{ L_yes }')); ?>
									<input type="radio" name="wordsfilter" value="n"<?php echo (isset($this->_rootref['WFNO'])) ? $this->_rootref['WFNO'] : ''; ?>> <?php echo ((isset($this->_rootref['L_no'])) ? $this->_rootref['L_no'] : ((isset($MSG['no'])) ? $MSG['no'] : '{ L_no }')); ?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3"><?php echo ((isset($this->_rootref['L_5071'])) ? $this->_rootref['L_5071'] : ((isset($MSG['5071'])) ? $MSG['5071'] : '{ L_5071 }')); ?></div>
								<div class="col-md-9">
									<?php echo ((isset($this->_rootref['L_5072'])) ? $this->_rootref['L_5072'] : ((isset($MSG['5072'])) ? $MSG['5072'] : '{ L_5072 }')); ?><br>
									<textarea class="form-control" name="filtervalues" cols="45" rows="15"><?php echo (isset($this->_rootref['WORDLIST'])) ? $this->_rootref['WORDLIST'] : ''; ?></textarea>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
					<button class="btn btn-primary" type="submit" name="act" class="centre"><?php echo ((isset($this->_rootref['L_530'])) ? $this->_rootref['L_530'] : ((isset($MSG['530'])) ? $MSG['530'] : '{ L_530 }')); ?></button>
				</form>
			</div>
		</div>