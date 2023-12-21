<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Kategori_model');
		if($this->session->userdata('logged_in') == false){
			redirect('welcome');
		}
	}

	public function index(){
		$data['title'] = 'Kategori';
		$data['primary_view'] = 'kategori/kategori_view';
		$data['total'] = $this->Kategori_model->getCount();
		$data['list'] = $this->Kategori_model->getList();
		$this->load->view('template_view', $data);
	}

	public function add(){
		$data['title'] = 'Tambah Kategori';
		$data['primary_view'] = 'kategori/add_Kategori_view';
		$this->load->view('template_view', $data);
	}

	public function submit(){
		if($this->input->post('submit')){
			$this->form_validation->set_rules('nama_kategori', 'nama kategori', 'trim|required');

			if ($this->form_validation->run() == true) {
				// //GET : Petugas ID
				// $username = $this->session->userdata('username');
				// $id_petugas = $this->Petugas_model->getID($username);

				if($this->Kategori_model->insert($id_kategori) == true){
					$this->session->set_flashdata('announce', 'Berhasil menyimpan data');
					redirect('kategori/add');
				}else{
					$this->session->set_flashdata('announce', 'Gagal menyimpan data');
					redirect('kategori/add');
				}
			} else {
				$this->session->set_flashdata('announce', validation_errors());
				redirect('kategori/add');
			}
		}
	}

	public function submits(){
		if($this->input->post('submit')){
			$this->form_validation->set_rules('nama_kategori', 'Nama Kategori', 'trim|required');

			if ($this->form_validation->run() == true) {
				if($this->Kategori_model->update($this->input->post('id_kategori')) == true){
					$this->session->set_flashdata('announce', 'Berhasil menyimpan data');
					redirect('kategori/edit?idtf='.$this->input->post('id_kategori'));
				}else{
					$this->session->set_flashdata('announce', 'Gagal menyimpan data');
					redirect('kategori/edit?idtf='.$this->input->post('id_kategori'));
				}
			} else {
				$this->session->set_flashdata('announce', validation_errors());
				redirect('Kategori/edit?idtf='.$this->input->post('id_kategori'));
			}
		}
	}

	public function edit(){
		$id = $this->input->get('idtf');
		//CHECK : Data Availability
		if($this->Kategori_model->checkAvailability($id) == true){
			$data['primary_view'] = 'kategori/edit_kategori_view';
		}else{
			$data['primary_view'] = '404_view';
		}
		$data['title'] = 'Edit kategori';
		$data['detail'] = $this->Kategori_model->getDetail($id);
		$this->load->view('template_view', $data);
	}

	public function delete(){
		$id = $this->input->get('rcgn');
		if($this->Kategori_model->delete($id) == true){
			$this->session->set_flashdata('announce', 'Berhasil menghapus data');
			redirect('kategori');
		}else{
			$this->session->set_flashdata('announce', 'Gagal menghapus data');
			redirect('kategori');
		}
	}

}