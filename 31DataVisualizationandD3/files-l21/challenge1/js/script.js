var body = d3.select("body");

body.append("p").text("I Love Data");
body.append("p").text("Grace Loves Data");
body.append("p").text("Medb Loves Data");
body.append("p").text("Tess Hates Data");

var myDiv = d3.select("div");

myDiv.append("p").text("paragraph inside the div");

myDiv.attr('style','background-color:#ddd');

myDiv.attr('style','border:solid 4px black');

myDiv.attr('style','background-color:#ddd; border:solid 4px black');

myDiv.attr('style','background-color:#ddd; border:solid 4px black; text-align:center');

myDiv.classed("smallBox", true);
myDiv.classed("smallBox", false);
myDiv.attr('style','border:solid 4px black; text-align:center');
myDiv.classed("red", true);
myDiv.classed("smallBox", true);

