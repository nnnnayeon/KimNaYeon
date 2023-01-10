let user_id;
let name;
let mobile;

function getUpdateId(log){
	$.ajax({
		url: "",
		type: "POST"
	}).done(result => {
		user_id = result.user_id;
		name = result.name;
		mobile = result.mobile;
		
		$('.user_id').attr('value', user_id);
		$('.name').attr('value', name);
		$('.mobile').attr('value', mobile);
	})
}