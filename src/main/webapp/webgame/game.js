const $timer = document.querySelector("#timer");
const $score = document.querySelector("#score");
const $game = document.querySelector("#game");
const $start = document.querySelector("#start");
const $$cells = document.querySelectorAll(".cell");
const $lives = document.querySelector("#lives"); // 목숨을 표시할 요소 선택
const maxLives = 3; // 최대 목숨 수
let lives = maxLives; // 현재 목숨 초기화

let started = false;
let score = 0;
let time = 60;
let bombClickCount = 0; // 폭탄 클릭 횟수를 저장하는 변수
let gameOver = false; // 게임 종료 여부를 저장하는 변수

const $refresh = document.querySelector("#refresh"); // 새로고침 버튼 선택

$refresh.addEventListener("click", () => {
    // 현재 페이지 새로고침
    location.reload();
});

$start.addEventListener("click", () => {
    if (gameOver) {
        // 게임 종료 상태면 초기화하고 게임을 다시 시작
        started = false;
        score = 0;
        time = 60;
        bombClickCount = 0;
        lives = maxLives;
        gameOver = false;
        $score.textContent = score;
        updateLives();
        $timer.textContent = time;
        // 초기화된 게임을 시작
        startGame();
    } else if (!started) {
        // 게임이 시작되지 않았으면 게임 시작
        startGame();
    }
});

function startGame() {
    started = true;
    console.log("시작");
    const timerId = setInterval(() => {
        time = (time * 10 - 1) / 10; // 60초에서 점점 줄어든다.
        $timer.textContent = time;
        if (time === 0 || lives === 0) {
            // 1분이 지나거나 목숨이 0이면 게임이 끝난다.
            clearInterval(timerId); // 시간(초) 업데이트 되는부분 해제
            clearInterval(tickId); // 두더지와 폭탄 이미지 보여주는 부분 해제
            setTimeout(() => {
                alert(`게임 오버! 점수는${score}점`);
            }, 50);
            gameOver = true; // 게임 종료 상태로 표시
        }
    }, 100);
    const tickId = setInterval(tick, 1000);
    tick();
}

const holes = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
];

// 두더지와 폭탄, 빈칸의 비율 설정 : 두더지 30%, 폭탄 20%, 빈칸 50%
let gopherPercent = 0.3; // 0 ~ 0.3까지
let bombPercent = 0.5; // 0.3 ~ 0.5까지
function tick() {
    holes.forEach((hole, index) => {
        if (hole)
            return; // 무언가 일어나고 있으면 return
        const randomValue = Math.random();
        if (randomValue < gopherPercent) {
            const $gopher = $$cells[index].querySelector(".gopher");
            holes[index] = setTimeout(() => {
                // 1초 뒤에 사라짐
                $gopher
                    .classList
                    .add("hidden");
                holes[index] = 0;
            }, 1000);
            $gopher
                .classList
                .remove("hidden"); // 두더지 보여줌
        } else if (randomValue < bombPercent) {
            const $bomb = $$cells[index].querySelector(".bomb");
            holes[index] = setTimeout(() => {
                // 1초 뒤에 사라짐
                $bomb
                    .classList
                    .add("hidden");
                holes[index] = 0;
            }, 1000);

            $bomb
                .classList
                .remove("hidden"); // 폭탄 보여줌
        }
    });
}

// 두더지와 폭탄을 클릭 이벤트 설정
$$cells.forEach(($cell, index) => {
    $cell
        .querySelector(".gopher")
        .addEventListener("click", (event) => {
            if (!event.target.classList.contains("dead") && !gameOver) {
                // 두더지 클릭 -> 점수 + 1
                score += 1;
                $score.textContent = score;
            }
            event
                .target
                .classList
                .add("dead"); // 울고 있는 두더지 모양 보여짐
            event
                .target
                .classList
                .add("hidden"); // 두더지 숨겨짐
            // clearTimeout(holes[index]); 1초마다 두더지 내려가는 부분 제거
            setTimeout(() => {
                holes[index] = 0;
                event
                    .target
                    .classList
                    .remove("dead"); // 1초 후 울고 있는 두더지 모양 제거됨
            }, 1000);
        });
    $cell
        .querySelector(".bomb")
        .addEventListener("click", (event) => {
            event
                .target
                .classList
                .add("boom");
            event
                .target
                .classList
                .add("hidden");
            // clearTimeout(holes[index]); 기존 내려가는 타이머 제거
            setTimeout(() => {
                holes[index] = 0;
                event
                    .target
                    .classList
                    .remove("boom");
            }, 1000);

            // 플레이어의 목숨을 감소시킵니다.
            if (lives > 0) {
                lives -= 1;
                // 목숨을 업데이트하고 체크합니다.
                updateLives();
            }

            if (lives === 0) {
                // 플레이어의 목숨이 0이면 게임을 종료합니다. 1분이 지나거나 목숨이 0이면 게임이 끝난다.
                clearInterval(timerId); // 시간(초) 업데이트 되는부분 해제
                clearInterval(tickId); // 두더지와 폭탄 이미지 보여주는 부분 해제
                setTimeout(() => {
                    alert(`게임 오버! 점수는${score}점`);
                }, 50);
                gameOver = true; // 게임 종료 상태로 표시
            } else {
                // 폭탄 클릭 횟수 증가
                bombClickCount += 1;
                if (bombClickCount >= 3) {
                    // 폭탄 클릭 횟수가 3 이상이면 게임 종료
                    endGame();
                }
            }
        });
});

function updateLives() {
    $lives.textContent = `목숨: ${lives}`;
}

// 게임 종료 함수
function endGame() {
    clearInterval(timerId); // 시간(초) 업데이트
}
