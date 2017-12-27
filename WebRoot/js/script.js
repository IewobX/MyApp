
var url = 'http://localhost:8080/myApp'
	
function sign_up(){
	alert($("#sign_up_email").val());
	console.log(typeof($.ajax()));
	$.ajax({
		url: url+'/SignUp',
		type: 'post',
		data: {email:$("#sign_up_email").val(),userName:$("#sign_up_username").val(),password:$('#sign_up_password').val()},
		dataType: 'json',
		success: function(data, textStatus){
			if(data){
				alert('Sign up success!');	//注册成功
				return;
			}
			alert('Sign up failed!');		//注册失败		
		}

	});

}