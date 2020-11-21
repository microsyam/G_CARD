<?php
Class GiftDashboard extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		if($this->session->userdata('logged_in')){
			$this->load->model(array('user','gift_m'));

		}
		else{
			redirect('Logout','refresh');
		}
	}

	function index()
	{
		$perm = $this->user->get_permisstion();
		if ($perm[0]['p_gift_report'] != 1) {
			redirect('NotAuth', 'refresh');
			die();
		}
		$data = array('userdata' => $this->user->userdata(),
			'priv' => $this->user->get_permisstion(),
			'partners' => $this->gift_m->report(),
		);

		$this->load->view('giftdashboard_v', $data);
	}
}
?>
