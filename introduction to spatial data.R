library(ggmap)

# coordinates for location of interest
nyc <- c(lon = -74.0059, lat = 40.7128)

# 1. download the relevant map
nyc_map <- get_map(location = nyc, zoom = 10)

# 2. Display the map
ggmap(nyc_map)


# Look at head() of sales
head(sales)

# Swap out call to ggplot() with call to ggmap()
ggmap(corvallis_map) + geom_point(aes(lon, lat), data = sales)

#map color to year_built
ggmap(corvallis_map) + geom_point(aes(lon, lat, color = year_built), data = sales)

#map size to bedrooms
ggmap(corvallis_map) +
  geom_point(aes(lon, lat, size = bedrooms), data = sales)