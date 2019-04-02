<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<style>
		h1, h2 { text-align: center; font-family: Calibri; }
		table.mytable {border-collapse: collapse;}
		table.mytable td, th {border: 1px solid grey; padding: 5px 15px 2px 7px;}
		th {background-color: #f2e4d5;}
	</style>
</head>
<body>

<h1>Queries</h1>
<div align='center'>
	<button type="submit" onclick="location.href='<?php echo site_url('main/query1')?>'">Payscale vs Staff</button>
	<button type="submit" onclick="location.href='<?php echo site_url('main/query2')?>'">Ranked by Goals</button>
</div>
<h2>Ranked Items by Sales</h2>
<div align='center'>
<?php
	$tmpl = array ('table_open' => '<table class="mytable">');
	$this->table->set_template($tmpl);

	$this->db->query('drop table if exists temp');
	$this->db->query('create temporary table temp as (select individual_gym_goals.staff_id, staff_type, Count(individual_gym_goals.goal_id) AS TotalGoals from individual_gym_goals, gym_member where gym_member.staff_id = individual_gym_goals.staff_id group by individual_gym_goals.staff_id order by TotalGoals DESC)');
	$query = $this->db->query('select * from temp;');
	echo $this->table->generate($query);
?>
</div>
</body>
</html>
