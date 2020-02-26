<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
font-size:9pt;
font-family="굴림";
}
#panel {
        width: 700px;
        height: 600px;
        border: 1px solid #999;
        position: relative;
    }
    #bar {
        position: absolute;
        left: 550px;
        top: 0px;
        width: 20px;
        height: 600px;
        background: #F30;
    }
    .fish {
        position: absolute;
        left: 0;
        top: 0;
    }
    #nav {
        text-align: center;
        width: 700px;
    }
    #info {
        text-align: center;
        width: 700px;
    }
</style>
<script src="jquery-1.11.0.min.js"></script>
<script type="text/javascript">
var $fishList = null;
var timerID = -1;
var $info = null;
var goleEndPosition = 0;

$(document).ready(function() {
    // 요소 초기화
    init();
    // 물고기 시작 위치 초기화

    initFishPosition();

    // 이벤트 초기화 함수 호출
    initEvent();
})
// 전역에서 사용할 요소는 이곳에서 초기화 해주세요.
function init() {
    $fishList = $(".fish");
    $info = $("#info");

    // 골인 지점 구하기, 골인 지점 = #bar 위치 - 물고기 크기(120)
    goleEndPosition = $("#bar").position().left - 120;
}

// 물고기 시작 위치 초기화
function initFishPosition() {

    // 물고기 배열 하기
    for (var i = 0; i < $fishList.length; i++) {
        var $fish = $fishList.eq(i);
        // 물고기 위치는 100부터 시작
        $fish.css({
            left : 0,
            top : 100 + (i * 150)
        })
    }
}

// 이벤트 등록 처리 함수
function initEvent() {
    $("#start").click(function() {
        startGame();
    });
}

// 물고기 게임 시작
function startGame() {

    if (timerID == -1) {
        timerID = setInterval(function() {
            // 물고기 위치 움직이기
            updateFishPosition();

            // 물고기 위치 정보 출력
            displayFishPositionInfo();

            // 물고기 골인 지점 체크
            checkGoleFish();

        }, 200);
    }
}

// 물고기 위치 움직이기
function updateFishPosition() {
    console.log("1. 물고기를 랜덤으로 움직이기");

    for (var i = 0; i < $fishList.length; i++) {
        // 현재 물고기
        var $fish = $fishList.eq(i);
        // 물고기 이동 크기, 0~30 사이의 랜덤 값
        var step = Math.ceil(Math.random() * 30);
        // 신규 물고기 위치
        var newLeft = $fish.position().left + step;

        // 물고기 이동 시키기
        $fish.css("left", newLeft);

    }
}

// 물고기 위치 정보 출력
function displayFishPositionInfo() {
    console.log("2. 물고기 정보 출력");
    // 물고기 위치 정보를 담을 변수
    var info = "";

    for (var i = 0; i < $fishList.length; i++) {
        // 현재 물고기
        var $fish = $fishList.eq(i);

        // 테스트를 물고기 위치 정보 담기
        info += "fish " + i + "=" + $fish.position().left + "<br>  ";

    }

    // 테스트를 물고기 위치 정보 출력
    $info.html(info);

}

// 물고기 중 골인 지점을 통과한 물고기가 있는지 판단하기
function checkGoleFish() {
    console.log("3. 물고기 골인 지점 체크");

    var goleFishList = [];
    for (var i = 0; i < $fishList.length; i++) {
        // i번째 물고기 위치 구하기
        var position = $fishList.eq(i).position().left;

        //골인 지점 체크
        if (position >= goleEndPosition) {
            // 골인 하는 경우 골인 물고기 리턴하기
            //alert("골인 물고기! "+(i+1));
            //return i+1;
            goleFishList.push({
                index : (i + 1),
                position : position
            })
        }
    }

    // 골인 물고기가 있는 경우
    if (goleFishList.length > 0) {
        // 순위 처리를 위해 골인 지점을 내림차순으로 정렬
        // 즉 가장 많이 이동한 물고기를 우승 물고기로 만든기
        goleFishList.sort(function(a, b) {
            return b.position = a.position;
        })
        // 게임 끝내기
        endGame();
        alert("우승 = " + goleFishList[0].index + "물고기");
    }

}

// 게임 종료
function endGame() {
    console.log("4. 게임 종료 처리");
    clearInterval(timerID);
    timerID = -1;
}

</script>
</head>
<body>
    <div id="panel">
        <div id="bar"></div>
        <div class="fish">
            <img src="fish1.png">1번
        </div>
        <div class="fish">
            <img src="fish1.png">2번
        </div>
        <div class="fish">
            <img src="fish1.png">3번
        </div>
    </div>

    <div id="nav">
        <button id="start">
            게임 시작!
        </button>
    </div>
    <div id="info">
        기록 표시
    </div>
</body>
</html>