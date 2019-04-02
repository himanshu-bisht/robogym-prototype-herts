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
	$crud->set_relation_n_n('staff_goals', 'individual_gym_goals', 'gym_goals', 'staff_id', 'goal_id', 'description');;

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
	$crud->set_theme('datatables');
	$crud->set_table('gym_card');
	$crud->set_subject('gym_card');
	$crud->fields( 'card_id', 'staff_id', 'membership', 'valid_upto', 'valid_thru', 'isExpired');
  $crud->set_relation('staff_id', 'gym_member', 'staff_name');
	$crud->set_relation('membership', 'membership_type', 'description');
	$crud->display_as('card_id', 'Card Id');
  $crud->display_as('staff_id', 'Staff');
	$crud->display_as('valid_upto', 'Valid untill');
	$crud->display_as('valid_thru', 'Created on');
	$crud->display_as('membership', 'Member Type');
	$crud->display_as('isExpired', 'Expired');
	$output = $crud->render();
	$this->card_v1_output($output);
}

function card_v1_output($output = null)
{
	$this->load->view('card_view.php', $output);
}


public function ElegantGymCard()
{
	$this->load->view('header');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
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
	$crud->display_as('isExpired', 'Expired');
	$crud->callback_column('card_id', array($this,'_callback_gymcard_state'));
	$output = $crud->render();
	$this->card_v2_output($output);
}

public function _callback_gymcard_state($value, $row)
{
	if ($row->membership == '3'){

		if ($row->isExpired == '1') {

			return "<span style='color:green'><strong>".$row->card_id."</strong><p style='color:red'><strong>Expired</strong></span>";
		}
		else {
			return "<span style='color:green'><strong>".$row->card_id."</strong></span>";
		}
	}

	elseif ($row->membership == '2') {
		if ($row->isExpired == '1') {

			return "<span style='color:blue'><strong>".$row->card_id."</strong><p style='color:red'><strong>Expired</strong></span>";
		}
		else {
			return "<span style='color:blue'><strong>".$row->card_id."</strong></span>";
		}
	}

	elseif ($row->membership == '1') {
		if ($row->isExpired == '1') {

			return "<span style='color:black'><strong>".$row->card_id."</strong><p style='color:red'><strong>Expired</strong></span>";
		}
		else {
			return "<span style='color:black'><strong>".$row->card_id."</strong></span>";
		}
	}

}

function card_v2_output($output = null)
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
