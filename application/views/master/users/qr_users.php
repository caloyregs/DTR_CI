        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?> QR Code</h1>

          <a href="<?= base_url('master/users'); ?>" class="btn btn-secondary btn-icon-split mb-4">
            <span class="icon text-white">
              <i class="fas fa-chevron-left"></i>
            </span>
            <span class="text">Back</span>
          </a>

          <div class="container-fluid">
              <div class="text-center">              
                <?php if ($users['qrcode'] == null) { ?>
                    <img src="<?= base_url('images/qrcode/') . 'qr_none.jpg'; ?>" class="qr-code img-thumbnail img-responsive" />
                <?php } else { ?>
                    <img src="<?= base_url('images/qrcode/') . $users['qrcode']; ?>" class="qr-code img-thumbnail img-responsive" />
                <?php } ?>   
              </div>            
              <div class="form-horizontal">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="content"> Username:</label>
                  <div class="col-sm-10">             
                      <input type="text" readonly class="form-control-plaintext form-control-lg" id="u_username" name="u_username" value="<?= $users['username']; ?>">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">            
                       <button type="button" class="btn btn-primary" id="generate"> Generate QR Code</button>
                  </div>
                </div>
              </div>
          </div>

        </div>
        </div>
        </form>
        </div>
        <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>  
        <script>
          function htmlEncode(value) {
            return $('<div/>').text(value)
              .html();
          }
        
          $(function () {
            $('#generate').click(function () {  
              var base_url = '<?php echo base_url();?>';
              let finalURL ='https://chart.googleapis.com/chart?cht=qr&chl=' + htmlEncode($('#u_username').val()) + '&chs=160x160&chld=L|0'  
              //$('.qr-code').attr('src', finalURL);

              $.ajax({
               type: "POST",
               url: base_url + "Master/post_qr_users", 
               headers:  {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
               contentType: "application/json",
               data: { username: $("#u_username").val() },
               dataType: "json",  
               cache:false,
               success: 
                    function(data){
                      $('.qr-code').attr('src', finalURL);
                      console.log(data);
                    },                    
                    error: function (xhr, status, error) {
                        alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
                        console.log("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText);
                    }
                });  
              });
           });
        </script>