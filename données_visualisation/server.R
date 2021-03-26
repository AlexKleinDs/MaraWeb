#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#lib

library(dplyr)
library(shiny)
library(ggplot2)
library(shinyWidgets)

#Datasets

Ds_sport = read.csv("sport_.csv")
Ds_npi = read.csv("npi_.csv")
Ds_out = read.csv("out_.csv")


x = distinct(Ds_sport, sport ,.keep_all = FALSE)
y = distinct(Ds_npi, npi ,.keep_all = FALSE)
z = distinct(Ds_out, out ,.keep_all = FALSE)

choix_sport = c(x$sport)
choix_npi = c(y$npi)
choix_out = c(z$out)




# Define server logic required to draw a histogram
shinyServer(
    function(input, output, session) 
    {
        observeEvent(input$sport, {

                output$articlesPlot <- renderPlot(
                    {
                        #filtre pour l'input
                        filtre = filter(Ds_sport, Ds_sport$sport == input$sport)
                        nouveau_df <- filtre[2:3]
                        # Render a barplot
                        #ggplot(data=nouveau_df, aes(x=annee, y=nb_article)) + geom_line() + geom_point()
                        ggplot(data=nouveau_df, aes(x=annee, y=nb_article)) + geom_bar(stat = "identity")
                     })})
        observeEvent(input$npi, {    
            
            output$articlesPlot <- renderPlot({
                #filtre pour l'input
                filtre = filter(Ds_npi, Ds_npi$npi == input$npi)
                nouveau_df <- filtre[2:3]
                # Render a barplot
                #ggplot(data=nouveau_df, aes(x=annee, y=nb_article)) + geom_line() + geom_point()
                ggplot(data=nouveau_df, aes(x=annee, y=nb_article)) + geom_bar(stat = "identity")
            })})
        
        observeEvent(input$out, {    
            
            output$articlesPlot <- renderPlot({
                #filtre pour l'input
                filtre = filter(Ds_out, Ds_out$out == input$out)
                nouveau_df <- filtre[2:3]
                # Render a barplot
                #ggplot(data=nouveau_df, aes(x=annee, y=nb_article)) + geom_line() + geom_point()
                ggplot(data=nouveau_df, aes(x=annee, y=nb_article)) + geom_bar(stat = "identity")
            })})
           

    })

