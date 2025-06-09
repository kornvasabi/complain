<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select_option_model extends CI_Model {

    public function getUserRole($selected)
    {
        $user_role = $this->db->get('user_role')->result_array(); /*select uer_role*/

        // print_r($user_role); exit;
        $html = "";
        foreach($user_role as $row){
            $html .="<option value='".$row['id']."' ".($selected == $row['role_id'] ? 'selected':'').">".$row['role']."</option>";
        }
        return $html;
    }

}