<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class mod_lap_masuk extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		//alternative load library from config
		$this->load->database();
	}

	public function get_detail($tanggal_awal, $tanggal_akhir)
	{
		$query =  $this->db->query(
		"SELECT tbl_trans_masuk_detail.tgl_trans_masuk_detail, tbl_trans_masuk.id_trans_masuk, tbl_barang.nama_barang, tbl_satuan.nama_satuan, tbl_trans_masuk_detail.qty_masuk, tbl_supplier.nama_supplier, tbl_trans_masuk_detail.keterangan_masuk
		 FROM tbl_trans_masuk
		 LEFT JOIN tbl_trans_masuk_detail ON tbl_trans_masuk_detail.id_trans_masuk = tbl_trans_masuk.id_trans_masuk 
		 LEFT JOIN tbl_barang ON tbl_trans_masuk_detail.id_barang = tbl_barang.id_barang 
		 LEFT JOIN tbl_satuan ON tbl_trans_masuk_detail.id_satuan = tbl_satuan.id_satuan 
		 LEFT JOIN tbl_supplier ON tbl_trans_masuk.id_supplier = tbl_supplier.id_supplier 
		 WHERE tbl_trans_masuk_detail.tgl_trans_masuk_detail 
		 BETWEEN '".$tanggal_awal."' AND '".$tanggal_akhir."' ORDER BY tbl_trans_masuk_detail.tgl_trans_masuk_detail ASC"
		 );

         return $query->result();
        
	}

}