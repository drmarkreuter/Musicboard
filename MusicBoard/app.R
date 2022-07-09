library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
ui <- navbarPage(theme = shinytheme("slate"),
                 "Musicboard - A Ring Around the Moon",
                 tabPanel("Library",
                          tabsetPanel(type = "tabs",
                                      tabPanel(tags$h3("World Music"),
                                               fluidRow(
                                                   column(6,
                                                          HTML("<h3>Heimo by Accordion Tribe</h3>"),
                                                          uiOutput("AccordionTribe"),
                                                          hr(),
                                                          HTML("<h3>Palo Santo by Asere</h3>"),
                                                          uiOutput("Asere"),
                                                          hr(),
                                                          HTML("<h3>Na Kuslatu Se Mahrama Vihori by Divanhana</h3>"),
                                                          uiOutput("Divanhana"),
                                                          hr(),
                                                          HTML("<h3>Andres Retamal by Muller & Makaroff</h3>"),
                                                          uiOutput("AndresRetamal"),
                                                          hr(),
                                                          HTML("<h3>Toda una Vida by Malecon Social Club</h3>"),
                                                          uiOutput("TodaunaVida"),
                                                          hr(),
                                                          
                                                          
                                                   ),
                                                   column(6,
                                                          HTML("<h3>Geomungo & Tango by Geomungo Factory</h3>"),
                                                          uiOutput("Geomungo"),
                                                          hr(),
                                                          HTML("<h3>Con Toda Palabra by Lhasa</h3>"),
                                                          uiOutput("ConToda"),
                                                          hr(),
                                                          HTML("<h3>Luna Rossa by Pietra Montecorvino</h3>"),
                                                          uiOutput("LunaRossa"),
                                                          hr(),
                                                          HTML("<h3>Storm by Talisk</h3>"),
                                                          uiOutput("Storm"),
                                                          hr(),
                                                          HTML("<h3>Un Dia Cualquiera by Silvana Estrada</h3>"),
                                                          uiOutput("Cualquiera"),
                                                          hr(),
                                                          
                                                   )
                                               )#fluidRow end
                                               
                                               
                                      ),
                                      tabPanel(tags$h3("Martynas"),
                                               HTML("<h3>Bizet Carmen - Habanera by Martynas</h3>"),
                                               uiOutput("Habanera"),
                                               hr(),
                                               HTML("<h3>Gardel Por Una Cabeza by Martynas</h3>"),
                                               uiOutput("Cabeza"),
                                               hr(),
                                               HTML("<h3>Parlez-Moi D'Amour by Martynas</h3>"),
                                               uiOutput("DAmour"),
                                               hr()
                                               
                                      ),
                                      tabPanel(tags$h3("Post Modern Jukebox"),
                                               HTML("<h3>Bad Guy by Post Modern Jukebox</h3>"),
                                               uiOutput("badguy"),
                                               hr(),
                                               HTML("<h3>Bad Romance by Post Modern Jukebox</h3>"),
                                               uiOutput("badRomance"),
                                               hr(),
                                               HTML("<h3>Smooth Criminal by Post Modern Jukebox</h3>"),
                                               uiOutput("smoothCriminal"),
                                               hr(),
                                               HTML("<h3>Gansta Paradise by Post Modern Jukebox</h3>"),
                                               uiOutput("ganstaParadise"),
                                               hr(),
                                               
                                               )
                                      
                                      
                                      
                          )#end of tabsetpanel
                 ),#Library tabpanel end
                 tabPanel("Original Music",)
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$AccordionTribe <- renderUI(
        HTML('<audio controls>
                       <source src="Heimo.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    output$Asere <- renderUI(
        HTML('<audio controls>
                       <source src="Palo Santo.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$Divanhana <- renderUI(
        HTML('<audio controls>
                       <source src="Na Kuslatu Se Mahrama Vihori.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$Geomungo <- renderUI(
        HTML('<audio controls>
                       <source src="Geomungo & Tango.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$ConToda <- renderUI(
        HTML('<audio controls>
                       <source src="Con Toda Palabra.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$LunaRossa <- renderUI(
        HTML('<audio controls>
                       <source src="Luna Rossa.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$AndresRetamal <- renderUI(
        HTML('<audio controls>
                       <source src="Andrés Retamal.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$Storm <- renderUI(
        HTML('<audio controls>
                       <source src="Storm.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$TodaunaVida <- renderUI(
        HTML('<audio controls>
                       <source src="Toda una Vida.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$Cualquiera <- renderUI(
        HTML('<audio controls>
                       <source src="Un Dia Cualquiera.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    ####Martynas####
    
    
    
    output$Habanera <- renderUI(
        HTML('<audio controls>
                       <source src="Bizet Carmen - Habanera.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$Cabeza <- renderUI(
        HTML('<audio controls>
                       <source src="Gardel Por Una Cabeza.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$DAmour <- renderUI(
        HTML('<audio controls>
                       <source src="Parlez-Moi DAmour.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
   #### Post Modern Jukebox ####
    output$badguy <- renderUI(
        HTML('<iframe width="560" height="315" 
        src="https://www.youtube.com/embed/OqwIloa3DVk" 
        title="YouTube video player" frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
        gyroscope; picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$badRomance <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/VCTOpdlZJ8U" 
             title="YouTube video player" frameborder="0" allow="accelerometer; 
             autoplay; clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$smoothCriminal <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/cRRJIUI6-tY" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$ganstaParadise <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/Rve03u7oEvI" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
}

# Run the application 
shinyApp(ui = ui, server = server)
