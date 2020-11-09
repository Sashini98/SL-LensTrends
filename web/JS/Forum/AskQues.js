$('#submit').click(function(){
    var myTxt = $('.editor1').html();
    $.ajax({
        type: 'post',
        url:  'AskQues.java',
        data: 'data=' +myTxt
    });

});