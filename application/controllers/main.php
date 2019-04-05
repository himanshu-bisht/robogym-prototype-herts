<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	 function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		$this->load->library('table');
		$this->load->library('session');
	}

	public function index()
	{
		$this->load->library('session');
		$this->load->view('homepage');
		$this->load->view('home');
	}

	public function index2()
	{
		$this->load->library('session');
		$this->load->view('header');
		$this->load->view('home');
	}


public function GymMember()
{
	$this->load->view('header');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
	$crud->set_table('gym_member');
	$crud->set_subject('gym_member');
	$crud->columns('staff_id', 'staff_name', 'staff_email', 'address', 'department', 'staff_type', 'staff_pay', 'staff_goals');

	$crud->fields('staff_id', 'staff_name', 'staff_email', 'address', 'department', 'staff_type', 'staff_pay', 'staff_goals');
	$crud->set_relation('staff_pay', 'pay_grade', 'pay_scale');
	$crud->set_relation_n_n('staff_goals', 'individual_gym_goals', 'gym_goals', 'staff_id', 'goal_id', 'description');

	$crud->required_fields('staff_id', 'staff_name', 'department', 'staff_type', 'staff_email', 'address', 'staff_pay', 'staff_goals');
	$crud->display_as('staff_id', 'Staff ID');
	$crud->display_as('staff_name', 'Name');
	$crud->display_as('department', 'Department');
	$crud->display_as('staff_type', 'Staff Type');
	$crud->display_as('staff_email', 'Email');
	$crud->display_as('address', 'Address');
	$crud->display_as('staff_pay', 'Pay grade');
	$crud->display_as('staff_goals', 'Goals');

	$output = $crud->render();
	$this->mem_output($output);
}

function mem_output($output = null)
{
	$this->load->view('mem_view.php', $output);
}

public function GymCard()
{
	$this->load->view('header');
	$crud = new grocery_CRUD();
	// $crud->set_theme('datatables');
	$crud->set_table('gym_card');
	$crud->set_subject('gym_card');
	$crud->columns('card_id', 'staff_id', 'membership', 'valid_upto', 'valid_thru', 'isExpired');
	$crud->fields( 'card_id', 'staff_id', 'membership', 'valid_upto', 'valid_thru', 'isExpired');
  $crud->set_relation('staff_id', 'gym_member', 'staff_name');
	$crud->set_relation('membership', 'membership_type', 'description');
	$crud->display_as('card_id', 'Card Id');
  $crud->display_as('staff_id', 'Staff');
	$crud->display_as('valid_upto', 'Valid untill');
	$crud->display_as('valid_thru', 'Created on');
	$crud->display_as('membership', 'Member Type');
	$crud->display_as('isExpired', 'Status');
	$crud->callback_column($this->unique_field_name('membership'), array($this,'card_membership_color'));
	$crud->callback_column('isExpired', array($this,'card_status'));

	$output = $crud->render();
	$this->card_output($output);
}

public function unique_field_name($field_name) {
	    return 's'.substr(md5($field_name),0,8); //This s is because is better for a string to begin with a letter and not with a number
}

public function card_status($value, $row)
{
	if ($row->isExpired == '1') {

			return "<pre style='color:green'><p style='color:red'><font size='4'><strong>Expired</strong><font size='4'></pre>";
		}
		else {
			return "<pre style='color:green'><font size='4'><strong>Active</strong></font></pre>";
		}
}

public function card_membership_color($value, $row)
{
	echo 'this works';
	if ($row->membership == '1') {
		return "<pre style='color:black'><p><font size='4'><strong>Standard</strong><font size='4'></pre>";
	}

	elseif ($row->membership == '2') {
		echo 'passed';
		return "<pre style='color:blue'><p><font size='4'><strong>Economy</strong><font size='4'></pre>";
	}

	else {
		return "<pre style='color:#D4AF37'><p><font size='4'><strong>Premium</strong><font size='4'></pre>";
	}
}

function card_output($output = null)
{
	$this->load->view('card_view.php', $output);
}



public function GymGoals()
{
	$this->load->view('header');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
	$crud->set_table('gym_goals');
	$crud->set_subject('gym_goals');
	$crud->fields('id', 'description');
	$crud->required_fields('id', 'description');
	$crud->display_as('id', 'ID');
	$crud->display_as('description', 'Goal');

	$output = $crud->render();
	$this->goal_output($output);
}

function goal_output($output = null)
{
	$this->load->view('goal_view.php', $output);
}

public function IndividualGymGoals()
{
	$this->load->view('header');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
	$crud->set_table('individual_gym_goals');
	$crud->set_subject('individual_gym_goals');
	$crud->fields('id', 'staff_id', 'goal_id');
	$crud->required_fields('staff_id', 'goal_id');
	$crud->set_relation('staff_id', 'gym_member', '{staff_id} - {staff_name}');
	$crud->set_relation('goal_id', 'gym_goals', 'description');
	$crud->display_as('id', 'ID');
	$crud->display_as('staff_id', 'Staff');
	$crud->display_as('goal_id', 'goal_id');

	$output = $crud->render();
	$this->individual_goal_output($output);
}

function individual_goal_output($output = null)
{
	$this->load->view('individual_goal_view.php', $output);
}

/* no custom codes after this line */

	public function querynav()
	{
		$this->load->view('header');
		$this->load->view('querynav_view');
	}

	public function query1()
	{
		$this->load->view('header');
		$this->load->view('query1_view');
	}

	public function query2()
	{
		$this->load->view('header');
		$this->load->view('query2_view');
	}

	public function blank()
	{
		$this->load->view('header');
		$this->load->view('blank_view');
	}
}
