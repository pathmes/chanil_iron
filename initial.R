library(haven)
library(lubridate)
library(dplyr)
batti <- read_sav("Batticaloa 27.05.24.sav")

batti %>% 
  group_by(treatment_label) %>% 
  summarise(n())


batti %>% 
  select(Patient_No, 
         treatment_label, 
         Date_of_recruitment, EDD) %>% 
  arrange(Patient_No) %>% print(n = 65)

batti %>% 
  select(Patient_No, 
         treatment_label, 
         Date_of_recruitment, EDD) %>% 
  arrange(EDD) %>% print(n = 65)


