# Countries_world_map
![Example](https://simplewidgets.dev/wp-content/uploads/2021/07/countries_world_map.png)

Online example is available at [countriesworldmap.simplewidgets.dev](https://countriesworldmap.simplewidgets.dev "World Map Example | simplewidgets.dev")

This package provides an easy to implement World Map (or any other country of choice) which is fully customizable. It started with only a simple world map but the goal is to create a customizable map for each country.
In this case "customizable" means the ability to change the color of a country/ state.

## About this package
This flutter package draws a map of choice using the CustomPainter. These maps can be quite big so please read "Perfomance" below.


### Available maps
#### World & continents
| World Maps | Continents |
|--|--|
| <ul><li>[ ] Normal World Map </li><li>[x] Simple World Map</li> <li>[ ] Geo World Map</li></ul> | <ul><li>[ ] Africa </li><li>[ ] Asia </li> <li>[ ] Australia/Oceania </li> <li>[ ] Europe </li> <li>[ ] Middle East </li> <li>[ ] North America </li> <li>[ ] South America </li></ul> 


### Need a specific country?
You can request a specific country by creating a new issue or send an email at hello@simplewidgets.dev 
Please do keep in mind this is a side project. When I have time I will create the map as soon as possible.





## Tips for UI
1. Wrap the WorldMap in an InteractiveViewer widget.

    Using InteractiveView enables you to zoom in and out on specific countries as done in the [online example](https://countriesworldmap.simplewidgets.dev "World Map Example | simplewidgets.dev"). In the example the InteractiveViewer has a maxScale of 75.

2. Set the WorldMap to 92% of the available width to make it look more centered.

3. Use your own CustomPaint.
     
     If the WorldMap/ CountryMap widget does not give the results you would like to see, you can also use the WorldMapPainter/ CountryPainter in your own defined CustomPaint. This will give you all the paths with the option to custom color each country.

Simply add *Countryname*Painter to your CustomPaint widget and you are ready to go.

## Performance
Some of the maps are really big, so (re)building the widget can be expensive. That's why the default Widget uses a RepaintBoundry to prevent it from unnecessary repaints. If you change a Country Color and call SetState() the widget will repaint.

## Like to contribute?
Feel free to help us improve this package by creating issues, pull request etc. Together we can make a great map for data visualization and other use cases. For any questions you can email hello@simplewidgets.dev

## Countries with Maps


| COUNTRY                                                    | ISO | SUPPORTED |
| ---------------------------------------------------------- | --- | --------- |
| Afghanistan                                                | AF  |           |
| Albania                                                    | AL  |           |
| Algeria                                                    | DZ  |           |
| American Samoa                                             | AS  |           |
| Andorra                                                    | AD  | ✅         |
| Angola                                                     | AO  | ✅         |
| Anguilla                                                   | AI  |           |
| Antarctica                                                 | AQ  |           |
| Antigua and Barbuda                                        | AG  |           |
| Argentina                                                  | AR  |           |
| Armenia                                                    | AM  | ✅         |
| Aruba                                                      | AW  |           |
| Australia                                                  | AU  |           |
| Austria                                                    | AT  |           |
| Azerbaijan                                                 | AZ  |           |
| Bahamas (the)                                              | BS  | ✅         |
| Bahrain                                                    | BH  | ✅         |
| Bangladesh                                                 | BD  | ✅         |
| Barbados                                                   | BB  |           |
| Belarus                                                    | BY  | ✅         |
| Belgium                                                    | BE  | ✅         |
| Belize                                                     | BZ  |           |
| Benin                                                      | BJ  |           |
| Bermuda                                                    | BM  |           |
| Bhutan                                                     | BT  | ✅         |
| Bolivia (Plurinational State of)                           | BO  | ✅         |
| Bonaire, Sint Eustatius and Saba                           | BQ  |           |
| Bosnia and Herzegovina                                     | BA  |           |
| Botswana                                                   | BW  | ✅         |
| Bouvet Island                                              | BV  |           |
| Brazil                                                     | BR  | ✅         |
| British Indian Ocean Territory (the)                       | IO  |           |
| Brunei Darussalam                                          | BN  | ✅         |
| Bulgaria                                                   | BG  | ✅         |
| Burkina Faso                                               | BF  | ✅         |
| Burundi                                                    | BI  | ✅         |
| Cabo Verde                                                 | CV  | ✅         |
| Cambodia                                                   | KH  |           |
| Cameroon                                                   | CM  | ✅         |
| Canada                                                     | CA  | ✅         |
| Cayman Islands (the)                                       | KY  |           |
| Central African Republic (the)                             | CF  | ✅         |
| Chad                                                       | TD  | ✅         |
| Chile                                                      | CL  |           |
| China                                                      | CN  | ✅         |
| Christmas Island                                           | CX  |           |
| Cocos (Keeling) Islands (the)                              | CC  |           |
| Colombia                                                   | CO  | ✅         |
| Comoros (the)                                              | KM  |           |
| Congo (the Democratic Republic of the)                     | CD  |           |
| Congo (the)                                                | CG  |           |
| Cook Islands (the)                                         | CK  |           |
| Costa Rica                                                 | CR  | ✅         |
| Croatia                                                    | HR  | ✅         |
| Cuba                                                       | CU  | ✅         |
| Curaçao                                                    | CW  |           |
| Cyprus                                                     | CY  | ✅         |
| Czechia                                                    | CZ  | ✅         |
| Côte d'Ivoire                                              | CI  |           |
| Denmark                                                    | DK  | ✅         |
| Djibouti                                                   | DJ  | ✅         |
| Dominica                                                   | DM  |           |
| Dominican Republic (the)                                   | DO  | ✅         |
| Ecuador                                                    | EC  | ✅         |
| Egypt                                                      | EG  | ✅         |
| El Salvador                                                | SV  | ✅         |
| Equatorial Guinea                                          | GQ  |           |
| Eritrea                                                    | ER  |           |
| Estonia                                                    | EE  | ✅         |
| Eswatini                                                   | SZ  |           |
| Ethiopia                                                   | ET  |           |
| Falkland Islands (the) \[Malvinas\]                        | FK  |           |
| Faroe Islands (the)                                        | FO  | ✅         |
| Fiji                                                       | FJ  |           |
| Finland                                                    | FI  | ✅         |
| France                                                     | FR  | ✅         |
| French Guiana                                              | GF  |           |
| French Polynesia                                           | PF  |           |
| French Southern Territories (the)                          | TF  |           |
| Gabon                                                      | GA  |           |
| Gambia (the)                                               | GM  |           |
| Georgia                                                    | GE  | ✅         |
| Germany                                                    | DE  | ✅         |
| Ghana                                                      | GH  |           |
| Gibraltar                                                  | GI  |           |
| Greece                                                     | GR  | ✅         |
| Greenland                                                  | GL  |           |
| Grenada                                                    | GD  |           |
| Guadeloupe                                                 | GP  |           |
| Guam                                                       | GU  |           |
| Guatemala                                                  | GT  | ✅         |
| Guernsey                                                   | GG  |           |
| Guinea                                                     | GN  | ✅         |
| Guinea-Bissau                                              | GW  |           |
| Guyana                                                     | GY  |           |
| Haiti                                                      | HT  | ✅         |
| Heard Island and McDonald Islands                          | HM  |           |
| Holy See (the)                                             | VA  |           |
| Honduras                                                   | HN  | ✅         |
| Hong Kong                                                  | HK  |           |
| Hungary                                                    | HU  | ✅         |
| Iceland                                                    | IS  |           |
| India                                                      | IN  |           |
| Indonesia                                                  | ID  |           |
| Iran (Islamic Republic of)                                 | IR  | ✅         |
| Iraq                                                       | IQ  | ✅         |
| Ireland                                                    | IE  | ✅         |
| Isle of Man                                                | IM  |           |
| Israel                                                     | IL  |           |
| Italy                                                      | IT  |           |
| Jamaica                                                    | JM  | ✅         |
| Japan                                                      | JP  | ✅         |
| Jersey                                                     | JE  |           |
| Jordan                                                     | JO  |           |
| Kazakhstan                                                 | KZ  | ✅         |
| Kenya                                                      | KE  | ✅         |
| Kiribati                                                   | KI  |           |
| Korea (the Democratic People's Republic of)                | KP  |           |
| Korea (the Republic of)                                    | KR  | ✅         |
| Kuwait                                                     | KW  |           |
| Kyrgyzstan                                                 | KG  | ✅         |
| Lao People's Democratic Republic (the)                     | LA  | ✅         |
| Latvia                                                     | LV  | ✅         |
| Lebanon                                                    | LB  |           |
| Lesotho                                                    | LS  |           |
| Liberia                                                    | LR  |           |
| Libya                                                      | LY  |           |
| Liechtenstein                                              | LI  | ✅         |
| Lithuania                                                  | LT  | ✅         |
| Luxembourg                                                 | LU  | ✅         |
| Macao                                                      | MO  |           |
| Madagascar                                                 | MG  |           |
| Malawi                                                     | MW  |           |
| Malaysia                                                   | MY  |           |
| Maldives                                                   | MV  |           |
| Mali                                                       | ML  | ✅         |
| Malta                                                      | MT  |           |
| Marshall Islands (the)                                     | MH  |           |
| Martinique                                                 | MQ  |           |
| Mauritania                                                 | MR  |           |
| Mauritius                                                  | MU  |           |
| Mayotte                                                    | YT  |           |
| Mexico                                                     | MX  | ✅         |
| Micronesia (Federated States of)                           | FM  |           |
| Moldova (the Republic of)                                  | MD  | ✅         |
| Monaco                                                     | MC  |           |
| Mongolia                                                   | MN  |           |
| Montenegro                                                 | ME  | ✅         |
| Montserrat                                                 | MS  |           |
| Morocco                                                    | MA  | ✅         |
| Mozambique                                                 | MZ  |           |
| Myanmar                                                    | MM  | ✅         |
| Namibia                                                    | NA  |           |
| Nauru                                                      | NR  |           |
| Nepal                                                      | NP  | ✅         |
| Netherlands (the)                                          | NL  | ✅         |
| New Caledonia                                              | NC  |           |
| New Zealand                                                | NZ  | ✅         |
| Nicaragua                                                  | NI  | ✅         |
| Niger (the)                                                | NE  |           |
| Nigeria                                                    | NG  | ✅         |
| Niue                                                       | NU  |           |
| Norfolk Island                                             | NF  |           |
| Northern Mariana Islands (the)                             | MP  |           |
| Norway                                                     | NO  | ✅         |
| Oman                                                       | OM  | ✅         |
| Pakistan                                                   | PK  | ✅         |
| Palau                                                      | PW  |           |
| Palestine, State of                                        | PS  |           |
| Panama                                                     | PA  | ✅         |
| Papua New Guinea                                           | PG  |           |
| Paraguay                                                   | PY  | ✅         |
| Peru                                                       | PE  |           |
| Philippines (the)                                          | PH  |           |
| Pitcairn                                                   | PN  |           |
| Poland                                                     | PL  | ✅         |
| Portugal                                                   | PT  | ✅         |
| Puerto Rico                                                | PR  |           |
| Qatar                                                      | QA  | ✅         |
| Republic of North Macedonia                                | MK  | ✅         |
| Romania                                                    | RO  | ✅         |
| Russian Federation (the)                                   | RU  | ✅         |
| Rwanda                                                     | RW  | ✅         |
| Réunion                                                    | RE  |           |
| Saint Barthélemy                                           | BL  |           |
| Saint Helena, Ascension and Tristan da Cunha               | SH  |           |
| Saint Kitts and Nevis                                      | KN  |           |
| Saint Lucia                                                | LC  |           |
| Saint Martin (French part)                                 | MF  |           |
| Saint Pierre and Miquelon                                  | PM  |           |
| Saint Vincent and the Grenadines                           | VC  |           |
| Samoa                                                      | WS  |           |
| San Marino                                                 | SM  | ✅         |
| Sao Tome and Principe                                      | ST  |           |
| Saudi Arabia                                               | SA  | ✅         |
| Senegal                                                    | SN  |           |
| Serbia                                                     | RS  | ✅         |
| Seychelles                                                 | SC  |           |
| Sierra Leone                                               | SL  |           |
| Singapore                                                  | SG  | ✅         |
| Sint Maarten (Dutch part)                                  | SX  |           |
| Slovakia                                                   | SK  | ✅         |
| Slovenia                                                   | SI  | ✅         |
| Solomon Islands                                            | SB  |           |
| Somalia                                                    | SO  |           |
| South Africa                                               | ZA  |           |
| South Georgia and the South Sandwich Islands               | GS  |           |
| South Sudan                                                | SS  |           |
| Spain                                                      | ES  |           |
| Sri Lanka                                                  | LK  | ✅         |
| Sudan (the)                                                | SD  |           |
| Suriname                                                   | SR  |           |
| Svalbard and Jan Mayen                                     | SJ  |           |
| Sweden                                                     | SE  | ✅         |
| Switzerland                                                | CH  |           |
| Syrian Arab Republic                                       | SY  | ✅         |
| Taiwan (Province of China)                                 | TW  | ✅         |
| Tajikistan                                                 | TJ  | ✅         |
| Tanzania, United Republic of                               | TZ  |           |
| Thailand                                                   | TH  | ✅         |
| Timor-Leste                                                | TL  |           |
| Togo                                                       | TG  |           |
| Tokelau                                                    | TK  |           |
| Tonga                                                      | TO  |           |
| Trinidad and Tobago                                        | TT  |           |
| Tunisia                                                    | TN  |           |
| Turkey                                                     | TR  | ✅         |
| Turkmenistan                                               | TM  |           |
| Turks and Caicos Islands (the)                             | TC  |           |
| Tuvalu                                                     | TV  |           |
| Uganda                                                     | UG  | ✅         |
| Ukraine                                                    | UA  | ✅         |
| United Arab Emirates (the)                                 | AE  | ✅         |
| United Kingdom of Great Britain and Northern Ireland (the) | GB  |           |
| United States Minor Outlying Islands (the)                 | UM  |           |
| United States of America (the)                             | US  |           |
| Uruguay                                                    | UY  | ✅         |
| Uzbekistan                                                 | UZ  | ✅         |
| Vanuatu                                                    | VU  |           |
| Venezuela (Bolivarian Republic of)                         | VE  |           |
| Viet Nam                                                   | VN  |           |
| Virgin Islands (British)                                   | VG  |           |
| Virgin Islands (U.S.)                                      | VI  |           |
| Wallis and Futuna                                          | WF  |           |
| Western Sahara                                             | EH  |           |
| Yemen                                                      | YE  | ✅         |
| Zambia                                                     | ZM  |           |
| Zimbabwe                                                   | ZW  |           |
| Åland Islands                                              | AX  |           |