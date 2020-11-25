/**
 * 
 */
const funcAlertMsg = (msg, type="info") => `<div class="alert alert-${type}">
<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
${msg}</div>`;


$("form.ajax-form").on("submit", (e) => {
e.preventDefault();

$(".ajax-form").parent()
    .prepend(funcAlertMsg("<strong>Loading...</strong>", "info"));

if($("form.ajax-form").attr("id") === "frm-register") {
	if($("#password").val() !== $("#cfrmpassword").val()) {
        $("form.ajax-form").parent()
            .prepend(funcAlertMsg("Passwords Mis-Match", "danger"));
		return;
	}
}

$.ajax({
    method: $("form.ajax-form").attr("method"),
    url: $("form.ajax-form").attr("action"),
    data: $("form.ajax-form").serialize(),
    dataType: "JSON"
}).done((response) => {
    $(".alert").remove();
    console.log(response);
    if(response.success) {
        if(response.target.length > 0) {
            window.location.href = response.target;
        } else {
            if(response.message.length > 0) {
                $(".ajax-form").parent()
                    .prepend(funcAlertMsg(response.message, "success"));
                $(".ajax-form").trigger("reset");
            }
        }
    } else {
        if(response.message.length > 0) {
            $(".ajax-form").parent()
                .prepend(funcAlertMsg(response.message, "danger"));
        }
    }
}).fail(() => {
    alert("Failed to Send Request");
});


});