import 'package:flutter/material.dart';

class SMapBoliviaColors {
  /// El Beni
  final Color? boB;

  /// Cochabamba
  final Color? boC;

  /// Chuquisaca
  final Color? boH;

  /// La Paz
  final Color? boL;

  /// Pando
  final Color? boN;

  /// Oruro
  final Color? boO;

  /// Potosí
  final Color? boP;

  /// Santa Cruz
  final Color? boS;

  /// Tarija
  final Color? boT;
  SMapBoliviaColors({
    this.boB,
    this.boC,
    this.boH,
    this.boL,
    this.boN,
    this.boO,
    this.boP,
    this.boS,
    this.boT,
  });
  Map<String, Color?> toMap() {
    return {
      "BO-B": boB,
      "BO-C": boC,
      "BO-H": boH,
      "BO-L": boL,
      "BO-N": boN,
      "BO-O": boO,
      "BO-P": boP,
      "BO-S": boS,
      "BO-T": boT,
    };
  }

  static SMapBoliviaColors fromMap(Map<String, Color?> map) {
    return SMapBoliviaColors(
      boB: map["BO-B"],
      boC: map["BO-C"],
      boH: map["BO-H"],
      boL: map["BO-L"],
      boN: map["BO-N"],
      boO: map["BO-O"],
      boP: map["BO-P"],
      boS: map["BO-S"],
      boT: map["BO-T"],
    );
  }
}

class SMapBolivia {
  static const String instructions =
      """{"n": "Bolivia", "w": 612.67145, "h": 692.763, "g": {"a": "-69.657430,-9.678570","b": "-57.519879,-22.902203"}, "i":[{"n": "El Beni", "u": "BO-B", "i": ["m0.2369936,0.4470070", "l0.2141755,0.4266104", "l0.2114171,0.4257154", "l0.2102093,0.4244884", "l0.2093279,0.4225109", "l0.2087240,0.4144273", "l0.1972496,0.3971775", "l0.1956501,0.3957485", "l0.1896926,0.3956907", "l0.1852040,0.3928903", "l0.1836371,0.3892672", "l0.1835228,0.3864812", "l0.1851224,0.3795524", "l0.1845022,0.3760448", "l0.1767656,0.3691015", "l0.1744152,0.3626924", "l0.1746111,0.3539881", "l0.1730768,0.3427144", "l0.1761943,0.3350928", "l0.1749049,0.3203403", "l0.1782019,0.3030761", "l0.1805359,0.2977929", "l0.1831311,0.2967103", "l0.1905250,0.2877462", "l0.1903128,0.2860284", "l0.1880277,0.2848880", "l0.1861997,0.2761838", "l0.1869505,0.2739896", "l0.1921245,0.2672052", "l0.1957317,0.2654875", "l0.2066511,0.2533621", "l0.2149100,0.2474871", "l0.2224507,0.2256759", "l0.2243767,0.2178521", "l0.2231036,0.2123813", "l0.2239687,0.2006601", "l0.2249806,0.1995053", "l0.2249806,0.1995053", "l0.2262864,0.1984227", "l0.2274126,0.1962863", "l0.2263027,0.1917826", "l0.2274289,0.1850126", "l0.2299262,0.1778384", "l0.2301384,0.1755000", "l0.2276574,0.1687011", "l0.2249806,0.1644139", "l0.2263517,0.1527505", "l0.2274126,0.1511482", "l0.2386095,0.1479581", "l0.2427389,0.1448113", "l0.2420534,0.1401632", "l0.2439141,0.1325127", "l0.2455953,0.1302464", "l0.2511774,0.1291494", "l0.2636637,0.1292648", "l0.2750727,0.1237218", "l0.2769824,0.1223216", "l0.2792185,0.1191171", "l0.2790226,0.1171683", "l0.2881956,0.1054183", "l0.2950345,0.0950973", "l0.2976297,0.0878654", "l0.2962260,0.0868261", "l0.2933697,0.0866673", "l0.2996699,0.0823224", "l0.3021019,0.0821636", "l0.3070148,0.0831885", "l0.3209374,0.0746141", "l0.3297023,0.0656500", "l0.3403443,0.0599193", "l0.3446696,0.0547372", "l0.3462528,0.0535968", "l0.3513126,0.0528606", "l0.3513126,0.0528606", "l0.3516880,0.0543474", "l0.3507740,0.0564405", "l0.3475096,0.0587357", "l0.3478360,0.0694320", "l0.3517860,0.0795220", "l0.3578904,0.0887171", "l0.3589839,0.0964398", "l0.3508066,0.1100086", "l0.3517370,0.1177457", "l0.3552299,0.1273450", "l0.3583474,0.1339418", "l0.3600449,0.1347357", "l0.3640111,0.1348079", "l0.3655454,0.1357606", "l0.3699523,0.1428481", "l0.3666716,0.1500079", "l0.3681079,0.1529815", "l0.3715845,0.1544683", "l0.3741470,0.1490696", "l0.3787662,0.1531980", "l0.3803331,0.1572542", "l0.3825039,0.1690909", "l0.3832057,0.1705344", "l0.3851807,0.1721366", "l0.3995767,0.1734358", "l0.4010946,0.1743885", "l0.4054199,0.1824143", "l0.4153763,0.1869180", "l0.4237005,0.1892276", "l0.4253001,0.1984227", "l0.4315187,0.2039657", "l0.4355013,0.2059722", "l0.4420627,0.2069970", "l0.4465513,0.2067805", "l0.4516927,0.2072569", "l0.4629548,0.2096531", "l0.4645707,0.2110677", "l0.4721441,0.2118327", "l0.4745597,0.2104470", "l0.4768611,0.2078631", "l0.4828840,0.2053659", "l0.4932158,0.2061454", "l0.5097173,0.2135361", "l0.5103048,0.2154271", "l0.5143200,0.2197287", "l0.5217792,0.2234529", "l0.5281937,0.2235828", "l0.5307399,0.2217351", "l0.5375462,0.2183862", "l0.5429977,0.2201761", "l0.5444830,0.2266719", "l0.5490042,0.2334852", "l0.5570346,0.2380033", "l0.5674807,0.2458415", "l0.5741890,0.2430700", "l0.5776819,0.2459570", "l0.5777145,0.2478046", "l0.5991779,0.2562347", "l0.6087426,0.2558738", "l0.6107012,0.2548056", "l0.6132475,0.2543870", "l0.6214900,0.2568265", "l0.6238078,0.2655596", "l0.6306303,0.2723152", "l0.6330623,0.2732968", "l0.6412070,0.2791429", "l0.6416640,0.2811349", "l0.6439817,0.2854510", "l0.6464790,0.2861872", "l0.6643026,0.2830981", "l0.6643026,0.2830981", "l0.5001852,0.3667342", "l0.4687491,0.3744713", "l0.4697774,0.3765355", "l0.4715565,0.3834354", "l0.4698590,0.4000789", "l0.4717034,0.4059251", "l0.4771713,0.4166647", "l0.4928240,0.4379130", "l0.4970841,0.4416372", "l0.5084931,0.4470647", "l0.5120513,0.4518571", "l0.5177477,0.4618894", "l0.5154136,0.4631164", "l0.4248757,0.4598396", "l0.4165189,0.4593633", "l0.4099411,0.4580353", "l0.4099411,0.4580353", "l0.4017801,0.4593344", "l0.3684344,0.4627699", "l0.3611384,0.4757325", "l0.3619056,0.4785473", "l0.3577761,0.4895756", "l0.3563398,0.4924338", "l0.3547402,0.4938051", "l0.3474770,0.4971396", "l0.3350070,0.5005751", "l0.3177383,0.5047612", "l0.3118298,0.5048478", "l0.3019387,0.5030868", "l0.2939246,0.5005606", "l0.2818300,0.4935308", "l0.2656550,0.4777101", "l0.2633046,0.4747943", "l0.2606441,0.4681253", "l0.2568574,0.4639103", "c"]}, {"n": "Cochabamba", "u": "BO-C", "i": ["m0.2501328,0.6202697", "l0.2436693,0.6072782", "l0.2353777,0.5975346", "l0.2308565,0.5936661", "l0.2200840,0.5868383", "l0.2200840,0.5868383", "l0.2330926,0.5807901", "l0.2280655,0.5583437", "l0.2171461,0.5438799", "l0.2236259,0.5326351", "l0.2274289,0.5320000", "l0.2337455,0.5318412", "l0.2367814,0.5308596", "l0.2381361,0.5297048", "l0.2398010,0.5269910", "l0.2416127,0.5165257", "l0.2418412,0.5133933", "l0.2392460,0.5091061", "l0.2374506,0.4996368", "l0.2367814,0.4921884", "l0.2290938,0.4792835", "l0.2264006,0.4766419", "l0.2259926,0.4569527", "l0.2269393,0.4549173", "l0.2303342,0.4515107", "l0.2369936,0.4470070", "l0.2369936,0.4470070", "l0.2568574,0.4639103", "l0.2606441,0.4681253", "l0.2633046,0.4747943", "l0.2656550,0.4777101", "l0.2818300,0.4935308", "l0.2939246,0.5005606", "l0.3019387,0.5030868", "l0.3118298,0.5048478", "l0.3177383,0.5047612", "l0.3350070,0.5005751", "l0.3474770,0.4971396", "l0.3547402,0.4938051", "l0.3563398,0.4924338", "l0.3577761,0.4895756", "l0.3619056,0.4785473", "l0.3611384,0.4757325", "l0.3684344,0.4627699", "l0.4017801,0.4593344", "l0.4099411,0.4580353", "l0.4099411,0.4580353", "l0.4080478,0.4630153", "l0.4085864,0.4693523", "l0.4103328,0.4736683", "l0.4118997,0.4814632", "l0.4135972,0.4974716", "l0.4086517,0.5098856", "l0.4047181,0.5157462", "l0.4016006,0.5227183", "l0.4019107,0.5291130", "l0.4028900,0.5318989", "l0.4088312,0.5423931", "l0.4341955,0.5570446", "l0.4382760,0.5599316", "l0.4476122,0.5699639", "l0.4484609,0.5714940", "l0.4480855,0.5768927", "l0.4380312,0.5769360", "l0.4331509,0.5801983", "l0.4330856,0.5839080", "l0.4318941,0.5860444", "l0.4186734,0.6030344", "l0.4132055,0.6080866", "l0.4083579,0.6116087", "l0.4077050,0.6132832", "l0.4079335,0.6158526", "l0.4138910,0.6216843", "l0.4266385,0.6400311", "l0.4311107,0.6526617", "l0.4323348,0.6537732", "l0.4347831,0.6545671", "l0.4411813,0.6590131", "l0.4421280,0.6663605", "l0.4379333,0.6716725", "l0.4379333,0.6716725", "l0.4352728,0.6674864", "l0.4319105,0.6676452", "l0.4287603,0.6706332", "l0.4235210,0.6721922", "l0.4206157,0.6722066", "l0.4145765,0.6693052", "l0.4092229,0.6617990", "l0.3996909,0.6587244", "l0.3942557,0.6586378", "l0.3900283,0.6603267", "l0.3819979,0.6655521", "l0.3791089,0.6684680", "l0.3798271,0.6705755", "l0.3796802,0.6724953", "l0.3689403,0.6680494", "l0.3638968,0.6652634", "l0.3629991,0.6616547", "l0.3552789,0.6531814", "l0.3552789,0.6531814", "l0.3445716,0.6458051", "l0.3373900,0.6388042", "l0.3310244,0.6312836", "l0.3257035,0.6268087", "l0.3174282,0.6214822", "l0.3116666,0.6190716", "l0.3071617,0.6199666", "l0.3023304,0.6150587", "l0.3000127,0.6111468", "l0.2983642,0.6103384", "l0.2935002,0.6097466", "l0.2864002,0.6110746", "l0.2733916,0.6199232", "l0.2707474,0.6202986", "l0.2640554,0.6196346", "c"]}, {"n": "Chuquisaca", "u": "BO-H", "i": ["m0.3644192,0.8929603", "l0.3566173,0.8872585", "l0.3469220,0.8785687", "l0.3448002,0.8745558", "l0.3445227,0.8720297", "l0.3451756,0.8577968", "l0.3477218,0.8509691", "l0.3487827,0.8396088", "l0.3529775,0.8288980", "l0.3582658,0.8193998", "l0.3595062,0.8151993", "l0.3536793,0.7945573", "l0.3534181,0.7901258", "l0.3574823,0.7773797", "l0.3650720,0.7733235", "l0.3724169,0.7721542", "l0.3777216,0.7719377", "l0.3807901,0.7711727", "l0.3923950,0.7655142", "l0.4013558,0.7577482", "l0.4056484,0.7522051", "l0.4001969,0.7449444", "l0.3979118,0.7380156", "l0.3982219,0.7346667", "l0.3953493,0.7284741", "l0.3906812,0.7248942", "l0.3844788,0.7244323", "l0.3824060,0.7249231", "l0.3799903,0.7263521", "l0.3719436,0.7260346", "l0.3591308,0.7208380", "l0.3525857,0.7169406", "l0.3517860,0.7145877", "l0.3412583,0.7033140", "l0.3394466,0.6984638", "l0.3428252,0.6924011", "l0.3421070,0.6830906", "l0.3485868,0.6775331", "l0.3491908,0.6759020", "l0.3490112,0.6743719", "l0.3474770,0.6731305", "l0.3338971,0.6710952", "l0.3318732,0.6612072", "l0.3285435,0.6541485", "l0.3291964,0.6482013", "l0.3466282,0.6519688", "l0.3533855,0.6539176", "l0.3552789,0.6531814", "l0.3552789,0.6531814", "l0.3629991,0.6616547", "l0.3638968,0.6652634", "l0.3689403,0.6680494", "l0.3796802,0.6724953", "l0.3798271,0.6705755", "l0.3791089,0.6684680", "l0.3819979,0.6655521", "l0.3900283,0.6603267", "l0.3942557,0.6586378", "l0.3996909,0.6587244", "l0.4092229,0.6617990", "l0.4145765,0.6693052", "l0.4206157,0.6722066", "l0.4235210,0.6721922", "l0.4287603,0.6706332", "l0.4319105,0.6676452", "l0.4352728,0.6674864", "l0.4379333,0.6716725", "l0.4379333,0.6716725", "l0.4400062,0.6728418", "l0.4402183,0.6778940", "l0.4430257,0.6841443", "l0.4623020,0.7034006", "l0.4657622,0.7101417", "l0.4694510,0.7107624", "l0.4711974,0.7104448", "l0.4728133,0.7091601", "l0.4738905,0.7072980", "l0.4743476,0.7017550", "l0.4756044,0.7004558", "l0.4875031,0.7006002", "l0.4852506,0.7166952", "l0.4883681,0.7539662", "l0.4884987,0.7699024", "l0.4910123,0.7759651", "l0.4917468,0.7814504", "l0.4916652,0.7874264", "l0.4929709,0.8076931", "l0.4943420,0.8087035", "l0.5067956,0.8096418", "l0.5140915,0.8052969", "l0.5246682,0.8106523", "l0.6144716,0.8103636", "l0.6144716,0.8103636", "l0.6086610,0.8173789", "l0.6093465,0.8513011", "l0.6093465,0.8513011", "l0.5460499,0.8515465", "l0.4681289,0.8510846", "l0.4627100,0.8476923", "l0.4604739,0.8449208", "l0.4518233,0.8428711", "l0.4509582,0.8448487", "l0.4511214,0.8530910", "l0.4498157,0.8598177", "l0.4486894,0.8615355", "l0.4470572,0.8624737", "l0.4362521,0.8617664", "l0.4254796,0.8579267", "l0.4191140,0.8528601", "l0.4130096,0.8467829", "l0.4074602,0.8459024", "l0.4044243,0.8501463", "l0.4038204,0.8538994", "l0.4020086,0.8576236", "l0.3977323,0.8584175", "l0.3945985,0.8570751", "l0.3911056,0.8538705", "l0.3774767,0.8477212", "l0.3707194,0.8470139", "l0.3694626,0.8492802", "c"]}, {"n": "La Paz", "u": "BO-L", "i": ["m0.2369936,0.4470070", "l0.2303342,0.4515107", "l0.2269393,0.4549173", "l0.2259926,0.4569527", "l0.2264006,0.4766419", "l0.2290938,0.4792835", "l0.2367814,0.4921884", "l0.2374506,0.4996368", "l0.2392460,0.5091061", "l0.2418412,0.5133933", "l0.2416127,0.5165257", "l0.2398010,0.5269910", "l0.2381361,0.5297048", "l0.2367814,0.5308596", "l0.2337455,0.5318412", "l0.2274289,0.5320000", "l0.2236259,0.5326351", "l0.2171461,0.5438799", "l0.2280655,0.5583437", "l0.2330926,0.5807901", "l0.2200840,0.5868383", "l0.2200840,0.5868383", "l0.2156771,0.5826233", "l0.2122005,0.5774123", "l0.2101276,0.5758245", "l0.2077936,0.5753481", "l0.2046271,0.5758389", "l0.1943606,0.5787836", "l0.1828700,0.5847020", "l0.1733216,0.5911833", "l0.1572118,0.6003639", "l0.1570649,0.6022982", "l0.1586155,0.6047954", "l0.1588930,0.6071772", "l0.1574077,0.6096167", "l0.1551553,0.6105983", "l0.1524458,0.6102230", "l0.1355363,0.5990647", "l0.1243557,0.5946765", "l0.1210097,0.5939981", "l0.1093232,0.5938249", "l0.0991546,0.5946765", "l0.0936215,0.5965964", "l0.0885617,0.5994978", "l0.0790949,0.6097899", "l0.0694813,0.6165743", "l0.0644215,0.6188406", "l0.0544161,0.6211214", "l0.0484586,0.6238063", "l0.0484586,0.6238063", "l0.0436273,0.6231278", "l0.0306677,0.6193603", "l0.0286764,0.6153762", "l0.0281704,0.6127058", "l0.0283989,0.6076247", "l0.0253630,0.6015764", "l0.0145253,0.5930309", "l0.0134970,0.5833451", "l0.0133827,0.5737603", "l0.0060052,0.5674233", "l0.0006189,0.5668026", "l0.0036875,0.5613173", "l0.0108855,0.5548938", "l0.0211846,0.5505200", "l0.0227842,0.5490621", "l0.0282357,0.5394773", "l0.0388287,0.5282757", "l0.0457818,0.5232524", "l0.0536164,0.5191240", "l0.0534531,0.5170454", "l0.0520005,0.5154719", "l0.0512333,0.5108816", "l0.0518209,0.5052520", "l0.0553954,0.5012246", "l0.0683551,0.4962735", "l0.0691059,0.4941804", "l0.0679307,0.4920729", "l0.0634422,0.4909614", "l0.0572561,0.4853462", "l0.0509559,0.4852452", "l0.0488177,0.4867320", "l0.0431050,0.4863422", "l0.0414891,0.4855483", "l0.0370332,0.4814343", "l0.0199768,0.4411464", "l0.0272564,0.4274332", "l0.0325447,0.4190320", "l0.0385022,0.4141386", "l0.0406567,0.4142541", "l0.0428602,0.4135901", "l0.0433498,0.4115836", "l0.0383553,0.4064015", "l0.0303576,0.4004687", "l0.0232412,0.3918799", "l0.0246122,0.3795957", "l0.0263587,0.3780368", "l0.0290681,0.3770841", "l0.0341442,0.3711369", "l0.0344870,0.3658104", "l0.0352541,0.3637606", "l0.0559341,0.3480121", "l0.0546446,0.3448653", "l0.0544324,0.3383551", "l0.0557545,0.3370848", "l0.0663312,0.3347319", "l0.0629852,0.3221735", "l0.0578437,0.3188390", "l0.0566849,0.3172801", "l0.0534695,0.3042309", "l0.0494706,0.2980238", "l0.0563421,0.2874863", "l0.0578274,0.2830692", "l0.0578764,0.2656462", "l0.0572398,0.2577359", "l0.0576479,0.2473860", "l0.0568318,0.2455528", "l0.0568318,0.2354195", "l0.0645521,0.2274081", "l0.0698241,0.2256037", "l0.0757326,0.2146043", "l0.0814779,0.2084117", "l0.0814779,0.2084117", "l0.0843832,0.2082240", "l0.0976204,0.2023057", "l0.1009827,0.1975421", "l0.1034473,0.1910031", "l0.1066138,0.1885636", "l0.1126039,0.1853013", "l0.1134690,0.1836846", "l0.1133221,0.1770590", "l0.1139097,0.1750958", "l0.1153460,0.1736379", "l0.1189368,0.1719345", "l0.1334307,0.1680082", "l0.1372011,0.1659873", "l0.1384579,0.1640098", "l0.2000080,0.1884048", "l0.2249806,0.1995053", "l0.2249806,0.1995053", "l0.2239687,0.2006601", "l0.2231036,0.2123813", "l0.2243767,0.2178521", "l0.2224507,0.2256759", "l0.2149100,0.2474871", "l0.2066511,0.2533621", "l0.1957317,0.2654875", "l0.1921245,0.2672052", "l0.1869505,0.2739896", "l0.1861997,0.2761838", "l0.1880277,0.2848880", "l0.1903128,0.2860284", "l0.1905250,0.2877462", "l0.1831311,0.2967103", "l0.1805359,0.2977929", "l0.1782019,0.3030761", "l0.1749049,0.3203403", "l0.1761943,0.3350928", "l0.1730768,0.3427144", "l0.1746111,0.3539881", "l0.1744152,0.3626924", "l0.1767656,0.3691015", "l0.1845022,0.3760448", "l0.1851224,0.3795524", "l0.1835228,0.3864812", "l0.1836371,0.3892672", "l0.1852040,0.3928903", "l0.1896926,0.3956907", "l0.1956501,0.3957485", "l0.1972496,0.3971775", "l0.2087240,0.4144273", "l0.2093279,0.4225109", "l0.2102093,0.4244884", "l0.2114171,0.4257154", "l0.2141755,0.4266104", "c"]}, {"n": "Pando", "u": "BO-N", "i": ["m0.0814779,0.2084117", "l0.0607817,0.1711839", "l0.0078496,0.0938992", "l0.0145579,0.0938992", "l0.0206950,0.0929176", "l0.0483607,0.0950829", "l0.0670656,0.0986916", "l0.0742310,0.0977389", "l0.0738393,0.1076124", "l0.0792745,0.1074248", "l0.0894920,0.1051007", "l0.0939316,0.1018673", "l0.1038227,0.0988071", "l0.1086377,0.0980132", "l0.1138281,0.0960067", "l0.1266898,0.0797674", "l0.1271631,0.0777609", "l0.1285505,0.0757978", "l0.1319128,0.0736758", "l0.1355036,0.0724777", "l0.1479899,0.0722323", "l0.1519725,0.0728530", "l0.1581585,0.0763607", "l0.1613739,0.0750183", "l0.1637080,0.0695186", "l0.1690779,0.0629074", "l0.1713140,0.0610164", "l0.1822661,0.0563972", "l0.1923694,0.0503201", "l0.1926468,0.0477074", "l0.2007099,0.0468557", "l0.2041865,0.0477218", "l0.2129350,0.0436800", "l0.2280165,0.0306597", "l0.2390012,0.0232690", "l0.2473091,0.0201655", "l0.2496758,0.0170187", "l0.2621294,0.0152576", "l0.2656060,0.0157628", "l0.2871673,0.0090506", "l0.2951977,0.0074627", "l0.3038973,0.0077658", "l0.3225044,0.0070874", "l0.3340113,0.0118221", "l0.3370309,0.0118365", "l0.3414378,0.0073472", "l0.3417316,0.0049510", "l0.3474933,0.0003896", "l0.3503986,0.0009092", "l0.3528632,0.0021651", "l0.3590492,0.0123562", "l0.3561929,0.0200500", "l0.3566989,0.0271664", "l0.3588860,0.0313526", "l0.3600938,0.0399414", "l0.3582495,0.0451524", "l0.3527653,0.0500170", "l0.3513126,0.0528606", "l0.3513126,0.0528606", "l0.3462528,0.0535968", "l0.3446696,0.0547372", "l0.3403443,0.0599193", "l0.3297023,0.0656500", "l0.3209374,0.0746141", "l0.3070148,0.0831885", "l0.3021019,0.0821636", "l0.2996699,0.0823224", "l0.2933697,0.0866673", "l0.2962260,0.0868261", "l0.2976297,0.0878654", "l0.2950345,0.0950973", "l0.2881956,0.1054183", "l0.2790226,0.1171683", "l0.2792185,0.1191171", "l0.2769824,0.1223216", "l0.2750727,0.1237218", "l0.2636637,0.1292648", "l0.2511774,0.1291494", "l0.2455953,0.1302464", "l0.2439141,0.1325127", "l0.2420534,0.1401632", "l0.2427389,0.1448113", "l0.2386095,0.1479581", "l0.2274126,0.1511482", "l0.2263517,0.1527505", "l0.2249806,0.1644139", "l0.2276574,0.1687011", "l0.2301384,0.1755000", "l0.2299262,0.1778384", "l0.2274289,0.1850126", "l0.2263027,0.1917826", "l0.2274126,0.1962863", "l0.2262864,0.1984227", "l0.2249806,0.1995053", "l0.2249806,0.1995053", "l0.2000080,0.1884048", "l0.1384579,0.1640098", "l0.1372011,0.1659873", "l0.1334307,0.1680082", "l0.1189368,0.1719345", "l0.1153460,0.1736379", "l0.1139097,0.1750958", "l0.1133221,0.1770590", "l0.1134690,0.1836846", "l0.1126039,0.1853013", "l0.1066138,0.1885636", "l0.1034473,0.1910031", "l0.1009827,0.1975421", "l0.0976204,0.2023057", "l0.0843832,0.2082240", "c"]}, {"n": "Oruro", "u": "BO-O", "i": ["m0.0484586,0.6238063", "l0.0544161,0.6211214", "l0.0644215,0.6188406", "l0.0694813,0.6165743", "l0.0790949,0.6097899", "l0.0885617,0.5994978", "l0.0936215,0.5965964", "l0.0991546,0.5946765", "l0.1093232,0.5938249", "l0.1210097,0.5939981", "l0.1243557,0.5946765", "l0.1355363,0.5990647", "l0.1524458,0.6102230", "l0.1551553,0.6105983", "l0.1574077,0.6096167", "l0.1588930,0.6071772", "l0.1586155,0.6047954", "l0.1570649,0.6022982", "l0.1572118,0.6003639", "l0.1733216,0.5911833", "l0.1828700,0.5847020", "l0.1943606,0.5787836", "l0.2046271,0.5758389", "l0.2077936,0.5753481", "l0.2101276,0.5758245", "l0.2122005,0.5774123", "l0.2156771,0.5826233", "l0.2200840,0.5868383", "l0.2200840,0.5868383", "l0.2308565,0.5936661", "l0.2353777,0.5975346", "l0.2436693,0.6072782", "l0.2501328,0.6202697", "l0.2501328,0.6202697", "l0.2489413,0.6224782", "l0.2419881,0.6246002", "l0.2405681,0.6257694", "l0.2397520,0.6324239", "l0.2402090,0.6357295", "l0.2417923,0.6375628", "l0.2467541,0.6393527", "l0.2517323,0.6386887", "l0.2581469,0.6400311", "l0.2574287,0.6417489", "l0.2540337,0.6435966", "l0.2509978,0.6445493", "l0.2457258,0.6478260", "l0.2446323,0.6581903", "l0.2483047,0.6655377", "l0.2497084,0.6672121", "l0.2582938,0.6734480", "l0.2675973,0.6766093", "l0.2720205,0.6767392", "l0.2766396,0.6780672", "l0.2789247,0.6797128", "l0.2828583,0.6904236", "l0.2851923,0.6951005", "l0.2890117,0.7000372", "l0.2980377,0.7093189", "l0.2983152,0.7108779", "l0.2968952,0.7125812", "l0.2945612,0.7131875", "l0.2770150,0.7144722", "l0.2712860,0.7143423", "l0.2656550,0.7151795", "l0.2590935,0.7185284", "l0.2477498,0.7280122", "l0.2442405,0.7300331", "l0.1738276,0.7572718", "l0.1625981,0.7614724", "l0.1595132,0.7619632", "l0.1364177,0.7546735", "l0.1101556,0.7472540", "l0.0898185,0.7406716", "l0.0898185,0.7406716", "l0.1004277,0.7304661", "l0.0964778,0.7255005", "l0.0915812,0.7216897", "l0.0840895,0.7188315", "l0.0725335,0.7080919", "l0.0628709,0.7021880", "l0.0574520,0.6936425", "l0.0601615,0.6882583", "l0.0545957,0.6775764", "l0.0526207,0.6711240", "l0.0519515,0.6636034", "l0.0527023,0.6577573", "l0.0513639,0.6545238", "l0.0484913,0.6507996", "l0.0471529,0.6382989", "l0.0434804,0.6346036", "l0.0423705,0.6323950", "l0.0431377,0.6304463", "l0.0478547,0.6275449", "l0.0486055,0.6261303", "c"]}, {"n": "Potosí", "u": "BO-P", "i": ["m0.3644192,0.8929603", "l0.3646150,0.8960494", "l0.3630808,0.9005098", "l0.3617587,0.9026173", "l0.3600775,0.9037721", "l0.3574660,0.9099647", "l0.3568621,0.9131837", "l0.3613996,0.9177163", "l0.3668838,0.9253524", "l0.3696748,0.9360920", "l0.3682385,0.9364529", "l0.3682385,0.9364529", "l0.3345989,0.9368715", "l0.3297676,0.9375643", "l0.3221616,0.9376510", "l0.3169875,0.9346341", "l0.3076677,0.9238511", "l0.2951977,0.9159408", "l0.2832174,0.9119423", "l0.2821401,0.9132126", "l0.2776026,0.9318048", "l0.2763132,0.9350671", "l0.2731467,0.9381706", "l0.2508346,0.9440456", "l0.2448771,0.9443776", "l0.2409435,0.9468316", "l0.2380872,0.9583651", "l0.2378097,0.9624358", "l0.2253234,0.9664342", "l0.2174072,0.9700286", "l0.2182233,0.9786751", "l0.2090178,0.9853729", "l0.2041538,0.9933843", "l0.1715915,0.9996346", "l0.1539638,0.9978158", "l0.1471249,0.9938895", "l0.1464883,0.9848388", "l0.1493120,0.9724536", "l0.1424894,0.9525190", "l0.1432892,0.9504548", "l0.1433219,0.9477410", "l0.1415264,0.9372323", "l0.1391924,0.9337680", "l0.1372011,0.9327286", "l0.1299378,0.9260597", "l0.1297420,0.9167925", "l0.1282893,0.9091852", "l0.1255309,0.9030937", "l0.1216300,0.8986333", "l0.1214178,0.8743104", "l0.1020436,0.8465231", "l0.0953190,0.8464365", "l0.0931808,0.8455560", "l0.0908467,0.8428566", "l0.0903897,0.8412110", "l0.0904387,0.8306447", "l0.0934093,0.8270792", "l0.0980774,0.8242211", "l0.0985017,0.8226621", "l0.0964125,0.8206701", "l0.0917281,0.8177831", "l0.0851341,0.8155601", "l0.0800743,0.8129618", "l0.0772995,0.8103203", "l0.0750308,0.8066971", "l0.0748186,0.8027996", "l0.0764508,0.8011541", "l0.0790296,0.8000570", "l0.0775933,0.7923343", "l0.0738556,0.7845106", "l0.0723540,0.7828217", "l0.0729742,0.7808730", "l0.0834039,0.7783613", "l0.0893941,0.7781303", "l0.0938663,0.7675639", "l0.0902755,0.7612126", "l0.0801722,0.7541972", "l0.0803844,0.7512091", "l0.0898185,0.7406716", "l0.0898185,0.7406716", "l0.1101556,0.7472540", "l0.1364177,0.7546735", "l0.1595132,0.7619632", "l0.1625981,0.7614724", "l0.1738276,0.7572718", "l0.2442405,0.7300331", "l0.2477498,0.7280122", "l0.2590935,0.7185284", "l0.2656550,0.7151795", "l0.2712860,0.7143423", "l0.2770150,0.7144722", "l0.2945612,0.7131875", "l0.2968952,0.7125812", "l0.2983152,0.7108779", "l0.2980377,0.7093189", "l0.2890117,0.7000372", "l0.2851923,0.6951005", "l0.2828583,0.6904236", "l0.2789247,0.6797128", "l0.2766396,0.6780672", "l0.2720205,0.6767392", "l0.2675973,0.6766093", "l0.2582938,0.6734480", "l0.2497084,0.6672121", "l0.2483047,0.6655377", "l0.2446323,0.6581903", "l0.2457258,0.6478260", "l0.2509978,0.6445493", "l0.2540337,0.6435966", "l0.2574287,0.6417489", "l0.2581469,0.6400311", "l0.2517323,0.6386887", "l0.2467541,0.6393527", "l0.2417923,0.6375628", "l0.2402090,0.6357295", "l0.2397520,0.6324239", "l0.2405681,0.6257694", "l0.2419881,0.6246002", "l0.2489413,0.6224782", "l0.2501328,0.6202697", "l0.2501328,0.6202697", "l0.2640554,0.6196346", "l0.2707474,0.6202986", "l0.2733916,0.6199232", "l0.2864002,0.6110746", "l0.2935002,0.6097466", "l0.2983642,0.6103384", "l0.3000127,0.6111468", "l0.3023304,0.6150587", "l0.3071617,0.6199666", "l0.3116666,0.6190716", "l0.3174282,0.6214822", "l0.3257035,0.6268087", "l0.3310244,0.6312836", "l0.3373900,0.6388042", "l0.3445716,0.6458051", "l0.3552789,0.6531814", "l0.3552789,0.6531814", "l0.3533855,0.6539176", "l0.3466282,0.6519688", "l0.3291964,0.6482013", "l0.3285435,0.6541485", "l0.3318732,0.6612072", "l0.3338971,0.6710952", "l0.3474770,0.6731305", "l0.3490112,0.6743719", "l0.3491908,0.6759020", "l0.3485868,0.6775331", "l0.3421070,0.6830906", "l0.3428252,0.6924011", "l0.3394466,0.6984638", "l0.3412583,0.7033140", "l0.3517860,0.7145877", "l0.3525857,0.7169406", "l0.3591308,0.7208380", "l0.3719436,0.7260346", "l0.3799903,0.7263521", "l0.3824060,0.7249231", "l0.3844788,0.7244323", "l0.3906812,0.7248942", "l0.3953493,0.7284741", "l0.3982219,0.7346667", "l0.3979118,0.7380156", "l0.4001969,0.7449444", "l0.4056484,0.7522051", "l0.4013558,0.7577482", "l0.3923950,0.7655142", "l0.3807901,0.7711727", "l0.3777216,0.7719377", "l0.3724169,0.7721542", "l0.3650720,0.7733235", "l0.3574823,0.7773797", "l0.3534181,0.7901258", "l0.3536793,0.7945573", "l0.3595062,0.8151993", "l0.3582658,0.8193998", "l0.3529775,0.8288980", "l0.3487827,0.8396088", "l0.3477218,0.8509691", "l0.3451756,0.8577968", "l0.3445227,0.8720297", "l0.3448002,0.8745558", "l0.3469220,0.8785687", "l0.3566173,0.8872585", "c"]}, {"n": "Santa Cruz", "u": "BO-S", "i": ["m0.8698940,0.7239559", "l0.7969675,0.7199719", "l0.7449820,0.7324148", "l0.6520448,0.7466910", "l0.6379916,0.7801656", "l0.6144716,0.8103636", "l0.6144716,0.8103636", "l0.5246682,0.8106523", "l0.5140915,0.8052969", "l0.5067956,0.8096418", "l0.4943420,0.8087035", "l0.4929709,0.8076931", "l0.4916652,0.7874264", "l0.4917468,0.7814504", "l0.4910123,0.7759651", "l0.4884987,0.7699024", "l0.4883681,0.7539662", "l0.4852506,0.7166952", "l0.4875031,0.7006002", "l0.4756044,0.7004558", "l0.4743476,0.7017550", "l0.4738905,0.7072980", "l0.4728133,0.7091601", "l0.4711974,0.7104448", "l0.4694510,0.7107624", "l0.4657622,0.7101417", "l0.4623020,0.7034006", "l0.4430257,0.6841443", "l0.4402183,0.6778940", "l0.4400062,0.6728418", "l0.4379333,0.6716725", "l0.4379333,0.6716725", "l0.4421280,0.6663605", "l0.4411813,0.6590131", "l0.4347831,0.6545671", "l0.4323348,0.6537732", "l0.4311107,0.6526617", "l0.4266385,0.6400311", "l0.4138910,0.6216843", "l0.4079335,0.6158526", "l0.4077050,0.6132832", "l0.4083579,0.6116087", "l0.4132055,0.6080866", "l0.4186734,0.6030344", "l0.4318941,0.5860444", "l0.4330856,0.5839080", "l0.4331509,0.5801983", "l0.4380312,0.5769360", "l0.4480855,0.5768927", "l0.4484609,0.5714940", "l0.4476122,0.5699639", "l0.4382760,0.5599316", "l0.4341955,0.5570446", "l0.4088312,0.5423931", "l0.4028900,0.5318989", "l0.4019107,0.5291130", "l0.4016006,0.5227183", "l0.4047181,0.5157462", "l0.4086517,0.5098856", "l0.4135972,0.4974716", "l0.4118997,0.4814632", "l0.4103328,0.4736683", "l0.4085864,0.4693523", "l0.4080478,0.4630153", "l0.4099411,0.4580353", "l0.4099411,0.4580353", "l0.4165189,0.4593633", "l0.4248757,0.4598396", "l0.5154136,0.4631164", "l0.5177477,0.4618894", "l0.5120513,0.4518571", "l0.5084931,0.4470647", "l0.4970841,0.4416372", "l0.4928240,0.4379130", "l0.4771713,0.4166647", "l0.4717034,0.4059251", "l0.4698590,0.4000789", "l0.4715565,0.3834354", "l0.4697774,0.3765355", "l0.4687491,0.3744713", "l0.5001852,0.3667342", "l0.6643026,0.2830981", "l0.6643026,0.2830981", "l0.6656246,0.2844983", "l0.6702601,0.2863171", "l0.6725941,0.2865336", "l0.7099551,0.2820443", "l0.7128114,0.2855953", "l0.7166308,0.2887277", "l0.7303086,0.2959163", "l0.7342095,0.2961329", "l0.7398569,0.3003190", "l0.7562278,0.3051547", "l0.7638176,0.3188535", "l0.7624955,0.3220147", "l0.7604226,0.3248007", "l0.7572072,0.3273845", "l0.7558035,0.3323213", "l0.7583823,0.3415163", "l0.7602920,0.3439992", "l0.7723376,0.3663300", "l0.7741657,0.4015369", "l0.7484423,0.4018256", "l0.7767609,0.4304068", "l0.7822777,0.4894169", "l0.9239523,0.4944402", "l0.9259436,0.4937040", "l0.9280981,0.4909037", "l0.9331416,0.4906294", "l0.9334027,0.4994491", "l0.9315910,0.5077348", "l0.9255845,0.5128303", "l0.9215856,0.5181568", "l0.9209328,0.5204664", "l0.9219610,0.5375430", "l0.9251601,0.5457998", "l0.9265638,0.5535369", "l0.9264006,0.5594841", "l0.9279675,0.5647096", "l0.9295508,0.5661819", "l0.9358674,0.5677553", "l0.9395235,0.5697618", "l0.9501817,0.5763297", "l0.9511447,0.5783073", "l0.9525647,0.5795631", "l0.9587344,0.5827533", "l0.9614602,0.5829986", "l0.9682012,0.5800539", "l0.9810465,0.5900718", "l0.9793817,0.5915008", "l0.9782555,0.5933918", "l0.9799203,0.5971305", "l0.9833806,0.6002195", "l0.9832500,0.6091403", "l0.9995230,0.6364513", "l0.9969441,0.6397136", "l0.9960464,0.6418499", "l0.9790063,0.6900482", "l0.9829072,0.6906256", "l0.9844089,0.7005713", "l0.9784840,0.7008745", "l0.9501328,0.7540961", "l0.9722980,0.7721109", "l0.9682665,0.7762393", "l0.9510794,0.7854921", "l0.9470316,0.7869501", "l0.9488107,0.7829660", "l0.9491534,0.7803389", "l0.9493003,0.7729337", "l0.9476845,0.7609960", "l0.9380382,0.7558572", "c"]}, {"n": "Tarija", "u": "BO-T", "i": ["m0.5778451,0.9477266", "l0.5767352,0.9475100", "l0.5678724,0.9411442", "l0.5656200,0.9380696", "l0.5649345,0.9303902", "l0.5635797,0.9288456", "l0.4710668,0.9291199", "l0.4667905,0.9364384", "l0.4557895,0.9611366", "l0.4520028,0.9658424", "l0.4478570,0.9691769", "l0.4453598,0.9734641", "l0.4431726,0.9795701", "l0.4428462,0.9881155", "l0.4414098,0.9942360", "l0.4401694,0.9964445", "l0.4383740,0.9971663", "l0.4375579,0.9950732", "l0.4371988,0.9891116", "l0.4363337,0.9867442", "l0.4289072,0.9794401", "l0.4287277,0.9772172", "l0.4296744,0.9744312", "l0.4281891,0.9692924", "l0.4229007,0.9610211", "l0.4211869,0.9494154", "l0.4174329,0.9457201", "l0.4099411,0.9427609", "l0.4072969,0.9432806", "l0.3864048,0.9374633", "l0.3848542,0.9361497", "l0.3682385,0.9364529", "l0.3682385,0.9364529", "l0.3696748,0.9360920", "l0.3668838,0.9253524", "l0.3613996,0.9177163", "l0.3568621,0.9131837", "l0.3574660,0.9099647", "l0.3600775,0.9037721", "l0.3617587,0.9026173", "l0.3630808,0.9005098", "l0.3646150,0.8960494", "l0.3644192,0.8929603", "l0.3644192,0.8929603", "l0.3694626,0.8492802", "l0.3707194,0.8470139", "l0.3774767,0.8477212", "l0.3911056,0.8538705", "l0.3945985,0.8570751", "l0.3977323,0.8584175", "l0.4020086,0.8576236", "l0.4038204,0.8538994", "l0.4044243,0.8501463", "l0.4074602,0.8459024", "l0.4130096,0.8467829", "l0.4191140,0.8528601", "l0.4254796,0.8579267", "l0.4362521,0.8617664", "l0.4470572,0.8624737", "l0.4486894,0.8615355", "l0.4498157,0.8598177", "l0.4511214,0.8530910", "l0.4509582,0.8448487", "l0.4518233,0.8428711", "l0.4604739,0.8449208", "l0.4627100,0.8476923", "l0.4681289,0.8510846", "l0.5460499,0.8515465", "l0.6093465,0.8513011", "l0.6093465,0.8513011", "l0.6095261,0.8556893", "c"]}]} """;
}
