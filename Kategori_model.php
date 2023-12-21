 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_model extends CI_Model {

	public function insert($id_petugas){
		$data = array(
			'id_kategori'		=> $this->generateID(),
			'nama_kategori'			=> $this->input->post('kategori'),
			'KELUAR'		=> 0
			 );

		$this->db->insert('kategori', $data);
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}

	public function update($id){
		$data = array(
			'nama_kategori'			=> $this->input->post('kategori'),
			 );

		$this->db->where('id_kategori', $id)->update('kategori', $data);
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}

	public function getCount(){
		return $this->db->count_all('kategori');
	}

	public function getList(){
		return $query = $this->db->order_by('id_kategori','ASC')->get('kategori')->result();
	}

	public function generateID(){
		$query = $this->db->order_by('id_kategori', 'DESC')->limit(1)->get('kategori')->row('id_kategori');
		$lastNo = substr($query, 3);
		$next = $lastNo + 1;
		$kd = 'K';
		return $kd.sprintf('%03s', $next);
	}

	public function getDetail($id){
		return $this->db->where('id_kategori', $id)->get('kategori')->row();
	}

	public function delete($id){
		$this->db->where('id_kategori', $id)->delete('kategori');
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}

	public function checkAvailability($id){
		$query = $this->db->where('id_kategori', $id)->get('kategori');
		if($query->num_rows() > 0){
			return true;
		}else{
			return false;
		}
	}


}

/* End of file Buku_model.php */
/* Location: ./application/models/Buku_model.php */