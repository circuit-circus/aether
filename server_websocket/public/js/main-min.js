var programState=1,NO_OF_PLANETS=8,planets=[],planetData=[{name:"JSPR92",diameter:randomIntFromInterval(70,110)},{name:"TX9600",diameter:randomIntFromInterval(70,110)},{name:"VSOVS-io 8",diameter:randomIntFromInterval(70,110)},{name:"NN-05",diameter:randomIntFromInterval(70,110)},{name:"CRCTCRCS2015x",diameter:randomIntFromInterval(70,110)},{name:"Navn",diameter:randomIntFromInterval(70,110)},{name:"Navn",diameter:randomIntFromInterval(70,110)},{name:"Navn",diameter:randomIntFromInterval(70,110)}],showPlanetNames=!1;function setup(){createCanvas(1e3,400).parent("planet-container"),fill(0),stroke(255),textFont("Noto Mono");for(var t=0;t<NO_OF_PLANETS;t++){var e=125*t+((125-planetData[t].diameter)/2+planetData[t].diameter/2);planets[t]=new Planet(e,200,planetData[t].diameter,planetData[t].name)}}function draw(){background(0);for(var t=0;t<NO_OF_PLANETS;t++)planets[t].display(),planets[t].isActive&&planets[t].activeAnimation()}function Planet(t,e,a,n){this.x=t,this.y=e,this.diameter=a,this.name=n,this.isActive=!1,this.theta=random(PI/10),this.dtheta=random(.01,.1),this.display=function(){fill(0),stroke(255),strokeWeight(1),ellipse(this.x,this.y,this.diameter,this.diameter),showPlanetNames&&(textAlign(CENTER),fill(100),noStroke(),text(this.name,this.x,300))},this.setActive=function(){this.isActive=!0},this.removeActive=function(){this.isActive=!1},this.activeAnimation=function(){strokeWeight(3),fill(255),this.theta+=this.dtheta;var t=this.diameter+this.diameter*(sin(this.theta)+1)/10;ellipse(this.x,this.y,t,t),showPlanetNames&&(textAlign(CENTER),strokeWeight(1),text(this.name,this.x,300))}}function changeToState2(){programState=2,$("main").attr("data-state",2),$("#question-input-field").focus()}function changeToState3(t,e){programState=3,$("main").attr("data-state",3),planets[randomIntFromInterval(0,NO_OF_PLANETS)].setActive(),showPlanetNames=!0,$("#asking-question-container").text(t+" "+e)}function runState2(t){if([8,9,13,16,32,37,38,39,40,186,222,219,189].indexOf(t.which)>-1||t.which>=48&&t.which<=57||t.which>=65&&t.which<=90){if(38==t.which?(t.preventDefault(),$("#question-starter-rotator").animate({top:"+=50px"}),$("#question-starter-rotator .focus").removeClass("focus").prev().addClass("focus")):40!=t.which&&9!=t.which||(t.preventDefault(),$("#question-starter-rotator").animate({top:"-=50px"}),$("#question-starter-rotator .focus").removeClass("focus").next().addClass("focus")),13==t.which){var e=$("#question-input-field").val();if(!e||0===e.length)return new Audio("sound/error.mp3").play(),void $("#missing-input").show().addClass("popup-open");changeToState3($("#question-starter-rotator .focus").text(),e)}}else t.preventDefault(),console.log("not one of those")}function runState3(t){if(t.preventDefault(),t.which>=49&&t.which<=56){for(var e=0;e<NO_OF_PLANETS;e++)planets[e].removeActive();var a=t.which-49;planets[a].setActive()}}function randomIntFromInterval(t,e){return Math.floor(Math.random()*(e-t+1)+t)}function sendToPath(t,e,a,n){var o={url:e,type:t,contentType:"application/json",dataType:"json",data:a,success:function(t){n(t)},error:function(t){n(t)}};n&&(o.xhr=function(){return new window.XMLHttpRequest}),$.ajax(o)}$(document).ready(function(){$("body").on("keydown",function(t){if($(".popup-container").hasClass("popup-open"))return t.preventDefault(),void $(".popup-container.popup-open").hide().removeClass("popup-open");1==programState?(t.preventDefault(),changeToState2(t)):2==programState?runState2(t):3==programState&&runState3(t)})});