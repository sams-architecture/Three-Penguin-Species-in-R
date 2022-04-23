install.packages("ggplot2")
library(ggplot2)
install.packages("palmerpenguins")
library(palmerpenguins)

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species))

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species, size=species))

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, alpha=species))

ggplot(data=penguins) + 
  geom_line(mapping = aes(x=flipper_length_mm, y=body_mass_g, alpha=species))

ggplot(data=penguins) + 
  geom_line(mapping = aes(x=flipper_length_mm, y=body_mass_g, alpha=species), color="purple")

ggplot(data=penguins) + 
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data=penguins) + 
  geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype = species))

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species)) +
  facet_wrap(~species)

ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(color = species)) +
  facet_wrap(~species)

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species)) +
  facet_grid(sex~species)

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species)) +
  facet_grid(~species)

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species)) +
  facet_grid(~sex)

ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species))

ggsave("Three Penguin Species.png")

q()
