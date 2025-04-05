# other map image sources
?get_map

#demo
corvallis_map <- get_map(corvallis, zoom = 13, maptype = "toner-2010", source = "stamen")

#specifying default data and aesthetics
?ggmap

ggmap(ggmap, extent = "panel", base_layer, maprange = FALSE, legend = "right", padding = 0.02, darken = c(0, "black"), ...)

#code !!!
ggmap(corvallis_map, base_layer = ggplot(sales, aes(lon, lat))) + geompoint() + facet_wrap(~ condition)

corvallis <- c(lon = -123.2620, lat = 44.5646)

# Add source and maptype to get toner map from Stamen Maps
corvallis_map_bw <- get_map(corvallis, source = "stamen", maptype = "toner", zoom = 13)

# Edit to display toner map
ggmap(corvallis_map_bw) +
  geom_point(aes(lon, lat, color = year_built), data = sales)