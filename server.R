palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
require(RCurl)
#source(getURL("https://raw.githubusercontent.com/Recca2012/mapas/master/mapas.R"))
u <- "https://raw.githubusercontent.com/Recca2012/grupos/master/mapas.R"
script <- getURL(u, ssl.verifypeer = FALSE)
eval(parse(text = script))

shinyServer(function(input, output, session) {

  shape2<-reactive({shape})
  dados2<-reactive({SMR})
  banco.grupos2<-reactive({banco.grupos2})
  
  output$plot1 <- renderPlot({
    plotar.grupos(banco=dados2(),cluster=banco.grupos2(),ngrupo=input$ngrupo,grupo=input$grupo,shape=shape2())
  })
})