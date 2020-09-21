$(document).ready(function () {
    PetInfo();
})
function PetInfo() {
    $(".table-chaxun2 tr:gt(0)").remove();
    var petBreed=$(".sel").val();
    if(petBreed=="--请选择--"){
        petBreed="";
    }
    var json={
        "petBreed":petBreed
    }
    $.post("selectAll",json,function(result){
        console.log(result);
        $.each(result.data,function(i,v){
            $(".table-chaxun2").append("<tr align='center'><td>"+v.petName+"</td>" +
                "<td>"+v.birthday.substring(0,10)+"</td>" +
                "<td>"+v.petSex+"</td></tr>");
        });
    },"json");
}