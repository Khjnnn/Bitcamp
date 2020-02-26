<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4번 과제</title>
<script>
	var adminMenu1="";
	var WorkerMenu="";
	var adminMenu2="";

	// 온로드 시 생성되는 UL
	window.onload = function(){
			//이미지 추가
			var imgPlus1 = document.createElement('img');
			var imgPlus2 = document.createElement('img');
			var imgPlus3 = document.createElement('img');
			var imgMinus = document.createElement('img');
			
			imgPlus1.setAttribute('src','menu02.gif');
			imgPlus2.setAttribute('src','menu02.gif');
			imgPlus3.setAttribute('src','menu02.gif');
			imgMinus.setAttribute('src','menu03.gif');
			
			
			//첫번째 관리자 메뉴 추가
			adminMenu1 = document.createElement('ul');
			adminMenu1.setAttribute('id','admin_Menu1');
			adminMenu1.setAttribute('onclick','Click("admin_Menu1","부하직원조회","결재승인","결재내역조회")');
			var title1 = document.createTextNode('관리자메뉴');
			adminMenu1.appendChild(imgPlus1);
			adminMenu1.appendChild(title1);
			document.body.appendChild(adminMenu1);
			
			
			//직원 메뉴 추가		
			WorkerMenu = document.createElement('ul');
			WorkerMenu.setAttribute('id','Worker_Menu');
			WorkerMenu.setAttribute('onclick','Click("Worker_Menu","결재신청","급여정보조회","인사정보조회")');
			var title2 = document.createTextNode('직원메뉴');
			WorkerMenu.appendChild(imgPlus2);
			WorkerMenu.appendChild(title2);
			document.body.appendChild(WorkerMenu);
			
			
			//두번째 관리자 메뉴 추가	
			adminMenu2 = document.createElement('ul');
			adminMenu2.setAttribute('id','admin_Menu2');
			adminMenu2.setAttribute('onclick','Click("admin_Menu2","기준관리","근무현황조회","평가현황조회")');
			var title3 = document.createTextNode('관리자메뉴');
			adminMenu2.appendChild(imgPlus3);
			adminMenu2.appendChild(title3);
			document.body.appendChild(adminMenu2);
	}

	//함수
	function Click(id, list1, list2, list3){	// (ul아이디, li의 제목들)
		var ad = document.getElementById(id);		//해당 아이디의 태그 가져오기
		var img = ad.getElementsByTagName('img');	//태그의 이미지 가져오기
		var imgSrc = img[0].getAttribute('src');	//이미지의 속성 가져오기
		
		// 이미지가 + 이면 li 추가
		if(imgSrc == 'menu02.gif'){		
			img[0].setAttribute('src','menu03.gif');	//이미지 -로 변경
			// li 추가
			for(var i=1; i<4; i++){
				var list = document.createElement('li');
				var li_title="";
				switch(i){
					case 1 :
						li_title = document.createTextNode(list1);
						break;
					case 2 :
						li_title = document.createTextNode(list2);
						break;
					case 3 :
						li_title = document.createTextNode(list3);
						break;
				}
				ad.style.listStyleImage = "url('menu01.gif')";
				list.appendChild(li_title);
				ad.appendChild(list);		
			}
			//이미지가 -이면 li 삭제
		} else if(imgSrc == 'menu03.gif'){
			img[0].setAttribute('src','menu02.gif');	// 이미지 +로 변경
			var li = ad.getElementsByTagName('li');
			for(i in li){
				ad.removeChild(li[0]);
			}
		}
	}
	
	
</script>
</head>
<body>
</body>
</html>