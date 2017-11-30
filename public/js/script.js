function number_format( number, decimals, dec_point, thousands_sep ) {
    // http://kevin.vanzonneveld.net
    // + original by: Jonas Raoni Soares Silva (http://www.jsfromhell.com)
    // + improved by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
    // + bugfix by: Michael White (http://crestidg.com)
    // + bugfix by: Benjamin Lupton
    // + bugfix by: Allan Jensen (http://www.winternet.no)
    // + revised by: Jonas Raoni Soares Silva (http://www.jsfromhell.com)
    // * example 1: number_format(1234.5678, 2, '.', '');
    // * returns 1: 1234.57

    var n = number, c = isNaN(decimals = Math.abs(decimals)) ? 2 : decimals;
    var d = dec_point == undefined ? "," : dec_point;
    var t = thousands_sep == undefined ? "." : thousands_sep, s = n < 0 ? "-" : "";
    var i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "", j = (j = i.length) > 3 ? j % 3 : 0;

    return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
}
function addToCart(base_url, id, price){
    if(price == 0)
        alert("fail");
    else{
        if($('#quanlity_product').val() != undefined){
            if(isNaN($('#quanlity_product').val()))
            {
                $("#messageModal").modal();
                $('#title_modal').html('Warning !');
                $('#content_modal').html('Vui lòng nhập số lượng là số > 0');
                return;
            }else if($('#quanlity_product').val() <= 0){
                $("#messageModal").modal();
                $('#title_modal').html('Warning !');
                $('#content_modal').html('Vui lòng nhập số lượng lớn hơn 0');
                return;
            }else qty = $('#quanlity_product').val();
        }else qty = 1;
        var dataString = { id: id, price: price, qty: qty};
        $.ajax({
            url: base_url + 'cart/addToCart',
            type: 'POST',
            data: dataString,
            timeout: 1000,
            dataType: "json",
            async: false,
            success: function(msg){
                if(msg.add_cart){
                    $("#cartModal").modal();
                    $('#cart_couting').html(msg.qty);
                }
                else{
                    alert('Add items to Cart fail');
                }
            },
            error: function (){
                alert('Error');            
            }
        });
    }   
}
function updateCart(base_url, id, qty, price){
    if(qty == ""){
        //alert("Vui lòng nhập số lượng - Please input quantity !");
        $("#messageModal").modal();
        $('#title_modal').html('Warning !');
        $('#content_modal').html('Vui lòng nhập số lượng !');
    }else if(qty<=0){
        $("#messageModal").modal();
        $('#title_modal').html('Warning !');
        $('#content_modal').html('Vui lòng nhập số lượng là số > 0 !');
    }else{
        var dataString = { id: id, qty: qty};
        $.ajax({
            url: base_url + 'cart/updateCart',
            type: 'POST',
            data: dataString,
            timeout: 1000,
            dataType: "json",
            async: false,
            success: function(msg){
                if(msg.add_cart){
                    $('#cart_couting').html(msg.qty);
                    $('#sum_price_'+id).html(number_format(qty*price, 0));
                    $('#total_price').html(msg.total);
                }else{
                    alert('update items to Cart fail');
                }
            },
            error: function (){
                alert('Error');            
            }
        });
    }   
}
function delCart(base_url, id){
    var dataString = { id: id};
    $.ajax({
        url: base_url + 'cart/delCart',
        type: 'POST',
        data: dataString,
        timeout: 1000,
        dataType: "json",
        async: false,
        success: function(msg){
            if(msg.del_cart){
                location.reload();
            }else{
                alert('Delete item fail');
            }
        },
        error: function (){
            alert('Error');            
        }
    }); 
}

function sendInfo(base_url){
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    var full_name   = $('#full_name').val().trim();
    var phone       = $('#phone').val().trim();
    var email       = $('#email').val().trim();
    var message     = $('#message').val().trim();

    if(full_name == "" || phone == "" || email == ""){
        $("#warningModal").modal();
        $('#warning_message').html("Vui lòng nhập đầy đủ thông tin");
    }else if(!re.test(email)){
        $('#warning_message').html("Email không đúng định dạng !");
    }else{
        var dataString = {name: full_name , phone: phone, email: email, message: message};
        $.ajax({
            url: base_url+'Send_mail',
            type: 'POST',
            data: dataString,
            timeout: 1000,
            dataType: "json",
            async: false,
            success: function(msg){
                if(msg.sent){
                    $("#warningModal").modal();
                    $('#warning_message').html("Gửi thông tin thành công");
                    $('#full_name').val('');
                    $('#phone').val('');
                    $('#email').val('');
                    $('#message').val('');
                }
                else{
                    $("#warningModal").modal();
                    $('#warning_message').html("Gửi thông tin thất bại !");
                }
            },
            error: function (e){
                $("#warningModal").modal();
                $('#warning_message').html("Có lỗi xảy ra !");               
            }
        });
    }
}

function receiveEmail(base_url){
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    var customer_email = $('#customer_email').val().trim();

    if(customer_email == ""){
        BootstrapDialog.alert('Vui lòng nhập email !');
    }else if(!re.test(customer_email)){
        BootstrapDialog.alert('Email không đúng định dạng !');
    }else{
        var dataString = {email: customer_email};
        $.ajax({
            url: base_url+'Send_mail/customerInfo',
            type: 'POST',
            data: dataString,
            timeout: 1000,
            dataType: "json",
            async: false,
            success: function(msg){
                if(msg.sent){
                    BootstrapDialog.alert('Đăng ký thành công');
                    $('#customer_email').val('');
                }
                else{
                    BootstrapDialog.alert('Đăng ký thất bại !');
                }
            },
            error: function (e){
                BootstrapDialog.alert('Có lỗi xảy ra '+e);               
            }
        });
    }
}



