library(shiny)
library(datasets)
data(iris)

shinyUI(pageWithSidebar(
    headerPanel("Predict the Iris Species"),
    sidebarPanel(
        sliderInput('Sepal.Length','Sepal Length', value=5.84, min=4.0, max=8.0, step = 0.05,),
        
        sliderInput('Sepal.Width','Sepal Width', value=3, min=2, max=4.5, step = 0.05,),
        
        sliderInput('Petal.Length','Petal Length', value=4.35, min=1, max=7.0, step = 0.05,),
        
        sliderInput('Petal.Width','Petal Width', value=1.3, min=0.0, max=2.5, step = 0.05,),
        submitButton("Predict Iris Species"),
        p(strong(em("Documentation:",a("Iris Predictor",href="/index.html")))),
        p(strong(em("Github repository:",a("Github",href="https://github.com/thuvh/shiny_assignment"))))
    ),
    mainPanel(
        p('Species Predicted:'),
        textOutput("species")
        
    )
))