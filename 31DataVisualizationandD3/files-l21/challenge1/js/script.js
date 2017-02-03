var body = d3.select("body")

body.append("p").text("I Love Data")
body.append("p").text("I Love Data")
body.append("p").text("I Love Data")

var myDiv = d3.select("div")

myDiv.append("p").text("paragraph inside the div")

myDiv.attr('style','background-color:#ddd')

myDiv.attr('style','border:solid 4px black')