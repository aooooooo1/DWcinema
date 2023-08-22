<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	function SmartEditor_summernote(target) {
			 var fontList = ['맑은 고딕','NotoSansKR'];
		target.summernote({
			placeholder : '여기에 내용을 적으세요',
			height : 300,
			disableResizeEditor : true,
			lang: "ko-KR",
			toolbar: [
                ['style', ['bold', 'italic', 'underline']],
                ['font', ['strikethrough']],
                ['Insert', ['picture']],
             ],
             fontNames: ['맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
             fontNamesIgnoreCheck: ['맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
    		 // 추가한 폰트사이즈
    		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
			callbacks : {
				onImageUpload : function(files, editor, welEditable){
					for (let i = files.length - 1 ; i > -1; i--) {
						if (files[i].size > 1024 * 1024 * 5) {
							alert("이미지는 5MB 미만이어야 합니다.");
							return;
						};
					};
					
					// 파일 서버로 보내기
					for (let i = files.length -1; i >= 0; i--) {
						sendFile(files[i], this);
					};
				},
				onMediaDelete : function(target){
					if(confirm("삭제하시겠습니까?")){
						deleteFile(target[0].src);
					}
				}
			}
			
		});
	};
	
	function deleteFile(src) {
		let splitSrc = src.split("=");
		let fileName = splitSrc[splitSrc.length - 1];
		
		let fileData = {
				fileName : fileName
		}
		
		console.log(fileData);
		console.log(JSON.stringify(fileData));
		
		$.ajax({
			url : "<%=request.getContextPath()%>/deleteImg.do",
			type : "post",
			data : JSON.stringify(fileData),
			contentType : "application/json",
			success : function(res){
				console.log(res);
			}
		});
	} 
	
	function sendFile(file, el) {
		let form_data = new FormData();
		form_data.append("file", file);
		$.ajax({
			url : '<%=request.getContextPath() %>/uploadImg.do',
			type : 'post',
			data : form_data,
			contentType : false,
			processData : false,
			success : function(img_url){
				$(el).summernote('editor.insertImage', img_url);
			},
			error : function(){
				
			}
			
		});
	}
</script>