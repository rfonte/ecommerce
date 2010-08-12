$(document).ready (function() {
    $(".textbox").textboxClear();

    $("#loginLink").click(function() {
        if ($("#divLogin").css("display") === "block"){
            $("#divLogin").hide()
        }
        else {
            $("#divLogin").show()
        }
    })

    /*$(this).click (function() {
        if ($("#divLogin").click()){
            $("#divLogin").show();
        } else {
            $("#divLogin").hide();
        }
    })*/

   /*
   Solução para chamar outra página de seção
    $("#loginLink").click(function(event) {
        event.preventDefault();
        var html_login = "";
        $.ajax({
            url: $(this).attr("href"),

            success: function(data) {
                html_login = $(data);
                html_login.show();
            },

            error: function () {
                loading.set.message("Erro de conexão");
            },

            complete: function(xhr, ts) {
                if (xhr.status === 200) {
                   // home.oficina.render(html_login);
                }
            },
            dataType:"html"
        });
    });*/

    /*$("#pwd").click(function() {
        $(this)
            .attr("value","")
            document.getElementById("pwd").setAttribute("type","password");
    });*/
});

