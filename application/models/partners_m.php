<?php
class partners_m extends CI_Model{

	function get_partners(){

		$this->db->select("*");
		$this->db->from("gift_partners");
		$this->db->where('gp_display','1');
		$this->db->order_by("gp_id", "desc");
		$data=$this->db->get();
		return  $data->results();
	}
	public function record_count() {
		$this->db->select("*");
		$this->db->from("gift_partners");
		$this->db->where('gp_display','1');
		$this->db->order_by("gp_id", "desc");
		return $this->db->get()->num_rows();
	}
	public function fetch_data($limit, $start) {

		$this->db->limit($limit-1,$start-1);

		$this->db->where('gp_display','1');
		$this->db->order_by("gp_id", "desc");
		$query = $this->db->get("gift_partners");
		if ($query->num_rows() > 0) {
			foreach ($query->result() as $row) {
				$data[] = $row;
			}

			return $data;
		}
		return false;
	}

	function save(){

		$data=array(
			'gp_name'=>$this->input->post("partner"),
		);

		$this->db->insert('gift_partners',$data);
	}

	function remove(){

		$this->db->where('gp_id',$_POST['remove']);
		$this->db->update('gift_partners',array('gp_display'=>'0'));
	}
}
?>
