rm(list=ls())
library(RSiteCatalyst)
library(dplyr)
SCAuth("caiwenli@rccl.com:RCCI", "3e7a72d82de775fb55c31f4dcc51b4e0")

Oasis.ship <- QueueOvertime("rcciexcaliburprod",
                                 "2019-07-01",
                                 "2019-07-30",
                                 c("visits", "uniquevisitors", "revenue"),
                             segment.id = c("s300006910_59e4a689a5bb5773019e3f76", "s300006910_59c41d59c06c5c10c89f449d")) # Oasis only based on IP address_current
Oasis.ship.fix <- Oasis.ship[,c(1,9)]
colnames(Oasis.ship.fix) <- c("date","Oasis")

Constellation.ship <- QueueOvertime("rcciexcaliburprod",
                            "2019-07-01",
                            "2019-07-30",
                            c("visits", "uniquevisitors", "revenue"),
                            segment.id = c("s300006910_5a37eb6d1d43f6274e1980b6","s300006910_59c41d59c06c5c10c89f449d")) # Constellation only based on IP address_current
Constellation.ship.fix <- Constellation.ship[,c(1,9)]
colnames(Constellation.ship.fix) <- c("date","Constellation")

Serenade.ship <- QueueOvertime("rcciexcaliburprod",
                                    "2019-07-01",
                                    "2019-07-30",
                                    c("visits", "uniquevisitors", "revenue"),
                                    segment.id = c("s300006910_5a3c3869535e3b166819b18f","s300006910_59c41d59c06c5c10c89f449d")) # Serenade only based on IP address_current
Serenade.ship.fix <- Serenade.ship[,c(1,9)]
colnames(Serenade.ship.fix) <- c("date","Serenade")

Enchantment.ship <- QueueOvertime("rcciexcaliburprod",
                               "2019-07-01",
                               "2019-07-30",
                               c("visits", "uniquevisitors", "revenue"),
                               segment.id = c("s300006910_5a65f57601e823672540f285","s300006910_59c41d59c06c5c10c89f449d")) # Enchantment only based on IP address_current
Enchantment.ship.fix <- Enchantment.ship[,c(1,9)]
colnames(Enchantment.ship.fix) <- c("date","Enchantment")

Reflection.ship <- QueueOvertime("rcciexcaliburprod",
                                  "2019-07-01",
                                  "2019-07-30",
                                  c("visits", "uniquevisitors", "revenue"),
                                  segment.id = c("s300006910_5ab577805ef3a55946dce425","s300006910_59c41d59c06c5c10c89f449d")) # Reflection only based on IP address_current
Reflection.ship.fix <- Reflection.ship[,c(1,9)]
colnames(Reflection.ship.fix) <- c("date","Reflection")

Symphony.ship <- QueueOvertime("rcciexcaliburprod",
                                 "2019-07-01",
                                 "2019-07-30",
                                 c("visits", "uniquevisitors", "revenue"),
                                 segment.id = c("s300006910_5ab577e1c477fc1701401763","s300006910_59c41d59c06c5c10c89f449d")) # Symphony only based on IP address_current
Symphony.ship.fix <- Symphony.ship[,c(1,9)]
colnames(Symphony.ship.fix) <- c("date","Symphony")

Mariner.ship <- QueueOvertime("rcciexcaliburprod",
                               "2019-07-01",
                               "2019-07-30",
                               c("visits", "uniquevisitors", "revenue"),
                               segment.id = c("s300006910_5b520e794ecbca71d1f54df4","s300006910_59c41d59c06c5c10c89f449d")) # Mariner only based on IP address_current
Mariner.ship.fix <- Mariner.ship[,c(1,9)]
colnames(Mariner.ship.fix) <- c("date","Mariner")

Adventure.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5b929acef73f23559bfd263b","s300006910_59c41d59c06c5c10c89f449d")) # Adventure only based on IP Address_current
Adventure.ship.fix <- Adventure.ship[,c(1,9)]
colnames(Adventure.ship.fix) <- c("date","Adventure")


Equinox.ship <- QueueOvertime("rcciexcaliburprod",
                                "2019-07-01",
                                "2019-07-30",
                                c("visits", "uniquevisitors", "revenue"),
                                segment.id = c("s300006910_5ba108de11a9b40d60e3c3d7","s300006910_59c41d59c06c5c10c89f449d")) # Equinox only Based on IP Address_current
Equinox.ship.fix <- Equinox.ship[,c(1,9)]
colnames(Equinox.ship.fix) <- c("date","Equinox")

Brilliance.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5bae3a13e50ca00d616e1e26","s300006910_59c41d59c06c5c10c89f449d")) # Brilliance  only based on IP address_current
Brilliance.ship.fix <- Brilliance.ship[,c(1,9)]
colnames(Brilliance.ship.fix) <- c("date","Brilliance")

Majesty.ship <- QueueOvertime("rcciexcaliburprod",
                                 "2019-07-01",
                                 "2019-07-30",
                                 c("visits", "uniquevisitors", "revenue"),
                                 segment.id = c("s300006910_5bbcf4a4cfb2522b57b3d224","s300006910_59c41d59c06c5c10c89f449d")) # Majesty Only Based on IP Address_current
Majesty.ship.fix <- Majesty.ship[,c(1,9)]
colnames(Majesty.ship.fix) <- c("date","Majesty")

Allure.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5bd20966be6bf235d072f0f2","s300006910_59c41d59c06c5c10c89f449d")) # Allure only based on IP address_current
Allure.ship.fix <- Allure.ship[,c(1,9)]
colnames(Allure.ship.fix) <- c("date","Allure")

Edge.ship <- QueueOvertime("rcciexcaliburprod",
                             "2019-07-01",
                             "2019-07-30",
                             c("visits", "uniquevisitors", "revenue"),
                             segment.id = c("s300006910_5beef7c04618f61c4c0ebabb","s300006910_59c41d59c06c5c10c89f449d")) # Edge only based on IP address_current
Edge.ship.fix <- Edge.ship[,c(1,9)]
colnames(Edge.ship.fix) <- c("date","Edge")

Harmony.ship <- QueueOvertime("rcciexcaliburprod",
                           "2019-07-01",
                           "2019-07-30",
                           c("visits", "uniquevisitors", "revenue"),
                           segment.id = c("s300006910_5bf461955fe71e04abe23a0b","s300006910_59c41d59c06c5c10c89f449d")) # Harmony only based on IP address_current
Harmony.ship.fix <- Harmony.ship[,c(1,9)]
colnames(Harmony.ship.fix) <- c("date","Harmony")

Pursuit.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5c11383bb81a6c1660a4faff","s300006910_59c41d59c06c5c10c89f449d")) # Pursuit only based on IP Address_current
Pursuit.ship.fix <- Pursuit.ship[,c(1,9)]
colnames(Pursuit.ship.fix) <- c("date","Pursuit")

Vision.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5c365c990d9f0c71f0ac9604","s300006910_59c41d59c06c5c10c89f449d")) # Vision only based on IP Address_current
Vision.ship.fix <- Vision.ship[,c(1,9)]
colnames(Vision.ship.fix) <- c("date","Vision")

Millennium.ship <- QueueOvertime("rcciexcaliburprod",
                             "2019-07-01",
                             "2019-07-30",
                             c("visits", "uniquevisitors", "revenue"),
                             segment.id = c("s300006910_5c3661517d03f6237a695ea9","s300006910_59c41d59c06c5c10c89f449d")) # Millennium only based on IP Address_current
Millennium.ship.fix <- Millennium.ship[,c(1,9)]
colnames(Millennium.ship.fix) <- c("date","Millennium")

Quantum.ship <- QueueOvertime("rcciexcaliburprod",
                                 "2019-07-01",
                                 "2019-07-30",
                                 c("visits", "uniquevisitors", "revenue"),
                                 segment.id = c("s300006910_5c36662f9e1245499f62e70c","s300006910_59c41d59c06c5c10c89f449d")) # Quantum only based on IP Address_current
Quantum.ship.fix <- Quantum.ship[,c(1,9)]
colnames(Quantum.ship.fix) <- c("date","Quantum")

Navigator.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5c59a25dc8976708f490ad3e","s300006910_59c41d59c06c5c10c89f449d")) # Navigator only based on IP address_current
Quantum.ship.fix <- Quantum.ship[,c(1,9)]
colnames(Quantum.ship.fix) <- c("date","Quantum")

Summit.ship <- QueueOvertime("rcciexcaliburprod",
                                "2019-07-01",
                                "2019-07-30",
                                c("visits", "uniquevisitors", "revenue"),
                                segment.id = c("s300006910_5c59a3f90d9f0c71f0777def","s300006910_59c41d59c06c5c10c89f449d")) # Summit only based on IP address_current
Summit.ship.fix <- Summit.ship[,c(1,9)]
colnames(Summit.ship.fix) <- c("date","Summit")

Spectrum.ship <- QueueOvertime("rcciexcaliburprod",
                             "2019-07-01",
                             "2019-07-30",
                             c("visits", "uniquevisitors", "revenue"),
                             segment.id = c("s300006910_5cac9e5f9e12451d042e5056","s300006910_59c41d59c06c5c10c89f449d")) # Spectrum only based on IP Address_current
Spectrum.ship.fix <- Spectrum.ship[,c(1,9)]
colnames(Spectrum.ship.fix) <- c("date","Spectrum")


Ovation.ship <- QueueOvertime("rcciexcaliburprod",
                               "2019-07-01",
                               "2019-07-30",
                               c("visits", "uniquevisitors", "revenue"),
                               segment.id = c("s300006910_5ceec3dfd4e3251e3d21e545","s300006910_59c41d59c06c5c10c89f449d")) # Ovation Only Based on IP Address _current
Ovation.ship.fix <- Ovation.ship[,c(1,9)]
colnames(Ovation.ship.fix) <- c("date","Ovation")

Independence.ship <- QueueOvertime("rcciexcaliburprod",
                              "2019-07-01",
                              "2019-07-30",
                              c("visits", "uniquevisitors", "revenue"),
                              segment.id = c("s300006910_5b929c7222fa995faeee4a9e","s300006910_59c41d59c06c5c10c89f449d")) # Independence only based on IP Address _current
Independence.ship.fix <- Independence.ship[,c(1,9)]
colnames(Independence.ship.fix) <- c("date","Independence")


Navigator.ship <- QueueOvertime("rcciexcaliburprod",
                                "2019-07-01",
                                "2019-07-30",
                                c("visits", "uniquevisitors", "revenue"),
                                segment.id = c("s300006910_5c59a25dc8976708f490ad3e","s300006910_59c41d59c06c5c10c89f449d")) # Navigator only based on IP Address _current
Navigator.ship.fix <- Navigator.ship[,c(1,9)]
colnames(Navigator.ship.fix) <- c("date","Navigator")

library(tidyverse)
all.ship.with.app.unique.visitor <- list(Oasis.ship.fix,
     Constellation.ship.fix,
     Serenade.ship.fix,
     Enchantment.ship.fix,
     Reflection.ship.fix,
     Symphony.ship.fix,
     Mariner.ship.fix,
     Adventure.ship.fix,
     Equinox.ship.fix,
     Brilliance.ship.fix,
     Majesty.ship.fix,
     Allure.ship.fix,
     Edge.ship.fix,
     Harmony.ship.fix,
     Pursuit.ship.fix,
     Vision.ship.fix,
     Millennium.ship.fix,
     Quantum.ship.fix,
     Navigator.ship.fix,
     Summit.ship.fix,
     Spectrum.ship.fix,
     Ovation.ship.fix,
     Independence.ship.fix) %>% reduce(left_join, by = "date")

write.csv(all.ship.with.app.unique.visitor,"C:/Users/7005773/Desktop/Work/all.ship.with.app.unique.visitor.csv")


