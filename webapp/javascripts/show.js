function initPage() {
     registerEvents();
     countComments();
}

function registerEvents () {
	var eleList = document.getElementsByClassName('reply_opener');
	console.log(eleList);
    for (var i=0 ; i < eleList.length ; i++)
    {
    	eleList[i].addEventListener('click',toggleComments, false);
    }
    
    var formList = document.querySelectorAll('.reply_list input[type=submit]');
    console.log(formList);
    for (var i=0 ; i < formList.length ; i++)
    {
    	console.log("check");
    	formList[i].addEventListener('click',writeComments,false);
	}
}

function countComments () {
	var commentList = document.querySelectorAll('.commentList');
	 for(var i = 0 ; i < commentList.length ; i++) {
		 var currentNode = commentList[i];
		 var nPListCount = currentNode.querySelectorAll('p').length;
		 commentList[i].parentNode.querySelector('.commentNum').innerHTML=nPListCount+"개의 댓글";
		 console.log(nPListCount); 
	 }
}

var commentflag = 0;

function toggleComments(e) {
	var commentBodyNode = e.target.parentNode.querySelector('.reply_list');
	var commentDisplay = commentBodyNode.style.display;
	console.log(commentDisplay);
	if(commentDisplay == "none")
	{
		commentBodyNode.style.display = "block";
		e.target.parentNode.querySelector('.reply_opener').innerHTML="댓글 목록 접기";
	}
	else
	{
		commentBodyNode.style.display = "none";
		e.target.parentNode.querySelector('.reply_opener').innerHTML="댓글 목록 펼치기";
	}
}

function writeComments(e) {
	e.preventDefault();
	var eleForm = e.currentTarget.form;
	var oFormData = new FormData(eleForm);
	
	var sID = eleForm[0].value;
	var url = "/board/" + sID + "/comments.json";
	
	var request = new XMLHttpRequest();
	request.open("POST", url, true);
	
	request.onreadystatechange = function() {
		if(request.readyState == 4 && request.status == 200) {
			var obj = JSON.parse(request.responseText);
			var eleCommentList = eleForm.previousElementSibling.previousElementSibling;
			eleCommentList.insertAdjacentHTML("beforeend", "<hr>");
			eleCommentList.insertAdjacentHTML("beforeend", "<p>"+ obj.contents +"</p>");
			eleForm[1].value = "";
		}
	};
	
	request.send(oFormData);
}

window.onload = initPage;