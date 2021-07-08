//(1) 스토리 이미지 업로드를 위한 사진 선택 로직
function imageChoose(obj) {
	let f = obj.files[0];

	if (!f.type.match("image.*")) {
		alert("이미지를 등록해야 합니다.");
		$("#file_main").val("");
		return;
	}

	let reader = new FileReader();
	reader.onload = (e) => {
		$("#imageUploadPreview").attr("src", e.target.result);
	}	
	reader.readAsDataURL(f); // 이 코드 실행시 reader.onload 실행됨.
}

function subimageChoose(obj) {
	for(var i=0;i<obj.files.length;i++){
		var f = obj.files[i];
	
		if (!f.type.match("image.*")) {
			alert("이미지를 등록해야 합니다.");
			$("#file_sub").val("");
			break;
		}
	}
}