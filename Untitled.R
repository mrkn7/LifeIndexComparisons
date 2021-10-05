#Necessary libraries
library(dplyr)
library(readr)
library(tidyverse)
library(magrittr)
library(ggplot2)
library(tidyr)
library(leaflet)


#ARRANGE DATA SET
dataset <- read.csv("lifeindexbycountries.csv")
dataset %<>% rename(Country = ?..Country) 
dataset %<>% arrange(dataset, Country)

lng_lat <- read.table("long_lat_cont.txt", header = T)

cbind(dataset,lng_lat)

dataset <- cbind(dataset,lng_lat)
dataset1 <- dataset %>% select(., -c(latitude, longitude, Continent))


#Analysis Part

#Quality of life Index
ggplot(data=dataset,aes(x=Continent, y=mean(Quality.of.Life.Index), fill=Country)) +
        geom_bar(stat="identity")+
        theme_minimal()+ labs(title = "Quality life index for Continent and Countries",
                              x = "Continents", y = "Total Quality of Life Index")
      

#Purchasing Power Index      
ggplot(data=dataset,aes(x=Continent, y=(Purchasing.Power.Index), fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal()+ labs(title = "Purchasing Power Index for Continent and Countries",
                                x = "Continents", y = "Total Purchasing Power Index")
#Safety Index      
ggplot(data=dataset,aes(x=Continent, y=Safety.Index, fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal() + labs(title = "Safety index for Continent and Countries",
                                 x = "Continents", y = "Total Safety Index")
     

#Health Care         
ggplot(data=dataset,aes(x=Continent, y=Health.Care.Index, fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal() + labs(title = "Health Care index for Continent and Countries",
                                 x = "Continents", y = "Total Health Care Index")
#Cost of Living      
ggplot(data=dataset,aes(x=Continent, y=Cost.of.Living.Index, fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal() + labs(title = "Cost of Living Index for Continent and Countries",
                                 x = "Continents", y = "Total Cost of Living Index")
#Traffic Commute Time
ggplot(data=dataset,aes(x=Continent, y=Traffic.Commute.Time.Index, fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal() + labs(title = "Traffic Commute Index for Continent and Countries",
                                 x = "Continents", y = "Total Traffic Commute Index")
        
#Pollution
ggplot(data=dataset,aes(x=Continent, y=Pollution.Index, fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal() + labs(title = "Pollution index for Continent and Countries",
                                 x = "Continents", y = "Total Pollution Index")
#Climate 
ggplot(data=dataset,aes(x=Continent, y=Climate.Index, fill=Country)) +
          geom_bar(stat="identity")+
          theme_minimal() + labs(title = "Climate index for Continent and Countries",
                                 x = "Continents", y = "Total Climate Index")
            
  
  
  
  
  
  
  
  
  
  