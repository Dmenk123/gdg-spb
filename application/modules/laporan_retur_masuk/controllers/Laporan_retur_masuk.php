<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_retur_masuk extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//cek apablia session kosong
		if ($this->session->userdata('username') === null) {
			//direct ke controller login
			redirect('login');
		}elseif ($this->session->userdata('id_level_user') != '1' && $this->session->userdata('id_level_user') != '2' && $this->session->userdata('id_level_user') != '3') {
			redirect('home/oops');
		}
		$this->load->model('mod_lap_retur_masuk','lap_retur_masuk');
		$this->load->model('pengguna/mod_pengguna');
		$this->load->model('pesan/mod_pesan','psn');
		//pesan stok dibawah rop
		$this->load->model('Mod_home');
		$barang = $this->Mod_home->get_barang();

		foreach ($barang as $key) {
			if ($key->stok_barang < $key->rop_barang) {
				$this->session->set_flashdata('cek_stok', 'Terdapat Stok Barang dibawah nilai Reorder Point, Mohon di cek ulang / melakukan permintaan');
			}
		}
	}

	public function index()
	{
		$id_user = $this->session->userdata('id_user'); 
		$query = $this->mod_pengguna->get_detail_user($id_user);

		$jumlah_notif = $this->psn->notif_count($id_user);  //menghitung jumlah post
		$notif= $this->psn->get_notifikasi($id_user); //menampilkan isi postingan

		if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 2 || $this->session->userdata('id_level_user') == 3 ) {
			$data = array(
				'content'=>'view_lap_retur_masuk',
				'css'=>'cssLapReturMasuk',
				'js'=>'jsLapReturMasuk',
				'title' => 'PT.Surya Putra Barutama',
				'data_user' => $query,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}

		//parsing data ke file view home
		$this->load->view('view_home',$data);
	}

	public function laporan_retur_masuk_detail()
	{
		$id_user = $this->session->userdata('id_user'); 
		$query_user = $this->mod_pengguna->get_detail_user($id_user);

		$jumlah_notif = $this->psn->notif_count($id_user);  //menghitung jumlah post
		$notif= $this->psn->get_notifikasi($id_user); //menampilkan isi postingan

		$tanggal_awal = $this->input->post('tanggalReturMasukAwal');
		$tanggal_akhir = $this->input->post('tanggalReturMasukAkhir');
		$query = $this->lap_retur_masuk->get_detail($tanggal_awal, $tanggal_akhir);
		//echo var_dump($query_header);
		if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 2 || $this->session->userdata('id_level_user') == 3 ) {
			$data = array(
				'content'=>'view_lap_retur_masuk_detail',
				'css'=>'cssLapReturMasuk',
				'js'=>'jsLapReturMasuk',
				'title' => 'PT.Surya Putra Barutama',
				'hasil_data' => $query,
				'data_user' => $query_user,
				'tanggal_awal' => $tanggal_awal,
				'tanggal_akhir' => $tanggal_akhir,
				'tanggal' => $tanggal_awal.' s/d '.$tanggal_akhir,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}
		//parsing data ke file view home
		$this->load->view('view_home',$data);
	}

	public function cetak_report_penerimaan_retur($tglAwal= 0, $tglAkhir= 0)
	{
		$this->load->library('Pdf_gen');
		$id_user = $this->session->userdata('id_user');
		$query = $this->lap_retur_masuk->get_detail($tglAwal, $tglAkhir);

		$data = array(
			'title' => 'PT.Surya Putra Barutama',
			'hasil_data' => $query,
			'tanggal_awal' => $tglAwal,
			'tanggal_akhir' => $tglAkhir,
			'tanggal' => $tglAwal.' s/d '.$tglAkhir,
			);

	    $html = $this->load->view('view_lap_retur_masuk_cetak', $data, true);
	    
	    $filename = 'laporan_retur_penerimaan_'.time();
	    $this->pdf_gen->generate($html, $filename, true, 'A4', 'portrait');
	}

}
