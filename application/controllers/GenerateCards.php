<?php
class GenerateCards extends CI_Controller{
	 function __construct (){

        parent::__construct();
		  if($this->session->userdata('logged_in')){
		$this->load->model(array('user','gift_m'));
		$this->load->helper('string');
		  }
		else{
            redirect('Logout','refresh');
        }
    }
	
	function index(){
		$perm=$this->user->get_permisstion();
	if($perm[0]['p_gift_generation']!=1){
	redirect('NotAuth','refresh');
	die();
	}
		$data=array(
			'partners'=>$this->gift_m->index(),
			'userdata'=>$this->user->userdata(),
			'card_info'=>$this->gift_m->checker(),
			'priv'=>$this->user->get_permisstion(),
			);
			$this->load->view('generate_gifts_v',$data);
		
	}

	function Generate()
	{
		if (isset($_POST['upload'])) {

				$file = $_FILES['file']['tmp_name'];
				$handle = fopen($file, "r");
				$c = 0;//
				$head_id=$this->gift_m->upheader();
				while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
				{
					$code = $filesop[0];
					if($c<>0){					//SKIP THE FIRST ROW
						$this->gift_m->upload($code,$head_id);
					}
					$c = $c + 1;
				}

			$this->gift_m->update_qty($head_id);

				$data = array(
					'partners' => $this->gift_m->index(),
					'userdata' => $this->user->userdata(),
					'priv' => $this->user->get_permisstion(),
				);
				$this->load->view('thanks_v', $data);
		} else {


			$this->gift_m->generate();
			$data = array(
				'partners' => $this->gift_m->index(),
				'userdata' => $this->user->userdata(),
				'priv' => $this->user->get_permisstion(),
			);
			$this->load->view('thanks_v', $data);
		}
	}

	function list()
	{
		$perm=$this->user->get_permisstion();
		if($perm[0]['p_gift_download']!=1){
			redirect('NotAuth','refresh');
			die();
		}

		$data=array(
			'userdata'=>$this->user->userdata(),
			'priv'=>$this->user->get_permisstion(),
		);
		$this->load->view('gift_list_v',$data);

	}
	function export(){
		$package_number=$this->uri->segment(3);
		$file_name = 'GiftCards'.date('Ymd').'.csv';
		header("Content-Description: File Transfer");
		header("Content-Disposition: attachment; filename=$file_name");
		header("Content-Type: application/csv;");

		// get data
		$data = $this->gift_m->fetch_data_csv($package_number);

		// file creation
		$file = fopen('php://output', 'w');

		$header = array("Partner","Card Type","Code");
		fputcsv($file, $header);
		foreach ($data->result_array() as $key => $value)
		{
			fputcsv($file, $value);
		}
		fclose($file);
		exit;
	}
	function fetch()
	{

		$output = '';
		$query = '';
		if($this->input->post('query'))
		{
			$query = $this->input->post('query');
		}
		$data = $this->gift_m->fetch_list($query);
		$output .= '
		<div class="table-responsive">
					<table class="table table-bordered table-striped">
						<tr>
							<th>Partner</th>
							<th>Card type</th>
							<th>QTY</th>
							<th>Added By</th>
							<th>Creation Date</th>
							<th>Method</th>
							<th>Download</th>
							
						</tr>
		';
		if($data->num_rows() > 0)
		{
			foreach($data->result() as $row)
			{
				$output .= '
						<tr>
							<td>'.$row->gp_name.'</td>
							<td>'.$row->gen_name.'</td>
							<td>'.$row->gen_qty.'</td>
							<td>'.$row->u_name.'</td>
							<td>'.$row->gen_date.'</td>
							<td>'.$row->gen_method.'</td>
							<td><a href="'.base_url().'GenerateCards/export/'.$row->gen_id.'">Download</a> </td>
						</tr>
				';
			}
		}
		else
		{
			$output .= '<tr>
							<td colspan="7">No Data Found</td>
						</tr>';
		}
		$output .= '</table>';
		echo $output;
	}

	
}

?>
