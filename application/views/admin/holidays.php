<?php if ($this->uri->segment(3) == 'manage'): ?>
	<?= showMsg(); ?>
	<?= getBredcrum(ADMIN, array('#' => 'Add/Update Holiday Date')); ?>
	<div class="row margin-bottom-10">
		<div class="col-md-6">
			<h2 class="no-margin"><i class="entypo-list"></i> Add/Update <strong>Holiday Date</strong></h2>
		</div>
		<div class="col-md-6 text-right">
			<a href="<?= site_url(ADMIN . '/holidays'); ?>" class="btn btn-lg btn-default"><i class="fa fa-arrow-left"></i> Cancel</a>
		</div>
	</div>
	<div>
		<hr>
		<div class="row col-md-12">
			<form action="" name="frmStatuse" role="form" class="form-horizontal" method="post" enctype="multipart/form-data" autocomplete="off">
				<!-- <div class="form-group">
					<div class="col-md-6">
						<label class="control-label"> Date <span class="symbol required">*</span></label>
						<input type="text" name="date" id="date" value="<?php if (isset($row->date)) echo $row->date; ?>" class="form-control" autofocus required autocomplete="off">
					</div>
				</div> -->
				<div class="form-group">
					<div class="col-md-4">
						<label class="control-label" for="month"> Month</label>
						<select id="month" name="month" class="form-control">
							<option disabled="" selected="">Month</option>
							<?php foreach (range(1, 12) as $month): ?>
								<?php $month = sprintf('%02d',$month);?>
								<option value="<?= $month?>"<?= $month==$row->month?' selected':''?>><?= $month?></option>
							<?php endforeach ?>
						</select>
					</div>
					<div class="col-md-4">
						<label class="control-label" for="date"> Date</label>
						<select id="date" name="date" class="form-control">
							<option disabled="" selected="">Date</option>
							<?php foreach (range(1, 31) as $date): ?>
								<?php $date = sprintf('%02d',$date);?>
								<option value="<?= $date?>"<?= $date==$row->date?' selected':''?>><?= $date?></option>
							<?php endforeach ?>
						</select>
					</div>
				</div>
				<div class="col-md-12">                
					<hr class="hr-short">
					<div class="form-group text-right">
						<div class="col-md-12">
							<button type="submit" class="btn btn-primary btn-lg col-md-3 pull-right"><i class="fa fa-save"></i> Save</button>
						</div>
					</div>
				</div>
				<br>
				<br>
			</form>
		</div>
		<div class="clearfix"></div>
	</div>
<?php else: ?>
	<?= showMsg(); ?>
	<?= getBredcrum(ADMIN, array('#' => 'Manage Holiday Dates')); ?>
	<div class="row margin-bottom-10">
		<div class="col-md-6">
			<h2 class="no-margin"><i class="entypo-list"></i> Manage <strong>Holiday Dates</strong></h2>
		</div>
		<div class="col-md-6 text-right">
			<a href="<?= site_url(ADMIN . '/holidays/manage'); ?>" class="btn btn-lg btn-primary"><i class="fa fa-plus-circle"></i> Add New</a>
		</div>
	</div>
	<table class="table table-bordered datatable" id="table-1">
		<thead>
			<tr>
				<th width="5%" class="text-center">Sr#</th>
				<th>Month</th>
				<th>Date</th>
				<th width="12%" class="text-center">&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			<?php if (count($rows) > 0): $count = 0; ?>
				<?php foreach ($rows as $row): ?>
					<tr class="odd gradeX">
						<td class="text-center"><?= ++$count; ?></td>
						<td><b><?= $row->month; ?></b></td>
						<td><b><?= $row->date; ?></b></td>
						<td class="text-center">
							<div class="btn-group">
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> Action <span class="caret"></span></button>
								<ul class="dropdown-menu dropdown-primary" role="menu">
									<li><a href="<?= site_url(ADMIN.'/holidays/manage/'.$row->id); ?>">Edit</a></li>
									<li><a href="<?= site_url(ADMIN.'/holidays/delete/'.$row->id); ?>" onclick="return confirm('Are you sure?');">Delete</a></li>
								</ul>
							</div>
						</td>
					</tr>
				<?php endforeach; ?>
			<?php endif; ?>
		</tbody>
	</table>
<?php endif; ?>
<script type="text/javascript">
	(function($){
		var array = <?=json_encode($dates)?>;
		$(function(){
			$('#date').datepicker({
				beforeShowDay: function(date){
					var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
					return [ array.indexOf(string) == -1 ]
				},minDate:0,dateFormat: 'yy-mm-dd' 
			});
		})
	}(jQuery))
	
</script>