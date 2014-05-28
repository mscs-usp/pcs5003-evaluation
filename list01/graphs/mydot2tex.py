from gvgen import *
import os,sys

graph = GvGen()

filename="gvgen_example"

morning = graph.newItem("Morning")
noon = graph.newItem("Noon")
afternoon = graph.newItem("Afternoon")
evening = graph.newItem("Evening")
night = graph.newItem("Night")

graph.newLink(morning,noon)
graph.newLink(noon,afternoon)
graph.newLink(afternoon,evening)
graph.newLink(evening,night)
graph.newLink(night,morning)

lateWake = graph.newLink(night,noon)
graph.propertyAppend(lateWake, "color", "red")
graph.propertyAppend(lateWake, "label", "You're late!!")

outfile = open(filename+".dot", "w")

graph.dot(outfile)
print("DONE!")
