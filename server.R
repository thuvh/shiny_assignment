library(datasets)
data(iris)
library(randomForest)

# christmas
set.seed(1451001600)
iris_model <-randomForest(Species ~ .,data=iris)

# library(UsingR)

shinyServer(
    function(input, output){
        output$species <- renderText({
            predict(iris_model, newdata = data.frame
                                         (Sepal.Length=input$Sepal.Length,Sepal.Width=input$Sepal.Width,Petal.Length=input$Petal.Length,Petal.Width=input$Petal.Width))
            })
        Sepal.Length<-renderText({input$Sepal.Length})
        Sepal.Width<-renderText({input$Sepal.Width})
        Petal.Length<-renderText({input$Petal.Length})
        Petal.Width<-renderText({input$Petal.Width})
    }
)