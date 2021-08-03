# Countries_world_map
![Example](https://simplewidgets.dev/wp-content/uploads/2021/07/countries_world_map.png)

Online example is available at [example.simplewidgets.dev](https://examples.simplewidgets.dev "World Map Example | simplewidgets.dev")

## About this package
This flutter package draws a world map using the CustomPainter. Over 450 different paths are used to paint all the borders. The widget "WorldMap" has as few inputFields.

- defaultCountryColor
    This takes in a Color that will be the default color for all countries.

- countryColors
    This takes in a CountryColors class. In this class you can assign a custom Color to each country using the country codes. For example: 
    - uS = United States
    - nL = Netherlands etc.
    
    There are 250 different countries / islands to color.

- backgroundColor
    This is the color of the Canvas. By default, this will be transparent.


### WorldMapPainter
If the WorldMap widget does not give the results you would like to see, you can also use the WorldMapPainter in your own defined CustomPainter. This will give you all the paths with the option to custom color each country.


## Tips for UI
1. Wrap the WorldMap in an InteractiveViewer widget to zoom in and out on specific countries as done in the [online example](https://examples.simplewidgets.dev "World Map Example | simplewidgets.dev"). In the example the InteractiveViewer has a maxScale of 75.
2. Set the WorldMap to 92% of the available width to make it look more centered.



## Memory usage
The map is big, so (re)building the widget can be expensive. That's why the WorldMap uses a RepaintBoundry to prevent it from unnecessary repaints. If you change a Country Color and call SetState() the widget will repaint.

#### ! Warning
On the iPad Pro 2018 there has been found some memory issues when re-painting the World Map many times in a short time period. If you have memory issues, you might want to limit the possible repaints.


## Like to contribute?
Feel free to help us improve this package by creating issues, pull request etc. Together we can make a great map for data visualization and other use cases. For any questions you can email hello@simplewidgets.dev


