# compute raw density values
library(ggplot2)
library(dplyr)

compaction_data <- soiltestr::example_proctor_data %>%
  soiltestr::add_physical_properties()

# a single sample
standard_data <- filter(compaction_data, compaction_effort == "standard")
ggproctor(standard_data, identifier = compaction_effort)

# two samples on same plot; annotations turned off
ggproctor(compaction_data, identifier = compaction_effort, annotate = FALSE)

# facet and leave data annotations on but turn off 90% saturation line
ggproctor(compaction_data, identifier = compaction_effort, sat_90 = FALSE)+
  facet_wrap(~compaction_effort)

# change color of both curves to the same value
ggproctor(compaction_data, sat_90 = FALSE,
           identifier = compaction_effort, color = 'darkgreen')+
  facet_wrap(~compaction_effort)
