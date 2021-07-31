<script type="text/javascript">
if(confirm("Do you want to delete ?")){
document.write("<?php       
$connection = mysqli_connect("localhost","root","");
$db = mysqli_select_db($connection,"sms");
$query="delete from students where roll_no = $_POST[roll_no]";
$query_run = mysqli_query($connection,$query);?>");

     alert("Student deleted successfully.");
 window.location.href = "admin_dashboard.php";

}
else{
 window.location.href = "admin_dashboard.php";
}

</script>
