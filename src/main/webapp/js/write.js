
$(document).ready(function() {
    $('#contents').summernote({
        height: 300,                 
        minHeight: null,             
        maxHeight: null,             
        focus: true                  
    });
});
$(function(){
	$("#content").summernote({
		placeholder: "내용",
		tabsize: 2,
		height: 300, 
		lang: 'ko-KR'
	});
});