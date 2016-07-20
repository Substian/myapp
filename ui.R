#the following code only execute once
comp<-read.csv("data/data.csv",header=T,stringsAsFactor=F);
lists<-unique(comp$OH.Area);

shinyUI(
	fluidPage(
		radioButtons("sex","Select Your Gender",choices=lists),
		plotOutput('plot'),
		tableOutput("data")
	)
)
