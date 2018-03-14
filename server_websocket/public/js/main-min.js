var programState=1,backgroundSound=new Audio("sounds/harddrive.mp3");backgroundSound.loop=!0;var translationErrorMargin,chosenPlanet,lastSliderVal,faxSound=new Audio("sounds/fax.mp3"),alienNoise1=new Audio("sounds/alienNoise1.mp3"),errorAudio=new Audio("sounds/error.mp3"),UPDATE_PLANETS_TIME=15e3,RESET_TIME=18e4,programInactive=!1,terminalCounter=0,chosenQuestionStarter=0,NO_OF_PLANETS=8,planets=[],planetData=[{name:"EM-6",diameter:78,id:0,type:"3RING"},{name:"Circuitius-C",diameter:102,id:1,type:"SPHERE"},{name:"MDAcom-86",diameter:84,id:2,type:"2RING"},{name:"WAVE",diameter:90,id:3,type:"SPHERE"},{name:"SERAHS-M1nd",diameter:103,id:4,type:"3RING"},{name:"JVN-CT100",diameter:90,id:5,type:"SPHERE"},{name:"Grp/M",diameter:86,id:6,type:"2RING"},{name:"1SAVR",diameter:100,id:7,type:"3RING"}],showPlanetNames=!1,theta=.5,dtheta=.08;function setup(){createCanvas(1e3,400).parent("planet-container"),fill(0),stroke(255),textFont("Noto Mono"),textSize(14);for(var t=0;t<NO_OF_PLANETS;t++){var e=125*t+((125-planetData[t].diameter)/2+planetData[t].diameter/2);planets[t]=new Planet(e,200,planetData[t].diameter,planetData[t].name,planetData[t].id,planetData[t].type)}updateConnectedPlanets()}function draw(){background(0),planets.forEach(function(t){t.display()})}function Planet(t,e,i,n,a,s){this.x=t,this.y=e,this.diameter=i,this.name=n,this.id=a,this.type=s,this.theta=theta,this.dtheta=dtheta,this.isConnectionActive=!0,this.hasFocus=!1,this.display=function(){if(noFill(),strokeWeight(4),!this.hasFocus||this.isConnectionActive||3!=programState&&4!=programState)if(!this.hasFocus||3!=programState&&4!=programState)this.isConnectionActive?(stroke(255),"SPHERE"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter,20),ellipse(this.x,this.y,20,this.diameter)):"2RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-30,this.diameter-30)):"3RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-25,this.diameter-25),ellipse(this.x,this.y,this.diameter-50,this.diameter-50)):ellipse(this.x,this.y,this.diameter,this.diameter)):(stroke(173,31,35),"SPHERE"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter,20),ellipse(this.x,this.y,20,this.diameter)):"2RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-30,this.diameter-30)):"3RING"==this.type?(ellipse(this.x,this.y,this.diameter,this.diameter),ellipse(this.x,this.y,this.diameter-25,this.diameter-25),ellipse(this.x,this.y,this.diameter-50,this.diameter-50)):ellipse(this.x,this.y,this.diameter,this.diameter));else{stroke(255),this.theta+=this.dtheta;t=this.diameter+this.diameter*(sin(this.theta)+1)/10,e=20+20*(sin(this.theta)+1)/10;"SPHERE"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t,e),ellipse(this.x,this.y,e,t)):"2RING"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t-30,t-30)):"3RING"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t-25,t-25),ellipse(this.x,this.y,t-50,t-50)):ellipse(this.x,this.y,t,t)}else{stroke(173,31,35),this.theta+=this.dtheta;var t=this.diameter+this.diameter*(sin(this.theta/3)+1)/10,e=20+20*(sin(this.theta/3)+1)/10;"SPHERE"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t,e),ellipse(this.x,this.y,e,t)):"2RING"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t-30,t-30)):"3RING"==this.type?(ellipse(this.x,this.y,t,t),ellipse(this.x,this.y,t-25,t-25),ellipse(this.x,this.y,t-50,t-50)):ellipse(this.x,this.y,t,t),fill(173,31,35),textSize(26),strokeWeight(2),text("x",this.x,335),textSize(14),fill(255)}showPlanetNames&&(textAlign(CENTER),noStroke(),fill(255),text(this.name,this.x,300))},this.setConnectionIsActive=function(){this.isConnectionActive=!0},this.removeConnectionIsActive=function(){this.isConnectionActive=!1},this.setFocus=function(){this.hasFocus=!0},this.removeFocus=function(){this.hasFocus=!1}}function changeState(t){switch(t){case 1:resetProgram();break;case 2:changeToState2();break;case 3:changeToState3();break;case 4:changeToState4()}}function changeToState2(){programState=2,$("main").attr("data-state",2),$("#question-input-field").focus()}function changeToState3(){var t=$("#question-input-field").val().trim();if(!t||0===t.length)return errorAudio.play(),void $("#missing-input").show().addClass("popup-open");void 0!==lastSliderVal?planets[lastSliderVal].setFocus():(chosenPlanet=Math.floor(Math.random()*Math.floor(planets.length)),planets[chosenPlanet].setFocus());var e=$("#question-starter-rotator .focus").text();$("#asking-question-container span").text(e+" "+t+"?"),programState=3,$("main").attr("data-state",3),showPlanetNames=!0}function changeToState4(){for(var t=0;t<NO_OF_PLANETS;t++)if(planets[t].hasFocus){if(!planets[t].isConnectionActive)return errorAudio.play(),void $("#unavailable-planet").show().addClass("popup-open");translationErrorMargin=randomIntFromInterval(10,35);var e={question:$("#asking-question-container span").text(),planetName:planetData[t].name,planetId:t,translationErrorMargin:translationErrorMargin};return fetch("/api/activateTransmission",{method:"post",headers:{Accept:"application/json","Content-Type":"application/json"},body:JSON.stringify(e)}).then(req_status).then(req_json).then(function(t){console.log("Request succeeded with JSON response",t)}).catch(function(t){console.log("Request failed",t)}),programState=4,$("main").attr("data-state",4),showPlanetNames=!1,void setTimeout(function(){runState4()},1e3)}}function runState2(t){[8,9,13,16,32,37,38,39,40,186,222,219,189].indexOf(t.which)>-1||t.which>=48&&t.which<=57||t.which>=65&&t.which<=90?(38==t.which&&chosenQuestionStarter>0?(t.preventDefault(),scrollToQuestion(--chosenQuestionStarter)):(40==t.which||9==t.which)&&chosenQuestionStarter<7&&(t.preventDefault(),scrollToQuestion(++chosenQuestionStarter)),13==t.which&&changeToState3()):t.preventDefault()}function runState3(t){if(t.preventDefault(),t.which>=49&&t.which<=56){for(var e=0;e<NO_OF_PLANETS;e++)planets[e].removeFocus();chosenPlanet=t.which-49,planets[chosenPlanet].setFocus()}else 13==t.which&&changeToState4()}function runState4(){programInactive=!1,setTimeout(function(){faxSound.play()},1e3),setTimeout(function(){alienNoise1.play()},24e3),runTerminalGUI()}function resetProgramTimer(){if((1!=programState||4!=programState)&&programInactive)return resetProgram(),void(programInactive=!1);programInactive=!0}function resetProgram(){updateConnectedPlanets(),programState=1,showPlanetNames=!1;for(var t=0;t<NO_OF_PLANETS;t++)planets[t].removeFocus();terminalCounter=0,$("#question-input-field").val(""),$("#terminal-content").html(""),$(".terminal-new-content #terminal-typing").html(""),$("main").attr("data-state",1)}function runTerminalGUI(){if(setInterval(function(){$("#terminal-container").animate({scrollTop:$("#terminal-container").get(0).scrollHeight},200)},200),4==programState){var t=[{strings:["","Initiating communication ports","Initiating communication ports.","Initiating communication ports..","Initiating communication ports...","Initiating communication ports","Initiating communication ports.","Initiating communication ports..","Communication ports online"],smartBackspace:!0,typeSpeed:0},{strings:["","PLEASE GAZE UPON PLANET TO MANUALLY VERIFY"],smartBackspace:!1,typeSpeed:10},{strings:["","Calibrating antennas","Calibrating antennas: SUCCESS!"],smartBackspace:!0,typeSpeed:1},{strings:["","Establishing Visual Basic GUI Interface for tracking IP addresses\n `Establishing Connection… Success!` ^200\n `Identifying remote operation system… Unix system detected`^100\n "],smartBackspace:!1,typeSpeed:0},{strings:["","Preparing satellites...\n `Mapping satellite communication chain <1 out of 5>` ^700\n `Mapping satellite communication chain <2 out of 5>` ^500\n `Mapping satellite communication chain <3 out of 5>` ^300\n `Mapping satellite communication chain <4 out of 5>` ^200\n `Mapping satellite communication chain <5 out of 5>` ^500\n"],smartBackspace:!1,typeSpeed:0},{strings:["","Filtering deep space noise","Filtering deep space noise: SUCCESS!"],smartBackspace:!0,typeSpeed:2},{strings:["","`Quantum system initialised` ^600\n `Signal strength: "+randomIntFromInterval(70,98)+"%` ^600\n `Current speed: 1."+randomIntFromInterval(1,8)+"TB/s` ^600\n `Translation error margin: "+translationErrorMargin+"%`"],smartBackspace:!1,typeSpeed:0},{strings:["","TRANSMITTING: 3%","TRANSMITTING: 16%","TRANSMITTING: 47%","TRANSMITTING: 56%","TRANSMITTING: 81%","TRANSMITTING: COMPLETE"],smartBackspace:!0,typeSpeed:0,attr:"test"},{strings:["","Awaiting response..."],smartBackspace:!1,typeSpeed:20},{strings:["","Extraterrestrial communication intercepted!"],smartBackspace:!1,typeSpeed:0},{strings:["","01100011 01101111 01100100 01100101 01100100 00100000 01100001 01101110 01100100 00100000 01100011 01110010 01100001 01100110 01110100 01100101 01100100 00100000 01100010 01111001 00100000 01100011 01101001 01110010 01100011 01110101 01101001 01110100 00100000 01100011 01101001 01110010 01110101 01100011 01110011"],smartBackspace:!1,typeSpeed:0},{strings:["","PLEASE ACCEPT ANSWER","PLEASE ACCEPT ANSWER.","PLEASE ACCEPT ANSWER..","PLEASE ACCEPT ANSWER...","PLEASE ACCEPT ANSWER","PLEASE ACCEPT ANSWER.","PLEASE ACCEPT ANSWER..","PLEASE ACCEPT ANSWER..."],smartBackspace:!0,typeSpeed:20},{strings:["","Thank you for using aether. Have a NextM day!"],smartBackspace:!1,typeSpeed:5},{strings:["","System rebooting in: 5","System rebooting in: 4","System rebooting in: 3","System rebooting in: 2","System rebooting in: 1"],smartBackspace:!0,typeSpeed:20}],e={strings:t[terminalCounter].strings,typeSpeed:t[terminalCounter].typeSpeed,smartBackspace:t[terminalCounter].smartBackspace,showCursor:!1,preStringTyped:(t,e)=>{},onComplete:e=>{if(terminalCounter<t.length-1){var i=$(".terminal-new-content").clone().removeClass("terminal-new-content").addClass("terminal-content-line");$("#terminal-content").append(i),$(".terminal-new-content #terminal-typing").html(""),terminalCounter++,runTerminalGUI()}else setTimeout(function(){resetProgram()},1e3)}};new Typed(".terminal-new-content #terminal-typing ",e)}}function updateConnectedPlanets(){fetch("/api/currentArduinoClients").then(req_status).then(req_json).then(function(t){console.log("Request succeeded with JSON response",t);var e=t.message,i=planets.filter(function(t){return!e.some(function(e){return t.id===e.id})}),n=planets.filter(function(t){return e.some(function(e){return t.id===e.id})});i.forEach(function(t){t.removeConnectionIsActive()}),n.forEach(function(t){t.setConnectionIsActive()})}).catch(function(t){console.log("Request failed",t)})}function scrollToQuestion(t){if(2==programState){var e=-50*t;$("#question-starter-rotator").css({top:e+"px"}),$("#question-starter-rotator .focus").removeClass("focus"),$("#question-starter-rotator span:nth-of-type("+(parseInt(t)+1)+")").addClass("focus")}}function randomIntFromInterval(t,e){return Math.floor(Math.random()*(e-t+1)+t)}function req_status(t){return t.status>=200&&t.status<300?Promise.resolve(t):Promise.reject(new Error(t.statusText))}function req_json(t){return t.json()}$(document).ready(function(){window.WebSocket=window.WebSocket||window.MozWebSocket,new WebSocket("ws://localhost:8080").onmessage=function(t){var e=t.data;if(console.log(e),e.includes("QUESTION"))scrollToQuestion(chosenQuestionStarter=e.substring(e.indexOf(" "),e.length).trim());else if(e.includes("PLANET")){chosenPlanet=e.substring(e.indexOf(" "),e.length).trim(),lastSliderVal=chosenPlanet;for(var i=0;i<NO_OF_PLANETS;i++)planets[i].removeFocus();planets[chosenPlanet].setFocus()}else if(e.includes("BUTTON")){var n=e.substring(e.indexOf(" "),e.length).trim();"BACK"==n?resetProgram():"CONTINUE"==n?programState<4&&changeState(programState+1):"TRANSMIT"==n&&(3==programState?changeToState4():(errorAudio.play(),$("#transmission-not-ready").show().addClass("popup-open")))}},setInterval(resetProgramTimer,RESET_TIME),setInterval(updateConnectedPlanets,UPDATE_PLANETS_TIME),errorAudio.load(),backgroundSound.load(),faxSound.load(),alienNoise1.load(),backgroundSound.play(),$("body").on("keydown",function(t){if(programInactive=!1,$(".popup-container").hasClass("popup-open"))return t.preventDefault(),void $(".popup-container.popup-open").hide().removeClass("popup-open");1==programState?(t.preventDefault(),changeToState2()):2==programState?runState2(t):3==programState?(t.preventDefault(),runState3(t)):4==programState&&t.preventDefault()})});