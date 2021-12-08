<%@ page language="java" contentType="text/html; charset=utf-8"
    %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TekbrainZ</title>

        <link rel="stylesheet" href="/datacentre/css/demo-print.css"media="print">
        <style media="screen">
            #latlon-form {
                position: absolute;
                top: 430px;
            }
            #latlon-form input {
                font-size: 14px;
                width: 200px;
            }
            #latlon-form button {
                font-size: 14px;
            }
            #cities {
                position: absolute;
                top: 470px;
                margin: 0 10px;
                padding: 0;
                list-style: none;
            }
            #cities a {
                color: #ccf;
            }
            .custom-menu {
    display: none;
    z-index: 1000;
    position: absolute;
    overflow: hidden;
    border: 1px solid #CCC;
    white-space: nowrap;
    font-family: sans-serif;
    background: #FFF;
    color: #333;
    border-radius: 5px;
    padding: 0;
}

/* Each of the items in the list */
.custom-menu a li {
    padding: 8px 12px;
    cursor: pointer;
    list-style-type: none;
    transition: all .3s ease;
    user-select: none;
    
}

a{
	text-decoration: none;
	  color: hotpink;
	
}

.custom-menu li:hover {
    background-color: #DEF;
    color: black;
}
body{
background-color:
}
.login__tekbrainz-logo {
            width: 135px
        }

 </style>
         <script src="/datacentre/js/jquery.min.js"></script>
         <script src="/datacentre/js/jquery.js"></script>
         <script src="/datacentre/js/raphael.js"></script>
      	 <script src="/datacentre/js/world.js"></script>
         <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.js"></script>
     
    </head>
    <body>
        <img class="login__tekbrainz-logo" src="/datacentre/images/tekbrainz-logo.png" alt="Syniverse Logo">
        
     <script>
        var inpath;
        function labelPath( pathObj, text, textattr )
        {
            if ( textattr == undefined )
                textattr = { 'font-size': 10, fill: '#000', stroke: 'none', 'font-family': 'Arial,Helvetica,sans-serif', 'font-weight': 400 };
            var bbox = pathObj.getBBox();
            var textObj = pathObj.paper.text( bbox.x + bbox.width / 2, bbox.y + bbox.height / 2, text ).attr( textattr );
            return textObj;
        }
        
             Raphael(140, 50, 1000, 400, function () {
                var r = this;
                  r.rect(0, 0, 1000, 400, 10).attr({
                    stroke: "none",
                    fill: "#36e0b3"
                });
               
                //r.text(10, 20, "DataCentres").attr({'text-anchor': 'start', 'font-size': '20px'})
                var over = function () {
                    this.c = this.c || this.attr("fill");
                    this.stop().animate({fill: "#413f4a"}, 500);
                    //JB added next line
                    //window.location.assign('world://'+encodeURIComponent(worldmap.names[this.attr("title")]));
                    
                },
                    out = function () {
                        this.stop().animate({fill: this.c}, 500);
                    };
                r.setStart();
                var hue = Math.random();
                for (var country in worldmap.shapes) {
                    // var c = Raphael.hsb(Math.random(), .5, .75);
                    // var c = Raphael.hsb(.11, .5, Math.random() * .25 - .25 + .75);
                    if(country != "INDIA" || country != "NL" || country != "CA" || country != "DE"){
                        r.path(worldmap.shapes[country]).attr({stroke: "#ccc6ae", fill: "#f0efeb", "stroke-opacity": 0.25, "title":country});  //JB added title
						
                    }
                    if (country=="INDIA"){
                    	
                    	if("[[${IN}]]" == "[[GREEN]]"){
                    	inpath =  r.path(worldmap.shapes[country]).attr({stroke: "#000000 ", fill: "#00ff00", "stroke-opacity": 0.25, "title":country
                    		}).data('id', 'inpath');
                    	labelPath( inpath, "INDIA" ).node.id="a";
 						 inpath.node.id = "a1"
                    	}
                    	else if("[[${IN}]]" == "[[ORANGE]]"){
                    	 inpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ffa500", "stroke-opacity": 0.25, "title":country
                    	 }).data('id', 'inpath');
                    	 labelPath( inpath, "INDIA" ).node.id="a";
 						 inpath.node.id = "a1"
                    	}
                    	else {
                    	 inpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ff0000", "stroke-opacity": 0.25, "title":country 
                    	 }).data('id', 'inpath');
                    	 labelPath( inpath, "INDIA" ).node.id="a";
 						 inpath.node.id = "a1"
                    	}
                    	  $('#a').click(function() {
                              alert("INDIA");
                             location.href = "/list" 
                            
                        }); 
                    	  $('#a1').click(function() {
                              alert("INDIA");
                              location.href = "/list"
                              
                         }); 
                    	// Trigger action when the contexmenu is about to be shown
                    	  $("#a").bind("contextmenu", function (event) {
                              console.log("")
                              // Avoid the real one
                              event.preventDefault();
                              
                              // Show contextmenu
                              $(".custom-menu").finish().toggle(1000).
                              
                              // In the right position (the mouse)
                              css({
                                  top: event.pageY + "px",
                                  left: event.pageX + "px"
                              });
                          });
                    	  $("#a1").bind("contextmenu", function (event) {
                              console.log("")
                              // Avoid the real one
                              event.preventDefault();
                              
                              // Show contextmenu
                              $(".custom-menu").finish().toggle(1000).
                              
                              // In the right position (the mouse)
                              css({
                                  top: event.pageY + "px",
                                  left: event.pageX + "px"
                              });
                          });
                    }
                    
                    else if(country=="NL"){
                    	if("[[${NL}]]" == "[[GREEN]]"){
                        	nlpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#00ff00", "stroke-opacity": 0.25, "title":country
                        	}).data('id', 'nlpath');
                         	label = labelPath( nlpath, "NL" ).node.id="b";
                         	nlpath.node.id = "b1"
                        	}
                        	else if("[[${NL}]]" == "[[ORANGE]]"){
                        		nlpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ffa500", "stroke-opacity": 0.25, "title":country
                        		}).data('id', 'nlpath');
                        		label = labelPath( nlpath, "NL" ).node.id="b";
                             	nlpath.node.id = "b1"
                        	}
                        	else{
                        		nlpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ff0000", "stroke-opacity": 0.25, "title":country
                        		}).data('id', 'nlpath');
                        		label = labelPath( nlpath, "NL" ).node.id="b";
                             	nlpath.node.id = "b1"
                        	}
                    	$('#b').click(function() {
                            alert("Netherlands");
                            location.href = "/list"
                            // here you do what you want ^^
                       }); 
                    	$('#b1').click(function() {
                            alert("Netherlands");
                            location.href = "/list"
                            // here you do what you want ^^
                       }); 
                    	// Trigger action when the contexmenu is about to be shown
                  	  $("#b").bind("contextmenu", function (event) {
                            console.log("")
                            // Avoid the real one
                            event.preventDefault();
                            
                            // Show contextmenu
                            $(".custom-menu").finish().toggle(1000).
                            
                            // In the right position (the mouse)
                            css({
                                top: event.pageY + "px",
                                left: event.pageX + "px"
                            });
                        });
                    	
                  //for id d i.e. labelpath
                  	$("#b1").bind("contextmenu", function (event) {
                        
                        // Avoid the real one
                        event.preventDefault();
                        
                        // Show contextmenu
                        $(".custom-menu").finish().toggle(1000).
                        
                        // In the right position (the mouse)
                        css({
                            top: event.pageY + "px",
                            left: event.pageX + "px"
                        });
                    });
                    }
                    
                    else if(country=="DE"){
                    	if("[[${GM}]]" == "[[GREEN]]"){
                        	gmpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#00ff00", "stroke-opacity": 0.25, "title":country
                        	}).data('id', 'gmpath');
                         	label = labelPath( gmpath, "GM" ).node.id="c";
                         	gmpath.node.id = "c1"
                        	}
                        	else if("[[${GM}]]" == "[[ORANGE]]"){
                        		gmpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ffa500", "stroke-opacity": 0.25, "title":country
                        		}).data('id', 'gmpath');
                        		label = labelPath( gmpath, "GM" ).node.id="c";
                        		gmpath.node.id = "c1"
                        	}
                        	else{
                        		gmpath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ff0000", "stroke-opacity": 0.25, "title":country
                        		}).data('id', 'gmpath');
                        		label = labelPath( gmpath, "GM" ).node.id="c";
                        		gmpath.node.id = "c1"
                        	}
                    	$('#c').click(function() {
                            alert("Germany");
                            location.href = "/list"
                            // here you do what you want ^^
                       }); 
                    	$('#c1').click(function() {
                            alert("Germany");
                            location.href = "/list"
                       }); 
                    	// Trigger action when the contexmenu is about to be shown
                  	  $("#c").bind("contextmenu", function (event) {
                            console.log("")
                            // Avoid the real one
                            event.preventDefault();
                            
                            // Show contextmenu
                            $(".custom-menu").finish().toggle(1000).
                            
                            // In the right position (the mouse)
                            css({
                                top: event.pageY + "px",
                                left: event.pageX + "px"
                            });
                        });
                    	
                  //for id d i.e. labelpath
                  	$("#c1").bind("contextmenu", function (event) {
                        
                        // Avoid the real one
                        event.preventDefault();
                        
                        // Show contextmenu
                        $(".custom-menu").finish().toggle(1000).
                        
                        // In the right position (the mouse)
                        css({
                            top: event.pageY + "px",
                            left: event.pageX + "px"
                        });
                    });
                    }
                    
                    else if(country=="US"){
                    	if("[[${US}]]" == "[[GREEN]]"){
                    		uspath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#00ff00", "stroke-opacity": 0.25, "title":country
                        	}).data('id', 'uspath');
                         	labelPath( uspath, "US" ).node.id="d";
                         	uspath.node.id = "d1"
                        	}
                        	else if("[[${US}]]" == "[[ORANGE]]"){
                        		uspath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ffa500", "stroke-opacity": 0.25, "title":country
                        		}).data('id', 'uspath');
                        		labelPath( uspath, "US" ).node.id="d";
                             	uspath.node.id = "d1"
                        	}
                        	else {
                        		uspath = r.path(worldmap.shapes[country]).attr({stroke: "#000000", fill: "#ff0000", "stroke-opacity": 0.25, "title":country
                        		}).data('id', 'uspath');
                        		labelPath( uspath, "US" ).node.id="d";
                             	uspath.node.id = "d1"
                        	}	
                    	 $('#d').click(function() {
                             alert("US");
                             location.href = "/list"
                             // here you do what you want ^^
                        }); 
                    	 $('#d1').click(function() {
                             alert("US");
                             location.href = "/list"
                             // here you do what you want ^^
                        }); 
                    	 
                    	// Trigger action when the contexmenu is about to be shown
                   	  $("#d").bind("contextmenu", function (event) {
                             // Avoid the real one
                             event.preventDefault();
                             
                             // Show contextmenu
                             $(".custom-menu").finish().toggle(1000).
                             
                             // In the right position (the mouse)
                             css({
                                 top: event.pageY + "px",
                                 left: event.pageX + "px"
                             });
                         });
                   	$("#d1").bind("contextmenu", function (event) {
                        console.log("")
                        // Avoid the real one
                        event.preventDefault();
                        
                        // Show contextmenu
                        $(".custom-menu").finish().toggle(1000).
                        
                        // In the right position (the mouse)
                        css({
                            top: event.pageY + "px",
                            left: event.pageX + "px"
                        });
                    });
                    }
                   
                    
                }
                
                var world = r.setFinish();
                world.hover(over, out);
                
                // world.animate({fill: "#666", stroke: "#666"}, 2000);
                world.getXY = function (lat, lon) {
                    return {
                        cx: lon * 2.6938 + 465.4,
                        cy: lat * -2.6938 + 227.066
                    };
                };
                world.getLatLon = function (x, y) {
                    return {
                        lat: (y - 227.066) / -2.6938,
                        lon: (x - 465.4) / 2.6938
                    };
                };
                var latlonrg = /(\d+(?:\.\d+)?)[\xb0\s]?\s*(?:(\d+(?:\.\d+)?)['\u2019\u2032\s])?\s*(?:(\d+(?:\.\d+)?)["\u201d\u2033\s])?\s*([SNEW])?/i;
                world.parseLatLon = function (latlon) {
                    var m = String(latlon).split(latlonrg),
                        lat = m && +m[1] + (m[2] || 0) / 60 + (m[3] || 0) / 3600;
                    if (m[4].toUpperCase() == "S") {
                        lat = -lat;
                    }
                    var lon = m && +m[6] + (m[7] || 0) / 60 + (m[8] || 0) / 3600;
                    if (m[9].toUpperCase() == "W") {
                        lon = -lon;
                    }
                    return this.getXY(lat, lon);
                };
                try {
                    navigator.geolocation && navigator.geolocation.getCurrentPosition(function (pos) {
                        r.circle().attr({fill: "none", stroke: "#f00", r: 5}).attr(world.getXY(pos.coords.latitude, pos.coords.longitude));
                    });
                } catch (e) {}
                
               
          
            });
           
           
           /* --------------------------------------------------------------------------------- */ 
            
 
            // If the document is clicked somewhere
            $(document).bind("mousedown", function (e) {
                
                // If the clicked element is not the menu
                if (!$(e.target).parents(".custom-menu").length > 0) {
                    
                    // Hide it
                    $(".custom-menu").hide(1000);
                }
            });
            
            
           
     </script>
	<input type="hidden" id="status" value="${msg}"/>
	<ul class='custom-menu'>
  <a href ="/abc"><li data-action="first">Pause Activities</li></a>
  <a href ="/abc"><li data-action="second">Resume Activities</li></a>
  <a href ="/abc"><li data-action="third">Stop Activities</li></a>
</ul>
       
    </body>
</html>