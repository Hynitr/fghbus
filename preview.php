<?php
include("functions/init.php");
if(!isset($_GET['id']) && !isset($_GET['other'])) {

} else {
$data =  $_GET['id'];
$other = $_GET['other'];
?>

<!-- right column -->
<div class="col-md-12">
    <div class="card card-dark">
        <div class="card-header">
            <h3 class="card-title"><?php echo strtoupper($data); ?></h3>
            <div class="card-tools">
                <button type="button" onclick="window.print();" id="prin" data-toggle="tooltip" title="Print Result"
                    class="btn btn-tool"><i class="fas fa-print"></i>
                </button>
                <button type="button" id="delte" data-toggle="tooltip" title="Delete Intake" class="btn btn-tool"><i
                        class="fas fa-trash"></i>
                </button>
                <button type="button" id="prin" data-toggle="tooltip" title="Edit Intake" class="btn btn-tool"><i
                        class="fas fa-edit"></i>
                </button>
                <button type="button" data-toggle="tooltip" title="Maximize" class="btn btn-tool"
                    data-card-widget="maximize"><i class="fas fa-expand"></i>
                </button>
                <button type="button" data-toggle="tooltip" title="Minimize" class="btn btn-tool"
                    data-card-widget="collapse"><i class="fas fa-minus"></i>
                </button>
            </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">

            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Admission No</th>
                        <th>Full Name</th>
                        <th>1st Term Bill</th>
                        <th>2nd Term Bill</th>
                        <th>3rd Term Bill</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                  $der = $_SESSION['aca'];

                  $sql = "SELECT * FROM student WHERE `class` = '$data' ORDER BY `name` asc";
                  $rsl = query($sql);
                  while($row = mysqli_fetch_array($rsl)) 
                  {
                  ?>
                    <tr>
                        <td><?php echo $row['adid'] ?></td>
                        <td><?php echo $row['name'] ?></td>
                        <td>₦<?php echo number_format($row['fst']) ?>
                        </td>
                        <td>₦<?php echo number_format($row['snd']) ?></td>
                        <td>₦<?php echo number_format($row['trd']) ?></td>
                    </tr>
                    <?php
              }
              ?>
                </tbody>
            </table>

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<?php
      }
      ?>


<!---modal basic school--->
<div class="modal fade" id="modal-delete">
    <div class="modal-dialog modal-lg">
        <div class="modal-content bg-info">
            <div class="modal-header">
                <h4 class="modal-title">Create a CBT <?php echo date("Y"); ?> class and subject for Basic School</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="card-body">
                    <form name="uploadquestion" role="form">

                        <div class="form-group">
                            <label for="exampleInputPassword1">Select a Class .:</label>
                            <select id="catclass" class="form-control">
                                <option id="catclass">Basic one</option>
                                <option id="catclass">Basic Two</option>
                                <option id="catclass">Basic Three</option>
                                <option id="catclass">Basic Four</option>
                                <option id="catclass">Basic Five</option>
                                <option id="catclass">Basic Six</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Create a subject .:</label>
                            <input type="text" placeholder="e.g Mathematics, English, Basic Science e.t.c" id="subject"
                                name="subject" class="form-control" required>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="exampleInputPassword1">Time Allowed - Hours .:</label>
                                <select id="hour" class="form-control">
                                    <?php
                        $x = 0;

                        while($x <= 24) {
                            echo '

   
                          <option style="font-size: 20px" id="hour">'.$x.' </option>
                       

                          <br>';
                          $x++;
                      }
                      ?>

                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="exampleInputPassword1">Time Allowed - Minutes .:</label>
                                <select id="minutes" class="form-control">
                                    <?php
                        $x = 0;

                        while($x <= 60) {
                            echo '

   
                          <option style="font-size: 20px" id="minutes">'.$x.' </option>
                       

                          <br>';
                          $x++;
                      }
                      ?>

                                </select>
                            </div>

                            <!------>
                            <div class="form-group col-md-12">
                                <label for="exampleInputPassword1"> Number of Questions to be attempted .:</label>
                                <input type="number" placeholder="" value="1" id="quess" name="quess"
                                    class="form-control" required>
                            </div>
                            <div class="form-group col-12">
                                <label for="exampleInputPassword1">Instructions to Students .:</label>
                                <textarea class="textarea" name="det" id='edit'
                                    style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"
                                    required></textarea>
                                <!-- Summernote -->
                            </div>

                        </div>

                    </form>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
                <button type="button" id="next" class="btn btn-outline-light">Continue</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!--- end of code for basic modal -->


<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
document.getElementById('prin').addEventListener('click', myfun);

function myfun() {
    window.print();
}
</script>

<script>
$(document).ready(function() {

    $("#delte").click(function() {

        $("#modal-delete").modal({
            backdrop: "static"
        });
    })

})
</script>