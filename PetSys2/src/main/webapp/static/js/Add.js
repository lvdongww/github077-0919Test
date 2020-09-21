$(document).ready(function () {
    $(".tian").click(function () {
        var pname = $(".name").val();
        var type = $(".type").val();
        var sex = $("input[name='sex']:checked").val();
        var birthday = $(".birthday").val();
        var desc = $(".desc").val();
        if (pname == "") {
            alert("昵称不能为空");
            return;
        }
        var reg = /^\d{4}-\d{1,2}-\d{1,2}$/;
        if (!reg.test(birthday)) {
            alert("日期格式不正确");
            return;
        }


        var json2 = {
            "petName": pname,
            "petBreed": type,
            "petSex": sex,
            "birthday": birthday,
            "description": desc
        }
        $.post("add", json2, function (data2) {
            if (data2.success == "true") {
                alert("添加成功");
                location.href = "/";
            } else {
                alert("添加失败");
            }
        }, "json");

    })
})
;