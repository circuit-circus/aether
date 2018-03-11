var chosenPlanet,programState=1,errorAudio=new Audio("sound/error.mp3"),RESET_TIME=6e4,programInactive=!1,terminalCounter=0,chosenQuestionStarter=0,NO_OF_PLANETS=8,planets=[],planetData=[{name:"EM-6",diameter:randomIntFromInterval(70,110),id:0,type:"3RING"},{name:"MDAcom-86",diameter:randomIntFromInterval(70,110),id:1,type:"SPHERE"},{name:"Grp/M",diameter:randomIntFromInterval(70,110),id:2,type:"2RING"},{name:"WAVE",diameter:randomIntFromInterval(70,110),id:3,type:"SPHERE"},{name:"SERAHS-M1nd",diameter:randomIntFromInterval(70,110),id:4,type:"3RING"},{name:"JSPR92",diameter:randomIntFromInterval(70,110),id:5,type:"2RING"},{name:"NN-05",diameter:randomIntFromInterval(70,110),id:6,type:"SPHERE"},{name:"VSOVS-io 8",diameter:randomIntFromInterval(70,110),id:7,type:"3RING"}],showPlanetNames=!1;function setup(){createCanvas(1e3,400).parent("planet-container"),fill(0),stroke(255),textFont("Noto Mono");for(var t=0;t<NO_OF_PLANETS;t++){var e=125*t+((125-planetData[t].diameter)/2+planetData[t].diameter/2);planets[t]=new Planet(e,200,planetData[t].diameter,planetData[t].name,planetData[t].id,planetData[t].type)}updateConnectedPlanets()}function draw(){background(0),planets.forEach(function(t){t.display()})}function Planet(t,e,i,s,a,n){this.x=t,this.y=e,this.diameter=i,this.name=s,this.id=a,this.type=n,this.isConnectionActive=!0,this.hasFocus=!1,this.theta=random(PI/10),this.dtheta=random(.01,.1),this.display=function(){if(!this.hasFocus||this.isConnectionActive||3!=programState&&4!=programState)if(!this.hasFocus||3!=programState&&4!=programState)this.isConnectionActive?(strokeWeight(2),fill(0),stroke(255),"SPHERE"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter,20),ellipse(this.x,this.y,20,this.diameter)):"2RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-30,this.diameter-30)):"3RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-20,this.diameter-20),ellipse(this.x,this.y,this.diameter-40,this.diameter-40)):ellipse(this.x,this.y,this.diameter,this.diameter)):(strokeWeight(2),noFill(),stroke(100),"SPHERE"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter,20),ellipse(this.x,this.y,20,this.diameter)):"2RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-30,this.diameter-30)):"3RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-20,this.diameter-20),ellipse(this.x,this.y,this.diameter-40,this.diameter-40)):ellipse(this.x,this.y,this.diameter,this.diameter));else{strokeWeight(3),stroke(255),fill(255),this.theta+=this.dtheta;var t=this.diameter+this.diameter*(sin(this.theta)+1)/10;"SPHERE"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t,20),ellipse(this.x,this.y,20,t)):"2RING"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t-30,t-30)):"3RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,t-20,t-20),ellipse(this.x,this.y,t-40,t-40)):ellipse(this.x,this.y,t,t)}else strokeWeight(2),stroke(100),fill(100),"SPHERE"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter,20),ellipse(this.x,this.y,20,this.diameter)):"2RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-30,this.diameter-30)):"3RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-20,this.diameter-20),ellipse(this.x,this.y,this.diameter-40,this.diameter-40)):ellipse(this.x,this.y,this.diameter,this.diameter);showPlanetNames&&(textAlign(CENTER),fill(255),noStroke(),this.isConnectionActive||(fill(100),text("Unavailable",this.x,325)),text(this.name,this.x,300))},this.setConnectionIsActive=function(){this.isConnectionActive=!0},this.removeConnectionIsActive=function(){this.isConnectionActive=!1},this.setFocus=function(){this.hasFocus=!0},this.removeFocus=function(){this.hasFocus=!1}}function changeState(t){switch(t){case 1:resetProgram();break;case 2:changeToState2();break;case 3:changeToState3();break;case 4:changeToState4()}}function changeToState2(){programState=2,$("main").attr("data-state",2),$("#question-input-field").focus()}function changeToState3(){var t=$("#question-input-field").val().trim();if(!t||0===t.length)return errorAudio.play(),void $("#missing-input").show().addClass("popup-open");var e=$("#question-starter-rotator .focus").text();$("#asking-question-container").text(e+" "+t+"?"),programState=3,$("main").attr("data-state",3),showPlanetNames=!0}function changeToState4(){var t;programState=4,$("main").attr("data-state",4);for(var e=0;e<NO_OF_PLANETS;e++)if(planets[e].hasFocus){if(!planets[e].isConnectionActive)return errorAudio.play(),void $("#unavailable-planet").show().addClass("popup-open");t=e}var i={question:$("#asking-question-container").text(),planetName:planetData[t].name,planetId:t};fetch("/api/activateTransmission",{method:"post",headers:{Accept:"application/json","Content-Type":"application/json"},body:JSON.stringify(i)}).then(req_status).then(req_json).then(function(t){console.log("Request succeeded with JSON response",t)}).catch(function(t){console.log("Request failed",t)}),setTimeout(function(){runState4()},1e3)}function runState2(t){[8,9,13,16,32,37,38,39,40,186,222,219,189].indexOf(t.which)>-1||t.which>=48&&t.which<=57||t.which>=65&&t.which<=90?(38==t.which?(t.preventDefault(),scrollToQuestion(--chosenQuestionStarter)):40!=t.which&&9!=t.which||(t.preventDefault(),scrollToQuestion(++chosenQuestionStarter)),13==t.which&&changeToState3()):t.preventDefault()}function runState3(t){if(t.preventDefault(),t.which>=49&&t.which<=56){for(var e=0;e<NO_OF_PLANETS;e++)planets[e].removeFocus();chosenPlanet=t.which-49,planets[chosenPlanet].setFocus()}else 13==t.which&&changeToState4()}function runState4(){programInactive=!1,runTerminalGUI()}function resetProgramTimer(){if((1!=programState||4!=programState)&&programInactive)return resetProgram(),void(programInactive=!1);programInactive=!0}function resetProgram(){updateConnectedPlanets(),programState=1,showPlanetNames=!1;for(var t=0;t<NO_OF_PLANETS;t++)planets[t].removeFocus();terminalCounter=0,$("#question-input-field").val(""),$("#terminal-content").html(""),$(".terminal-new-content #terminal-typing").html(""),$("main").attr("data-state",1)}function runTerminalGUI(){if(4==programState){var t=[{strings:["","Loading","Loading.","Loading..","Loading...","Loading","Loading.","Loading..","Loading...","Loading complete"],smartBackspace:!0,typeSpeed:200},{strings:["","Initializing transmission"],smartBackspace:!1,typeSpeed:40},{strings:["","npm install^1000\n `installing components...` ^1000\n `Fetching from source...`"],smartBackspace:!1,typeSpeed:40},{strings:["","Transmission COMPLETE"],smartBackspace:!1,typeSpeed:40},{strings:["",".","..","..."],smartBackspace:!0,typeSpeed:40}],e={strings:t[terminalCounter].strings,typeSpeed:40,smartBackspace:t[terminalCounter].smartBackspace,showCursor:!1,onComplete:e=>{if(terminalCounter<t.length-1){var i=$(".terminal-new-content").clone().removeClass("terminal-new-content").addClass("terminal-content-line");$("#terminal-content").append(i),$(".terminal-new-content #terminal-typing").html(""),terminalCounter++,runTerminalGUI()}else setTimeout(function(){resetProgram()},3e3)}};new Typed(".terminal-new-content #terminal-typing ",e)}}function updateConnectedPlanets(){fetch("/api/currentArduinoClients").then(req_status).then(req_json).then(function(t){console.log("Request succeeded with JSON response",t);var e=t.message;planets.filter(function(t){return!e.some(function(e){return t.id===e.id})}).forEach(function(t){t.removeConnectionIsActive()})}).catch(function(t){console.log("Request failed",t)})}function scrollToQuestion(t){if(2==programState){var e=-50*t;$("#question-starter-rotator").animate({top:e+"px"},"200"),$("#question-starter-rotator .focus").removeClass("focus"),$("#question-starter-rotator span:nth-of-type("+(parseInt(t)+1)+")").addClass("focus")}}function randomIntFromInterval(t,e){return Math.floor(Math.random()*(e-t+1)+t)}function req_status(t){return t.status>=200&&t.status<300?Promise.resolve(t):Promise.reject(new Error(t.statusText))}function req_json(t){return t.json()}$(document).ready(function(){window.WebSocket=window.WebSocket||window.MozWebSocket,new WebSocket("ws://localhost:8080").onmessage=function(t){var e=t.data;if(console.log(e),e.includes("QUESTION"))scrollToQuestion(chosenQuestionStarter=e.substring(e.indexOf(" "),e.length).trim());else if(e.includes("PLANET")){chosenPlanet=e.substring(e.indexOf(" "),e.length).trim();for(var i=0;i<NO_OF_PLANETS;i++)planets[i].removeFocus();planets[chosenPlanet].setFocus()}else if(e.includes("BUTTON")){var s=e.substring(e.indexOf(" "),e.length).trim();"BACK"==s?resetProgram():"CONTINUE"==s?programState<4&&changeState(programState+1):"TRANSMIT"==s&&(3==programState?changeToState4():(errorAudio.play(),$("#transmission-not-ready").show().addClass("popup-open")))}},setInterval(resetProgramTimer,RESET_TIME),$("body").on("keydown",function(t){if(programInactive=!1,$(".popup-container").hasClass("popup-open"))return t.preventDefault(),void $(".popup-container.popup-open").hide().removeClass("popup-open");1==programState?(t.preventDefault(),changeToState2(t)):2==programState?runState2(t):3==programState&&runState3(t)})});