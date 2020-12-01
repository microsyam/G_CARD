<?php
class gift_m extends CI_Model{
	private $generated_qty=0;
function index(){
	
	$this->db->select('*');
	$this->db->from('gift_partners');
	$this->db->where('gp_display',1);
	$data=$this->db->get();
	return $data->result();
}
	 function log(){
		$session_data = $this->session->userdata('logged_in');
		$name = $session_data['username'];
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where('u_username', $name);
		$user_data = $query = $this->db->get();
		if ($user_data->num_rows() > 0) {
			foreach ($query->result_array() as $row_userdata) {

				$userid[] = $row_userdata;
			}
		}

		$file = 'loga.txt';
		//Open file in Overwrite Mode
		$fh = fopen($file,'a');

		fwrite($fh, "\n" . "-- " .date('Y-m-d H:i:s'). " [". $userid[0]['u_name'] . "] Checked a wrong code : " . $this->input->post("gift_code") . "\r\n");

		fclose($fh);
	}

function checker(){
	
	
	$this->db->select('*');
	$this->db->from('gift_cards');
	
	$this->db->join('gift_partners', 'gift_partners.gp_id = gift_cards.gift_part_id');
	$this->db->join('users','users.u_id = gift_cards.gift_u_id','LEFT'); // Flexable condation.
	
	if(isset($_POST["redeem"])){
		$redeemvalue=$this->input->post("redeem");
		$this->db->where('gift_id',$redeemvalue);
	}else{
		
	$this->db->where('gift_code', $this->input->post('gift_code'));
	$this->db->where('gift_part_id',$this->input->post('partner'));
	}
	
	$data=$this->db->get();
	if ($data->num_rows() > 0) {
		
		foreach ($data->result_array() as $row) {
                $dt[] = $row;
				
            }
		return $dt;
	}else{
		$this->log();
		return false; // Returning no result for invalid message

	}
	
}

function redeem(){
		$this->db->select('*')->from('settings')->where('s_id','1');
		  
		  $dd=$this->db->get();
		  foreach($dd->result_array() as $bb){
		      $setin[]=$bb;
		  }
		$timezone=$setin[0]['s_timezone'];
			date_default_timezone_set($timezone);
		$session_data = $this->session->userdata('logged_in');
         $name = $session_data['username'];
		 $this->db->select('*');
		 $this->db->from('users');
		 $this->db->where('u_username', $name);
		 $user_data = $query = $this->db->get();
		 if ($user_data->num_rows() > 0) {
                foreach ($query->result_array() as $row_userdata) {

                    $userid[] = $row_userdata;
                }
            }
	$redeemvalue=$this->input->post("redeem");

		 $this->db->select('*')->from('gift_cards')->where('gift_id',$redeemvalue);
		 $value=$this->db->get()->row()->gift_active;
	if($value!=1) {
		$this->db->where('gift_id', $redeemvalue);
		$this->db->update('gift_cards', array('gift_active' => '1', 'gift_u_id' => $userid[0]['u_id'], 'gift_date' => date('Y-m-d H:i:s')));
	}
	
	
}
function generate()
{
	ini_set('max_execution_time', 0); 
ini_set('memory_limit','2048M');
		$session_data = $this->session->userdata('logged_in');
         $name = $session_data['username'];
		 $this->db->select('*');
		 $this->db->from('users');
		 $this->db->where('u_username', $name);
		 $user_data = $query = $this->db->get();
		 if ($user_data->num_rows() > 0) {
                foreach ($query->result_array() as $row_userdata) {

                    $userid[] = $row_userdata;
                }
            }
			
		$this->db->select('*')->from('settings')->where('s_id','1');
		  
		  $dd=$this->db->get();
		  foreach($dd->result_array() as $bb){
		      $setin[]=$bb;
		  }
		$timezone=$setin[0]['s_timezone'];
			date_default_timezone_set($timezone);

	$dataheader=array(
		'gen_part_id'=>$this->input->post('partner'),
		'gen_name'=>$this->input->post('name'),
		'gen_u_id'=>$userid[0]['u_id'],
		'gen_date'=>date('Y-m-d H:i:s'),
		'gen_method'=>"Generated",
	);
	$this->db->insert('gen_gift',$dataheader);
	$hd_id = $this->db->insert_id();
	$qty=$this->input->post('qty');
	 for ($i = 0; $i < $qty; $i++){
		 $code=random_string('alnum',8);
		 $this->db->select('gift_code');
		 $this->db->from('gift_cards');
		 $this->db->where('gift_code',$code);
		 $res=$this->db->get();
		 if ($res->num_rows() > 0) {
			 $qty++;
		 }else{
		 $data=array(
		 'gift_name'=>$this->input->post('name'),
		 'gift_part_id'=>$this->input->post('partner'),
		 'gift_u_id'=>$userid[0]['u_id'],
		 'gift_creation_date'=>date('Y-m-d H:i:s'),
		 'gift_code'=>$code,
		 'gift_plan_id'=>$hd_id,
		 );
		 $this->db->insert('gift_cards',$data);
		 $this->generated_qty++; // to record the actual generated cards
		 }

	 }
	$this->db->where('gen_id',$hd_id);
	$this->db->update('gen_gift',array('gen_qty'=>$this->generated_qty));

}

	function upload($code,$head_id)
	{
		ini_set('max_execution_time', 0);
		ini_set('memory_limit','2048M');
		$session_data = $this->session->userdata('logged_in');
		$name = $session_data['username'];
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where('u_username', $name);
		$user_data = $query = $this->db->get();
		if ($user_data->num_rows() > 0) {
			foreach ($query->result_array() as $row_userdata) {

				$userid[] = $row_userdata;
			}
		}

		$this->db->select('*')->from('settings')->where('s_id','1');

		$dd=$this->db->get();
		foreach($dd->result_array() as $bb){
			$setin[]=$bb;
		}
		$timezone=$setin[0]['s_timezone'];
		date_default_timezone_set($timezone);

			$this->db->select('gift_code');
			$this->db->from('gift_cards');
			$this->db->where('gift_code',$code);
			$res=$this->db->get();
			if ($res->num_rows() > 0) {
				//$qty++;
			}else{
				$data=array(
					'gift_name'=>$this->input->post('name'),
					'gift_part_id'=>$this->input->post('partner'),
					'gift_u_id'=>$userid[0]['u_id'],
					'gift_creation_date'=>date('Y-m-d H:i:s'),
					'gift_code'=>$code,
					'gift_plan_id'=>$head_id,
				);
				$this->db->insert('gift_cards',$data);
				$this->generated_qty++; // to record the actual generated cards
			}



	}

	function upheader(){
		$session_data = $this->session->userdata('logged_in');
		$name = $session_data['username'];
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where('u_username', $name);
		$user_data = $query = $this->db->get();
		if ($user_data->num_rows() > 0) {
			foreach ($query->result_array() as $row_userdata) {

				$userid[] = $row_userdata;
			}
		}

		$this->db->select('*')->from('settings')->where('s_id','1');

		$dd=$this->db->get();
		foreach($dd->result_array() as $bb){
			$setin[]=$bb;
		}
		$timezone=$setin[0]['s_timezone'];
		date_default_timezone_set($timezone);


		$dataheader=array(
			'gen_part_id'=>$this->input->post('partner'),
			'gen_name'=>$this->input->post('name'),
			'gen_u_id'=>$userid[0]['u_id'],
			'gen_date'=>date('Y-m-d H:i:s'),
			'gen_method'=>"Uploaded",
		);
		$this->db->insert('gen_gift',$dataheader);
		$insert_id = $this->db->insert_id();

		return  $insert_id;

	}

	function update_qty($head_id){ // this function made to add the qty in the card header
	$this->db->where('gen_id',$head_id);
	$this->db->update('gen_gift',array('gen_qty'=>$this->generated_qty));


	}

	function fetch_data_csv($package_number){

	$this->db->select('gift_partners.gp_name,gen_gift.gen_name,gift_cards.gift_code');
	$this->db->from('gift_cards');
	$this->db->where('gift_plan_id',$package_number);
	$this->db->join('gen_gift','gen_gift.gen_id=gift_cards.gift_plan_id');
	$this->db->join('gift_partners','gift_partners.gp_id=gen_gift.gen_part_id');

	return $this->db->get();
	}


function report(){

	$this->db->select('sum(gift_active) as redeemed,count(gift_id) as total,gp_name,gift_name,count(gift_id)-sum(gift_active) as minus,
	 sum(gift_active)/count(gift_id) * 100 as perc
	');
	$this->db->from('gift_cards');
	$this->db->join('gift_partners','gift_partners.gp_id=gift_cards.gift_part_id');
	$this->db->group_by("gift_partners.gp_name");
	$data=$this->db->get();
	if($data->num_rows()>0) {
		foreach ($data->result_array() as $row) {
			$dt[] = $row;

		}
		return $dt;
	}

}

function get_list(){

	$this->db->select('*')->from('gen_gift');
	$data=$this->db->get();
	return $data->result();
}
function fetch_list($query){

	$this->db->select('*');
	$this->db->from('gen_gift');
	$this->db->join('gift_partners','gift_partners.gp_id=gen_gift.gen_part_id');
	$this->db->join('users','users.u_id=gen_gift.gen_u_id');

	if($query != '')
	{
		$this->db->or_like('gen_name',$query);
	}
	$this->db->order_by('gen_id', 'DESC');
	return $this->db->get();
}


	
}
