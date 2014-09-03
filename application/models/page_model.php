<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page_model extends CI_Model {
	
	function get_User($user_id){
		$query = $this->db->get_where('information', array('ID'=>$user_id));
		$return = $query->result();
		return $return[0];
		
	}
	
	function get_SkillRanks($user_id){
		$this->db->order_by('rank_id', 'desc');
		$query = $this->db->get_where('user_skills', array('ID'=>$user_id));
		return $query->result();		
	}
	
	function get_SkillGroups(){
		$query = $this->db->get('skillgroup');
		return $query->result();
	}
	function get_RankCount(){
		$query = $this->db->get('rank');
		return $query->num_rows();
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */