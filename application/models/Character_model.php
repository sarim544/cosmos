<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Character_model extends CRUD_model
{

    public function __construct()
    {
    	parent::__construct();
        $this->table_name = "characters";
        $this->field = "id";
    }

    function get_member_characters($mem_id)
    {
    	$this->db->select("c.*");
    	$this->db->from($this->table_name." c");
    	$this->db->join('members m', "FIND_IN_SET(c.id, m.mem_characters) > 0");
    	$this->db->where('m.mem_id', $mem_id);
        $query = $this->db->get();
        return $query->result();
    }

    function get_character_images($mem_id, $char_id)
    {
    	$this->db->where('mem_id', $mem_id);
    	$this->db->where('ref_id', $char_id);
    	$this->db->where('ref_type', 'character');
        $query = $this->db->get('gallery');
        return $query->result();
    }
}
?>

