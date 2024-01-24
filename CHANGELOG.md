## 1.1.1
Update README.md to reflect correct example link as mentioned here: [Github Issue: example website is down](https://github.com/simplewidgets/countries_world_map/issues/18)

## 1.1.0
New mercator world map and the ability to add border colors to each map. 
Special thanks to [@cgaisl](https://github.com/cgaisl "GitHub") for this contribution.

## 1.0.1
Added required changes for 140 pub points.

## 1.0.0
🌍🌏🌎  🥳
In this release 136 countries have been added.
The painter has been replaced with an adaptable one which takes a string of instructions as input.
Please read the README.md on how the get started.

! Sadly other versions will break with this new release.

## 0.0.8
Problem: release build failed, solved.
See: https://github.com/flutter/flutter/issues/94461 for more info.

Please note: this is a temporary release for fixing the issiue only.
There will be a release soon which also improves performance.

## 0.0.6
Added Japan, the Netherlands and the USA to the supported countries 🎉

## 0.0.5
The worldmap got a callback function. Clicking on a country will return the country code and the details of the tap.

The Netherlands has been added as a country map.
With future releases more and more maps will be added.
See the README.md to see all available maps at this moment.

## 0.0.4
There is an online example available now at example.simplewidgets.dev. This has been added to the README.

## 0.0.3
Added documentation comments to each country code. 

## 0.0.2
Added comments for documentation.

## 0.0.1

First release. 
At this moment the world map works as expected. It is possible to assign a color to each country. The memory usage seems good, however I have found some problems on the iPad Pro 2018.  

"thread #23, name = 'DartWorker', stop reason = EXC_RESOURCE RESOURCE_TYPE_MEMORY (limit=2867 MB, unused=0x0)"
This only occurs by randomly assign colors to each country at a very highspeed. For normal usage no problems has been found.
