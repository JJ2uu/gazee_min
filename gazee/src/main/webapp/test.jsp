<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP;
        IMP.init("imp87312461");
        function requestPay() {
            IMP.request_pay({
                pg : 'kcp.T0000',
                pay_method : 'card',
                merchant_uid: "order_no_0001", //상점에서 생성한 고유 주문번호
                name : '주문명:결제테스트',
                amount : 1004,
                company : '상호명',//해당 파라미터 설정시 통합결제창에 해당 상호명이 노출됩니다.
                buyer_email : 'test@portone.io',
                buyer_name : '구매자이름',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
                language : 'ko', // en 설정시 영문으로 출력되면 해당 파라미터 생략시 한국어 default
                m_redirect_url : '{모바일에서 결제 완료 후 리디렉션 될 URL}',
                auth_mode:'key-in' // 키인결제(일회성 결제)이용시 설정
            }, function(rsp) {
    if ( rsp.success ) {
        //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
        jQuery.ajax({
            url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
            type: 'POST',
            dataType: 'json',
            data: {
                imp_uid : rsp.imp_uid
                //기타 필요한 데이터가 있으면 추가 전달
            }
        }).done(function(data) {
            //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
            if ( everythings_fine ) {
                var msg = '결제가 완료되었습니다.';
                msg += '\n고유ID : ' + rsp.imp_uid;
                msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                msg += '\결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                alert(msg);
            } else {
                //[3] 아직 제대로 결제가 되지 않았습니다.
                //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            }
        });
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        alert(msg);
    }
            });
        }
    </script>
    <meta charset="UTF-8">
    <title>Sample Payment</title>
</head>
<body>
    <button onclick="requestPay()">결제하기</button> <!-- 결제하기 버튼 생성 -->
</body>
</html>