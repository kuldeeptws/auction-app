<html>
<head>
<title><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?></title>
<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/style.css">
<link type="text/css" rel="stylesheet" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/pluploadjs/jquery.plupload.queue/css/jquery.plupload.queue.css" media="screen">

<script type="text/javascript" src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/jquery.js"></script>
<script type="text/javascript" src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/pluploadjs/plupload.full.min.js"></script>
<script type="text/javascript" src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/pluploadjs/jquery.plupload.queue/jquery.plupload.queue.min.js"></script>

<script type="text/javascript">
// Convert divs to queue widgets when the DOM is ready
$(function() {
	// Setup html5 version
	$("#uploader").pluploadQueue({
		// General settings
		runtimes : 'html5,flash,silverlight,html4',
		url : '<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>ajax.php?do=uploadaucimages',
		chunk_size : '1mb',
		unique_names : true,
		dragdrop: true,
		multiple_queues: <?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?> < <?php echo (isset($this->_rootref['UPLOADED'])) ? $this->_rootref['UPLOADED'] : ''; ?> ? "true" : "false",

		// Specify what files to browse for
		filters : {
			// Maximum file size
			max_file_size : "<?php echo (isset($this->_rootref['MAXPICSIZE'])) ? $this->_rootref['MAXPICSIZE'] : ''; ?>kb",
			// Specify what files to browse for
			mime_types: [
				{title : "Image files", extensions : "jpg,jpeg,gif,png"}
			]
		},
		multipart_params : {
			"csrftoken" : "<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>"
		},

		// Resize images on clientside if we can
		resize: {
			width : <?php echo (isset($this->_rootref['MAXWIDTHHEIGHT'])) ? $this->_rootref['MAXWIDTHHEIGHT'] : ''; ?>,
			height : <?php echo (isset($this->_rootref['MAXWIDTHHEIGHT'])) ? $this->_rootref['MAXWIDTHHEIGHT'] : ''; ?>,
			quality : 90,
			crop: false // crop to exact dimensions
		},

		// Flash settings
		flash_swf_url : '<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/pluploadjs/Moxie.swf',

		// Silverlight settings
		silverlight_xap_url : '<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/pluploadjs/Moxie.xap',

		// Post init events, bound after the internal events
		init : {
			Refresh: function(up) {
				// Called when the position or dimensions of the picker change
			},

			StateChanged: function(up) {
				// Called when the state of the queue is changed
			},

			QueueChanged: function(up) {
				// Called when queue is changed by adding or removing files
				if (up.files.length > (<?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?> - <?php echo (isset($this->_rootref['UPLOADED'])) ? $this->_rootref['UPLOADED'] : ''; ?>))
				{
					for (var key in up.files)
					{
						if (up.files.length > (<?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?> - <?php echo (isset($this->_rootref['UPLOADED'])) ? $this->_rootref['UPLOADED'] : ''; ?>))
						{
							up.removeFile(up.files[key]);
							if ($('#uploader_browse').is(":visible"))
							{
								alert('You have reached the max  allowed of ' + <?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?> + ' files.');
							}
							$('#uploader_browse').hide();
						}
					}
				}
			},

			UploadProgress: function(up, file) {
				// Called while a file is being uploaded
			},

			FileFiltered: function(up, file) {
				// Called when file successfully files all the filters
			},

			FilesAdded: function(up, files) {
				// Callced when files are added to queue
				var max_files = <?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?>;
				plupload.each(files, function (file) {
					if (up.files.length > max_files)
					{
						// alert('You are allowed to add only ' + max_files + ' files.');
						up.removeFile(file);
					}
				});

				if (files.length >= max_files)
				{
					$('#uploader_browse').hide('slow');
				}
			},

			FilesRemoved: function(up, files) {
				// Called when files are removed from queue
				var max_files = <?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?>;
				if (files.length < max_files)
				{
					$('#uploader_browse').fadeIn('slow');
				}

				plupload.each(files, function(file) {
				});
			},

			FileUploaded: function(up, file, info) {
				// Called when a file has finished uploading
				$.get('<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>ajax.php?do=getupldtable', function(data) {
					$('#uploaded').html(data);
				});
				if (up.files.length < (<?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?> - <?php echo (isset($this->_rootref['UPLOADED'])) ? $this->_rootref['UPLOADED'] : ''; ?>))
				{
					// $('.plupload_buttons').fadeIn('slow'); $('.plupload_upload_status').hide();
				}
			},

			ChunkUploaded: function(up, file, info) {
				// Called when file chunk has finished uploading
			},

			UploadComplete: function(up, files) {
				// Called when all files are either uploaded or failed
				window.location = window.location.pathname;
			},

			Destroy: function(up) {
				// Called when uploader is destroyed
			},

			Error: function(up, args) {
				// Called when a error has occured
				console.log(args);
			}
		}
	});
});
</script>

<script type="text/javascript">
$(document).ready(function () {
	if ( <?php echo (isset($this->_rootref['MAXPICS'])) ? $this->_rootref['MAXPICS'] : ''; ?> == <?php echo (isset($this->_rootref['UPLOADED'])) ? $this->_rootref['UPLOADED'] : ''; ?>)
	{
		$('.plupload_file_name').hide('slow'); $('.moxie-shim-html5').hide();
	}

	var num_images = $('#numimages', window.opener.document).val();
	var now_images = <?php echo (isset($this->_rootref['UPLOADED'])) ? $this->_rootref['UPLOADED'] : ''; ?>;
	var image_cost = <?php echo (isset($this->_rootref['IMAGE_COST_PLAIN'])) ? $this->_rootref['IMAGE_COST_PLAIN'] : ''; ?>;
	if (num_images != now_images)
	{
		var fee_diff = (now_images - num_images) * image_cost;
		var nowfee = $("#fee_exact", window.opener.document).val() + fee_diff;
		$("#fee_exact", window.opener.document).val(nowfee);
		$("#to_pay").text(Math.round(nowfee*1<?php echo (isset($this->_rootref['FEE_DECIMALS'])) ? $this->_rootref['FEE_DECIMALS'] : ''; ?>)/1<?php echo (isset($this->_rootref['FEE_DECIMALS'])) ? $this->_rootref['FEE_DECIMALS'] : ''; ?>);
		$('#numimages', window.opener.document).val(now_images);
	}
});
</script>
</head>

<body>
<div class="padding">
<?php if ($this->_rootref['ERROR'] != ('')) {  ?>
	<div class="error-box">
		<?php echo (isset($this->_rootref['ERROR'])) ? $this->_rootref['ERROR'] : ''; ?>
	</div>
<?php } ?>
	<div class="titTable2">
		<?php echo ((isset($this->_rootref['L_663'])) ? $this->_rootref['L_663'] : ((isset($MSG['663'])) ? $MSG['663'] : '{ L_663 }')); ?>
	</div>
	<table cellpadding="3" cellspacing="0" border="0" align="center" width="90%">
		<tr bgcolor="<?php echo (isset($this->_rootref['HEADERCOLOUR'])) ? $this->_rootref['HEADERCOLOUR'] : ''; ?>">
			<td width="76%" colspan="2">
				<b><?php echo ((isset($this->_rootref['L_684'])) ? $this->_rootref['L_684'] : ((isset($MSG['684'])) ? $MSG['684'] : '{ L_684 }')); ?></b>
			</td>
			<td width="12%" align="center">
				<b><?php echo ((isset($this->_rootref['L_008'])) ? $this->_rootref['L_008'] : ((isset($MSG['008'])) ? $MSG['008'] : '{ L_008 }')); ?></b>
			</td>
			<td width="12%" align="center">
				<b><?php echo ((isset($this->_rootref['L_686'])) ? $this->_rootref['L_686'] : ((isset($MSG['686'])) ? $MSG['686'] : '{ L_686 }')); ?></b>
			</td>
		</tr>
		<tbody id="uploaded">
<?php $_images_count = (isset($this->_tpldata['images'])) ? sizeof($this->_tpldata['images']) : 0;if ($_images_count) {for ($_images_i = 0; $_images_i < $_images_count; ++$_images_i){$_images_val = &$this->_tpldata['images'][$_images_i]; ?>
			<tr>
				<td>
					<img src="<?php echo $_images_val['IMAGE']; ?>" width="60" border="0">
				</td>
				<td width="46%">
					<?php echo $_images_val['IMGNAME']; ?>
				</td>
				<td align="center">
					<a href="?action=delete&img=<?php echo $_images_val['ID']; ?>"><IMG SRC="images/trash.gif" border="0"></a>
				</td>
				<td align="center">
					<a href="?action=makedefault&img=<?php echo $_images_val['IMGNAME']; ?>"><img src="images/<?php echo $_images_val['DEFAULT']; ?>" border="0"></a>
				</td>
			</tr>
<?php }} ?>
		</tbody>
	</table>
	<p><?php echo (isset($this->_rootref['PICINFO'])) ? $this->_rootref['PICINFO'] : ''; ?></p>
	<p><?php echo (isset($this->_rootref['IMAGE_COST'])) ? $this->_rootref['IMAGE_COST'] : ''; ?></p>
	<div id="uploader">
		<p>You browser doesn't have Flash, Silverlight or HTML5 support.</p>
	</div>
	<br style="clear:both;">
	<center>
		<a href="javascript: window.close()"><?php echo ((isset($this->_rootref['L_678'])) ? $this->_rootref['L_678'] : ((isset($MSG['678'])) ? $MSG['678'] : '{ L_678 }')); ?></a>
	</center>
</div>
</body>
</html>