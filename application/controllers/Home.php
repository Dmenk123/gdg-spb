<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//cek apablia session kosong
		if ($this->session->userdata('username') === null) {
			//direct ke controller login
			redirect('login');
		}elseif ($this->session->userdata('id_level_user') !='2' && $this->session->userdata('id_level_user') != '4') {
			//pesan stok dibawah rop
			$this->load->model('Mod_home');
			$barang = $this->Mod_home->get_barang();

			foreach ($barang as $key) {
				if ($key->stok_barang < $key->rop_barang) {
					$this->session->set_flashdata('cek_stok', 'Terdapat Stok Barang dibawah nilai Reorder Point, Mohon di cek ulang / melakukan permintaan');
				}
			}
		}
		$this->load->model('Mod_home');
		$this->load->model('pesan/mod_pesan','psn');
		//profil data
		$this->load->model('profil/mod_profil','prof');
	}

	public function index()
	{	
		$id_user = $this->session->userdata('id_user'); 
		$query = $this->prof->get_detail_pengguna($id_user);

		$jumlah_notif = $this->psn->notif_count($id_user);  //menghitung jumlah post
		$notif= $this->psn->get_notifikasi($id_user); //menampilkan isi postingan

		$count_barang = $this->Mod_home->get_count_barang();
		$count_user = $this->Mod_home->get_count_user();
		$count_user_level = $this->Mod_home->get_count_user_level(); 
		$count_supplier = $this->Mod_home->get_count_supplier();
		$count_stok = $this->Mod_home->get_stok_barang();
		$count_pembelian = $this->Mod_home->get_pembelian_supplier();
		$count_borongan = $this->Mod_home->get_count_borongan();
		$count_pengambilan = $this->Mod_home->get_pengambilan_borongan();
		$count_trans_order = $this->Mod_home->get_count_order();
		$count_order_detail = $this->Mod_home->get_count_order_detail();
		$count_trans_beli = $this->Mod_home->get_count_beli();
		$count_beli_detail = $this->Mod_home->get_count_beli_detail();
		$count_trans_masuk = $this->Mod_home->get_count_masuk();
		$count_masuk_detail = $this->Mod_home->get_count_masuk_detail();
		$count_trans_keluar = $this->Mod_home->get_count_keluar();
		$count_keluar_detail = $this->Mod_home->get_count_keluar_detail();

		$data = array(
			'title' => 'PT.Surya Putra Barutama',
			'content' => 'dashboard/view_list_dashboard',
			'js' => 'dashboard/jsDashboard',
			'data_user' => $query,
			'counter_barang' => $count_barang,
			'counter_stok' => $count_stok,
			'counter_supplier' => $count_supplier,
			'counter_pembelian' => $count_pembelian,
			'counter_user' => $count_user,
			'counter_user_level' => $count_user_level,
			'counter_borongan' => $count_borongan,
			'counter_pengambilan' => $count_pengambilan,
			'counter_order' => $count_trans_order,
			'counter_order_detail' => $count_order_detail,
			'counter_beli' => $count_trans_beli,
			'counter_beli_detail' => $count_beli_detail,
			'counter_masuk' => $count_trans_masuk,
			'counter_masuk_detail' => $count_masuk_detail,
			'counter_keluar' => $count_trans_keluar,
			'counter_keluar_detail' => $count_keluar_detail,
			'qty_notif' => $jumlah_notif,
			'isi_notif' => $notif,
			);

		$this->load->view('view_home', $data);
	}

	public function oops()
	{	
		$this->load->view('login/view_404');
	}

}
