<?php
class AddUser extends CI_Controller{
	
	public function __construct()
{
    parent::__construct();
	if($this->session->userdata('logged_in')){
    $this->load->model(array('user','adduser_m','AddComputer_m')); // This array to save number of lines only
	
	$perm=$this->user->get_permisstion();
	if($perm[0]['p_add_user']!=1){
	redirect('NotAuth','refresh');
	die();
	}
	
	}else{
		redirect('login','refresh');
		}
}

	function index (){
		$this->load->view('adduser_v', array(
                'userdata' => $this->user->userdata(),
				'deparments'=>$this->AddComputer_m->index(),
				'priv'=>$this->user->get_permisstion(),
            ));
	}
	
	function save(){
		$this->form_validation->set_error_delimiters('<div class="alert alert-warning">', '</div>'); 
		$this->form_validation->set_rules('name','Name','trim|required|xss_clean');
		$this->form_validation->set_rules('username','Username','trim|required|xss_clean|is_unique[users.u_username]|min_length[2]|max_length[100]');
		$this->form_validation->set_rules('email','Email Address','trim|xss_clean');
		$this->form_validation->set_rules('phone','Phone','trim|xss_clean|numeric');
		$this->form_validation->set_rules('department','Department','trim|required|xss_clean|numeric');
		if($this->form_validation->run()==false){
			$this->index();
			}else{
				
				$this->adduser_m->index();
				redirect('AddUser','refresh');
			}
		
		
		
	}
}

?>
