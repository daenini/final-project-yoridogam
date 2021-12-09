
--member1 - 기능 구현 및 시연용
--그 외는 더미데이터

--member1 - 기능 구현 및 시연용
--그 외는 더미데이터


/********** Member **********/
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member1','김봄이','1111','서울 용산구 한남동 737-28','kkihon1@naver.com','010-4356-3458','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member2','이여름','2223','서울 강남구 신사동 613-7','kkihon2@naver.com','010-1232-8345','여자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('member3','최가을','3333','서울 송파구 잠실동 19-4','kkihon3@naver.com','010-2323-8488','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_gender) values('admin','박겨울','1111','서울 강남구 수서동 747','kkihon3@naver.com','010-5523-8568','여자');

/********** Member Interest ********* 3개로 제한(비건,한식,베이킹)*/
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'한식','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'베이킹','member1');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'한식','member2');
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'비건','member3');

/********** Teacher **********/
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher1','김개발','1111','010-4564-8700','kkiho@naver.com','img1',
'조리 실무 10년 현장경력
직업 전문학교 강사 출신
한솔요리학원 필기 강의 500회 이상 진행
조리산업기사/조리기능사 자격증(5종 보유)','서울 용산구 한남동 737-28');
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher2','이자바','2222','010-1341-0941','kkiho1@naver.com','img2',
'서울대학교 호암교수회관 및 메이필드호텔 현장 경력
한솔요리학원 경력 5년차 전임 강사 (2010~2015)
조리기능사 자격증 (4종보유)
직업훈련교사 자격증(조리분야)','서울 강남구 신사동 613-7');
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location) values('teacher3','최톰캣','3333','010-2729-1242','kkiho2@naver.com','img3',
'한솔요리학원 노원지점 제과제빵 전임 강사
제과제빵 실무 12년 (크라운 베이커리 외)
직업전문학교 교사 출신
한솔요리학원 제과제빵 강의 600회 이상 진행','서울 송파구 잠실동 19-4');


/********** Product **********/
insert into product values(PRODUCT_P_NO_SEQ.nextval,'밥 한 그릇만으로도 품위있게, 김사과의 < 모두의 솥밥>',
'한식당에서 먹던 솥밥을 우리집에서 뚝딱! 집에서 쉽게 만드는 솥밥의 세계, 반찬이 따로 필요 없는 종류별 솥밥 레시피, 맛있는 식사 하고싶은데 귀찮은 그런 날 다양한 재료를 올려 나와 내 가족을 위한 밥상을 만들어보아요',
'한식','8900','온라인','img/product-img/product1.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'맛과 멋을 사로잡는 한식의 품격!',
'이 클래스의 수강대상은 입문과 초∙중급으로 맞춰보았어요. 입문, 초급자를 위해 모든 한식 요리에 많이 사용되는 육수를 만드는 법과 야채 손질법, 육류 보관법, 해산물 손질법 등을 두루 다룰 예정입니다.',
'한식','45900','온라인','img/product-img/product2.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'건강 그리고 맛 어느것도 놓치지 않는 글로벌 비건집밥',
'고기가 없어도 충분이 맛있는 채수를 만든는 방법을, 채소들 본연의 맛을 극대화 하여 풍미를 내는 방법을, 다양한 향신료와 소스를 통해 조화로운 맛을 내는 방법을 통해 지금까지 만나보지 못한 비건의 맛을 알려드릴게요. 이번 클래스에선 건강식, 비건식은 맛이 없다는 걱정은 잠시 접어두셔도 좋습니다',
'비건','52000','오프라인','img/product-img/product3.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'바삭바삭 파이 반죽과 함께! 밀희의 파이, 컵케이크',
'기본 메뉴가 맛있으면 다른 메뉴로 구매를 이끌어줍니다. 그중 가장 호불호가 적었던 제품인 에그 파이와 콘치즈 파이는 손님들이 가장 쉽게 접근하는 메뉴에요. 푸딩처럼 부드러운 에그파이와 단짠단짠 진리의 조합 콘치즈파이까지, 대중성 있는 메뉴를 배우고, 다양하게 활용할 수 있는 응용법까지 자세히 알려드릴게요.',
'베이킹','30000','오프라인','img/product-img/product4.png','teacher1');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'앙금과 케이크의 아름다운 만남  앙금 플라워 떡케이크 제작','밀가루 베이킹과는 달리 정확한 계량보다는 연습으로 익힌 감이 중요하기 때문에, 클래스에서는 기본 백 설기 시트부터 잼과 무스 등을 활용한 초코, 얼그레이, 단호박, 무화과, 옥수수 등 다양한 퓨전 설기를 만들어 볼 거예요.',
'베이킹','41900','오프라인','img/product-img/product5.png','teacher2');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'한 번 보면 평생 사용할 수 있는 소불고기 만드는 방법','고기 기본간장 양념장을 실패 없는 비율로 고기 양념장 만드는 방법을 배웁니다.',
'한식','9900','온라인','img/product-img/product6.png','teacher2');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'로푸드를 활용한 건강한 한 끼, 샐러드와 파티푸드','용어조차 흔치 않아 다소 생소할 수 있는 로푸드를 일상에서 너무 쉽고 빠르고 간편하게 녹여낼 수 있는 방법을 알려드릴게요! 간단한 로푸드 기법과, 재료 사용법을 익혀서 건강한 한 끼 식사를 만들어나가는데 좋은 아이디어가 되어줄 거예요',
'비건','29000','오프라인','img/product-img/product7.png','teacher3');

insert into product values(PRODUCT_P_NO_SEQ.nextval,'육수보다 깊은 채수의 맛, 채식 해장국 원데이클래스','한국인의 입맛에 맞는 칼칼한 국물 요리부터 든든하고 진한 보양식, 그리고 토마토를 넣은 이색 해장국까지! 국밥처럼 평생 못 먹을 줄 알았던 음식을 비건으로 직접 만드는 비법을 알려드릴게요',
'비건','14000','온라인','img/product-img/product8.png','teacher3');


/********** Product_time **********/

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,1,'10:00-11:00',3);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,2,'11:00-12:00',3);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'13:00-14:00',3);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',4);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',4);
 
insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,2,'13:00-14:00',4);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',5);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',5);


/********** Cart **********/


/********** Pay **********/
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'54800','무통장입금','member1');
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'106800','카드결제','member1');
insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,'136800','카카오페이','member1');

/********** Pay_item **********/
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,1,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,1,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,2,3);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,1);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,2);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,3);
insert into pay_item(pi_no, pi_qty, pay_no, p_no) values(PAY_ITEM_PI_NO_SEQ.nextval,1,3,4);

/********** Reservation **********/

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,8900,'현장결제',1,'2021-11-07','10:00-11:00',sysdate,'member1',3);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,19800,'카카오페이',2,'2021-11-10','11:00-12:00',sysdate,'member1',3);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,45900,'무통장입금',1,'2021-11-10','10:00-11:00',sysdate,'member1',3);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,91800,'카드결제',2,'2021-11-10','13:00-14:00',sysdate,'member1',4);


/********** Review **********/
insert into review values(REVIEW_R_NO_SEQ.nextval,'','쉽게 알려줘서 좋습니다',4,'',sysdate,'member1',1);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','강사님이 열의가 대단하셔서 만족해요',5,'',sysdate,'member1',2);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','재료가 너무 많이 필요해요..',2,'',sysdate,'member1',3);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','클래스 장소가 청결하지 못했어요',1,'',sysdate,'member1',4);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','적당히 달면서도 고소하게 잘 나왔어요',4,'',sysdate,'member2',1);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','주방시설이나 인테리어가 깔끔하게 잘 되어있어요',5,'',sysdate,'member2',3);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','좋아하는 아이를 보니 기분좋아지네요',3,'',sysdate,'member3',1);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','처음 배우는 건데 곧 잘 따라갈 수 있었어요',4,'',sysdate,'member3',3);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','너무 어려워요ㅠㅠ',2,'',sysdate,'member2',1);
insert into review values(REVIEW_R_NO_SEQ.nextval,'','이걸 돈받고 가르칠 생각을 하다니',1,'',sysdate,'member3',1);

/********** Notice  엑셀 작업 **********/
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[yoridogam 전체 공지]저희 yoridogam이 온라인 강의를 시작하였습니다.', '2021-08-01', 20, 
'코로나 시기를 맞이하여 대면 수업에 어려움이 많으시죠?

저희 요리도감에서는 온, 오프라인 강의를 모두 진행합니다.

여러분의 많은 참여 부탁드립니다.

감사합니다. ❤', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[yoridogam 전체 공지] 개인정보 처리방침 개정안내', '2021-08-03', 6, 
'안녕하세요. yoridogam(이하 ‘회사’)입니다.

서비스를 이용해 주시는 이용자 여러분께 감사드리며, 새로운 개인정보 처리방침 적용에 관한 안내 말씀 드립니다

회사는 이용자 여러분의 개인정보를 무엇보다 소중하게 처리하고 있으며, 어떤 사안보다도 우선하여 안전하게 관리하고 있습니다.

새롭게 변경될 개인정보 처리방침 내용을 확인하시고 서비스 이용에 참고하시기 바랍니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[yoridogam 전체 공지] 강사 모집 공고', '2021-08-04', 8, 
'안녕하세요. yoridogam(이하 ‘회사’)입니다.

저희와 함께하실 강사님을 모집합니다.

자세한 사항은 사람인을 참고하여 주시길 바랍니다.

참신하고 실력 좋은 강사님을 기다리겠습니다.

감사합니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[오프라인 클래스] 오프라인 클래스 개설 안내', '2021-09-07', 36, 
'안녕하세요, 요리도감을 사랑해 주시는 고객여러분.

코로나로 집합 4인 이상 집합 금지로 중단되었던 오프라인 클래스가,

2차 접종 완료자에 한하여 6인까지 확대가 되었다고 합니다. 

강사님 포함 총 6분인지라 한 클래스에 총 5분의 수강생을 모집합니다. 

많은 참여 부탁드립니다. 감사합니다. ', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[온라인 클래스] 아빠와 함께하는 강좌 이벤트', '2021-09-18', 36, 
'안녕하세요. yoridogam입니다.

아빠와 자식이 함께하는 이벤트 강좌가 개설되었습니다. 기간 내에만 열리는 강의로 기간 참고하시어 참여해 주시기 바랍니다. 

기간: 2021.09.20~2021.09.31

또한, 기간 내에 클래스를 결제해 주시고 참여 인증을 남겨 주신 고객분들에 한하여 한 개의 클래스를 무료로 수강할 수 있는 수강권을 드리고 있습니다. 

많은 참여와 관심 부탁드립니다.

감사합니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[yoridogam 전체 공지] yoridogam의 아름다운 나눔 이벤트', '2021-09-27', 100, 
'안녕하세요. yoridogam입니다.

저희 yoridogam에서는 연말을 맞이하여 주변 온정이 필요한 이웃에게 전하는 요리 나눔 클래스를 개최할 예정입니다.

좋은 의미로 베푸는 것이기 때문에 실력과는 상관없이,

마음이 따듯하고 요리에 관심이 있는 누구라도 참여할 수 있습니다. 

많은 관심과 참여 부탁드립니다. 감사합니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[yoridogam 전체 공지] 결제 방식의 다양화가 이루어졌습니다.', '2021-10-01', 16, 
'안녕하세요, 요리도감을 사랑해 주시는 고객여러분.

이전의 카드 결제, 무통장 입금으로만 진행되었던 결제 방식이

카카오페이가 추가되어 총 세 가지 방법으로 진행될 예정입니다.

많은 참여 부탁드립니다. 감사합니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[온/오프 통합] 2021년 11월 강의가 개설되었습니다.', '2021-10-30', 38, 
'안녕하세요, 요리도감을 사랑해 주시는 고객여러분.

요리도감의 11월 강의는 강의 목록에서 확인하실 수 있습니다. 

많은 관심 부탁드립니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[온라인 클래스] 2+1 이벤트!', '2021-11-01', 8, 
'안녕하세요. yoridogam입니다.

온라인 클래스에 많은 사랑 주시고 계셔서 이벤트를 진행해 보자 합니다.

기간: 2021.11.01~2021.11.10

기간 내에 두 개의 클래스를 결제해 주시는 고객분들에 한하여 한 개의 클래스를 무료로 수강할 수 있는 수강권을 드리고 있습니다. 

많은 참여와 관심 부탁드립니다.

감사합니다.', 'admin');
insert INTO NOTICE VALUES(notice_noti_no_SEQ.nextval, '[온/오프라인 클래스] 행복한 빼빼로데이 이벤트!', '2021-11-03', 8, '안녕하세요. yoridogam입니다.

곧 다가올 즐거운 빼빼로데이를 위한 이벤트가 시작됩니다.

기간: 2021.11.05~2021.11.10

기간 내에 빼빼로 원데이 클래스를 결제해 주시는 고객분들에 한하여 추첨을 통해 총 5분께 수강권을 지급해 드릴 예정입니다. 

많은 참여와 관심 부탁드립니다.

감사합니다.', 'admin');




/********** Inquiry 엑셀 작업 **********/ 

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '제가 1년 전쯤?? 들은 강의를 확인할 수 있나요??','확인하고 싶은 강의가 있는데 찾기가 어려워서 문의글 씁니다..','2021-08-15',
35,0,inquiry_ib_no_SEQ.nextval,0,'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '수업 후 만든 빵은','제가 가지고 가도 되는 거예요?','2021-08-29',
3,0,inquiry_ib_no_SEQ.nextval,0,'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '강의 비용에 재료값이 다 들어가져 있나요?','아니면 현장에서 더 결제를 해야 하는 건가요??','2021-09-03',
43,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '안녕하세요 고객님.^^ yoridogam입니다.','안녕하세요 고객님.^^ yoridogam입니다.

문의 주신 사항은 마이페이지 > 예약 내역 에서 조회 가능하십니다. 

관련하여 문의하실 사항은 저희 고객센터로 연락 주시기 바랍니다. 

Yoridogam 고객센터 02)1223-6678

감사합니다.', '2021-08-16', 24,	1,	1,	1,	'admin');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '원하는 수업 종류를 신청할 수 있나요?',	'저는 한식도 하고 싶고 간단한 일식도 하고 싶은데 없는 경우가 있더라구요!
더 다양하게 있으면 좋을 것 같아서요..',	'2021-09-14', 23,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member2');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '코로나 때문에 신청한 강의가..', 	'취소되면 환불 일정은 어떻게 되는 거예요?','2021-09-20',	
35,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '카카오페이로 결제 되니까 앞으로',	'네이버페이도 곧 들어오게 될 수 있을까요??','2021-10-11',
12,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member3');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '안녕하세요 고객님.^^ yoridogam입니다.',	'안녕하세요 고객님.^^ yoridogam입니다.

만드신 음식 및 빵류는 만드신 분이 가져가는 것을 원칙으로 하고 있습니다.

관련하여 문의하실 사항은 저희 고객센터로 연락 주시기 바랍니다. 

Yoridogam 고객센터 02)1223-6678

감사합니다.',	'2021-08-30',	18, 1, 2,	1,	'admin');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '예전에 아빠와 함께 이벤트',	'당첨됐다고 문자가 온 후로 수강권을 못 받은 것 같아서요 어떻게 해요?',
'2021-11-01',	7,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '제가 진짜 요.알.못인데 수업 따라갈수 있을까요?',	'ㅠㅠ 혹시 뒤쳐지면 민폐잖아용',	'2021-11-01',	
3,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval,'안녕하세요 고객님.^^ yoridogam입니다.', '"안녕하세요 고객님.^^ yoridogam입니다.

저희 수강료에는 재료값이 포함되어 있어 현장에서 추가로 결제하실 것은 없습니다. 

관련하여 문의하실 사항은 저희 고객센터로 연락 주시기 바랍니다. 

Yoridogam 고객센터 02)1223-6678

감사합니다.',	'2021-09-04',	10,	1,	3,	1,	'admin');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '온라인+오프라인 하나씩 해도', '2+1 이벤트 자동 응모인 거예요? 아니면 온라인만인 거예요??', '2021-11-02',
27,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '안녕하세요 고객님.^^ yoridogam입니다.',	'안녕하세요 고객님.^^ yoridogam입니다.

먼저 소중한 의견 감사합니다. 문의게시판에 작성해 주시면 저희가 검토 후 순차적으로 개설해 보겠습니다.

관련하여 문의하실 사항은 저희 고객센터로 연락 주시기 바랍니다. 

Yoridogam 고객센터 02)1223-6678

감사합니다.',	'2021-09-15',	19,	1,	5,	1,	'admin');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '빼빼로데이 이벤트 말이에요', '온라인/오프라인 각각 하나씩 결제해도 해당사항 있는 건가요?', 	
'2021-11-05', 	9,	0,	inquiry_ib_no_SEQ.nextval,	0,	'member1');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '안녕하세요 고객님.^^ yoridogam입니다.',	'안녕하세요 고객님.^^ yoridogam입니다.

강사님 일정에 따라 연장 또는 환불 진행될 예정이며, 
온라인 강의는 해당 사항 없습니다.

관련하여 문의하실 사항은 저희 고객센터로 연락 주시기 바랍니다. 

Yoridogam 고객센터 02)1223-6678

감사합니다.',	'2021-09-23',	14,	1,	6,	1,	'admin');

insert into inquiry	
values(inquiry_ib_no_SEQ.nextval, '안녕하세요 고객님.^^ yoridogam입니다.',	'안녕하세요 고객님.^^ yoridogam입니다.

아직 일정은 없으나, 검토해 보겠습니다.

관련하여 문의하실 사항은 저희 고객센터로 연락 주시기 바랍니다. 

Yoridogam 고객센터 02)1223-6678

감사합니다.',	'2021-10-12',	29,	1,	7,	1,	'admin');
