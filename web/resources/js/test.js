
function jsToiLuong() {
    const url = "http://localhost:8080/appWebChamCong/TinhLuong";
    var sourceThang = document.getElementById("thangluong").value;
    var sourceNam = document.getElementById("namluong").value;
    var urlSource = url + "?thang=" + sourceThang + "&nam=" + sourceNam;
    // alert(urlSource);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("demo").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", urlSource, true);
    //xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); 
    xhttp.send();
}
