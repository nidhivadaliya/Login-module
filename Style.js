
 function val() {
	var patfnm=/^[A-Za-z]+$/;
	var patlnm=/^[A-Za-z]+$/;

	var patmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;
	if(patfnm.test(document.getElementById("FirstName").value)==false)
	{
		alert("Please enter Firstname letters only..");
		return false;
	}
	if(patlnm.test(document.getElementById("LastName").value)==false)
	{
		alert("Please enter Lastname letters only..");
		return false;
	}
	
	if(patmail.test(document.getElementById("Email").value)==false)
	{
		alert("please enter valid Email Id..");
		return false;
	}

 }
			


		
//state..		
$(document).ready(function(){
	statedrop();
});


function statedrop() {
	$.ajax(
		{
			url: "/statedrop",
			method:"GET",
			success: function(result) {
				console.log("HHHH",result);
				str=``;
				$.each(result,function(key,data){
					str+=`<option value="${data[0]}">${data[1]}</option>`
				});
				$("#state").html(str);
			}
		});
		
		}
		
$("#state").change(function(){
	citydrop($(this).val());

});
function citydrop(stateid) {
	console.log(stateid);
	$.ajax(
		{
			url: "/citydrop",
			method:"GET",
			data:{stateid:stateid},
			success: function(result) {
				console.log("HHHH",result);
				str=``;
				$.each(result,function(key,data){
					str+=`<option value="${data[0]}">${data[1]}</option>`
				});
				$("#city").html(str);
			}
		});
		
		}
		
		
		
//search
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

//editstatte
$('#state').change(function(){
        var selected_val = $('#state :selected').text(); //Get selected text 
        $(".custom-select").text(selected_val); //Replace selected text 
    });