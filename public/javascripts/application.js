// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function get_package(commodity_id) {
    var check_value = new RegExp(/[^0-9]/g);
    var num = document.getElementById("num"+commodity_id).value;
    var n = $("amount"+commodity_id).value;
    if(parseInt(n)<parseInt(num)){
        alert ("库存不足，请重新输入购买数量");
        //        document.getElementById("emailErr").innerHTML="<font color = 'red'>库存不足，请重新输入购买数量</font>";
        return false;
    }
    if (check_value.test(num)){
        alert ("请输入正确的商品数量！")
        return false;
    }
    window.location.href = "/suppliers/"+ commodity_id +"/package?num=" + num;
}

function sltall(checkstatus){
    var d=document.getElementsByName("check_b");
    var checked_ids = new Array();
    for(var i=0; i<d.length; i++){
        if (d[i].disabled == false) {
            d[i].checked=checkstatus;
            checked_ids.push(d[i].value+';'+$("num"+d[i].value).value );
        }
    }
    document.getElementById("commodity_id").value = checked_ids;
}
function pack(){
    var sles=document.getElementsByName("check_b");
    var checked_ids = new Array();
    for (var i=0;i<sles.length;i++) {
        if (sles[i].checked) {
            checked_ids.push(sles[i].value+';'+$("num"+sles[i].value).value );
        }
    }
    document.getElementById("commodity_id").value = checked_ids;
}
function compare(commodity_id){

    var commodity_ids=$("commodity_id").value;
    var n=commodity_ids.split(",");
    for(i=0;i<=n.length-1;i++) {
     if (parseInt($("commodity_value"+n[i].split(";")[0]).innerHTML)<parseInt(n[i].split(";")[1])){
            alert ("库存不足，请重新输入购买数量");
        //        document.getElementById("emailErr").innerHTML="<font color = 'red'>库存不足，请重新输入购买数量</font>";
        return false;
      }
    }
    
}
