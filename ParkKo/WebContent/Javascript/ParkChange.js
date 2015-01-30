function displayParkDetail(parkData) {
//alert(parkData);
var res = parkData.split("|"); 

document.getElementById('lblCarNumber').innerHTML=res[0];
document.getElementById('lblProvince').innerHTML=res[1];
document.getElementById('lblCarIn').innerHTML=res[2];
document.getElementById('lblCarOut').innerHTML=res[3];
document.getElementById('lblPrice').innerHTML=res[4];
document.getElementById('parkPrice').value=res[5];
}

function displayChange(priceData) {
//var priceData="20 บาท|500 บาท|480 บาท|9|8|7|6|5|4|3|2|1";
var res = priceData.split("|"); 

document.getElementById('lblPrice').innerHTML=res[0];
document.getElementById('lblReceiveMoney').innerHTML=res[1];
document.getElementById('lblChange').innerHTML=res[2];
document.getElementById('lbl1000').innerHTML=res[3];
document.getElementById('lbl500').innerHTML=res[4];
document.getElementById('lbl100').innerHTML=res[5];
document.getElementById('lbl50').innerHTML=res[6];
document.getElementById('lbl20').innerHTML=res[7];
document.getElementById('lbl10').innerHTML=res[8];
document.getElementById('lbl5').innerHTML=res[9];
document.getElementById('lbl2').innerHTML=res[10];
document.getElementById('lbl1').innerHTML=res[11];
}
