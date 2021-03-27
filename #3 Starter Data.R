starters <- read_xlsx(file.choose(), sheet=1)

summary(starters)

install.packages("readxl")

colnames(starters) <- c("Player", "Team", "Ks", "BBs", "HR", "BABIP", 
                        "EV", "ERA", "xFIP", "WAR", "O_SwingRate", 
                        "Z-SwingRate", "SwingRate", "O-ContactRate", "Z-ContactRate",
                        "ContactRate", "ZoneRare", "HardHitRate", "WhiffRate", "Type")
bsbl <- ggplot(data=starters, aes(x=xFIP, y = WAR))
bsbl + geom_boxplot(size = .5, aes(color =  Player)) + 
  geom_point(size = 3, alpha = .5, color = "red")

bsbl_1 <- ggplot(data=starters, aes(x=xFIP, y = WAR))
bsbl_1 + 
  geom_smooth(color = "purple") + 
  ggtitle ("#3 Starter WAR and xFIP Distribution") + 
  geom_point(size = 5, alpha = .5, aes(color = Type )) + 
  theme(axis.title.x= element_text(size = 15), 
        axis.title.y = element_text(size = 15), 
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10), 
        plot.title = element_text(size = 18))
  
?ggplot2
bsbl_2 <- ggplot(data=starters, aes(x=WhiffRate, y = HardHitRate))
bsbl_2 + 
  geom_smooth(color = "purple") + 
  ggtitle ("Relationship of Whiff % and Hard Hit % of a #3 Starter") + 
  geom_point(size = 3, alpha = .9, aes(color = Player, shape = Player)) + 
  scale_shape_manual(values = c(26:30,26:30,26:30,26:30,26:30,26:30)) + 
  scale_color_manual(values = c(1:30)) + 
  theme(axis.title.x= element_text(size = 15), 
        axis.title.y = element_text(size = 15), 
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10), 
        plot.title = element_text(size = 18))

bsbl_3 <- ggplot(data=starters, aes(x=WhiffRate, y = HardHitRate))
bsbl_3 + 
  geom_smooth(color = "purple") + 
  ggtitle ("Relationship of Whiff % and Hard Hit % of a #3 Starter") + 
  geom_point(size = 3, alpha = .9, aes(color = Age, shape = Player)) + 
  scale_shape_manual(values = c(26:30,26:30,26:30,26:30,26:30,26:30)) + 
  scale_color_manual(values = c(1:30)) + 
  theme(axis.title.x= element_text(size = 15), 
        axis.title.y = element_text(size = 15), 
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10), 
        plot.title = element_text(size = 18))

install.packages("viridis")
