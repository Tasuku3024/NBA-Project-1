nba %>%
+     ggplot(aes(x = USG, y = TS, color = Player)) +
+     geom_point(aes(size = TS))+
+     geom_hline(yintercept = mean(nba$TS), linetype = "dashed", color = "gray80") +
+     geom_vline(xintercept = mean(nba$USG), linetype = "dashed", color = "gray80") +
+     geom_text_repel(aes(label = Player), size = 3, color = "black") +
+     theme_classic()