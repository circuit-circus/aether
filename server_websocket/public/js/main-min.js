function sendToPath(n,t,o,e){var c={url:t,type:n,contentType:"application/json",dataType:"json",data:o,success:function(n){e(n)},error:function(n){e(n)}};e&&(c.xhr=function(){return new window.XMLHttpRequest}),$.ajax(c)}$(document).ready(function(){$(".arduino-led").on("click",function(n){var t={device:$(this).attr("data-target")};console.log("Clicked"),sendToPath("get","/activateDevice",t,function(n,t){n?console.log(n):console.log(t)})})});