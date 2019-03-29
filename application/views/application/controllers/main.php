<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	 function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		$this->load->library('table');
	}

	public function index()
	{
		$this->load->library('session');
		$this->load->view('header');
		$this->load->view('home');
	}

	// public function orders()
	// {
	// 	$this->load->view('header');
	// 	$crud = new grocery_CRUD();
	// 	$crud->set_theme('datatables');
	//
	// 	//table name exact from database
	// 	$crud->set_table('orders');
	//
	// 	//give focus on name used for operations e.g. Add Order, Delete Order
	// 	$crud->set_subject('Order');
	//
	// 	//the columns function lists attributes you see on frontend view of the table
	// 	$crud->columns('invoiceNo', 'date', 'custID', 'items');
	//
	// 	//the fields function lists attributes to see on add/edit forms.
	// 	//Note no inclusion of invoiceNo as this is auto-incrementing
	// 	$crud->fields('date', 'custID', 'items');
	//
	// 	//set the foreign keys to appear as drop-down menus
	// 	// ('this fk column','referencing table', 'column in referencing table')
	// 	$crud->set_relation('custID','customers','custID');
	//
	// 	//many-to-many relationship with link table see grocery crud website: www.grocerycrud.com/examples/set_a_relation_n_n
	// 	//('give a new name to related column for list in fields here', 'join table', 'other parent table', 'this fk in join table', 'other fk in join table', 'other parent table's viewable column to see in field')
	// 	$crud->set_relation_n_n('items', 'order_items', 'items', 'invoice_no', 'item_id', 'itemDesc');
	//
	// 	//form validation (could match database columns set to "not null")
	// 	$crud->required_fields('invoiceNo', 'date', 'custID');
	//
	// 	//change column heading name for readability ('columm name', 'name to display in frontend column header')
	// 	$crud->display_as('custID', 'CustomerID');
	//
	// 	$output = $crud->render();
	// 	$this->orders_output($output);
	// }
	//
	// function orders_output($output = null)
	// {
	// 	//this function links up to corresponding page in the views folder to display content for this table
	// 	$this->load->view('orders_view.php', $output);
	// }
	//
	// public function items()
	// {
	// 	$this->load->view('header');
	// 	$crud = new grocery_CRUD();
	// 	$crud->set_theme('datatables');
	//
	// 	$crud->set_table('items');
	// 	$crud->set_subject('item');
	// 	$crud->columns('itemID', 'itemDesc', 'orders');
	// 	$crud->fields('itemDesc', 'orders');
	// 	$crud->required_fields('itemID', 'itemDesc');
	// 	$crud->set_relation_n_n('orders', 'order_items', 'orders', 'item_id', 'invoice_no', 'invoiceNo');
	// 	$crud->display_as('itemDesc', 'Description');
	//
	// 	$output = $crud->render();
	// 	$this->items_output($output);
	// }
	//
	// function items_output($output = null)
	// {
	// 	$this->load->view('items_view.php', $output);
	// }
	// public function customers()
	// {
	// 	$this->load->view('header');
	// 	$crud = new grocery_CRUD();
	// 	$crud->set_theme('datatables');
	// 	$crud->set_table('customers');
	// 	$crud->set_subject('customer');
	// 	$crud->fields('custID', 'custName', 'custAddress', 'custTown', 'custPostcode', 'custTel', 'custEmail');
	// 	$crud->required_fields('custID', 'custName', 'custAddress', 'custTown', 'custPostcode', 'custTel', 'custEmail');
	// 	$crud->display_as('custID', 'CustomerID');
	// 	$crud->display_as('custName', 'Name');
	// 	$crud->display_as('custAddress', 'Address');
	// 	$crud->display_as('custTown', 'Town');
	// 	$crud->display_as('custPostcode', 'Postcode');
	// 	$crud->display_as('custTel', 'Phone');
	// 	$crud->display_as('custEmail', 'Email');
	//
	// 	$output = $crud->render();
	// 	$this->cust_output($output);
	// }
	//
	// function cust_output($output = null)
	// {
	// 	$this->load->view('cust_view.php', $output);
	// }
	//
	// public function orderline()
	// {
	// 	$this->load->view('header');
	// 	$crud = new grocery_CRUD();
	// 	$crud->set_theme('datatables');
	// 	$crud->set_table('order_items');
	// 	$crud->set_subject('order line');
	// 	$crud->fields('invoice_no', 'item_id', 'itemQty', 'itemPrice');
	// 	$crud->set_relation('invoice_no','orders','invoiceNo');
	// 	//have multiple columns show in one FK column by concatenation:  www.grocerycrud.com/forums/topic/479-concatenate-two-or-more-fields-into-one-field/
	// 	$crud->set_relation('item_id','items','{itemID} - {itemDesc}');
	// 	$crud->required_fields('invoice_no', 'item_id', 'itemQty', 'itemPrice');
	// 	$crud->display_as('invoice_no', 'InvoiceNo');
	// 	$crud->display_as('item_id', 'ItemID');
	// 	$crud->display_as('itemQty', 'Quantity');
	// 	$crud->display_as('itemPrice', 'Price');
	//
	// 	$output = $crud->render();
	// 	$this->orderline_output($output);
	// }
	//
	// function orderline_output($output = null)
	// {
	// 	$this->load->view('orderline_view.php', $output);
	// }

/* Custom codes goes here */

public function GymMember()
{
	$this->load->view('header');
	$crud = new grocery_CRUD();
	$crud->set_theme('datatables');
	$crud->set_table('gym_member');
	$crud->set_subject('gym_member');
	$crud->columns('staff_id', 'staff_name', 'staff_email', 'address', 'department', 'access_type', 'staff_pay', 'staff_card', 'gym_goals');
	$crud->fields('staff_id', 'staff_name', 'staff_email', 'address', 'department', 'access_type', 'staff_pay', 'staff_card', 'gym_goals');
	$crud->required_fields('staff_id', 'staff_name', 'department', 'access_type', 'staff_email', 'address', 'staff_pay', 'staff_card', 'gym_goals');
	$crud->set_relation_n_n('gym_goals', 'individual_gym_goals', 'gym_goals', 'staff_id', 'id', 'description' );
	$crud->set_relation('staff_pay', 'pay_grade', 'pay_scale');
	$crud->display_as('staff_id', 'Staff ID');
	$crud->display_as('staff_name', 'Name');
	$crud->display_as('department', 'Department');
	$crud->display_as('access_type', 'Access Type');
	$crud->display_as('staff_email', 'Email');
	$crud->display_as('address', 'Address');
	$crud->display_as('staff_pay', 'Pay grade');
	$crud->display_as('staff_card', 'Card ID');

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
	$crud->fields( 'staff_id', 'membership', 'valid_upto', 'created_on');
  $crud->set_relation('staff_id', 'gym_member', '{staff_card} - {staff_name}');
	$crud->set_relation('membership', 'membership_type', 'description');
  $crud->display_as('staff_id', 'Staff');
	$crud->display_as('valid_upto', 'Valid untill');
	$crud->display_as('created_on', 'Created on');
	$crud->display_as('membership', 'Member Type');

	$output = $crud->render();
	$this->card_output($output);
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
	$crud->display_as('staff_id', 'Goal');
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
