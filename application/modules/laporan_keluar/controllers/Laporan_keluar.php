<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_keluar extends CI_Controller {

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
		$this->load->model('mod_lap_keluar','lap_keluar');
		$this->load->model('pesan/mod_pesan','psn');
		$this->load->model('pengguna/mod_pengguna');
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

		if ($this->session->userdata('id_level_user') == 1) {
			$data = array(
				'content'=>'view_lap_keluar',
				'css'=>'cssLapKeluar',
				'js'=>'jsLapKeluar',
				'title' => 'PT.Surya Putra Barutama',
				'data_user' => $query,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}elseif ($this->session->userdata('id_level_user') == 2) {
			$data = array(
				'content'=>'view_lap_keluar',
				'css'=>'cssLapKeluar',
				'js'=>'jsLapKeluar',
				'title' => 'PT.Surya Putra Barutama',
				'data_user' => $query,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}elseif ($this->session->userdata('id_level_user') == 3) {
			$data = array(
				'content'=>'view_lap_keluar',
				'css'=>'cssLapKeluar',
				'js'=>'jsLapKeluar',
				'title' => 'PT.Surya Putra Barutama',
				'data_user' => $query,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}
		//parsing data ke file view home
		$this->load->view('view_home',$data);
	}

	public function laporan_keluar_detail()
	{
		$id_user = $this->session->userdata('id_user'); 
		$query_user = $this->mod_pengguna->get_detail_user($id_user);

		$jumlah_notif = $this->psn->notif_count($id_user);  //menghitung jumlah post
		$notif= $this->psn->get_notifikasi($id_user); //menampilkan isi postingan

		$tanggal_awal = $this->input->post('tanggalKeluarAwal');
		$tanggal_akhir = $this->input->post('tanggalKeluarAkhir');
		$query = $this->lap_keluar->get_detail($tanggal_awal, $tanggal_akhir);
		//echo var_dump($query_header);
		if ($this->session->userdata('id_level_user') == 1) {
			$data = array(
				'css'=>'cssLapKeluar',
				'js'=>'jsLapKeluar',
				'content'=>'view_lap_keluar_detail',
				'title' => 'PT.Surya Putra Barutama',
				'hasil_data' => $query,
				'data_user' => $query_user,
				'tanggal_awal' => $tanggal_awal,
				'tanggal_akhir' => $tanggal_akhir,
				'tanggal' => $tanggal_awal.' s/d '.$tanggal_akhir,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}elseif ($this->session->userdata('id_level_user') == 2) {
			$data = array(
				'css'=>'cssLapKeluar',
				'js'=>'jsLapKeluar',
				'content'=>'view_lap_keluar_detail',
				'title' => 'PT.Surya Putra Barutama',
				'hasil_data' => $query,
				'data_user' => $query_user,
				'tanggal_awal' => $tanggal_awal,
				'tanggal_akhir' => $tanggal_akhir,
				'tanggal' => $tanggal_awal.' s/d '.$tanggal_akhir,
				'qty_notif' => $jumlah_notif,
				'isi_notif' => $notif,
			);
		}elseif ($this->session->userdata('id_level_user') == 3) {
			$data = array(
				'css'=>'cssLapKeluar',
				'js'=>'jsLapKeluar',
				'content'=>'view_lap_keluar_detail',
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
		$this->load->view('view_home',$data);
	}

	public function cetak_report_pengeluaran($tglAwal= 0, $tglAkhir= 0)
	{
		$this->load->library('Pdf_gen');
		$this->load->model('laporan_order/mod_lap_order');
		// $tglAwal = $this->uri->segment(3);
		// $tglAkhir =$this->uri->segment(4);
		$id_user = $this->session->userdata('id_user');
		$query = $this->lap_keluar->get_detail($tglAwal, $tglAkhir);
		$query_footer = $this->mod_lap_order->get_detail_footer($id_user);

		$data = array(
			'title' => 'Laporan Pengeluaran Barang',
			'hasil_data' => $query,
			'hasil_footer' => $query_footer,
			'tanggal_awal' => $tglAwal,
			'tanggal_akhir' => $tglAkhir,
			'tanggal' => $tglAwal.' s/d '.$tglAkhir,
			);

	    $html = $this->load->view('view_lap_keluar_cetak', $data, true);
	    
	    $filename = 'laporan_pengeluaran_'.time();
	    $this->pdf_gen->generate($html, $filename, true, 'A4', 'portrait');
	}

}
