 $(function() {
     setTimeout(function() {
         $.notify({
             // options
             icon: '',
             title: "<a href=\"../mate/mate_index_default.html\" target=\"_blank\"><h4>메이트 찾기</h4>",
             message: "<figure><img src=\"img/mate_popup.jpg\"></figure><p>지금 보고 계신 이 축제,<br/>메이트와 함께 즐겨볼까요?</a> "
         }, {
             // settings
             icon_type: 'image',
             type: 'info',
             delay: 500,
             timer: 4000,
             z_index: 9999,
             showProgressbar: false,
             placement: {
                 from: "bottom",
                 align: "right"
             },
             animate: {
                 enter: 'animated bounceInUp',
                 exit: 'animated bounceOutDown'
             },
         });
     }, 2000); // change the start delay
 });