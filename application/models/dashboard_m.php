<?php
class dashboard_m extends CI_Model{
	
	
	function get_warehouses(){
		$this->db->select('w_id as warehouseid');
		$this->db->select('w_name as warehousename');
		
        $this->db->from('warehouse');
		$this->db->join('stock_items','stock_items.s_warehouse_id=warehouse.w_id');
		$this->db->group_by('w_id');
		$this->db->group_by('w_name');
		$this->db->where('w_display', '1'); 
		$this->db->where('stock_items.s_qty <','5');
		$this->db->where('stock_items.s_asset','0');
		
		 $this->db->order_by('warehouseid', 'desc'); 
         $query = $this->db->get();

        return $query->result();
	}
	
	function get_stock(){
        $this->db->select('*');
        $this->db->from('stock_items');
        $this->db->where('s_display','1');
		$this->db->where('stock_items.s_display','1');
        $this->db->where('s_qty <','5');
         $query = $this->db->get();		
		return $query->result();
	}
	
	function less_five(){
		$this->db->select('*');
		$this->db->from('warehouse');
		$this->db->where('w_display','1');
		$this->db->join('stock_items','stock_items.s_warehouse_id=warehouse.w_id');
		$this->db->where('stock_items.s_qty <','5');
		$this->db->where('stock_items.s_display','1');
		$this->db->where('stock_items.s_asset','0');
		$query = $this->db->get();		
		return $query->result();
	}
	function compeleted_tasks(){
		$session_data = $this->session->userdata('logged_in');
        $name = $session_data['username'];
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('u_username', $name);
         $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row_userdata) {

                $usercompanyid[] = $row_userdata;
            }
        }
		
		$this->db->select('*')->from('transactions')->where('t_u_id',$usercompanyid[0]['u_id'])->where('t_tasked','1');
		
		$query=$this->db->get();
		return $data=$query->num_rows();
	}
	
	
	function tasks_assigned_to_you(){
		
		$session_data = $this->session->userdata('logged_in');
        $name = $session_data['username'];
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('u_username', $name);
         $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row_userdata) {

                $usercompanyid[] = $row_userdata;
            }
        }
		
		$this->db->select('*')->from('chat')->where('c_u_to_id',$usercompanyid[0]['u_id'])->where('c_cmptd','0');
		
		$query=$this->db->get();
		return $data=$query->num_rows();
		
		
	}
	
	function total_tickets(){ // based on privileges
		
		$session_data = $this->session->userdata('logged_in');
        $name = $session_data['username'];
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('u_username', $name);
         $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row_userdata) {

                $usercompanyid[] = $row_userdata;
            }
        }
		
		
		$this->db->select('p_view_cust_tickets')->from('privileges')->where('p_u_id',$usercompanyid[0]['u_id']);
		$do = $this->db->get()->row()->p_view_cust_tickets; 
		  
		  $this->db->select('*')->from('tickets');
		  
		  if($do==1){
			  
			  $this->db->where('t_u_id',$usercompanyid[0]['u_id']);
			 
		  }
		  
		  $qu=$this->db->get();
		 return $data=$qu->num_rows();
		
	}
	function opened_tickets(){ // based on privileges
		
		$session_data = $this->session->userdata('logged_in');
        $name = $session_data['username'];
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('u_username', $name);
         $query = $this->db->get();
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row_userdata) {

                $usercompanyid[] = $row_userdata;
            }
        }
		
		
		$this->db->select('p_view_cust_tickets')->from('privileges')->where('p_u_id',$usercompanyid[0]['u_id']);
		
		  $do = $this->db->get()->row()->p_view_cust_tickets; 
		  
		  $this->db->select('*')->from('tickets')->where('t_status','0');
		  
		  if($do==1){
			  
			  $this->db->where('t_u_id',$usercompanyid[0]['u_id']);
			 
		  }
		  
		  $qu=$this->db->get();
		 return $data=$qu->num_rows();
		
	}
}


?>