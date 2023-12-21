<div class="">
    <div class="page-title" style="padding: 8px">
        <div class="title_left">
            <h1><i class="fa fa-list"></i>  Kategori</h1>
        </div>
    </div>
    <?php if($this->session->userdata('role')=='superadmin'): ?>
    <a href="<?php echo base_url() ?>kategori/add" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Tambah Kategori</a>
    <?php endif; ?>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>List Data <small>Kategori</small></h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                <!-- Notif -->
                <?php $announce = $this->session->userdata('announce') ?>
                <?php if(!empty($announce)): ?>
                    <?php if($announce == 'Berhasil menyimpan data'): ?>
                    <div class="alert alert-success fade in"><?php echo $announce; ?></div>
                    <?php else: ?>
                    <div class="alert alert-danger fade in"><?php echo $announce; ?></div>
                    <?php endif; ?>
                <?php endif; ?>
                <!-- Data -->
                <?php if($total == 0): ?>
                    <div class="alert alert-danger">Tidak ada data</div>
                    <?php else: ?>
                    <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>id kategori</th>
                                <th>Nama Kategori</th>
                                <?php if($this->session->userdata('role')=='superadmin'): ?>
                                <th>Action</th>
                                <?php endif; ?>
                            </tr>
                        </thead>
                        <tbody>
                        <?php $no = 1;?>
                        <?php foreach ($list as $bookList):?>
                            <tr>
                                <td><?php echo $no ?></td>
                                <td><?php echo $bookList->id_kategori ?></td>
                                <td><?php echo $bookList->nama_kategori ?></td>
                               <?php if($this->session->userdata('role')=='superadmin'): ?>
                                <td>
                                    <a href="<?php echo base_url() ?>kategori/edit?idtf=<?php echo $bookList->id_kategori ?>" class="btn btn-info btn-xs">
                                        <i class="fa fa-edit"> Edit</i>
                                    </a>
                                    <button class="btn btn-danger btn-xs" onclick="sweets()">
                                        <i class="fa fa-trash"> Delete</i>
                                    </button>
                                </td>
                                <?php endif; ?>
                            </tr>
                            <?php $no++; ?>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
function sweets() {
    swal({
            title: "Apakah anda yakin ingin menghapus data ?",
            text: "Data tidak bisa di kembalikan",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Delete",
            closeOnConfirm: false
        },
        function() {
            window.location.href = "<?php echo base_url() ?>kataegori/delete?rcgn=<?php echo $bookList->id_kategori ?>";
        });
}
</script>

