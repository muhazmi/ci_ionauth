<?php $this->load->view('head'); ?>
<?php $this->load->view('header'); ?>
<?php $this->load->view('leftbar'); ?>      

<div class="content-wrapper">
  <div class="box-body">
    <div class="callout callout-success "><i class='fa fa-bullhorn'></i>
      Selamat Datang <b> <?php echo $this->session->userdata('nama') ?>  
    </div>
  </div>

  <section class='content'>
    <div class='row'>    
    <!--  -->
    </div>
  </section>
</div>

<?php $this->load->view('footer'); ?>      