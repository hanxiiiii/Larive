# Larive

## 기획의도
- 펜션을 주제로 보편적인 형식의 숙박 예약 시스템 제공
  - 달력 형태의 디자인으로 월별,일자별 예약 가능하도록 구현함
  - 공지사항,FAQ,리뷰게시판 추가하여 관리자와 예약주체 간 소통기능 강화 

## 개발환경
- OS : window8, window10
- Development Tool :  Apache Tomcat 9, MYSQL 5.7, Eclipse, Adobe XD, Bootstrap, eXERD
- Language : JAVA Version 1.6
- Test Browser : Chrome, Internet Explorer, Microsoft Edge

## 실행
- pension0503 (프로젝트명 폴더) 선택 -> WebContent -> home -> cover.jsp 선택 -> Ctrl + F11

## 주요흐름

### 회원가입
![회원가입페이지](https://user-images.githubusercontent.com/94945151/154895992-14376e76-3a9a-4090-b4a2-3341089f5649.PNG)
![인증메일기능](https://user-images.githubusercontent.com/94945151/156326380-29875618-50e8-4be6-b406-f182db77497b.PNG)
- 상단바에서 JOIN 클릭하여 회원가입 페이지로 이동
- 이름, 전화번호, 아이디(이메일), 비밀번호 기입란을 통해 회원가입 가능
- 회원가입 페이지에서 아이디(이메일)와 전화번호 중복체크 후, 기입한 이메일로 발송된 인증번호 입력하여 인증시 회원가입 성공

### 로그인
![로그인화면](https://user-images.githubusercontent.com/94945151/154895592-9e9d8e30-3c80-4188-9959-6456a5f459c5.PNG)
![아이디 찾기 팝업페이지](https://user-images.githubusercontent.com/94945151/154907024-ddefa7b7-4558-4e48-b42d-a1b2c5dee791.PNG)
![비밀번호 찾기 팝업페이지](https://user-images.githubusercontent.com/94945151/154907038-991cb01b-2aba-424e-b5b4-1b8dc576b7d6.PNG)
- 상단바 로그인 메뉴 클릭하여 로그인 페이지 진입
- 아이디(이메일)와 비밀번호 입력을 통해 로그인이 이루어지고, 상단바 로그인 메뉴가 사용자 이름으로 변경되어 클릭시 가입정보 페이지로 연결
- 아이디찾기,비밀번호찾기 클릭시 각각 팝업창 노출을 통해 아이디,비밀번호 찾기 가능

### 상세정보
![룸정보 페이지](https://user-images.githubusercontent.com/94945151/154904829-c2d5049a-ec9c-45de-86c7-e24decd81310.PNG)
- 상단바 ROOM 메뉴의 하위메뉴인 방정보 클릭시 진입
- 화면 상단의 객실명을 클릭하여 각 객실 상세정보 확인 가능
- 최하단 TOP 버튼 클릭으로 최상단으로 이동 가능

### 예약하기
![예약페이지](https://user-images.githubusercontent.com/94945151/154907220-fe5a61d3-bcf1-43a5-a480-7603a6e0a707.PNG)
![예약리스트 페이지](https://user-images.githubusercontent.com/94945151/154909675-bd5831c8-7052-4c0e-be21-fece18866bf6.PNG)
- 상단바에서 RESERVE 하위메뉴 예약하기 클릭하여 예약화면 진입
- 로그인된 상태에서만 화면 우측의 예약하기 버튼 활성화
- 화면 좌측의 객실이름, 날짜, 인원수를 선택하면 자동으로 금액이 계산되어 보여짐
- 예약하기 버튼 클릭시 예약성공 팝업창이 띄워지고, 예약정보 확인페이지로 이동
- 상단바 RESERVE 두번째 하위메뉴인 예약확인 클릭시 예약된 목록과 정보 열람, 예약 취소 신청 가능

### 리뷰 게시판
![리뷰 목록페이지](https://user-images.githubusercontent.com/94945151/156969170-9d0dcde2-c645-4682-adec-50885a6d3766.PNG)
![리뷰 상세페이지](https://user-images.githubusercontent.com/94945151/156969173-7c489bc8-ed30-41ad-8963-ee388ea4de54.PNG)
![리뷰 작성페이지](https://user-images.githubusercontent.com/94945151/156969176-7f6c7258-ca8c-4b28-acbc-bf88d9552b13.PNG)
- 예약확인 페이지에서 체크아웃 해당 날짜 다음날부터 리뷰작성 버튼 활성화
- 숙박 완료된 유저한정 리뷰작성 가능
- 로그인 상태에서 상단바 COMMUNUTY 클릭하여 리뷰목록, 내용보기 진입

### 가입 정보 확인 및 수정
![정보수정페이지](https://user-images.githubusercontent.com/94945151/154912746-7865a7a9-a524-45c5-927e-ba95a36df435.PNG)
- 로그인 상태에서 상단바 우측의 가입된 이름 클릭하여 가입 정보 확인 및 수정 페이지 진입
- 아이디(이메일) 제외 이름, 전화번호, 비밀번호 수정 가능
  
  
  
