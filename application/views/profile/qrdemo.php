<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="row">
    <div class="col-sm-10">
      <h1 class="h1 mb-4 text-gray-900"><?= $account['name'] ?></h1>
    </div>
  </div>
  <div class="row">

    <!-- left -->
    <!--<div class="col-sm-6 col-md-5 col-lg-4 col-xl-3 offset-sm-1 offset-md-0 offset-lg-0 offset-xl-0">
      <img src="<= base_url('images/pp/') . $account['image']; ?>" class="rounded-circle img-thumbnail">
    </div>-->
    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3 offset-sm-1 offset-md-0 offset-lg-0 offset-xl-0">
      <h1 class="h3 text-white bg-info p-1 rounded mt-1 mb-5">Scan QR</h1>
      <div id="qr-reader" style="width:350px"></div>
      
    </div>

    <!-- right -->
    <div class="col-sm-6 col-md-6 offset-sm-1">
      <h1 class="h3 text-white bg-info p-1 rounded mt-1 mb-5">Scanned result</h1>
      <div id="qr-reader-results"></div>
      <table class="table">
        <tbody>
          <tr>
            <th scope="row">Text Value</th>
            <td><span id="txtValue" name="txtValue"></span></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<script src="https://unpkg.com/html5-qrcode"></script>
<script type="text/javascript">
    var resultContainer = document.getElementById('qr-reader-results');
    var lastResult, countResults = 0;

    function onScanSuccess(decodedText, decodedResult) {
      if (decodedText !== lastResult) {
        ++countResults;
        lastResult = decodedText;
        // Handle on success condition with the decoded message.
        console.log(`Scan result ${decodedText}`, decodedResult);
        //$('.txtValue').text('decodedResult');
        document.getElementById("txtValue").textContent =JSON.stringify(decodedResult);
      }
    }

    var html5QrcodeScanner = new Html5QrcodeScanner(
      "qr-reader", { fps: 10, qrbox: 200 });
    html5QrcodeScanner.render(onScanSuccess);      
</script>