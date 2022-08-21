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
                                      #### Post Modern Jukebox ####
                                      tabPanel(tags$h3("Post Modern Jukebox"),
                                               HTML("<h3>Bad Guy by Post Modern Jukebox</h3>"),
                                               uiOutput("badguy"),
                                               uiOutput("badguyaudio"),
                                               hr(),
                                               HTML("<h3>Bad Romance by Post Modern Jukebox</h3>"),
                                               uiOutput("badRomance"),
                                               uiOutput("badromanceaudio"),
                                               hr(),
                                               HTML("<h3>Smooth Criminal by Post Modern Jukebox</h3>"),
                                               uiOutput("smoothCriminal"),
                                               uiOutput("smoothcriminalaudio"),
                                               hr(),
                                               HTML("<h3>Gansta Paradise by Post Modern Jukebox</h3>"),
                                               uiOutput("ganstaParadise"),
                                               uiOutput("gangstasaudio"),
                                               hr(),
                                               HTML("<h3>Beautiful by Post Modern Jukebox</h3>"),
                                               uiOutput("beautifulaudio"),
                                               hr(),
                                               HTML("<h3>Dancing Queen by Post Modern Jukebox</h3>"),
                                               uiOutput("dancingqueenaudio"),
                                               hr(),
                                               HTML("<h3>Dancing Wtith Myself by Post Modern Jukebox</h3>"),
                                               uiOutput("dancingwithmyselfaudio"),
                                               hr()
                                               ),
                                      #### YouTube Assorted GUI ####
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
                                               uiOutput("nakenTangoAudio"),
                                               HTML('<a href="https://www.imdb.com/title/tt0100222/" target="_blank">Naked Tango on IMDB</a>'),
                                               hr(),
                                               
                                               HTML("<h3>Gotan Project - La Revancha Del Tango (Full Album)</h3>"),
                                               uiOutput("gotan"),
                                               hr(),
                                               
                                               HTML("<h3>Josephine Baker dancing the original charleston</h3>"),
                                               uiOutput("josephonebaker1"),
                                               hr(),
                                               
                                               HTML("<h3>Joséphine Baker - Paris, Paris, Paris</h3>"),
                                               uiOutput("josephonebaker2"),
                                               hr(),
                                               
                                               HTML("<h3>Best of Joséphine Baker (full album)</h3>"),
                                               uiOutput("josephonebaker3"),
                                               hr(),
                                               ),
                                      #### Paris Tango GUI ####
                                      tabPanel(tags$h3("Paris Tango"),
                                               fluidRow(
                                                   column(6,
                                                          HTML("<h3>Paris Tango 2</h3>"),
                                                          uiOutput("paristango2"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 3</h3>"),
                                                          uiOutput("paristango3"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 4</h3>"),
                                                          uiOutput("paristango4"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 5</h3>"),
                                                          uiOutput("paristango5"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 6</h3>"),
                                                          uiOutput("paristango6"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 7</h3>"),
                                                          uiOutput("paristango7"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 8</h3>"),
                                                          uiOutput("paristango8"),
                                                          hr(),
                                                          
                                                          
                                                   ),
                                                   column(6,
                                                          HTML("<h3>Paris Tango 9</h3>"),
                                                          uiOutput("paristango9"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 10</h3>"),
                                                          uiOutput("paristango10"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 11</h3>"),
                                                          uiOutput("paristango11"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 12</h3>"),
                                                          uiOutput("paristango12"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 13***</h3>"),
                                                          uiOutput("paristango13"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 14</h3>"),
                                                          uiOutput("paristango14"),
                                                          hr(),
                                                          HTML("<h3>Paris Tango 15</h3>"),
                                                          uiOutput("paristango15"),
                                                          hr(),
                                                          
                                                   )
                                               )#fluidRow end
                                               
                                      ),#tab panel end
                                      #### Piccadilly Dance Orchestra ####
                                      tabPanel(tags$h3("Picadilly Dance Orchestra"),
                                               fluidRow(
                                                   column(6,
                                                          HTML("<h3>My Baby Just Cares for Me</h3>"),
                                                          uiOutput("piccadilly1"),
                                                          hr(),
                                                          HTML("<h3>There’s a Lull in My Life (feat. Louise Cookman)</h3>"),
                                                          uiOutput("piccadilly2"),
                                                          hr(),
                                                          HTML("<h3>Washing Dishes with My Sweetie (feat. Martin Wheatley)</h3>"),
                                                          uiOutput("piccadilly3"),
                                                          hr(),
                                                          HTML("<h3>The Moon Got in My Eyes (feat. Karla Beare)</h3>"),
                                                          uiOutput("piccadilly4"),
                                                          hr(),
                                                          HTML("<h3>Swing for Sale (feat. Colin Good)</h3>"),
                                                          uiOutput("piccadilly5"),
                                                          hr(),
                                                          HTML("<h3>Life Is Just a Bowl of Cherries (feat. The Three Bright Sparks  Martin Wheatley)</h3>"),
                                                          uiOutput("piccadilly6"),
                                                          hr(),
                                                          HTML("<h3>Marahuana (feat. Karla Beare)</h3>"),
                                                          uiOutput("piccadilly7"),
                                                          hr(),
                                                          
                                                          
                                                   ),
                                                   column(6,
                                                          HTML("<h3>Ever Since I Kissed Her on the Volga</h3>"),
                                                          uiOutput("piccadilly8"),
                                                          hr(),
                                                          HTML("<h3>If I Could Be with You (feat. Louise Cookman)</h3>"),
                                                          uiOutput("piccadilly9"),
                                                          hr(),
                                                          HTML("<h3>Sweet Sue, Just You</h3>"),
                                                          uiOutput("piccadilly10"),
                                                          hr(),
                                                          HTML("<h3>That Old Feeling (feat. Karla Beare)</h3>"),
                                                          uiOutput("piccadilly11"),
                                                          hr(),
                                                          HTML("<h3>Tea for Two (feat. Sophie Evans)</h3>"),
                                                          uiOutput("piccadilly12"),
                                                          hr(),
                                                          HTML("<h3>When Youre Smiling (feat. The Three Bright Sparks)</h3>"),
                                                          uiOutput("piccadilly13"),
                                                          hr(),
                                                          HTML("<h3>Blonde Women (feat. Karla Beare)</h3>"),
                                                          uiOutput("piccadilly14"),
                                                          hr(),
                                                          
                                                   ),
                                                   hr(),
                                                   HTML("<h3>YouTube playlist</h3>"),
                                                   uiOutput("piccadillyPlaylist"),
                                                   hr()
                                               )#fluidRow end
                                               
                                      ),#tab panel end
                                      #### Production Tracks GUI ####
                                      tabPanel(tags$h3("Production Tracks"),
                                               fluidRow(
                                                   column(6,
                                                          HTML("<h3>Orchestra Rio Rita (diretta dal maestro Michele Ortuso) - Dos lagrimas (Ortuso)</h3>"),
                                                          uiOutput("doslagrimas"),
                                                          hr()
                                                   ),
                                                   column(6,
                                                          HTML("<h3>title</h3>"),
                                                          uiOutput("fglkjsl"),
                                                          hr()
                                                          
                                                   )
                                               )#fluidRow end
                                               
                                      )#tab panel end
                                      
                                      
                                      
                                      
                          )#end of tabsetpanel
                 ),#Library tabpanel end
                 #### original music GUI ####
                 tabPanel(HTML("<h3>Original Music</h3>"),
                          HTML("<h3>Demo 1</h3>"),
                          uiOutput("demo1"),
                          hr(),
                          HTML("<h3>Demo 1 - accordion mix</h3>"),
                          uiOutput("demo1b"),
                          hr(),
                          HTML("<h3>Demo 2</h3>"),
                          uiOutput("demo2"),
                          hr(),
                          HTML("<h3>Demo 3</h3>"),
                          uiOutput("demo3"),
                          hr(),
                          HTML("<h3>Demo 3 - piano mix</h3>"),
                          uiOutput("demo3b"),
                          hr(),
                          HTML("<h3>Demo 4</h3>"),
                          uiOutput("demo4"),
                          hr(),
                          HTML("<h3>Demo 5</h3>"),
                          uiOutput("demo5"),
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
    
    output$badguyaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Bad Guy - Billie Eilish (Tango Style Cover) ft. Ariana Savalas.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$badRomance <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/VCTOpdlZJ8U" 
             title="YouTube video player" frameborder="0" allow="accelerometer; 
             autoplay; clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    output$badromanceaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Bad Romance - Vintage 1920s Gatsby Style Lady Gaga Cover ft. Ariana Savalas  Sarah Reich.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    
    output$smoothCriminal <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/cRRJIUI6-tY" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$smoothcriminalaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Smooth Criminal - Michael Jackson (Film Noir Style Cover) ft. Aubrey Logan.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    
    output$ganstaParadise <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/Rve03u7oEvI" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
             clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$gangstasaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Gangstas Paradise - Vintage 1920s Al Capone Style Coolio Cover ft. Robyn Adele Anderson.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    
    output$beautifulaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Beautiful - Christina Aguilera (Jazz Cover) ft. Martina DaSilva.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$dancingqueenaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Dancing Queen - Abba (1920s Hot Jazz Cover) ft. Gunhild Carling.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$dancingwithmyselfaudio <- renderUI(
        HTML('<audio controls>
                       <source src="Dancing With Myself - Billy Idol (Postmodern Jukebox Cover) ft. Chloe Feoranzo.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
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
    
    output$nakenTangoAudio <- renderUI(
        HTML('<audio controls>
                       <source src="Naked Tango Audio.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$josephonebaker1 <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/jEH6eDpjgRw" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$josephonebaker2 <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/NqFqpAAP94A" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    output$josephonebaker3 <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/-K0DuHtWCig" 
        title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    
    
    
    ####Paris Tango####
    output$paristango2 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-02.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango3 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-03.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango4 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-04.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango5 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-05.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango6 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-06.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango7 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-07.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango8 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-08.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango9 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-09.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango10 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-10.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango11 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-11.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango12 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-12.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango13 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-13.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango14 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-14.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$paristango15 <- renderUI(
        HTML('<audio controls>
                       <source src="Paris_Tango-15.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
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
    
    output$demo3 <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Saturn.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$demo3b <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Saturn Piano Mix.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$demo4 <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Neptune.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$demo5 <- renderUI(
        HTML('<audio controls>
                       <source src="Ring Around Pluto Piano Version.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    #### Piccadilly Dance Orchestra ####
    
    output$piccadilly1 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-1-My Baby Just Cares for Me.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly2 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-2-There’s a Lull in My Life (feat. Louise Cookman).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly3 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-3-Washing Dishes with My Sweetie (feat. Martin Wheatley).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly4 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-4-The Moon Got in My Eyes (feat. Karla Beare).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly5 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-5-Swing for Sale (feat. Colin Good).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly6 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-6-Life Is Just a Bowl of Cherries (feat. The Three Bright Sparks  Martin Wheatley).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly7 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-7-Marahuana (feat. Karla Beare).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly8 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-8-Ever Since I Kissed Her on the Volga.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly9 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-9-If I Could Be with You (feat. Louise Cookman).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly10 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-10-Sweet Sue, Just You.mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly11 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-11-That Old Feeling (feat. Karla Beare).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly12 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-12-Tea for Two (feat. Sophie Evans).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly13 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-13-When Youre Smiling (feat. The Three Bright Sparks).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadilly14 <- renderUI(
        HTML('<audio controls>
                       <source src="PiccadillyDanceOrch-14-Blonde Women (feat. Karla Beare).mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    output$piccadillyPlaylist <- renderUI(
        HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=OLAK5uy_m7IJLWn-paMoOg2fqQmAdKMt0qqoadSeU" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; 
             picture-in-picture" allowfullscreen></iframe>')
    )
    
    
    
    
    #### Production Tracks ####
    output$doslagrimas <- renderUI(
        HTML('<audio controls>
                       <source src="Orchestra Rio Rita (diretta dal maestro Michele Ortuso) - Dos lagrimas (Ortuso) [Cetra AA 474].mp3" type="audio/mpeg">
                       Your browser does not support the audio element. </audio>')
    )
    
    
    
    
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
