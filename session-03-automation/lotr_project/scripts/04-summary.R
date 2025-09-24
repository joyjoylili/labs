

words_summary <- lotr_dat %>%
  group_by(Film, Species) %>%
  summarise(words_total = 
              sum(Words)) 

# Save to outputs/tables/
write_tsv(words_summary, "lotr_project/outputs/tables/words_summary.tsv")
