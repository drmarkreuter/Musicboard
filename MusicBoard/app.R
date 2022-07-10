##Mark Reuter
##A small Web app for Ring Around the Moon music

library(shiny)
library(shinythemes)

##deploy url: https://abominable.shinyapps.io/MusicBoard/


ui <- navbarPage(theme = shinytheme("slate"),
                 HTML("<h2>Musicboard - Ring Around the Moon</h2>"),
                 tabPanel(HTML("<h3>Library</h3>"),
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
                                               
                                               ),
                                      
                                      tabPanel(tags$h3("YouTube - assorted"),
                                               HTML("<h3>Django Reinhardt - The Best Of Django Reinhardt</h3>"),
                                               uiOutput("django1"),
                                               hr(),
                                               
                                               HTML("<h3>The Best of Tango</h3>"),
                                               uiOutput("bestTango"),
                                               hr(),
                                               
                                               HTML("<h3>Tango in Paris - Romantic French Music - French Tango Accordion Instrumental Music</h3>"),
                                               uiOutput("tangoParis"),
                                               hr(),
                                               
                                               HTML("<h3>Romantic French Tango Instrumental Music</h3>"),
                                               uiOutput("romanticFench"),
                                               hr(),
                                               
                                               HTML("<h3>Naked Tango - Slaughterhouse Dance Scene</h3>"),
                                               uiOutput("nakedTango"),
                                               HTML('<a href="https://www.imdb.com/title/tt0100222/" target="_blank">Naked Tango on IMDB</a>'),
                                               hr(),
                                               
                                               HTML("<h3>Gotan Project - La Revancha Del Tango (Full Album)</h3>"),
                                               uiOutput("gotan"),
                                               hr(),
                                               )
                                      
                                      
                                      
                          )#end of tabsetpanel
                 ),#Library tabpanel end
                 tabPanel(HTML("<h3>Original Music</h3>"),
                          HTML("<h3>Demo 1</h3>"),
                          uiOutput("demo1"),
                          hr(),
                          HTML("<h3>Demo 1 - accordion mix</h3>"),
                          uiOutput("demo1b"),
                          hr(),
                          HTML("<h3>Demo 2</h3>"),
                          uiOutput("demo2"),
                          hr()
                          
                          
                          )
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
    
    ####youtube####
    output$django1 <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/QVAD6VPIPSs" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$bestTango <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/mBmGNTkr1Nk" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    
    
    output$romanticFench <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/pOUXNUO-oqQ" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$tangoParis <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/jkPX0KWxAP4" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$gotan <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/QybR25RPt-8" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$nakedTango <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/V3Tm9Hf46Iw?start=21" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    
    
    ####original music####
    
    
    output$demo1 <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Moon Demo1.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$demo1b <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Moon Demo1 Accordion Mix.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$demo2 <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Moon Demo2.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
}

# Run the application 
shinyApp(ui = ui, server = server)
