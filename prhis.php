<?php
include("functions/init.php");

$data = $_GET['id'];
$more = $_GET['more'];

//get current fee
$fsl = "SELECT * FROM feercrd WHERE `feeid` = '$more'";
$fes = query($fsl);
$fow = mysqli_fetch_array($fes);

$other = $fow['term'];
$adid = $data;
$cfee = $fow['amount'];
$name = $fow['name'];
$ses = $fow['session'];
$class = $fow['class'];

//get total paid fee
$sql = "SELECT *, sum(`amount`) as total FROM feercrd WHERE `adid` = '$data' AND `term` = '$other'";
$res = query($sql);
$row = mysqli_fetch_array($res);

$amt   = $row['total'];

$ssl = "SELECT * from `student` WHERE `adid` = '$adid'";
$result = query($ssl);
$vfh = mysqli_fetch_array($result);

 if($other == '1st Term') {
		
    $fstfee = $vfh['fst'];

    //get all payment made in this term
    $dql = "SELECT sum(`amount`) as total FROM feercrd WHERE `term` = '1st Term' AND `adid` = '$adid'";
    $des = query($dql);
    $dow = mysqli_fetch_array($des);

    //total fee paid
    $feepaid = $dow['total'];
    
    //pending balance
    $spillover = $fstfee - $feepaid;

    $spilid = 'fgsspill/'.rand(0, 9999);
    $date   = date("Y-m-d h:i:sa");
    

    //insert into spillover table
    $spilql = "INSERT INTO spillover(`spillid`, `adid`, `name`, `class`, `session`, `fst`, `snd`, `trd`, `datespill`)";
    $spilql .= "VALUES('$spilid', '$adid', '$name', '$class', '$ses', '$spillover', '0', '0', '$date')";
    $spres = query($spilql);
    

    $bal = $spillover;
            
} else {

if($other == '2nd Term'){

  $sndfee = $vfh['snd'];

  //get pending payments in first term
  $spql = "SELECT * FROM spillover WHERE `adid` = '$adid' AND `class` = '$class' AND `session` = '$ses'";
  $sprels = query($spql);
  $sow = mysqli_fetch_array($sprels);

  
  //Get ending balance in first term
  $fstpend  = $sow['fst'];
  

  //get all payment made in this term
  $dql = "SELECT sum(`amount`) as total FROM feercrd WHERE `term` = '2nd Term' AND `adid` = '$adid'";
  $des = query($dql);
  $dow = mysqli_fetch_array($des);

  $feepaid = $dow['total'];

  $spillover = $fstpend;

  $bal = ($sndfee - $feepaid) + $spillover;

  $sndbalspill = $sndfee - $feepaid;

  //update spillover for 2nd term
  $spul = "UPDATE spillover SET `snd` = '$sndbalspill' WHERE `adid` = '$adid' AND `class` = '$class' AND `session` = '$ses'";
  $spel = query($spul);
  
}else {

if($other == '3rd Term') {
  
  
    $trdfee = $vfh['trd'];

  //get pending payments in first term and second term
  $spql = "SELECT * FROM spillover WHERE `adid` = '$adid' AND `class` = '$class' AND `session` = '$ses'";
  $sprels = query($spql);
  $sow = mysqli_fetch_array($sprels);

  
  //Get ending balance in first term
  $fstpend  = $sow['fst'];
  $sndpend  = $sow['snd'];
  

  //get all payment made in this term
  $dql = "SELECT sum(`amount`) as total FROM feercrd WHERE `term` = '3rd Term' AND `adid` = '$adid'";
  $des = query($dql);
  $dow = mysqli_fetch_array($des);

  $feepaid = $dow['total'];

  $spillover = $fstpend + $sndpend;

  $bal = ($trdfee - $feepaid) + $spillover;

  $trdbalspill = $trdfee - $feepaid;

  //update spillover for 3rd term
  $spul = "UPDATE spillover SET `trd` = '$trdbalspill' WHERE `adid` = '$adid' AND `class` = '$class' AND `session` = '$ses'";
  $spel = query($spul);
    
}
}
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>FOGS Bursary</title>
    <link rel="icon" href="img/2.png" type="image/ico" />
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }

    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }

    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }

    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }

    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }

    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }

    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }

    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.item td {
        border-bottom: 1px solid #eee;
    }

    .invoice-box table tr.item.last td {
        border-bottom: none;
    }

    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }

    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }

        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }

    /** RTL **/
    .invoice-box.rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }

    .invoice-box.rtl table {
        text-align: right;
    }

    .invoice-box.rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>

<body>
    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="img/2.png" style="width: 70px; max-width: 300px" />
                            </td>

                            <td>
                                <small> Receipt ID: <i><b><?php echo $more ?></b></i></small><br />
                                <small> Printed: <i><b><?php echo date('l, F d, Y'); ?></b></i></small><br />

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                Fountain of Gold School,<br />
                                Ota, Ogun State.<br />
                                +234 813 677 0523
                            </td>

                            <td>
                                <b><?php echo $fow['name'] ?> (<?php echo $fow['adid'] ?>)</b><br />
                                <?php echo $fow['class'] ?><br />
                                <?php echo $fow['term']." - ".$fow['session'] ?> Session
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr class="heading">
                <td>Payment Method</td>

                <td>Date Paid</td>
            </tr>

            <tr class="details">
                <td><b><?php echo $fow['mode']?></b></td>

                <td><?php echo date('l, F d, Y', strtotime($fow['datepaid'])); ?></td>
            </tr>

            <tr class="heading">
                <td>Description</td>

                <td>Amount Paid</td>

            </tr>

            <tr class="item">
                <td><?php echo $fow['descr'] ?> (<?php echo $fow['moredecr'] ?>)</td>

                <td>???<?php echo number_format($fow['amount']) ?></td>
            </tr>
            <?php
            if($other == '2nd Term') {

                echo '
                <tr class="item">
                <td>1st Term Balance</td>

            <td>???'.number_format($spillover).'</td>
            </tr>
            ';

            echo '
                <tr class="item">
                <td>2nd Term Balance</td>

            <td>???'.number_format($sndbalspill).'</td>
            </tr>
            ';
            } 

            if($other == '3rd Term') {

                echo '
                <tr class="item">
                
                <td>1st Term Pending Balance</td>

            <td>???'.number_format($fstpend).'</td>
            </tr>
            ';

            echo '
            <tr class="item">
            
            <td>2nd Term Pending Balance</td>

        <td>???'.number_format($sndpend).'</td>
        </tr>
        ';

        echo '
            <tr class="item">
            
            <td>3rd Term Pending Balance</td>

        <td>???'.number_format($trdbalspill).'</td>
        </tr>
        ';
            } 
            ?>





            <tr class="total">
                <td></td>

                <td style="color: red;">Total Balance Left: ???<?php echo number_format($bal) ?></td>

            </tr>
        </table>
        <a href="#" onclick="goBack();">Click here to go back</a>
    </div>

</body>
<script>
function goBack() {
    window.history.back()
}
</script>
<script type="text/javascript">
window.addEventListener("load", window.print());
</script>

</html>