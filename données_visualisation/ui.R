#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
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



# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Give the page a title
    titlePanel("Kalya"),
    
    #setBackgroundImage(src = "C:/Users/Lipto/OneDrive/Documents/R/win-library/4.0/shiny/www/fond_appli.png"),
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with one input
        sidebarPanel(
            selectInput("sport", "Sport:", choices=choix_sport[0:20]),
            hr(),
            
            selectInput("npi", "TNM:", choices=choix_npi[0:20]),
            hr(),
            
            selectInput("out", "Objectif(s):", choices=choix_out[0:20]),
            hr(),
        ),




        
        # Create a spot for the barplot
        mainPanel(
            plotOutput("articlesPlot")  
        )
        
    )
))
