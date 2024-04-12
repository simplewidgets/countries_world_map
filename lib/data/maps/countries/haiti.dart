import 'package:flutter/material.dart';

class SMapHaitiColors {
  /// Sud-Est
  Color? htSE;

  /// Ouest
  Color? htOU;

  /// Nord
  Color? htND;

  /// Nord-Est
  Color? htNE;

  /// Centre
  Color? htCE;

  /// L'Artibonite
  Color? htAR;

  /// Sud
  Color? htSD;

  /// Nord-Ouest
  Color? htNO;

  /// Nippes
  Color? htNI;

  /// Grand'Anse
  Color? htGA;
  SMapHaitiColors({
    this.htSE,
    this.htOU,
    this.htND,
    this.htNE,
    this.htCE,
    this.htAR,
    this.htSD,
    this.htNO,
    this.htNI,
    this.htGA,
  });
  Map<String, Color?> toMap() {
    return {
      "HT-SE": htSE,
      "HT-OU": htOU,
      "HT-ND": htND,
      "HT-NE": htNE,
      "HT-CE": htCE,
      "HT-AR": htAR,
      "HT-SD": htSD,
      "HT-NO": htNO,
      "HT-NI": htNI,
      "HT-GA": htGA,
    };
  }

  static SMapHaitiColors fromMap(Map<String, Color?> map) {
    return SMapHaitiColors(
      htSE: map["HT-SE"],
      htOU: map["HT-OU"],
      htND: map["HT-ND"],
      htNE: map["HT-NE"],
      htCE: map["HT-CE"],
      htAR: map["HT-AR"],
      htSD: map["HT-SD"],
      htNO: map["HT-NO"],
      htNI: map["HT-NI"],
      htGA: map["HT-GA"],
    );
  }
}

class SMapHaiti {
  static const String instructions =
      """{"n": "Haiti", "w": 774.57153, "h": 593.52094, "g": {"a": "-74.480910,20.089566","b": "-71.621754,18.020528"}, "i":[{"n": "Sud-Est", "u": "HT-SE", "i": ["m0.7297453,0.8301153", "l0.7297453,0.8301153", "l0.7398929,0.8290875", "l0.7441533,0.8367368", "l0.7489947,0.8438469", "l0.7780172,0.8461383", "l0.8078918,0.8436953", "l0.8383602,0.8518837", "l0.8686608,0.8608808", "l0.8981481,0.8603754", "l0.9217741,0.8627679", "l0.9399131,0.8775441", "l0.9705882,0.8705856", "l0.9709109,0.8705182", "l0.9707043,0.8709900", "l0.9551215,0.9060351", "l0.9523587,0.9150828", "l0.9513775,0.9245686", "l0.9519069,0.9291177", "l0.9556767,0.9429167", "l0.9565029,0.9483082", "l0.9562706,0.9563113", "l0.9570452,0.9702957", "l0.9557800,0.9786357", "l0.9515841,0.9931761", "l0.9458519,0.9880710", "l0.9213480,0.9463538", "l0.9106582,0.9337174", "l0.8983418,0.9236082", "l0.8707652,0.9112413", "l0.8593525,0.9034404", "l0.8479655,0.8977119", "l0.8343193,0.8976782", "l0.8063296,0.9038279", "l0.7698578,0.9033730", "l0.7187586,0.9042660", "l0.6912337,0.9108032", "l0.6841846,0.9059508", "l0.6799630,0.9038616", "l0.6780910,0.9057487", "l0.6804536,0.9242821", "l0.6771485,0.9290166", "l0.6730430,0.9291345", "l0.6634764,0.9242821", "l0.6581057,0.9230185", "l0.6168829,0.9279720", "l0.6084266,0.9272643", "l0.6091238,0.9294884", "l0.6101308,0.9349136", "l0.6108151,0.9371208", "l0.6056122,0.9366322", "l0.6035336,0.9358908", "l0.6010419,0.9335320", "l0.5913462,0.9417204", "l0.5720065,0.9392437", "l0.5625303,0.9439950", "l0.5533123,0.9370197", "l0.5409313,0.9306846", "l0.5276594,0.9260681", "l0.5197066,0.9249055", "l0.5200939,0.9225467", "l0.5189965,0.9141561", "l0.5181574,0.9057318", "l0.5174602,0.8951509", "l0.5174344,0.8845700", "l0.5219272,0.8709394", "l0.5233215,0.8566518", "l0.5283695,0.8654131", "l0.5325783,0.8759940", "l0.5400146,0.8746798", "l0.5493488,0.8719841", "l0.5548228,0.8724895", "l0.5599999,0.8728770", "l0.5639633,0.8804589", "l0.5715159,0.8854629", "l0.5754794,0.8798861", "l0.5814052,0.8752190", "l0.5933086,0.8805095", "l0.6049021,0.8843341", "l0.6076391,0.8775610", "l0.6119124,0.8731635", "l0.6138361,0.8671485", "l0.6147785,0.8602237", "l0.6202783,0.8641663", "l0.6263720,0.8653120", "l0.6302064,0.8605607", "l0.6342990,0.8559779", "l0.6411157,0.8556072", "l0.6478162,0.8544447", "l0.6517925,0.8500135", "l0.6564532,0.8492721", "l0.6645609,0.8479580", "l0.6731721,0.8431224", "l0.6774067,0.8429371", "l0.6809441,0.8393989", "l0.6896070,0.8258020", "l0.7012392,0.8186751", "l0.7138656,0.8197197", "l0.7230578,0.8256841", "l0.7297453,0.8301153", "c"]}, {"n": "Ouest", "u": "HT-OU", "i": ["m0.5854720,0.6742994", "l0.5854720,0.6742994", "l0.5817280,0.6763381", "l0.5792492,0.6733727", "l0.5761120,0.6646957", "l0.5731168,0.6612417", "l0.5704314,0.6602982", "l0.5625303,0.6596242", "l0.5312872,0.6505091", "l0.5206103,0.6494308", "l0.5094041,0.6458252", "l0.4784967,0.6197099", "l0.4472795,0.6085898", "l0.4389007,0.6013955", "l0.4318387,0.5883546", "l0.4252802,0.5822554", "l0.4234469,0.5801325", "l0.4208778,0.5759204", "l0.4185539,0.5709332", "l0.4174694,0.5656090", "l0.4186701,0.5602849", "l0.4230080,0.5539161", "l0.4291404,0.5485077", "l0.4362798,0.5448515", "l0.4438195,0.5434700", "l0.4521209,0.5447168", "l0.5008058,0.5715060", "l0.5248320,0.5818005", "l0.5515436,0.5994916", "l0.5764864,0.6132063", "l0.5866598,0.6296169", "l0.5893193,0.6400799", "l0.5905716,0.6525478", "l0.5895775,0.6647631", "l0.5854720,0.6742994", "c", "m0.6852046,0.5487267", "l0.6852046,0.5487267", "l0.6934414,0.5499904", "l0.7021301,0.5494512", "l0.7059128,0.5564602", "l0.7094244,0.5639073", "l0.7181776,0.5688608", "l0.7274344,0.5737469", "l0.7368718,0.5827946", "l0.7450957,0.5938978", "l0.7542492,0.6099377", "l0.7657523,0.6194235", "l0.7777073,0.6233829", "l0.7881647,0.6328181", "l0.8092732,0.6601129", "l0.8360105,0.6721765", "l0.8637807,0.6603319", "l0.8919899,0.6535924", "l0.9039449,0.6590345", "l0.9157191,0.6646283", "l0.9303982,0.6696492", "l0.9436571,0.6799774", "l0.9460197,0.6837514", "l0.9461359,0.6839536", "l0.9452322,0.6846781", "l0.9404554,0.6916871", "l0.9332385,0.7077944", "l0.9286682,0.7142306", "l0.9150994,0.7202961", "l0.8887364,0.7139273", "l0.8757099,0.7175329", "l0.8696808,0.7234805", "l0.8727921,0.7313825", "l0.9045000,0.7739420", "l0.9067722,0.7785080", "l0.9076372,0.7857529", "l0.9057781,0.7883981", "l0.9031444,0.7903694", "l0.9018276,0.7956599", "l0.9039190,0.8045896", "l0.9091736,0.8083637", "l0.9228585,0.8128623", "l0.9258150,0.8162994", "l0.9311341,0.8265939", "l0.9339873,0.8308903", "l0.9472075,0.8424485", "l0.9660566,0.8517320", "l0.9710529,0.8560621", "l0.9742805,0.8598362", "l0.9750422,0.8612347", "l0.9709109,0.8705182", "l0.9705882,0.8705856", "l0.9399131,0.8775441", "l0.9217741,0.8627679", "l0.8981481,0.8603754", "l0.8686608,0.8608808", "l0.8383602,0.8518837", "l0.8078918,0.8436953", "l0.7780172,0.8461383", "l0.7489947,0.8438469", "l0.7441533,0.8367368", "l0.7398929,0.8290875", "l0.7297453,0.8301153", "l0.7230578,0.8256841", "l0.7138656,0.8197197", "l0.7012392,0.8186751", "l0.6896070,0.8258020", "l0.6809441,0.8393989", "l0.6774067,0.8429371", "l0.6731721,0.8431224", "l0.6645609,0.8479580", "l0.6564532,0.8492721", "l0.6517925,0.8500135", "l0.6478162,0.8544447", "l0.6411157,0.8556072", "l0.6342990,0.8559779", "l0.6302064,0.8605607", "l0.6263720,0.8653120", "l0.6202783,0.8641663", "l0.6147785,0.8602237", "l0.6138361,0.8671485", "l0.6119124,0.8731635", "l0.6076391,0.8775610", "l0.6049021,0.8843341", "l0.5933086,0.8805095", "l0.5814052,0.8752190", "l0.5754794,0.8798861", "l0.5715159,0.8854629", "l0.5639633,0.8804589", "l0.5599999,0.8728770", "l0.5548228,0.8724895", "l0.5493488,0.8719841", "l0.5400146,0.8746798", "l0.5325783,0.8759940", "l0.5283695,0.8654131", "l0.5233215,0.8566518", "l0.5178217,0.8476041", "l0.5152396,0.8358943", "l0.5091847,0.8278913", "l0.5004185,0.8274195", "l0.4996310,0.8144629", "l0.5050792,0.8024330", "l0.5049113,0.7966034", "l0.5029102,0.7912118", "l0.5029102,0.7912118", "l0.5275690,0.7854496", "l0.5579342,0.7950533", "l0.5561268,0.8029385", "l0.5628143,0.8012368", "l0.5722002,0.7968898", "l0.5783971,0.7968561", "l0.5835096,0.7997204", "l0.6084266,0.8052299", "l0.6219309,0.8012031", "l0.6314458,0.7906390", "l0.6384561,0.7757785", "l0.6443304,0.7588288", "l0.6528512,0.7450467", "l0.6639799,0.7417949", "l0.7224510,0.7486354", "l0.7245812,0.7476077", "l0.7254720,0.7453331", "l0.7260530,0.7430585", "l0.7272407,0.7420308", "l0.7294484,0.7426205", "l0.7304683,0.7438504", "l0.7311526,0.7450635", "l0.7322628,0.7456364", "l0.7395572,0.7563521", "l0.7429139,0.7588288", "l0.7490721,0.7566554", "l0.7519253,0.7485512", "l0.7527258,0.7373300", "l0.7521448,0.7079292", "l0.7527258,0.7024871", "l0.7551787,0.6959498", "l0.7578899,0.6920578", "l0.7591551,0.6884354", "l0.7572831,0.6826900", "l0.7541201,0.6797246", "l0.7381112,0.6694975", "l0.7338121,0.6685203", "l0.7252783,0.6681665", "l0.7211599,0.6665153", "l0.7140463,0.6585122", "l0.7077332,0.6484873", "l0.7009552,0.6415120", "l0.6924344,0.6428093", "l0.6804536,0.6332393", "l0.6774583,0.6288924", "l0.6745019,0.6197099", "l0.6565306,0.5830979", "l0.6515602,0.5764595", "l0.6445498,0.5689450", "l0.6371651,0.5628122", "l0.6311747,0.5602849", "l0.6255845,0.5565445", "l0.6255974,0.5565276", "l0.6305034,0.5483561", "l0.6363776,0.5427118", "l0.6587254,0.5438069", "l0.6852046,0.5487267", "c"]}, {"n": "Nord", "u": "HT-ND", "i": ["m0.8563314,0.1842408", "l0.8563314,0.1842408", "l0.8563314,0.1842577", "l0.8546402,0.1888237", "l0.8533104,0.1924967", "l0.8517483,0.2112155", "l0.8442602,0.2256379", "l0.8386313,0.2271879", "l0.8343838,0.2308609", "l0.8346420,0.2375330", "l0.8332606,0.2436996", "l0.8343064,0.2551229", "l0.8390315,0.2665968", "l0.8426077,0.2809350", "l0.8485981,0.2935883", "l0.8475007,0.3064438", "l0.8440279,0.3136044", "l0.8504701,0.3158958", "l0.8570157,0.3184063", "l0.8747029,0.3419101", "l0.8805384,0.3669134", "l0.8552728,0.3838294", "l0.8310400,0.4036097", "l0.8242363,0.4044690", "l0.8210216,0.3981339", "l0.8133399,0.3880921", "l0.8029858,0.3833240", "l0.7993193,0.3702663", "l0.7934709,0.3564841", "l0.7918054,0.3426851", "l0.7936129,0.3292399", "l0.7877129,0.3119196", "l0.7736276,0.3028719", "l0.7600976,0.2864276", "l0.7584063,0.2555947", "l0.7516542,0.2510793", "l0.7465546,0.2476758", "l0.7405384,0.2483666", "l0.7340703,0.2564708", "l0.7270858,0.2561844", "l0.7270600,0.2687534", "l0.7165251,0.2731678", "l0.7040021,0.2663441", "l0.6933897,0.2551566", "l0.6836811,0.2426044", "l0.6778973,0.2228242", "l0.6730688,0.2034820", "l0.6645867,0.1987138", "l0.6602101,0.1903737", "l0.6635152,0.1739463", "l0.6562079,0.1668699", "l0.6486424,0.1682178", "l0.6476225,0.1573673", "l0.6404185,0.1499539", "l0.6362614,0.1381936", "l0.6361710,0.1352620", "l0.6373329,0.1294323", "l0.6422260,0.1276969", "l0.6478420,0.1296008", "l0.6513020,0.1324988", "l0.6550072,0.1330885", "l0.6596033,0.1278149", "l0.6635152,0.1229962", "l0.6664200,0.1200308", "l0.6686664,0.1141506", "l0.6721522,0.1073101", "l0.6749796,0.1046480", "l0.6749796,0.1046480", "l0.6822739,0.1165432", "l0.6916727,0.1248832", "l0.7014200,0.1294829", "l0.7067907,0.1249169", "l0.7131813,0.1293986", "l0.7237936,0.1347733", "l0.7337346,0.1380925", "l0.7381112,0.1363908", "l0.7403447,0.1440738", "l0.7572831,0.1647639", "l0.7572831,0.1678135", "l0.7556048,0.1668362", "l0.7501050,0.1647639", "l0.7545332,0.1789335", "l0.7560825,0.1810733", "l0.7622794,0.1828930", "l0.7635963,0.1822527", "l0.7622794,0.1780406", "l0.7668626,0.1710989", "l0.7657136,0.1710147", "l0.7634285,0.1712506", "l0.7622794,0.1710989", "l0.7623698,0.1705092", "l0.7630928,0.1684537", "l0.7639578,0.1668699", "l0.7644613,0.1678135", "l0.7644613,0.1647639", "l0.7636479,0.1632643", "l0.7622794,0.1581592", "l0.7644613,0.1581592", "l0.7696771,0.1618827", "l0.7768423,0.1627589", "l0.7832330,0.1600294", "l0.7860216,0.1528687", "l0.7895461,0.1480669", "l0.7964661,0.1478310", "l0.8011784,0.1530541", "l0.7981961,0.1647639", "l0.8041477,0.1694309", "l0.8098799,0.1702228", "l0.8237457,0.1670216", "l0.8249463,0.1671395", "l0.8269087,0.1678135", "l0.8293359,0.1699532", "l0.8343838,0.1766421", "l0.8377792,0.1780406", "l0.8498763,0.1780406", "l0.8527165,0.1790852", "l0.8542787,0.1813597", "l0.8553890,0.1836343", "l0.8563314,0.1842408", "c"]}, {"n": "Nord-Est", "u": "HT-NE", "i": ["m0.9581813,0.1851844", "l0.9581813,0.1851844", "l0.9612669,0.1985453", "l0.9625192,0.2071549", "l0.9621706,0.2148716", "l0.9615896,0.2276092", "l0.9632034,0.2386450", "l0.9730153,0.2690567", "l0.9771983,0.3069998", "l0.9769530,0.3286671", "l0.9729507,0.3398040", "l0.9710142,0.3425840", "l0.9665730,0.3573603", "l0.9632422,0.3607974", "l0.9537918,0.3678738", "l0.9514808,0.3709234", "l0.9532237,0.3805945", "l0.9594723,0.3921189", "l0.9609570,0.3940902", "l0.9607892,0.3941239", "l0.9488987,0.3961458", "l0.9365048,0.3947473", "l0.9300496,0.3953539", "l0.9220581,0.3933489", "l0.9125302,0.3915966", "l0.9060105,0.3843854", "l0.8930227,0.3766182", "l0.8805384,0.3669134", "l0.8747029,0.3419101", "l0.8570157,0.3184063", "l0.8504701,0.3158958", "l0.8440279,0.3136044", "l0.8475007,0.3064438", "l0.8485981,0.2935883", "l0.8426077,0.2809350", "l0.8390315,0.2665968", "l0.8343064,0.2551229", "l0.8332606,0.2436996", "l0.8346420,0.2375330", "l0.8343838,0.2308609", "l0.8386313,0.2271879", "l0.8442602,0.2256379", "l0.8517483,0.2112155", "l0.8533104,0.1924967", "l0.8546402,0.1888237", "l0.8563314,0.1842577", "l0.8563314,0.1842408", "l0.8586682,0.1857404", "l0.8634321,0.1902895", "l0.8666339,0.1913341", "l0.8693451,0.1896661", "l0.8711267,0.1860605", "l0.8733602,0.1825391", "l0.8773882,0.1810733", "l0.8840500,0.1743844", "l0.8939910,0.1744855", "l0.9111359,0.1810733", "l0.9205605,0.1827750", "l0.9230651,0.1852181", "l0.9209349,0.1913341", "l0.9179010,0.1939288", "l0.9137309,0.1948386", "l0.9039449,0.1946533", "l0.9076243,0.2035493", "l0.9137051,0.2044760", "l0.9203023,0.2020667", "l0.9254923,0.2009715", "l0.9318312,0.2079468", "l0.9357302,0.2111481", "l0.9374602,0.2095980", "l0.9393451,0.2029428", "l0.9385834,0.1994551", "l0.9308501,0.1968099", "l0.9283713,0.1938277", "l0.9271190,0.1895482", "l0.9276870,0.1846958", "l0.9303724,0.1816630", "l0.9343746,0.1820168", "l0.9434506,0.1846958", "l0.9581813,0.1851844", "c"]}, {"n": "Centre", "u": "HT-CE", "i": ["m0.9300496,0.3953539", "l0.9300496,0.3953539", "l0.9365048,0.3947473", "l0.9488987,0.3961458", "l0.9607892,0.3941239", "l0.9609570,0.3940902", "l0.9725247,0.4095741", "l0.9952340,0.4240470", "l0.9996623,0.4268608", "l0.9980614,0.4557393", "l0.9962669,0.4640625", "l0.9918515,0.4726384", "l0.9799611,0.4838090", "l0.9746549,0.4900430", "l0.9641717,0.5093010", "l0.9489633,0.5313558", "l0.9443672,0.5350794", "l0.9263702,0.5414313", "l0.9203152,0.5467891", "l0.9213480,0.5551629", "l0.9276354,0.5538824", "l0.9363499,0.5499735", "l0.9445609,0.5503442", "l0.9477755,0.5537476", "l0.9527331,0.5674455", "l0.9559478,0.5723822", "l0.9639651,0.5820027", "l0.9665730,0.5863834", "l0.9685225,0.5953131", "l0.9688840,0.6149249", "l0.9717114,0.6339133", "l0.9711820,0.6429947", "l0.9694520,0.6519244", "l0.9670636,0.6600792", "l0.9628678,0.6690932", "l0.9579489,0.6743668", "l0.9485502,0.6819992", "l0.9461359,0.6839536", "l0.9460197,0.6837514", "l0.9436571,0.6799774", "l0.9303982,0.6696492", "l0.9157191,0.6646283", "l0.9039449,0.6590345", "l0.8919899,0.6535924", "l0.8637807,0.6603319", "l0.8360105,0.6721765", "l0.8092732,0.6601129", "l0.7881647,0.6328181", "l0.7777073,0.6233829", "l0.7657523,0.6194235", "l0.7542492,0.6099377", "l0.7450957,0.5938978", "l0.7614919,0.5926005", "l0.7781334,0.5951446", "l0.7863702,0.5889949", "l0.7876999,0.5740502", "l0.7925155,0.5583304", "l0.7915085,0.5455086", "l0.7893783,0.5212972", "l0.7942068,0.4967151", "l0.7918313,0.4823769", "l0.7910695,0.4706166", "l0.7943488,0.4603052", "l0.7849242,0.4479889", "l0.7869253,0.4129101", "l0.8029858,0.3833240", "l0.8133399,0.3880921", "l0.8210216,0.3981339", "l0.8242363,0.4044690", "l0.8310400,0.4036097", "l0.8552728,0.3838294", "l0.8805384,0.3669134", "l0.8930227,0.3766182", "l0.9060105,0.3843854", "l0.9125302,0.3915966", "l0.9220581,0.3933489", "l0.9300496,0.3953539", "c"]}, {"n": "L'Artibonite", "u": "HT-AR", "i": ["m0.6362614,0.1381936", "l0.6362614,0.1381936", "l0.6404185,0.1499539", "l0.6476225,0.1573673", "l0.6486424,0.1682178", "l0.6562079,0.1668699", "l0.6635152,0.1739463", "l0.6602101,0.1903737", "l0.6645867,0.1987138", "l0.6730688,0.2034820", "l0.6778973,0.2228242", "l0.6836811,0.2426044", "l0.6933897,0.2551566", "l0.7040021,0.2663441", "l0.7165251,0.2731678", "l0.7270600,0.2687534", "l0.7270858,0.2561844", "l0.7340703,0.2564708", "l0.7405384,0.2483666", "l0.7465546,0.2476758", "l0.7516542,0.2510793", "l0.7584063,0.2555947", "l0.7600976,0.2864276", "l0.7736276,0.3028719", "l0.7877129,0.3119196", "l0.7936129,0.3292399", "l0.7918054,0.3426851", "l0.7934709,0.3564841", "l0.7993193,0.3702663", "l0.8029858,0.3833240", "l0.7869253,0.4129101", "l0.7849242,0.4479889", "l0.7943488,0.4603052", "l0.7910695,0.4706166", "l0.7918313,0.4823769", "l0.7942068,0.4967151", "l0.7893783,0.5212972", "l0.7915085,0.5455086", "l0.7925155,0.5583304", "l0.7876999,0.5740502", "l0.7863702,0.5889949", "l0.7781334,0.5951446", "l0.7614919,0.5926005", "l0.7450957,0.5938978", "l0.7368718,0.5827946", "l0.7274344,0.5737469", "l0.7181776,0.5688608", "l0.7094244,0.5639073", "l0.7059128,0.5564602", "l0.7021301,0.5494512", "l0.6934414,0.5499904", "l0.6852046,0.5487267", "l0.6587254,0.5438069", "l0.6363776,0.5427118", "l0.6305034,0.5483561", "l0.6255974,0.5565276", "l0.6255845,0.5565445", "l0.6246421,0.5559211", "l0.5878992,0.5039600", "l0.5862079,0.4915426", "l0.6010419,0.4836743", "l0.6144945,0.4824949", "l0.6219309,0.4792431", "l0.6251843,0.4721330", "l0.6231057,0.4630347", "l0.6179932,0.4583003", "l0.6116284,0.4551159", "l0.6058058,0.4506173", "l0.6021006,0.4444676", "l0.5936830,0.4249737", "l0.5914624,0.4172571", "l0.5938508,0.4150162", "l0.5941220,0.4141401", "l0.5937476,0.4131965", "l0.5940574,0.4106356", "l0.5974786,0.4064066", "l0.6013259,0.3952528", "l0.6036369,0.3907710", "l0.6074842,0.3882775", "l0.6130485,0.3868453", "l0.6186904,0.3865252", "l0.6228088,0.3874519", "l0.6177608,0.3743774", "l0.6141459,0.3717153", "l0.6071227,0.3708897", "l0.6029526,0.3667281", "l0.6015841,0.3572423", "l0.6021264,0.3471837", "l0.6036369,0.3411014", "l0.6058575,0.3441341", "l0.6087752,0.3467456", "l0.6121448,0.3481609", "l0.6156177,0.3474364", "l0.6194779,0.3437634", "l0.6196845,0.3402252", "l0.6184322,0.3362153", "l0.6178512,0.3250615", "l0.6169733,0.3229386", "l0.6177608,0.3233429", "l0.6228088,0.3245223", "l0.6245517,0.3259882", "l0.6270176,0.3287345", "l0.6303743,0.3310427", "l0.6347767,0.3311607", "l0.6280117,0.3135033", "l0.6244742,0.3109087", "l0.6063481,0.3094091", "l0.6017649,0.3050116", "l0.5986793,0.2985418", "l0.5940574,0.2911115", "l0.5874602,0.2848944", "l0.5651253,0.2715166", "l0.5465214,0.2564203", "l0.5398726,0.2543310", "l0.5341275,0.2508097", "l0.5217594,0.2369938", "l0.5194097,0.2362693", "l0.5159110,0.2383249", "l0.4941957,0.2278113", "l0.4905937,0.2272722", "l0.4836867,0.2250313", "l0.4801622,0.2245427", "l0.4801622,0.2245427", "l0.4798136,0.2232454", "l0.4826151,0.1967088", "l0.4991146,0.1739295", "l0.5126317,0.1721941", "l0.5267557,0.1767601", "l0.5412282,0.1783270", "l0.5555587,0.1818146", "l0.5820120,0.1757155", "l0.6038047,0.1512850", "l0.6111636,0.1487745", "l0.6169991,0.1443602", "l0.6255974,0.1362392", "l0.6362614,0.1381936", "c"]}, {"n": "Sud", "u": "HT-SD", "i": ["m0.2791091,0.9606414", "l0.2791091,0.9606414", "l0.2813555,0.9637079", "l0.2853706,0.9600517", "l0.2873072,0.9613659", "l0.2887015,0.9646345", "l0.2911286,0.9667238", "l0.3020250,0.9667238", "l0.3079250,0.9671955", "l0.3148579,0.9690826", "l0.3198671,0.9730251", "l0.3198671,0.9798488", "l0.3155034,0.9834881", "l0.3083640,0.9843643", "l0.2947177,0.9834544", "l0.2885853,0.9816853", "l0.2832275,0.9774226", "l0.2744097,0.9667238", "l0.2755329,0.9619219", "l0.2771209,0.9599506", "l0.2791091,0.9606414", "c", "m0.3185115,0.8132498", "l0.3185115,0.8132498", "l0.3235724,0.8214214", "l0.3313961,0.8265939", "l0.3282588,0.8349171", "l0.3247601,0.8453127", "l0.3425377,0.8512097", "l0.3648855,0.8465258", "l0.3759368,0.8451442", "l0.3870139,0.8456328", "l0.3995886,0.8413533", "l0.4105624,0.8354900", "l0.4288047,0.8388092", "l0.4473699,0.8383374", "l0.4565620,0.8397864", "l0.4654314,0.8411006", "l0.4734101,0.8379667", "l0.4818922,0.8410500", "l0.4951898,0.8552029", "l0.5063960,0.8688165", "l0.5092234,0.8897593", "l0.5181574,0.9057318", "l0.5189965,0.9141561", "l0.5200939,0.9225467", "l0.5197066,0.9249055", "l0.4906841,0.9206765", "l0.4814145,0.9212662", "l0.4784967,0.9206765", "l0.4682976,0.9121848", "l0.4652249,0.9108032", "l0.4186701,0.9009637", "l0.3977553,0.9037942", "l0.3945148,0.9026148", "l0.3963481,0.8963471", "l0.4010087,0.8939546", "l0.4136738,0.8940894", "l0.4136738,0.8910904", "l0.3902415,0.8877881", "l0.3618516,0.8880913", "l0.3536019,0.8910904", "l0.3423182,0.8998348", "l0.3380320,0.9009637", "l0.3352304,0.8990429", "l0.3322094,0.8901974", "l0.3296402,0.8875016", "l0.3249667,0.8912083", "l0.3224234,0.9006098", "l0.3198284,0.9076694", "l0.3150774,0.9042660", "l0.3128955,0.9042660", "l0.3087642,0.9077031", "l0.3052784,0.9052432", "l0.3037421,0.8990092", "l0.3054850,0.8910904", "l0.3005145,0.8930280", "l0.2961637,0.9056307", "l0.2911286,0.9108032", "l0.2913739,0.9043165", "l0.2925230,0.8985375", "l0.2959184,0.8875016", "l0.2931685,0.8904164", "l0.2892179,0.8972401", "l0.2863647,0.9009637", "l0.2860807,0.8997843", "l0.2840150,0.8987396", "l0.2802581,0.8976782", "l0.2789929,0.8985038", "l0.2791349,0.9004245", "l0.2795609,0.9025811", "l0.2791736,0.9042660", "l0.2638490,0.9202553", "l0.2387642,0.9354528", "l0.2323994,0.9437086", "l0.2262928,0.9568673", "l0.2410493,0.9774563", "l0.2432570,0.9849540", "l0.2450386,0.9944229", "l0.2441995,0.9981127", "l0.2395646,0.9995785", "l0.2163389,0.9994606", "l0.2129435,0.9987193", "l0.2095351,0.9965963", "l0.2069789,0.9932435", "l0.2056362,0.9861502", "l0.1832109,0.9439950", "l0.1821006,0.9428998", "l0.1794540,0.9413835", "l0.1782017,0.9404231", "l0.1769623,0.9385866", "l0.1766783,0.9371208", "l0.1765104,0.9356044", "l0.1755680,0.9335320", "l0.1690353,0.9255458", "l0.1350811,0.8928426", "l0.1289874,0.8889675", "l0.1182847,0.8866087", "l0.1137919,0.8841825", "l0.1099704,0.8805432", "l0.1083437,0.8759940", "l0.1076078,0.8708552", "l0.1056196,0.8692883", "l0.1026373,0.8690356", "l0.0989837,0.8677551", "l0.0899464,0.8631385", "l0.0870029,0.8608977", "l0.0846403,0.8644527", "l0.0780173,0.8613526", "l0.0709940,0.8652446", "l0.0635964,0.8712427", "l0.0558889,0.8743429", "l0.0494208,0.8725738", "l0.0414164,0.8683448", "l0.0346126,0.8633744", "l0.0317465,0.8593813", "l0.0287513,0.8539898", "l0.0155698,0.8452622", "l0.0132072,0.8382195", "l0.0132201,0.8382195", "l0.0145499,0.8374107", "l0.0229546,0.8362482", "l0.0326890,0.8386407", "l0.0521191,0.8361134", "l0.0712781,0.8307892", "l0.1064717,0.8213709", "l0.1420010,0.8176473", "l0.1567963,0.8224155", "l0.1713850,0.8288348", "l0.1881039,0.8350688", "l0.2047583,0.8368379", "l0.2041644,0.8253977", "l0.2090187,0.8158782", "l0.2171135,0.8156423", "l0.2252212,0.8156086", "l0.2364274,0.8116324", "l0.2476336,0.8074876", "l0.2590076,0.8095600", "l0.2706270,0.8088523", "l0.2776631,0.8134857", "l0.2836019,0.8160298", "l0.2915547,0.8073191", "l0.3028125,0.8052636", "l0.3123662,0.8063587", "l0.3185115,0.8132498", "c"]}, {"n": "Nord-Ouest", "u": "HT-NO", "i": ["m0.6010419,0.0714563", "l0.6010419,0.0714563", "l0.6368294,0.0824416", "l0.6456472,0.0896022", "l0.6529287,0.0941514", "l0.6737273,0.1026262", "l0.6749796,0.1046480", "l0.6721522,0.1073101", "l0.6686664,0.1141506", "l0.6664200,0.1200308", "l0.6635152,0.1229962", "l0.6596033,0.1278149", "l0.6550072,0.1330885", "l0.6513020,0.1324988", "l0.6478420,0.1296008", "l0.6422260,0.1276969", "l0.6373329,0.1294323", "l0.6361710,0.1352620", "l0.6362614,0.1381936", "l0.6255974,0.1362392", "l0.6169991,0.1443602", "l0.6111636,0.1487745", "l0.6038047,0.1512850", "l0.5820120,0.1757155", "l0.5555587,0.1818146", "l0.5412282,0.1783270", "l0.5267557,0.1767601", "l0.5126317,0.1721941", "l0.4991146,0.1739295", "l0.4826151,0.1967088", "l0.4798136,0.2232454", "l0.4801622,0.2245427", "l0.4796974,0.2244922", "l0.4779287,0.2256042", "l0.4763020,0.2279630", "l0.4739910,0.2303555", "l0.4702470,0.2314338", "l0.4650441,0.2297489", "l0.4572979,0.2255199", "l0.4497324,0.2200273", "l0.4450073,0.2145683", "l0.4379195,0.2235992", "l0.4228660,0.2261939", "l0.3894540,0.2239699", "l0.3828309,0.2216953", "l0.3789449,0.2212067", "l0.3764661,0.2191006", "l0.3702692,0.2099855", "l0.3668608,0.2079300", "l0.3620065,0.2036167", "l0.3600571,0.1939288", "l0.3593986,0.1837354", "l0.3583916,0.1780406", "l0.3709018,0.1517062", "l0.3727609,0.1462135", "l0.3761950,0.1460956", "l0.3945148,0.1348913", "l0.3945148,0.1312688", "l0.3751493,0.1312688", "l0.3808169,0.1256751", "l0.3874916,0.1247484", "l0.3946439,0.1255066", "l0.4017059,0.1249169", "l0.4444134,0.0991891", "l0.4569106,0.0872603", "l0.4639338,0.0744890", "l0.4681297,0.0811611", "l0.4721319,0.0829470", "l0.4820987,0.0814475", "l0.4872112,0.0824416", "l0.4964551,0.0868222", "l0.5013481,0.0877994", "l0.5055310,0.0876815", "l0.5078549,0.0872266", "l0.5148652,0.0847667", "l0.5200423,0.0838737", "l0.5254130,0.0844803", "l0.5302673,0.0868559", "l0.5339984,0.0914219", "l0.5365030,0.0838737", "l0.5431131,0.0791898", "l0.5511563,0.0781620", "l0.5579342,0.0814475", "l0.5672942,0.0763929", "l0.5784617,0.0725683", "l0.5901456,0.0706307", "l0.6010419,0.0714563", "c", "m0.6058058,0.0113405", "l0.6058058,0.0113405", "l0.6389984,0.0284249", "l0.6531094,0.0401347", "l0.6491201,0.0515412", "l0.6434266,0.0483400", "l0.6137328,0.0429821", "l0.5999445,0.0358889", "l0.5829158,0.0308511", "l0.5771061,0.0273635", "l0.5730910,0.0283744", "l0.5689209,0.0304131", "l0.5651253,0.0312892", "l0.5577922,0.0293348", "l0.5492068,0.0255775", "l0.5414089,0.0204050", "l0.5364255,0.0143395", "l0.5379619,0.0143564", "l0.5389301,0.0137330", "l0.5409700,0.0113405", "l0.5571983,0.0042135", "l0.5749113,0.0010460", "l0.5850460,0.0004226", "l0.5917981,0.0016694", "l0.5978530,0.0051739", "l0.6058058,0.0113405", "c"]}, {"n": "Nippes", "u": "HT-NI", "i": ["m0.5029102,0.7912118", "l0.5029102,0.7912118", "l0.5049113,0.7966034", "l0.5050792,0.8024330", "l0.4996310,0.8144629", "l0.5004185,0.8274195", "l0.5091847,0.8278913", "l0.5152396,0.8358943", "l0.5178217,0.8476041", "l0.5233215,0.8566518", "l0.5219272,0.8709394", "l0.5174344,0.8845700", "l0.5174602,0.8951509", "l0.5181574,0.9057318", "l0.5092234,0.8897593", "l0.5063960,0.8688165", "l0.4951898,0.8552029", "l0.4818922,0.8410500", "l0.4734101,0.8379667", "l0.4654314,0.8411006", "l0.4565620,0.8397864", "l0.4473699,0.8383374", "l0.4288047,0.8388092", "l0.4105624,0.8354900", "l0.3995886,0.8413533", "l0.3870139,0.8456328", "l0.3759368,0.8451442", "l0.3648855,0.8465258", "l0.3425377,0.8512097", "l0.3247601,0.8453127", "l0.3282588,0.8349171", "l0.3313961,0.8265939", "l0.3235724,0.8214214", "l0.3185115,0.8132498", "l0.3123662,0.8063587", "l0.3028125,0.8052636", "l0.2915547,0.8073191", "l0.2836019,0.8160298", "l0.2776631,0.8134857", "l0.2706270,0.8088523", "l0.2590076,0.8095600", "l0.2476336,0.8074876", "l0.2539468,0.7888699", "l0.2617705,0.7773454", "l0.2559995,0.7738072", "l0.2542825,0.7670846", "l0.2603632,0.7580032", "l0.2632810,0.7500676", "l0.2632939,0.7500339", "l0.2668442,0.7465967", "l0.2683031,0.7456364", "l0.2687292,0.7444738", "l0.2731832,0.7372626", "l0.2755329,0.7357125", "l0.2783086,0.7355609", "l0.2812006,0.7358642", "l0.2839634,0.7357294", "l0.2998560,0.7296976", "l0.3044263,0.7288720", "l0.3169235,0.7329662", "l0.3171172,0.7412557", "l0.3100165,0.7475234", "l0.3007081,0.7456364", "l0.3007081,0.7486354", "l0.2931556,0.7452994", "l0.2864034,0.7441031", "l0.2796255,0.7450972", "l0.2719826,0.7486354", "l0.2742935,0.7506910", "l0.2801161,0.7547683", "l0.2858870,0.7566048", "l0.2862743,0.7594354", "l0.2861323,0.7631252", "l0.2876687,0.7668993", "l0.2938527,0.7705049", "l0.3049944,0.7683820", "l0.3104942,0.7720044", "l0.3227978,0.7622996", "l0.3378641,0.7598229", "l0.3933142,0.7653998", "l0.4004019,0.7674890", "l0.4143710,0.7767894", "l0.4221559,0.7788787", "l0.4502489,0.7775308", "l0.4639726,0.7791145", "l0.4763407,0.7851632", "l0.4828475,0.7900998", "l0.4881537,0.7927451", "l0.4940666,0.7932842", "l0.5029102,0.7912118", "c"]}, {"n": "Grand'Anse", "u": "HT-GA", "i": ["m0.2719826,0.7222842", "l0.2719826,0.7222842", "l0.2639007,0.7286024", "l0.2527203,0.7285182", "l0.2439929,0.7219978", "l0.2432570,0.7090749", "l0.2516100,0.7039024", "l0.2630744,0.7050986", "l0.2718535,0.7115685", "l0.2719826,0.7222842", "c", "m0.1158188,0.6943324", "l0.1158188,0.6943324", "l0.1617022,0.7211048", "l0.1818940,0.7222842", "l0.1826170,0.7230087", "l0.1849022,0.7263616", "l0.1853798,0.7273725", "l0.1861803,0.7311129", "l0.1881427,0.7308433", "l0.1905698,0.7291921", "l0.1927775,0.7288720", "l0.2029638,0.7358473", "l0.2074824,0.7379703", "l0.2232459,0.7387453", "l0.2269899,0.7396888", "l0.2310954,0.7420308", "l0.2386351,0.7505225", "l0.2408686,0.7522242", "l0.2444706,0.7525780", "l0.2462135,0.7512301", "l0.2473883,0.7495116", "l0.2492474,0.7486354", "l0.2527461,0.7493768", "l0.2570840,0.7521736", "l0.2602212,0.7522242", "l0.2623643,0.7509268", "l0.2632939,0.7500339", "l0.2632810,0.7500676", "l0.2603632,0.7580032", "l0.2542825,0.7670846", "l0.2559995,0.7738072", "l0.2617705,0.7773454", "l0.2539468,0.7888699", "l0.2476336,0.8074876", "l0.2364274,0.8116324", "l0.2252212,0.8156086", "l0.2171135,0.8156423", "l0.2090187,0.8158782", "l0.2041644,0.8253977", "l0.2047583,0.8368379", "l0.1881039,0.8350688", "l0.1713850,0.8288348", "l0.1567963,0.8224155", "l0.1420010,0.8176473", "l0.1064717,0.8213709", "l0.0712781,0.8307892", "l0.0521191,0.8361134", "l0.0326890,0.8386407", "l0.0229546,0.8362482", "l0.0145499,0.8374107", "l0.0132201,0.8382195", "l0.0132072,0.8382195", "l0.0125875,0.8363661", "l0.0118000,0.8269477", "l0.0095020,0.8202757", "l0.0004002,0.8052299", "l0.0125875,0.7818946", "l0.0115289,0.7799738", "l0.0099926,0.7753068", "l0.0164090,0.7693255", "l0.0205403,0.7469843", "l0.0257561,0.7420308", "l0.0267115,0.7395203", "l0.0261176,0.7338592", "l0.0247362,0.7278105", "l0.0233548,0.7240702", "l0.0224640,0.7189313", "l0.0251751,0.7144665", "l0.0370527,0.7053851", "l0.0526355,0.6971292", "l0.0592714,0.6955960", "l0.0673533,0.6981907", "l0.0709424,0.6980391", "l0.0724271,0.6940965", "l0.0741571,0.6907605", "l0.0780560,0.6892946", "l0.0821744,0.6889577", "l0.1018627,0.6904066", "l0.1158188,0.6943324", "c"]}]} """;
}
