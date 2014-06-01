shinyUI(pageWithSidebar(
  headerPanel('Cancer'),
  sidebarPanel(
    numericInput('ngrupo', 'Numero de Grupos', value=2,min=1,max=100,step=1),
    numericInput('grupo','Grupo de Interesse',value=1,min=1,max=100,step=1)

  ),
  mainPanel(
    
    h4("SMR dos grupos"),
    plotOutput("plot1"),
    
    h4("Tabela dos Canceres"),
    tableOutput("tab1")

  )
))