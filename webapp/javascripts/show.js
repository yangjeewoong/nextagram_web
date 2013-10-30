function initPage() {
     registerEvents();
     countComments();
     console.log("loaded");
}

function registerEvents () {
	var eleList = document.getElementsByClassName('reply_opener');
    for (var i=0 ; i < eleList.length ; i++)
    {
    	eleList[i].addEventListener('click',toggleComments, false);
    }
}

function countComments () {
	var commentList = document.querySelectorAll('.commentList');
	 for(var i = 0 ; i < commentList.length ; i++) {
		 var currentNode = commentList[i];
		 var nPListCount = currentNode.querySelectorAll('p').length;
		 commentList[i].parentNode.querySelector('.commentNum').innerHTML=nPListCount+'개의 댓글';
		 console.log(nPListCount);
	 }
}

var commentflag = 0;

function toggleComments(e) {
	var commentBodyNode = e.target.parentNode.querySelector('#reply_list');
	if(commentflag == 0)
	{
		commentBodyNode.style.display = "none";
		e.target.parentNode.querySelector('.reply_opener').innerHTML="댓글 목록 펼치기";
		commentflag = 1;
	}
	else
	{
		commentBodyNode.style.display = "block";
		e.target.parentNode.querySelector('.reply_opener').innerHTML="댓글 목록 접기";
		commentflag = 0;
	}
}

window.onload = initPage;