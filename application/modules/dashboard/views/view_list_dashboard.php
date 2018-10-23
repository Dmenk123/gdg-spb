    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Dashboard
        <small><strong>Selamat Datang : <?php foreach ($data_user as $key) {
          echo $key->nama_lengkap_user;
        } ?></strong></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Barang</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="box">
        <div class="box-body">
          <div class="row">
            <?php if ($this->session->userdata('id_level_user') == 1): ?>
              <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                  <div class="inner">
                    <h3><?php foreach ($counter_user as $key) {
                      echo $key->jumlah_user;
                    } ?></h3>
                    <p>Master Pengguna Aktif</p>
                  </div>
                  <div class="icon">
                    <i class="fa fa-users"></i>
                  </div>
                <a href="<?php echo site_url('pengguna'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- /.small box -->
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-user"></span> Kategori Pengguna
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_user_level as $key) { ?>
                      <li><a><?php echo $key->level_user; ?> <span class="pull-right badge bg-blue"><?php echo $key->jumlah_level; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

            <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 3): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-purple">
                <div class="inner">
                  <h3><?php foreach ($counter_barang as $key) {
                    echo $key->jumlah_barang;
                  } ?></h3>

                  <p>Master Barang Aktif</p>
                </div>
                <div class="icon">
                  <i class="fa fa-tasks"></i>
                </div>
                <a href="<?php echo site_url('barang'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-tasks"></span> Top 5 Stok Barang
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_stok as $key) { ?>
                      <li><a><?php echo $key->nama_barang; ?> <span class="pull-right badge bg-blue"><?php echo $key->stok_barang; ?> <?php echo $key->nama_satuan; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

            <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 4): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-olive">
                <div class="inner">
                  <h3><?php foreach ($counter_supplier as $key) {
                    echo $key->jumlah_supplier;
                  } ?></h3>

                  <p>Master Supplier Aktif</p>
                </div>
                <div class="icon">
                  <i class="fa fa-phone"></i>
                </div>
                <a href="<?php echo site_url('supplier'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-phone"></span> Top 5 Pembelian Supplier
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_pembelian as $key) { ?>
                      <li><a><?php echo $key->nama_supplier; ?> <span class="pull-right badge bg-blue"><?php echo $key->jumlah_pembelian; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

            <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 2): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-teal">
                <div class="inner">
                  <h3><?php foreach ($counter_borongan as $key) {
                    echo $key->jumlah_borongan;
                  } ?></h3>

                  <p>Master Borongan Aktif</p>
                </div>
                <div class="icon">
                  <i class="fa fa-address-card-o"></i>
                </div>
                <a href="<?php echo site_url('borongan'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-address-card-o"></span> Top 5 Pengambilan oleh Borongan
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_pengambilan as $key) { ?>
                      <li><a><?php echo $key->nama_borongan; ?> - <?php echo $key->nama_borongan_detail;?> <span class="pull-right badge bg-blue"><?php echo $key->jumlah_pengambilan; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

            <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 3): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-fuchsia">
                <div class="inner">
                  <h3><?php foreach ($counter_order as $key) {
                    echo $key->jumlah_order;
                  } ?></h3>

                  <p>Transaksi Order Barang</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <a href="<?php echo site_url('trans_order'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-list"></span> Top 5 Frekuensi Permintaan Barang
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_order_detail as $key) { ?>
                      <li><a><?php echo $key->nama_barang; ?><span class="pull-right badge bg-blue"><?php echo $key->jumlah_order_detail; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

            <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 4): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><?php foreach ($counter_beli as $key) {
                    echo $key->jumlah_beli;
                  } ?></h3>

                  <p>Transaksi Pembelian Barang</p>
                </div>
                <div class="icon">
                  <i class="fa fa-shopping-cart"></i>
                </div>
                <a href="<?php echo site_url('trans_beli'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-shopping-cart"></span> Top 5 Frekuensi Pembelian Barang
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_beli_detail as $key) { ?>
                      <li><a><?php echo $key->nama_barang; ?><span class="pull-right badge bg-blue"><?php echo $key->jumlah_beli_detail; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

            <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 3): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-maroon">
                <div class="inner">
                  <h3><?php foreach ($counter_masuk as $key) {
                    echo $key->jumlah_masuk;
                  } ?></h3>

                  <p>Transaksi Penerimaan Barang</p>
                </div>
                <div class="icon">
                  <i class="fa fa-plus-square"></i>
                </div>
                <a href="<?php echo site_url('trans_masuk'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-plus-square"></span> Top 5 Frekuensi Penerimaan Barang
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_masuk_detail as $key) { ?>
                      <li><a><?php echo $key->nama_barang; ?><span class="pull-right badge bg-blue"><?php echo $key->jumlah_masuk_detail; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>

             <?php if ($this->session->userdata('id_level_user') == 1 || $this->session->userdata('id_level_user') == 3): ?>
            <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-olive">
                <div class="inner">
                  <h3><?php foreach ($counter_keluar as $key) {
                    echo $key->jumlah_keluar;
                  } ?></h3>

                  <p>Transaksi Pengeluaran Barang</p>
                </div>
                <div class="icon">
                  <i class="fa fa-minus-square"></i>
                </div>
                <a href="<?php echo site_url('trans_keluar'); ?>" class="small-box-footer">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
              </div>
              <!-- Widget: user widget style 1 -->
              <div class="box box-widget widget-user-2">
                <!-- Add the bg color to the header using any of the bg-* classes -->
                <div class="widget-user-header bg-blue">
                  <span class="icon fa fa-minus-square"></span> Top 5 Frekuensi Pengeluaran Barang
                </div>
                <div class="box-footer no-padding">
                  <ul class="nav nav-stacked">
                    <?php foreach ($counter_keluar_detail as $key) { ?>
                      <li><a><?php echo $key->nama_barang; ?><span class="pull-right badge bg-blue"><?php echo $key->jumlah_keluar_detail; ?></span></a></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
              <!-- /.widget-user -->
            </div>
            <!-- ./col -->
            <?php endif ?>
          </div>
          <!-- /.row -->
        </div>
      </div>       
    </section>
    <!-- /.content -->
