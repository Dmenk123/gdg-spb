<!-- Bootstrap modal -->
<!-- modal_form_beli -->
<div class="modal fade" id="modal_form_retur_keluar" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content"> 
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title"></h3>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-inline">
                    <div class="form-group">
                        <label class="lbl-modal">ID Retur Out: </label>
                        <input type="text" class="form-control" id="form_id_retur_keluar" name="fieldIdReturKeluar" readonly="">
                    </div>
                    <div class="form-group">
                        <label class="lbl-modal">Tanggal : </label>
                        <input type="text" class="form-control" id="form_tanggal_retur_keluar" name="fieldTanggalReturKeluar" required>
                        <!-- <span class="help-block"></span> -->
                    </div>
                     <br />
                    <div class="form-group">
                        <label class="lbl-modal">Petugas : </label>
                        <input type="text" class="form-control" id="form_user_retur_keluar" name="fieldUserReturKeluar" value="<?php echo $this->session->userdata('username');?>" readonly>
                        <input type="hidden" class="form-control" id="form_id_user_retur_keluar" name="fieldIdUserReturKeluar" value="<?php echo $this->session->userdata('id_user');?>" readonly>
                    </div>
                    <div class="form-group">
                       <label class="lbl-modal">ID Penerimaan : </label>
                        <select class="form-control" style="width:200px;" id="form_id_penerimaan" name="fieldIdPenerimaan"></select>
                    </div>
                    <div class="form-group">
                        <label class="lbl-modal">Supplier : </label>
                        <input type="text" class="form-control" style="width:535px;" id="form_nama_supplier" name="fieldNamaSupplier" readonly="">
                        <input type="hidden" class="form-control" style="width:535px;" id="form_id_supplier" name="fieldIdSupplier" readonly="">
                    </div>
                    <br />
                    <div class="form-group" style="padding-bottom: 20px;">
                       <table id="tabel_retur_keluar" class="table table-bordered table-hover">
                            <thead>
                              <tr>
                                  <th class="thBarang" style="text-align:center">Nama Barang</th>
                                  <th class="thSatuan" style="text-align:center">Satuan</th>
                                  <th class="thQty" style="text-align:center" >Qty</th>
                                  <th class="thKeterangan" style="text-align:center" >Keterangan</th>
                                  <th class="thAksi" style="text-align:center">AKSI</th>
                                </tr>
                            </thead>
                            <tbody>
                           </tbody> <!-- tbody -->
                        </table> <!-- table --> 
                    </div> <!-- form group -->
                </form> <!-- form -->
            </div> <!-- modal body -->
            <div class="modal-footer">
                <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">Save</button>
                <button type="reset" id="btn_cancel_order" class="btn btn-danger" data-dismiss="modal">Cancel</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
