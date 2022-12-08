import 'package:flutter/painting.dart';

void iNine(s, canvas, cClrs, dfltClr, callback) {
  Path p401 = Path();
  p401.moveTo(s.width * 0.9361000, s.height * 0.6353559);
  p401.lineTo(s.width * 0.9362500, s.height * 0.6354726);
  p401.lineTo(s.width * 0.9364500, s.height * 0.6360560);
  p401.lineTo(s.width * 0.9366000, s.height * 0.6362894);
  p401.lineTo(s.width * 0.9367500, s.height * 0.6364061);
  p401.lineTo(s.width * 0.9369000, s.height * 0.6367561);
  p401.lineTo(s.width * 0.9373000, s.height * 0.6372229);
  p401.lineTo(s.width * 0.9375000, s.height * 0.6378063);
  p401.lineTo(s.width * 0.9375000, s.height * 0.6382730);
  p401.lineTo(s.width * 0.9375500, s.height * 0.6389732);
  p401.lineTo(s.width * 0.9376500, s.height * 0.6392065);
  p401.lineTo(s.width * 0.9378000, s.height * 0.6395566);
  p401.lineTo(s.width * 0.9379000, s.height * 0.6395566);
  p401.lineTo(s.width * 0.9379500, s.height * 0.6400233);
  p401.lineTo(s.width * 0.9383000, s.height * 0.6403734);
  p401.lineTo(s.width * 0.9385000, s.height * 0.6402567);
  p401.lineTo(s.width * 0.9385500, s.height * 0.6403734);
  p401.lineTo(s.width * 0.9385500, s.height * 0.6407235);
  p401.lineTo(s.width * 0.9384000, s.height * 0.6408401);
  p401.lineTo(s.width * 0.9383000, s.height * 0.6411902);
  p401.lineTo(s.width * 0.9380500, s.height * 0.6409568);
  p401.lineTo(s.width * 0.9376500, s.height * 0.6404901);
  p401.lineTo(s.width * 0.9374000, s.height * 0.6404901);
  p401.lineTo(s.width * 0.9372500, s.height * 0.6400233);
  p401.lineTo(s.width * 0.9369000, s.height * 0.6395566);
  p401.lineTo(s.width * 0.9366000, s.height * 0.6383897);
  p401.lineTo(s.width * 0.9363000, s.height * 0.6372229);
  p401.lineTo(s.width * 0.9360500, s.height * 0.6368728);
  p401.lineTo(s.width * 0.9357000, s.height * 0.6360560);
  p401.lineTo(s.width * 0.9357000, s.height * 0.6354726);
  p401.lineTo(s.width * 0.9357000, s.height * 0.6352392);
  p401.lineTo(s.width * 0.9358500, s.height * 0.6350058);
  p401.lineTo(s.width * 0.9360000, s.height * 0.6351225);
  p401.lineTo(s.width * 0.9361000, s.height * 0.6353559);
  p401.close();

  Paint paint401fill = Paint()..style = PaintingStyle.fill;
  paint401fill.color = cClrs.sB ?? dfltClr;
  canvas.drawPath(p401, paint401fill, onTapUp: (tabdetail) {
    callback('sb', tabdetail);
  });

  Path p402 = Path();
  p402.moveTo(s.width * 0.5119500, s.height * 0.5849475);
  p402.lineTo(s.width * 0.5118500, s.height * 0.5849475);
  p402.lineTo(s.width * 0.5117500, s.height * 0.5852975);
  p402.lineTo(s.width * 0.5116500, s.height * 0.5852975);
  p402.lineTo(s.width * 0.5116000, s.height * 0.5848308);
  p402.lineTo(s.width * 0.5115000, s.height * 0.5838973);
  p402.lineTo(s.width * 0.5115000, s.height * 0.5835473);
  p402.lineTo(s.width * 0.5117000, s.height * 0.5829638);
  p402.lineTo(s.width * 0.5118500, s.height * 0.5828471);
  p402.lineTo(s.width * 0.5120000, s.height * 0.5824971);
  p402.lineTo(s.width * 0.5122000, s.height * 0.5826138);
  p402.lineTo(s.width * 0.5123000, s.height * 0.5830805);
  p402.lineTo(s.width * 0.5123500, s.height * 0.5834306);
  p402.lineTo(s.width * 0.5123000, s.height * 0.5838973);
  p402.lineTo(s.width * 0.5122000, s.height * 0.5842474);
  p402.lineTo(s.width * 0.5120500, s.height * 0.5847141);
  p402.lineTo(s.width * 0.5119500, s.height * 0.5849475);
  p402.close();

  Paint paint402fill = Paint()..style = PaintingStyle.fill;
  paint402fill.color = cClrs.sT ?? dfltClr;
  canvas.drawPath(p402, paint402fill, onTapUp: (tabdetail) {
    callback('st', tabdetail);
  });

  Path p403 = Path();
  p403.moveTo(s.width * 0.5142500, s.height * 0.5735123);
  p403.lineTo(s.width * 0.5142000, s.height * 0.5738623);
  p403.lineTo(s.width * 0.5141000, s.height * 0.5739790);
  p403.lineTo(s.width * 0.5139500, s.height * 0.5738623);
  p403.lineTo(s.width * 0.5139500, s.height * 0.5735123);
  p403.lineTo(s.width * 0.5140500, s.height * 0.5733956);
  p403.lineTo(s.width * 0.5140500, s.height * 0.5730455);
  p403.lineTo(s.width * 0.5141500, s.height * 0.5728121);
  p403.lineTo(s.width * 0.5143000, s.height * 0.5729288);
  p403.lineTo(s.width * 0.5142500, s.height * 0.5735123);
  p403.close();

  Paint paint403fill = Paint()..style = PaintingStyle.fill;
  paint403fill.color = cClrs.sT ?? dfltClr;
  canvas.drawPath(p403, paint403fill, onTapUp: (tabdetail) {
    callback('st', tabdetail);
  });

  Path p404 = Path();
  p404.moveTo(s.width * 0.3171000, s.height * 0.4504084);
  p404.lineTo(s.width * 0.3171000, s.height * 0.4505251);
  p404.lineTo(s.width * 0.3169000, s.height * 0.4504084);
  p404.lineTo(s.width * 0.3169000, s.height * 0.4502917);
  p404.lineTo(s.width * 0.3171000, s.height * 0.4504084);
  p404.close();

  Paint paint404fill = Paint()..style = PaintingStyle.fill;
  paint404fill.color = cClrs.sX ?? dfltClr;
  canvas.drawPath(p404, paint404fill, onTapUp: (tabdetail) {
    callback('sx', tabdetail);
  });

  Path p405 = Path();
  p405.moveTo(s.width * 0.6245000, s.height * 0.6558926);
  p405.lineTo(s.width * 0.6243500, s.height * 0.6561260);
  p405.lineTo(s.width * 0.6241000, s.height * 0.6561260);
  p405.lineTo(s.width * 0.6239000, s.height * 0.6563594);
  p405.lineTo(s.width * 0.6237000, s.height * 0.6563594);
  p405.lineTo(s.width * 0.6237000, s.height * 0.6561260);
  p405.lineTo(s.width * 0.6239500, s.height * 0.6561260);
  p405.lineTo(s.width * 0.6241500, s.height * 0.6560093);
  p405.lineTo(s.width * 0.6243500, s.height * 0.6556593);
  p405.lineTo(s.width * 0.6244500, s.height * 0.6556593);
  p405.lineTo(s.width * 0.6245000, s.height * 0.6558926);
  p405.close();

  Paint paint405fill = Paint()..style = PaintingStyle.fill;
  paint405fill.color = cClrs.sC ?? dfltClr;
  canvas.drawPath(p405, paint405fill, onTapUp: (tabdetail) {
    callback('sc', tabdetail);
  });

  Path p406 = Path();
  p406.moveTo(s.width * 0.6242500, s.height * 0.6555426);
  p406.lineTo(s.width * 0.6241500, s.height * 0.6556593);
  p406.lineTo(s.width * 0.6239500, s.height * 0.6556593);
  p406.lineTo(s.width * 0.6239500, s.height * 0.6554259);
  p406.lineTo(s.width * 0.6242500, s.height * 0.6555426);
  p406.close();

  Paint paint406fill = Paint()..style = PaintingStyle.fill;
  paint406fill.color = cClrs.sC ?? dfltClr;
  canvas.drawPath(p406, paint406fill, onTapUp: (tabdetail) {
    callback('sc', tabdetail);
  });

  Path p407 = Path();
  p407.moveTo(s.width * 0.6502000, s.height * 0.6201867);
  p407.lineTo(s.width * 0.6504000, s.height * 0.6206534);
  p407.lineTo(s.width * 0.6503000, s.height * 0.6210035);
  p407.lineTo(s.width * 0.6502000, s.height * 0.6206534);
  p407.lineTo(s.width * 0.6500500, s.height * 0.6204201);
  p407.lineTo(s.width * 0.6501500, s.height * 0.6198366);
  p407.lineTo(s.width * 0.6502000, s.height * 0.6201867);
  p407.close();

  Paint paint407fill = Paint()..style = PaintingStyle.fill;
  paint407fill.color = cClrs.sC ?? dfltClr;
  canvas.drawPath(p407, paint407fill, onTapUp: (tabdetail) {
    callback('sc', tabdetail);
  });

  Path p408 = Path();
  p408.moveTo(s.width * 0.2938500, s.height * 0.4219370);
  p408.lineTo(s.width * 0.2942000, s.height * 0.4219370);
  p408.lineTo(s.width * 0.2943500, s.height * 0.4224037);
  p408.lineTo(s.width * 0.2942000, s.height * 0.4224037);
  p408.lineTo(s.width * 0.2940500, s.height * 0.4222870);
  p408.lineTo(s.width * 0.2938000, s.height * 0.4224037);
  p408.lineTo(s.width * 0.2937500, s.height * 0.4220537);
  p408.lineTo(s.width * 0.2938500, s.height * 0.4219370);
  p408.close();

  Paint paint408fill = Paint()..style = PaintingStyle.fill;
  paint408fill.color = cClrs.tC ?? dfltClr;
  canvas.drawPath(p408, paint408fill, onTapUp: (tabdetail) {
    callback('tc', tabdetail);
  });

  Path p409 = Path();
  p409.moveTo(s.width * 0.2925000, s.height * 0.4218203);
  p409.lineTo(s.width * 0.2926500, s.height * 0.4222870);
  p409.lineTo(s.width * 0.2929500, s.height * 0.4221704);
  p409.lineTo(s.width * 0.2928500, s.height * 0.4224037);
  p409.lineTo(s.width * 0.2925500, s.height * 0.4224037);
  p409.lineTo(s.width * 0.2923500, s.height * 0.4221704);
  p409.lineTo(s.width * 0.2925000, s.height * 0.4218203);
  p409.close();

  Paint paint409fill = Paint()..style = PaintingStyle.fill;
  paint409fill.color = cClrs.tC ?? dfltClr;
  canvas.drawPath(p409, paint409fill, onTapUp: (tabdetail) {
    callback('tc', tabdetail);
  });

  Path p410 = Path();
  p410.moveTo(s.width * 0.2936000, s.height * 0.4211202);
  p410.lineTo(s.width * 0.2936000, s.height * 0.4217036);
  p410.lineTo(s.width * 0.2933500, s.height * 0.4214702);
  p410.lineTo(s.width * 0.2933000, s.height * 0.4211202);
  p410.lineTo(s.width * 0.2933500, s.height * 0.4210035);
  p410.lineTo(s.width * 0.2936000, s.height * 0.4211202);
  p410.close();

  Paint paint410fill = Paint()..style = PaintingStyle.fill;
  paint410fill.color = cClrs.tC ?? dfltClr;
  canvas.drawPath(p410, paint410fill, onTapUp: (tabdetail) {
    callback('tc', tabdetail);
  });

  Path p411 = Path();
  p411.moveTo(s.width * 0.007350000, s.height * 0.7462077);
  p411.lineTo(s.width * 0.007100000, s.height * 0.7458576);
  p411.lineTo(s.width * 0.007100000, s.height * 0.7456243);
  p411.lineTo(s.width * 0.007250000, s.height * 0.7453909);
  p411.lineTo(s.width * 0.007350000, s.height * 0.7462077);
  p411.close();

  Paint paint411fill = Paint()..style = PaintingStyle.fill;
  paint411fill.color = cClrs.tO ?? dfltClr;
  canvas.drawPath(p411, paint411fill, onTapUp: (tabdetail) {
    callback('to', tabdetail);
  });

  Path p412 = Path();
  p412.moveTo(s.width * 0.005950000, s.height * 0.7437573);
  p412.lineTo(s.width * 0.006100000, s.height * 0.7437573);
  p412.lineTo(s.width * 0.006300000, s.height * 0.7441074);
  p412.lineTo(s.width * 0.006450000, s.height * 0.7442240);
  p412.lineTo(s.width * 0.006550000, s.height * 0.7437573);
  p412.lineTo(s.width * 0.006700000, s.height * 0.7441074);
  p412.lineTo(s.width * 0.006550000, s.height * 0.7444574);
  p412.lineTo(s.width * 0.006600000, s.height * 0.7446908);
  p412.lineTo(s.width * 0.006550000, s.height * 0.7449242);
  p412.lineTo(s.width * 0.006450000, s.height * 0.7448075);
  p412.lineTo(s.width * 0.006300000, s.height * 0.7444574);
  p412.lineTo(s.width * 0.005950000, s.height * 0.7442240);
  p412.lineTo(s.width * 0.005950000, s.height * 0.7437573);
  p412.close();

  Paint paint412fill = Paint()..style = PaintingStyle.fill;
  paint412fill.color = cClrs.tO ?? dfltClr;
  canvas.drawPath(p412, paint412fill, onTapUp: (tabdetail) {
    callback('to', tabdetail);
  });

  Path p413 = Path();
  p413.moveTo(s.width * 0.005550000, s.height * 0.7337223);
  p413.lineTo(s.width * 0.005450000, s.height * 0.7338390);
  p413.lineTo(s.width * 0.005400000, s.height * 0.7332555);
  p413.lineTo(s.width * 0.005500000, s.height * 0.7333722);
  p413.lineTo(s.width * 0.005550000, s.height * 0.7337223);
  p413.close();

  Paint paint413fill = Paint()..style = PaintingStyle.fill;
  paint413fill.color = cClrs.tO ?? dfltClr;
  canvas.drawPath(p413, paint413fill, onTapUp: (tabdetail) {
    callback('to', tabdetail);
  });

  Path p414 = Path();
  p414.moveTo(s.width * 0.007750000, s.height * 0.7249708);
  p414.lineTo(s.width * 0.007500000, s.height * 0.7253209);
  p414.lineTo(s.width * 0.007400000, s.height * 0.7253209);
  p414.lineTo(s.width * 0.007350000, s.height * 0.7252042);
  p414.lineTo(s.width * 0.007500000, s.height * 0.7246208);
  p414.lineTo(s.width * 0.007650000, s.height * 0.7247375);
  p414.lineTo(s.width * 0.007750000, s.height * 0.7249708);
  p414.close();

  Paint paint414fill = Paint()..style = PaintingStyle.fill;
  paint414fill.color = cClrs.tO ?? dfltClr;
  canvas.drawPath(p414, paint414fill, onTapUp: (tabdetail) {
    callback('to', tabdetail);
  });

  Path p415 = Path();
  p415.moveTo(s.width * 0.0007000000, s.height * 0.7024504);
  p415.lineTo(s.width * 0.0006500000, s.height * 0.7025671);
  p415.lineTo(s.width * 0.0005000000, s.height * 0.7024504);
  p415.lineTo(s.width * 0.0005500000, s.height * 0.7022170);
  p415.lineTo(s.width * 0.0007000000, s.height * 0.7022170);
  p415.lineTo(s.width * 0.0007000000, s.height * 0.7024504);
  p415.close();

  Paint paint415fill = Paint()..style = PaintingStyle.fill;
  paint415fill.color = cClrs.tO ?? dfltClr;
  canvas.drawPath(p415, paint415fill, onTapUp: (tabdetail) {
    callback('to', tabdetail);
  });

  Path p416 = Path();
  p416.moveTo(s.width * 0.3214000, s.height * 0.5043174);
  p416.lineTo(s.width * 0.3213000, s.height * 0.5049008);
  p416.lineTo(s.width * 0.3211500, s.height * 0.5053676);
  p416.lineTo(s.width * 0.3210500, s.height * 0.5054842);
  p416.lineTo(s.width * 0.3210000, s.height * 0.5059510);
  p416.lineTo(s.width * 0.3211000, s.height * 0.5066511);
  p416.lineTo(s.width * 0.3210000, s.height * 0.5067678);
  p416.lineTo(s.width * 0.3210000, s.height * 0.5075846);
  p416.lineTo(s.width * 0.3211000, s.height * 0.5079347);
  p416.lineTo(s.width * 0.3212000, s.height * 0.5081680);
  p416.lineTo(s.width * 0.3211000, s.height * 0.5084014);
  p416.lineTo(s.width * 0.3210500, s.height * 0.5087515);
  p416.lineTo(s.width * 0.3210500, s.height * 0.5095683);
  p416.lineTo(s.width * 0.3209500, s.height * 0.5096849);
  p416.lineTo(s.width * 0.3207500, s.height * 0.5099183);
  p416.lineTo(s.width * 0.3205000, s.height * 0.5100350);
  p416.lineTo(s.width * 0.3203500, s.height * 0.5100350);
  p416.lineTo(s.width * 0.3201000, s.height * 0.5101517);
  p416.lineTo(s.width * 0.3198500, s.height * 0.5100350);
  p416.lineTo(s.width * 0.3196500, s.height * 0.5101517);
  p416.lineTo(s.width * 0.3195000, s.height * 0.5100350);
  p416.lineTo(s.width * 0.3192500, s.height * 0.5102684);
  p416.lineTo(s.width * 0.3190500, s.height * 0.5100350);
  p416.lineTo(s.width * 0.3187500, s.height * 0.5100350);
  p416.lineTo(s.width * 0.3186000, s.height * 0.5102684);
  p416.lineTo(s.width * 0.3184500, s.height * 0.5101517);
  p416.lineTo(s.width * 0.3187000, s.height * 0.5099183);
  p416.lineTo(s.width * 0.3188500, s.height * 0.5095683);
  p416.lineTo(s.width * 0.3190500, s.height * 0.5094516);
  p416.lineTo(s.width * 0.3192500, s.height * 0.5091015);
  p416.lineTo(s.width * 0.3193500, s.height * 0.5087515);
  p416.lineTo(s.width * 0.3196500, s.height * 0.5088681);
  p416.lineTo(s.width * 0.3198000, s.height * 0.5084014);
  p416.lineTo(s.width * 0.3197000, s.height * 0.5074679);
  p416.lineTo(s.width * 0.3198000, s.height * 0.5070012);
  p416.lineTo(s.width * 0.3198000, s.height * 0.5064177);
  p416.lineTo(s.width * 0.3198000, s.height * 0.5061844);
  p416.lineTo(s.width * 0.3196500, s.height * 0.5057176);
  p416.lineTo(s.width * 0.3195000, s.height * 0.5056009);
  p416.lineTo(s.width * 0.3193000, s.height * 0.5054842);
  p416.lineTo(s.width * 0.3192500, s.height * 0.5053676);
  p416.lineTo(s.width * 0.3194500, s.height * 0.5050175);
  p416.lineTo(s.width * 0.3200000, s.height * 0.5049008);
  p416.lineTo(s.width * 0.3201000, s.height * 0.5046674);
  p416.lineTo(s.width * 0.3206500, s.height * 0.5046674);
  p416.lineTo(s.width * 0.3207000, s.height * 0.5045508);
  p416.lineTo(s.width * 0.3213000, s.height * 0.5043174);
  p416.lineTo(s.width * 0.3214000, s.height * 0.5043174);
  p416.close();

  Paint paint416fill = Paint()..style = PaintingStyle.fill;
  paint416fill.color = cClrs.tT ?? dfltClr;
  canvas.drawPath(p416, paint416fill, onTapUp: (tabdetail) {
    callback('tt', tabdetail);
  });

  Path p417 = Path();
  p417.moveTo(s.width * 0.3226000, s.height * 0.5005834);
  p417.lineTo(s.width * 0.3225500, s.height * 0.5011669);
  p417.lineTo(s.width * 0.3224000, s.height * 0.5012835);
  p417.lineTo(s.width * 0.3222000, s.height * 0.5016336);
  p417.lineTo(s.width * 0.3221000, s.height * 0.5016336);
  p417.lineTo(s.width * 0.3217500, s.height * 0.5021004);
  p417.lineTo(s.width * 0.3216500, s.height * 0.5018670);
  p417.lineTo(s.width * 0.3218000, s.height * 0.5015169);
  p417.lineTo(s.width * 0.3221500, s.height * 0.5009335);
  p417.lineTo(s.width * 0.3226000, s.height * 0.5005834);
  p417.close();

  Paint paint417fill = Paint()..style = PaintingStyle.fill;
  paint417fill.color = cClrs.tT ?? dfltClr;
  canvas.drawPath(p417, paint417fill, onTapUp: (tabdetail) {
    callback('tt', tabdetail);
  });

  Path p418 = Path();
  p418.moveTo(s.width * 0.9994500, s.height * 0.6494749);
  p418.lineTo(s.width * 0.9994500, s.height * 0.6492415);
  p418.lineTo(s.width * 0.9995000, s.height * 0.6492415);
  p418.lineTo(s.width * 0.9995000, s.height * 0.6493582);
  p418.lineTo(s.width * 0.9994500, s.height * 0.6494749);
  p418.close();

  Paint paint418fill = Paint()..style = PaintingStyle.fill;
  paint418fill.color = cClrs.tV ?? dfltClr;
  canvas.drawPath(p418, paint418fill, onTapUp: (tabdetail) {
    callback('tv', tabdetail);
  });

  Path p419 = Path();
  p419.moveTo(s.width * 0.3211000, s.height * 0.4870478);
  p419.lineTo(s.width * 0.3210500, s.height * 0.4871645);
  p419.lineTo(s.width * 0.3208000, s.height * 0.4868145);
  p419.lineTo(s.width * 0.3208000, s.height * 0.4863477);
  p419.lineTo(s.width * 0.3209000, s.height * 0.4859977);
  p419.lineTo(s.width * 0.3210000, s.height * 0.4854142);
  p419.lineTo(s.width * 0.3212000, s.height * 0.4854142);
  p419.lineTo(s.width * 0.3212500, s.height * 0.4858810);
  p419.lineTo(s.width * 0.3212000, s.height * 0.4868145);
  p419.lineTo(s.width * 0.3211000, s.height * 0.4870478);
  p419.close();

  Paint paint419fill = Paint()..style = PaintingStyle.fill;
  paint419fill.color = cClrs.vC ?? dfltClr;
  canvas.drawPath(p419, paint419fill, onTapUp: (tabdetail) {
    callback('vc', tabdetail);
  });

  Path p420 = Path();
  p420.moveTo(s.width * 0.3130500, s.height * 0.4473746);
  p420.lineTo(s.width * 0.3128500, s.height * 0.4476079);
  p420.lineTo(s.width * 0.3128000, s.height * 0.4476079);
  p420.lineTo(s.width * 0.3126500, s.height * 0.4478413);
  p420.lineTo(s.width * 0.3126000, s.height * 0.4477246);
  p420.lineTo(s.width * 0.3126500, s.height * 0.4473746);
  p420.lineTo(s.width * 0.3129500, s.height * 0.4472579);
  p420.lineTo(s.width * 0.3130500, s.height * 0.4473746);
  p420.close();

  Paint paint420fill = Paint()..style = PaintingStyle.fill;
  paint420fill.color = cClrs.vG ?? dfltClr;
  canvas.drawPath(p420, paint420fill, onTapUp: (tabdetail) {
    callback('vg', tabdetail);
  });

  Path p421 = Path();
  p421.moveTo(s.width * 0.3122500, s.height * 0.4525088);
  p421.lineTo(s.width * 0.3124000, s.height * 0.4528588);
  p421.lineTo(s.width * 0.3118500, s.height * 0.4530922);
  p421.lineTo(s.width * 0.3118000, s.height * 0.4525088);
  p421.lineTo(s.width * 0.3121500, s.height * 0.4522754);
  p421.lineTo(s.width * 0.3122500, s.height * 0.4525088);
  p421.close();

  Paint paint421fill = Paint()..style = PaintingStyle.fill;
  paint421fill.color = cClrs.vI ?? dfltClr;
  canvas.drawPath(p421, paint421fill, onTapUp: (tabdetail) {
    callback('vi', tabdetail);
  });

  Path p422 = Path();
  p422.moveTo(s.width * 0.3126000, s.height * 0.4480747);
  p422.lineTo(s.width * 0.3125000, s.height * 0.4483081);
  p422.lineTo(s.width * 0.3122500, s.height * 0.4483081);
  p422.lineTo(s.width * 0.3122500, s.height * 0.4480747);
  p422.lineTo(s.width * 0.3124000, s.height * 0.4479580);
  p422.lineTo(s.width * 0.3126000, s.height * 0.4480747);
  p422.close();

  Paint paint422fill = Paint()..style = PaintingStyle.fill;
  paint422fill.color = cClrs.vI ?? dfltClr;
  canvas.drawPath(p422, paint422fill, onTapUp: (tabdetail) {
    callback('vi', tabdetail);
  });

  Path p423 = Path();
  p423.moveTo(s.width * 0.3119000, s.height * 0.4478413);
  p423.lineTo(s.width * 0.3121000, s.height * 0.4481914);
  p423.lineTo(s.width * 0.3120000, s.height * 0.4484247);
  p423.lineTo(s.width * 0.3118500, s.height * 0.4481914);
  p423.lineTo(s.width * 0.3116000, s.height * 0.4481914);
  p423.lineTo(s.width * 0.3117000, s.height * 0.4479580);
  p423.lineTo(s.width * 0.3119000, s.height * 0.4478413);
  p423.close();

  Paint paint423fill = Paint()..style = PaintingStyle.fill;
  paint423fill.color = cClrs.vI ?? dfltClr;
  canvas.drawPath(p423, paint423fill, onTapUp: (tabdetail) {
    callback('vi', tabdetail);
  });

  Path p424 = Path();
  p424.moveTo(s.width * 0.9659000, s.height * 0.7372229);
  p424.lineTo(s.width * 0.9656500, s.height * 0.7369895);
  p424.lineTo(s.width * 0.9657500, s.height * 0.7365228);
  p424.lineTo(s.width * 0.9660000, s.height * 0.7364061);
  p424.lineTo(s.width * 0.9661000, s.height * 0.7368728);
  p424.lineTo(s.width * 0.9660500, s.height * 0.7371062);
  p424.lineTo(s.width * 0.9659000, s.height * 0.7372229);
  p424.close();

  Paint paint424fill = Paint()..style = PaintingStyle.fill;
  paint424fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p424, paint424fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p425 = Path();
  p425.moveTo(s.width * 0.9653000, s.height * 0.7327888);
  p425.lineTo(s.width * 0.9652000, s.height * 0.7327888);
  p425.lineTo(s.width * 0.9650500, s.height * 0.7326721);
  p425.lineTo(s.width * 0.9648500, s.height * 0.7320887);
  p425.lineTo(s.width * 0.9648000, s.height * 0.7316219);
  p425.lineTo(s.width * 0.9648000, s.height * 0.7311552);
  p425.lineTo(s.width * 0.9649000, s.height * 0.7309218);
  p425.lineTo(s.width * 0.9649500, s.height * 0.7304551);
  p425.lineTo(s.width * 0.9651000, s.height * 0.7303384);
  p425.lineTo(s.width * 0.9653000, s.height * 0.7303384);
  p425.lineTo(s.width * 0.9652000, s.height * 0.7306884);
  p425.lineTo(s.width * 0.9652000, s.height * 0.7312719);
  p425.lineTo(s.width * 0.9655500, s.height * 0.7318553);
  p425.lineTo(s.width * 0.9654000, s.height * 0.7322054);
  p425.lineTo(s.width * 0.9653000, s.height * 0.7327888);
  p425.close();

  Paint paint425fill = Paint()..style = PaintingStyle.fill;
  paint425fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p425, paint425fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p426 = Path();
  p426.moveTo(s.width * 0.9653000, s.height * 0.7259043);
  p426.lineTo(s.width * 0.9654500, s.height * 0.7259043);
  p426.lineTo(s.width * 0.9655000, s.height * 0.7261377);
  p426.lineTo(s.width * 0.9652500, s.height * 0.7262544);
  p426.lineTo(s.width * 0.9653000, s.height * 0.7266044);
  p426.lineTo(s.width * 0.9655000, s.height * 0.7268378);
  p426.lineTo(s.width * 0.9655500, s.height * 0.7271879);
  p426.lineTo(s.width * 0.9655000, s.height * 0.7276546);
  p426.lineTo(s.width * 0.9653000, s.height * 0.7277713);
  p426.lineTo(s.width * 0.9651000, s.height * 0.7274212);
  p426.lineTo(s.width * 0.9649000, s.height * 0.7274212);
  p426.lineTo(s.width * 0.9648000, s.height * 0.7271879);
  p426.lineTo(s.width * 0.9646500, s.height * 0.7269545);
  p426.lineTo(s.width * 0.9647000, s.height * 0.7264877);
  p426.lineTo(s.width * 0.9647000, s.height * 0.7261377);
  p426.lineTo(s.width * 0.9648000, s.height * 0.7255543);
  p426.lineTo(s.width * 0.9649500, s.height * 0.7250875);
  p426.lineTo(s.width * 0.9652000, s.height * 0.7250875);
  p426.lineTo(s.width * 0.9653000, s.height * 0.7252042);
  p426.lineTo(s.width * 0.9652500, s.height * 0.7256709);
  p426.lineTo(s.width * 0.9653000, s.height * 0.7259043);
  p426.close();

  Paint paint426fill = Paint()..style = PaintingStyle.fill;
  paint426fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p426, paint426fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p427 = Path();
  p427.moveTo(s.width * 0.9638000, s.height * 0.7170362);
  p427.lineTo(s.width * 0.9641000, s.height * 0.7169195);
  p427.lineTo(s.width * 0.9641500, s.height * 0.7170362);
  p427.lineTo(s.width * 0.9642500, s.height * 0.7177363);
  p427.lineTo(s.width * 0.9643500, s.height * 0.7180863);
  p427.lineTo(s.width * 0.9644000, s.height * 0.7182030);
  p427.lineTo(s.width * 0.9642000, s.height * 0.7189032);
  p427.lineTo(s.width * 0.9638000, s.height * 0.7191365);
  p427.lineTo(s.width * 0.9636500, s.height * 0.7187865);
  p427.lineTo(s.width * 0.9636000, s.height * 0.7182030);
  p427.lineTo(s.width * 0.9634500, s.height * 0.7180863);
  p427.lineTo(s.width * 0.9632500, s.height * 0.7184364);
  p427.lineTo(s.width * 0.9632000, s.height * 0.7183197);
  p427.lineTo(s.width * 0.9633000, s.height * 0.7178530);
  p427.lineTo(s.width * 0.9635000, s.height * 0.7175029);
  p427.lineTo(s.width * 0.9637000, s.height * 0.7169195);
  p427.lineTo(s.width * 0.9638000, s.height * 0.7170362);
  p427.close();

  Paint paint427fill = Paint()..style = PaintingStyle.fill;
  paint427fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p427, paint427fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p428 = Path();
  p428.moveTo(s.width * 0.9649500, s.height * 0.7124854);
  p428.lineTo(s.width * 0.9649000, s.height * 0.7121354);
  p428.lineTo(s.width * 0.9650500, s.height * 0.7121354);
  p428.lineTo(s.width * 0.9649500, s.height * 0.7124854);
  p428.close();

  Paint paint428fill = Paint()..style = PaintingStyle.fill;
  paint428fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p428, paint428fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p429 = Path();
  p429.moveTo(s.width * 0.9641500, s.height * 0.7096849);
  p429.lineTo(s.width * 0.9642000, s.height * 0.7102684);
  p429.lineTo(s.width * 0.9642000, s.height * 0.7105018);
  p429.lineTo(s.width * 0.9644000, s.height * 0.7106184);
  p429.lineTo(s.width * 0.9645000, s.height * 0.7112019);
  p429.lineTo(s.width * 0.9647500, s.height * 0.7112019);
  p429.lineTo(s.width * 0.9647500, s.height * 0.7116686);
  p429.lineTo(s.width * 0.9647000, s.height * 0.7117853);
  p429.lineTo(s.width * 0.9645500, s.height * 0.7114352);
  p429.lineTo(s.width * 0.9644000, s.height * 0.7113186);
  p429.lineTo(s.width * 0.9641000, s.height * 0.7115519);
  p429.lineTo(s.width * 0.9639500, s.height * 0.7114352);
  p429.lineTo(s.width * 0.9639000, s.height * 0.7112019);
  p429.lineTo(s.width * 0.9638500, s.height * 0.7107351);
  p429.lineTo(s.width * 0.9639500, s.height * 0.7101517);
  p429.lineTo(s.width * 0.9640500, s.height * 0.7098016);
  p429.lineTo(s.width * 0.9641500, s.height * 0.7096849);
  p429.close();

  Paint paint429fill = Paint()..style = PaintingStyle.fill;
  paint429fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p429, paint429fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p430 = Path();
  p430.moveTo(s.width * 0.9646000, s.height * 0.7094516);
  p430.lineTo(s.width * 0.9645500, s.height * 0.7094516);
  p430.lineTo(s.width * 0.9645000, s.height * 0.7091015);
  p430.lineTo(s.width * 0.9646000, s.height * 0.7091015);
  p430.lineTo(s.width * 0.9646000, s.height * 0.7094516);
  p430.close();

  Paint paint430fill = Paint()..style = PaintingStyle.fill;
  paint430fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p430, paint430fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p431 = Path();
  p431.moveTo(s.width * 0.9647000, s.height * 0.7078180);
  p431.lineTo(s.width * 0.9646000, s.height * 0.7080513);
  p431.lineTo(s.width * 0.9643000, s.height * 0.7080513);
  p431.lineTo(s.width * 0.9641500, s.height * 0.7081680);
  p431.lineTo(s.width * 0.9640500, s.height * 0.7079347);
  p431.lineTo(s.width * 0.9638500, s.height * 0.7078180);
  p431.lineTo(s.width * 0.9636000, s.height * 0.7073512);
  p431.lineTo(s.width * 0.9636500, s.height * 0.7071179);
  p431.lineTo(s.width * 0.9639000, s.height * 0.7068845);
  p431.lineTo(s.width * 0.9641000, s.height * 0.7067678);
  p431.lineTo(s.width * 0.9643000, s.height * 0.7064177);
  p431.lineTo(s.width * 0.9643500, s.height * 0.7060677);
  p431.lineTo(s.width * 0.9644500, s.height * 0.7060677);
  p431.lineTo(s.width * 0.9645000, s.height * 0.7064177);
  p431.lineTo(s.width * 0.9645000, s.height * 0.7071179);
  p431.lineTo(s.width * 0.9647500, s.height * 0.7075846);
  p431.lineTo(s.width * 0.9647000, s.height * 0.7078180);
  p431.close();

  Paint paint431fill = Paint()..style = PaintingStyle.fill;
  paint431fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p431, paint431fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p432 = Path();
  p432.moveTo(s.width * 0.9623500, s.height * 0.7063011);
  p432.lineTo(s.width * 0.9624500, s.height * 0.7066511);
  p432.lineTo(s.width * 0.9627500, s.height * 0.7071179);
  p432.lineTo(s.width * 0.9631000, s.height * 0.7079347);
  p432.lineTo(s.width * 0.9631500, s.height * 0.7080513);
  p432.lineTo(s.width * 0.9631500, s.height * 0.7085181);
  p432.lineTo(s.width * 0.9632500, s.height * 0.7088681);
  p432.lineTo(s.width * 0.9631000, s.height * 0.7091015);
  p432.lineTo(s.width * 0.9629000, s.height * 0.7095683);
  p432.lineTo(s.width * 0.9629000, s.height * 0.7093349);
  p432.lineTo(s.width * 0.9627500, s.height * 0.7092182);
  p432.lineTo(s.width * 0.9625500, s.height * 0.7092182);
  p432.lineTo(s.width * 0.9624500, s.height * 0.7093349);
  p432.lineTo(s.width * 0.9624500, s.height * 0.7095683);
  p432.lineTo(s.width * 0.9622500, s.height * 0.7098016);
  p432.lineTo(s.width * 0.9621000, s.height * 0.7096849);
  p432.lineTo(s.width * 0.9621000, s.height * 0.7088681);
  p432.lineTo(s.width * 0.9620500, s.height * 0.7081680);
  p432.lineTo(s.width * 0.9621000, s.height * 0.7074679);
  p432.lineTo(s.width * 0.9621500, s.height * 0.7068845);
  p432.lineTo(s.width * 0.9620500, s.height * 0.7063011);
  p432.lineTo(s.width * 0.9617500, s.height * 0.7066511);
  p432.lineTo(s.width * 0.9616500, s.height * 0.7064177);
  p432.lineTo(s.width * 0.9616000, s.height * 0.7060677);
  p432.lineTo(s.width * 0.9616000, s.height * 0.7057176);
  p432.lineTo(s.width * 0.9617500, s.height * 0.7053676);
  p432.lineTo(s.width * 0.9617500, s.height * 0.7049008);
  p432.lineTo(s.width * 0.9618000, s.height * 0.7045508);
  p432.lineTo(s.width * 0.9619500, s.height * 0.7044341);
  p432.lineTo(s.width * 0.9622500, s.height * 0.7047841);
  p432.lineTo(s.width * 0.9622000, s.height * 0.7050175);
  p432.lineTo(s.width * 0.9623000, s.height * 0.7056009);
  p432.lineTo(s.width * 0.9622500, s.height * 0.7058343);
  p432.lineTo(s.width * 0.9623500, s.height * 0.7063011);
  p432.close();

  Paint paint432fill = Paint()..style = PaintingStyle.fill;
  paint432fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p432, paint432fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p433 = Path();
  p433.moveTo(s.width * 0.9620500, s.height * 0.7035006);
  p433.lineTo(s.width * 0.9619000, s.height * 0.7035006);
  p433.lineTo(s.width * 0.9616500, s.height * 0.7031505);
  p433.lineTo(s.width * 0.9616500, s.height * 0.7030338);
  p433.lineTo(s.width * 0.9617500, s.height * 0.7026838);
  p433.lineTo(s.width * 0.9618500, s.height * 0.7025671);
  p433.lineTo(s.width * 0.9621000, s.height * 0.7026838);
  p433.lineTo(s.width * 0.9620500, s.height * 0.7031505);
  p433.lineTo(s.width * 0.9620500, s.height * 0.7035006);
  p433.close();

  Paint paint433fill = Paint()..style = PaintingStyle.fill;
  paint433fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p433, paint433fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p434 = Path();
  p434.moveTo(s.width * 0.9618000, s.height * 0.7023337);
  p434.lineTo(s.width * 0.9620000, s.height * 0.7019837);
  p434.lineTo(s.width * 0.9620500, s.height * 0.7021004);
  p434.lineTo(s.width * 0.9621000, s.height * 0.7024504);
  p434.lineTo(s.width * 0.9618500, s.height * 0.7024504);
  p434.lineTo(s.width * 0.9618000, s.height * 0.7023337);
  p434.close();

  Paint paint434fill = Paint()..style = PaintingStyle.fill;
  paint434fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p434, paint434fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p435 = Path();
  p435.moveTo(s.width * 0.9646500, s.height * 0.7053676);
  p435.lineTo(s.width * 0.9645500, s.height * 0.7052509);
  p435.lineTo(s.width * 0.9646000, s.height * 0.7038506);
  p435.lineTo(s.width * 0.9645500, s.height * 0.7035006);
  p435.lineTo(s.width * 0.9646000, s.height * 0.7029172);
  p435.lineTo(s.width * 0.9647500, s.height * 0.7019837);
  p435.lineTo(s.width * 0.9648000, s.height * 0.7014002);
  p435.lineTo(s.width * 0.9649000, s.height * 0.7021004);
  p435.lineTo(s.width * 0.9648500, s.height * 0.7024504);
  p435.lineTo(s.width * 0.9648500, s.height * 0.7031505);
  p435.lineTo(s.width * 0.9648500, s.height * 0.7043174);
  p435.lineTo(s.width * 0.9648000, s.height * 0.7050175);
  p435.lineTo(s.width * 0.9646500, s.height * 0.7053676);
  p435.close();

  Paint paint435fill = Paint()..style = PaintingStyle.fill;
  paint435fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p435, paint435fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p436 = Path();
  p436.moveTo(s.width * 0.9640000, s.height * 0.7015169);
  p436.lineTo(s.width * 0.9636500, s.height * 0.7015169);
  p436.lineTo(s.width * 0.9635000, s.height * 0.7014002);
  p436.lineTo(s.width * 0.9635000, s.height * 0.7011669);
  p436.lineTo(s.width * 0.9639500, s.height * 0.7003501);
  p436.lineTo(s.width * 0.9642000, s.height * 0.7001167);
  p436.lineTo(s.width * 0.9644500, s.height * 0.7000000);
  p436.lineTo(s.width * 0.9644500, s.height * 0.7002334);
  p436.lineTo(s.width * 0.9643000, s.height * 0.7007001);
  p436.lineTo(s.width * 0.9642000, s.height * 0.7010502);
  p436.lineTo(s.width * 0.9640000, s.height * 0.7015169);
  p436.close();

  Paint paint436fill = Paint()..style = PaintingStyle.fill;
  paint436fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p436, paint436fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p437 = Path();
  p437.moveTo(s.width * 0.9649500, s.height * 0.7007001);
  p437.lineTo(s.width * 0.9649500, s.height * 0.7009335);
  p437.lineTo(s.width * 0.9648000, s.height * 0.7009335);
  p437.lineTo(s.width * 0.9648500, s.height * 0.7005834);
  p437.lineTo(s.width * 0.9649500, s.height * 0.6990665);
  p437.lineTo(s.width * 0.9649500, s.height * 0.6989498);
  p437.lineTo(s.width * 0.9650000, s.height * 0.6975496);
  p437.lineTo(s.width * 0.9651000, s.height * 0.6976663);
  p437.lineTo(s.width * 0.9650500, s.height * 0.6991832);
  p437.lineTo(s.width * 0.9651000, s.height * 0.6995333);
  p437.lineTo(s.width * 0.9650500, s.height * 0.7001167);
  p437.lineTo(s.width * 0.9649500, s.height * 0.7007001);
  p437.close();

  Paint paint437fill = Paint()..style = PaintingStyle.fill;
  paint437fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p437, paint437fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p438 = Path();
  p438.moveTo(s.width * 0.9618000, s.height * 0.7023337);
  p438.lineTo(s.width * 0.9613500, s.height * 0.7022170);
  p438.lineTo(s.width * 0.9610500, s.height * 0.7025671);
  p438.lineTo(s.width * 0.9610000, s.height * 0.7028005);
  p438.lineTo(s.width * 0.9609000, s.height * 0.7028005);
  p438.lineTo(s.width * 0.9608500, s.height * 0.7021004);
  p438.lineTo(s.width * 0.9607500, s.height * 0.7019837);
  p438.lineTo(s.width * 0.9605500, s.height * 0.7008168);
  p438.lineTo(s.width * 0.9607500, s.height * 0.6998833);
  p438.lineTo(s.width * 0.9607500, s.height * 0.6994166);
  p438.lineTo(s.width * 0.9607000, s.height * 0.6991832);
  p438.lineTo(s.width * 0.9607000, s.height * 0.6975496);
  p438.lineTo(s.width * 0.9606500, s.height * 0.6971995);
  p438.lineTo(s.width * 0.9606500, s.height * 0.6966161);
  p438.lineTo(s.width * 0.9607500, s.height * 0.6962660);
  p438.lineTo(s.width * 0.9607500, s.height * 0.6959160);
  p438.lineTo(s.width * 0.9608500, s.height * 0.6955659);
  p438.lineTo(s.width * 0.9608500, s.height * 0.6953326);
  p438.lineTo(s.width * 0.9610000, s.height * 0.6952159);
  p438.lineTo(s.width * 0.9610500, s.height * 0.6957993);
  p438.lineTo(s.width * 0.9611500, s.height * 0.6962660);
  p438.lineTo(s.width * 0.9612500, s.height * 0.6966161);
  p438.lineTo(s.width * 0.9613000, s.height * 0.6981330);
  p438.lineTo(s.width * 0.9612500, s.height * 0.6990665);
  p438.lineTo(s.width * 0.9612500, s.height * 0.6991832);
  p438.lineTo(s.width * 0.9615500, s.height * 0.6990665);
  p438.lineTo(s.width * 0.9617000, s.height * 0.6987165);
  p438.lineTo(s.width * 0.9618000, s.height * 0.6977830);
  p438.lineTo(s.width * 0.9618000, s.height * 0.6975496);
  p438.lineTo(s.width * 0.9619500, s.height * 0.6973162);
  p438.lineTo(s.width * 0.9621000, s.height * 0.6974329);
  p438.lineTo(s.width * 0.9620500, s.height * 0.6978996);
  p438.lineTo(s.width * 0.9620500, s.height * 0.6989498);
  p438.lineTo(s.width * 0.9622000, s.height * 0.6990665);
  p438.lineTo(s.width * 0.9622000, s.height * 0.6996499);
  p438.lineTo(s.width * 0.9621000, s.height * 0.6997666);
  p438.lineTo(s.width * 0.9622500, s.height * 0.7002334);
  p438.lineTo(s.width * 0.9621500, s.height * 0.7004667);
  p438.lineTo(s.width * 0.9621500, s.height * 0.7010502);
  p438.lineTo(s.width * 0.9622500, s.height * 0.7016336);
  p438.lineTo(s.width * 0.9622000, s.height * 0.7018670);
  p438.lineTo(s.width * 0.9620500, s.height * 0.7018670);
  p438.lineTo(s.width * 0.9618000, s.height * 0.7023337);
  p438.close();

  Paint paint438fill = Paint()..style = PaintingStyle.fill;
  paint438fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p438, paint438fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p439 = Path();
  p439.moveTo(s.width * 0.9639000, s.height * 0.6914819);
  p439.lineTo(s.width * 0.9641000, s.height * 0.6918320);
  p439.lineTo(s.width * 0.9640500, s.height * 0.6922987);
  p439.lineTo(s.width * 0.9639000, s.height * 0.6926488);
  p439.lineTo(s.width * 0.9638000, s.height * 0.6928821);
  p439.lineTo(s.width * 0.9635000, s.height * 0.6928821);
  p439.lineTo(s.width * 0.9635000, s.height * 0.6924154);
  p439.lineTo(s.width * 0.9635500, s.height * 0.6919487);
  p439.lineTo(s.width * 0.9636500, s.height * 0.6915986);
  p439.lineTo(s.width * 0.9639000, s.height * 0.6914819);
  p439.close();

  Paint paint439fill = Paint()..style = PaintingStyle.fill;
  paint439fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p439, paint439fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p440 = Path();
  p440.moveTo(s.width * 0.9642000, s.height * 0.6892649);
  p440.lineTo(s.width * 0.9640500, s.height * 0.6894982);
  p440.lineTo(s.width * 0.9639500, s.height * 0.6896149);
  p440.lineTo(s.width * 0.9639500, s.height * 0.6898483);
  p440.lineTo(s.width * 0.9638500, s.height * 0.6899650);
  p440.lineTo(s.width * 0.9638500, s.height * 0.6896149);
  p440.lineTo(s.width * 0.9637500, s.height * 0.6893816);
  p440.lineTo(s.width * 0.9637000, s.height * 0.6890315);
  p440.lineTo(s.width * 0.9637500, s.height * 0.6885648);
  p440.lineTo(s.width * 0.9638500, s.height * 0.6884481);
  p440.lineTo(s.width * 0.9640500, s.height * 0.6882147);
  p440.lineTo(s.width * 0.9641000, s.height * 0.6884481);
  p440.lineTo(s.width * 0.9641500, s.height * 0.6889148);
  p440.lineTo(s.width * 0.9641500, s.height * 0.6890315);
  p440.lineTo(s.width * 0.9642000, s.height * 0.6892649);
  p440.close();

  Paint paint440fill = Paint()..style = PaintingStyle.fill;
  paint440fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p440, paint440fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p441 = Path();
  p441.moveTo(s.width * 0.9617000, s.height * 0.6843641);
  p441.lineTo(s.width * 0.9616500, s.height * 0.6842474);
  p441.lineTo(s.width * 0.9617000, s.height * 0.6836639);
  p441.lineTo(s.width * 0.9618000, s.height * 0.6838973);
  p441.lineTo(s.width * 0.9617000, s.height * 0.6843641);
  p441.close();

  Paint paint441fill = Paint()..style = PaintingStyle.fill;
  paint441fill.color = cClrs.vU ?? dfltClr;
  canvas.drawPath(p441, paint441fill, onTapUp: (tabdetail) {
    callback('vu', tabdetail);
  });

  Path p442 = Path();
  p442.moveTo(s.width * 0.01095000, s.height * 0.6899650);
  p442.lineTo(s.width * 0.01110000, s.height * 0.6900817);
  p442.lineTo(s.width * 0.01125000, s.height * 0.6901984);
  p442.lineTo(s.width * 0.01140000, s.height * 0.6904317);
  p442.lineTo(s.width * 0.01135000, s.height * 0.6907818);
  p442.lineTo(s.width * 0.01085000, s.height * 0.6907818);
  p442.lineTo(s.width * 0.01070000, s.height * 0.6906651);
  p442.lineTo(s.width * 0.01055000, s.height * 0.6907818);
  p442.lineTo(s.width * 0.01045000, s.height * 0.6906651);
  p442.lineTo(s.width * 0.01025000, s.height * 0.6904317);
  p442.lineTo(s.width * 0.01010000, s.height * 0.6905484);
  p442.lineTo(s.width * 0.009950000, s.height * 0.6903151);
  p442.lineTo(s.width * 0.009850000, s.height * 0.6900817);
  p442.lineTo(s.width * 0.009550000, s.height * 0.6897316);
  p442.lineTo(s.width * 0.009600000, s.height * 0.6892649);
  p442.lineTo(s.width * 0.009800000, s.height * 0.6890315);
  p442.lineTo(s.width * 0.01000000, s.height * 0.6890315);
  p442.lineTo(s.width * 0.01025000, s.height * 0.6890315);
  p442.lineTo(s.width * 0.01070000, s.height * 0.6894982);
  p442.lineTo(s.width * 0.01095000, s.height * 0.6896149);
  p442.lineTo(s.width * 0.01095000, s.height * 0.6899650);
  p442.close();

  Paint paint442fill = Paint()..style = PaintingStyle.fill;
  paint442fill.color = cClrs.wS ?? dfltClr;
  canvas.drawPath(p442, paint442fill, onTapUp: (tabdetail) {
    callback('ws', tabdetail);
  });

  Path p443 = Path();
  p443.moveTo(s.width * 0.008700000, s.height * 0.6866978);
  p443.lineTo(s.width * 0.009000000, s.height * 0.6873979);
  p443.lineTo(s.width * 0.009100000, s.height * 0.6882147);
  p443.lineTo(s.width * 0.009050000, s.height * 0.6885648);
  p443.lineTo(s.width * 0.009100000, s.height * 0.6889148);
  p443.lineTo(s.width * 0.008950000, s.height * 0.6889148);
  p443.lineTo(s.width * 0.008800000, s.height * 0.6886814);
  p443.lineTo(s.width * 0.008650000, s.height * 0.6889148);
  p443.lineTo(s.width * 0.008200000, s.height * 0.6890315);
  p443.lineTo(s.width * 0.008050000, s.height * 0.6886814);
  p443.lineTo(s.width * 0.007950000, s.height * 0.6882147);
  p443.lineTo(s.width * 0.007850000, s.height * 0.6880980);
  p443.lineTo(s.width * 0.007700000, s.height * 0.6877480);
  p443.lineTo(s.width * 0.007450000, s.height * 0.6872812);
  p443.lineTo(s.width * 0.007350000, s.height * 0.6870478);
  p443.lineTo(s.width * 0.007350000, s.height * 0.6868145);
  p443.lineTo(s.width * 0.007550000, s.height * 0.6869312);
  p443.lineTo(s.width * 0.007700000, s.height * 0.6868145);
  p443.lineTo(s.width * 0.008000000, s.height * 0.6865811);
  p443.lineTo(s.width * 0.008200000, s.height * 0.6865811);
  p443.lineTo(s.width * 0.008450000, s.height * 0.6864644);
  p443.lineTo(s.width * 0.008600000, s.height * 0.6864644);
  p443.lineTo(s.width * 0.008700000, s.height * 0.6866978);
  p443.close();

  Paint paint443fill = Paint()..style = PaintingStyle.fill;
  paint443fill.color = cClrs.wS ?? dfltClr;
  canvas.drawPath(p443, paint443fill, onTapUp: (tabdetail) {
    callback('ws', tabdetail);
  });

  Path p444 = Path();
  p444.moveTo(s.width * 0.3010000, s.height * 0.4954492);
  p444.lineTo(s.width * 0.3009000, s.height * 0.4954492);
  p444.lineTo(s.width * 0.3008500, s.height * 0.4948658);
  p444.lineTo(s.width * 0.3009000, s.height * 0.4945158);
  p444.lineTo(s.width * 0.3008500, s.height * 0.4941657);
  p444.lineTo(s.width * 0.3006500, s.height * 0.4940490);
  p444.lineTo(s.width * 0.3005000, s.height * 0.4936989);
  p444.lineTo(s.width * 0.3005500, s.height * 0.4933489);
  p444.lineTo(s.width * 0.3011500, s.height * 0.4940490);
  p444.lineTo(s.width * 0.3011000, s.height * 0.4942824);
  p444.lineTo(s.width * 0.3011000, s.height * 0.4947491);
  p444.lineTo(s.width * 0.3010000, s.height * 0.4949825);
  p444.lineTo(s.width * 0.3010000, s.height * 0.4954492);
  p444.close();

  Paint paint444fill = Paint()..style = PaintingStyle.fill;
  paint444fill.color = cClrs.bQ ?? dfltClr;
  canvas.drawPath(p444, paint444fill, onTapUp: (tabdetail) {
    callback('bq', tabdetail);
  });

  Path p445 = Path();
  p445.moveTo(s.width * 0.3171500, s.height * 0.4546091);
  p445.lineTo(s.width * 0.3170500, s.height * 0.4547258);
  p445.lineTo(s.width * 0.3170500, s.height * 0.4544924);
  p445.lineTo(s.width * 0.3171000, s.height * 0.4543757);
  p445.lineTo(s.width * 0.3171500, s.height * 0.4546091);
  p445.close();

  Paint paint445fill = Paint()..style = PaintingStyle.fill;
  paint445fill.color = cClrs.bQ ?? dfltClr;
  canvas.drawPath(p445, paint445fill, onTapUp: (tabdetail) {
    callback('bq', tabdetail);
  });

  Path p446 = Path();
  p446.moveTo(s.width * 0.3164000, s.height * 0.4535589);
  p446.lineTo(s.width * 0.3163500, s.height * 0.4535589);
  p446.lineTo(s.width * 0.3164000, s.height * 0.4533256);
  p446.lineTo(s.width * 0.3164500, s.height * 0.4534422);
  p446.lineTo(s.width * 0.3164000, s.height * 0.4535589);
  p446.close();

  Paint paint446fill = Paint()..style = PaintingStyle.fill;
  paint446fill.color = cClrs.bQ ?? dfltClr;
  canvas.drawPath(p446, paint446fill, onTapUp: (tabdetail) {
    callback('bq', tabdetail);
  });

  Path p447 = Path();
  p447.moveTo(s.width * 0.3220000, s.height * 0.4747958);
  p447.lineTo(s.width * 0.3220000, s.height * 0.4750292);
  p447.lineTo(s.width * 0.3222000, s.height * 0.4749125);
  p447.lineTo(s.width * 0.3221000, s.height * 0.4754959);
  p447.lineTo(s.width * 0.3222000, s.height * 0.4757293);
  p447.lineTo(s.width * 0.3222000, s.height * 0.4759627);
  p447.lineTo(s.width * 0.3223000, s.height * 0.4761960);
  p447.lineTo(s.width * 0.3224000, s.height * 0.4772462);
  p447.lineTo(s.width * 0.3222500, s.height * 0.4775963);
  p447.lineTo(s.width * 0.3222000, s.height * 0.4771295);
  p447.lineTo(s.width * 0.3221500, s.height * 0.4772462);
  p447.lineTo(s.width * 0.3218500, s.height * 0.4771295);
  p447.lineTo(s.width * 0.3216500, s.height * 0.4771295);
  p447.lineTo(s.width * 0.3215500, s.height * 0.4767795);
  p447.lineTo(s.width * 0.3218500, s.height * 0.4761960);
  p447.lineTo(s.width * 0.3216500, s.height * 0.4761960);
  p447.lineTo(s.width * 0.3214500, s.height * 0.4757293);
  p447.lineTo(s.width * 0.3214000, s.height * 0.4751459);
  p447.lineTo(s.width * 0.3213000, s.height * 0.4745624);
  p447.lineTo(s.width * 0.3214500, s.height * 0.4740957);
  p447.lineTo(s.width * 0.3216500, s.height * 0.4742124);
  p447.lineTo(s.width * 0.3219000, s.height * 0.4745624);
  p447.lineTo(s.width * 0.3220000, s.height * 0.4747958);
  p447.close();

  Paint paint447fill = Paint()..style = PaintingStyle.fill;
  paint447fill.color = cClrs.mQ ?? dfltClr;
  canvas.drawPath(p447, paint447fill, onTapUp: (tabdetail) {
    callback('mq', tabdetail);
  });

  Path p448 = Path();
  p448.moveTo(s.width * 0.4442000, s.height * 0.3773629);
  p448.lineTo(s.width * 0.4440500, s.height * 0.3779463);
  p448.lineTo(s.width * 0.4438500, s.height * 0.3785298);
  p448.lineTo(s.width * 0.4437000, s.height * 0.3780630);
  p448.lineTo(s.width * 0.4435000, s.height * 0.3780630);
  p448.lineTo(s.width * 0.4434000, s.height * 0.3778296);
  p448.lineTo(s.width * 0.4435000, s.height * 0.3774796);
  p448.lineTo(s.width * 0.4437000, s.height * 0.3775963);
  p448.lineTo(s.width * 0.4439000, s.height * 0.3771295);
  p448.lineTo(s.width * 0.4440500, s.height * 0.3768961);
  p448.lineTo(s.width * 0.4441500, s.height * 0.3770128);
  p448.lineTo(s.width * 0.4442000, s.height * 0.3773629);
  p448.close();

  Paint paint448fill = Paint()..style = PaintingStyle.fill;
  paint448fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p448, paint448fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p449 = Path();
  p449.moveTo(s.width * 0.4510000, s.height * 0.3746791);
  p449.lineTo(s.width * 0.4510000, s.height * 0.3752625);
  p449.lineTo(s.width * 0.4511000, s.height * 0.3757293);
  p449.lineTo(s.width * 0.4510000, s.height * 0.3765461);
  p449.lineTo(s.width * 0.4510500, s.height * 0.3768961);
  p449.lineTo(s.width * 0.4508500, s.height * 0.3773629);
  p449.lineTo(s.width * 0.4506000, s.height * 0.3775963);
  p449.lineTo(s.width * 0.4505000, s.height * 0.3778296);
  p449.lineTo(s.width * 0.4502000, s.height * 0.3775963);
  p449.lineTo(s.width * 0.4499500, s.height * 0.3770128);
  p449.lineTo(s.width * 0.4498500, s.height * 0.3765461);
  p449.lineTo(s.width * 0.4498500, s.height * 0.3758460);
  p449.lineTo(s.width * 0.4501500, s.height * 0.3753792);
  p449.lineTo(s.width * 0.4502000, s.height * 0.3747958);
  p449.lineTo(s.width * 0.4502000, s.height * 0.3745624);
  p449.lineTo(s.width * 0.4505000, s.height * 0.3746791);
  p449.lineTo(s.width * 0.4507000, s.height * 0.3746791);
  p449.lineTo(s.width * 0.4508500, s.height * 0.3747958);
  p449.lineTo(s.width * 0.4510000, s.height * 0.3746791);
  p449.close();

  Paint paint449fill = Paint()..style = PaintingStyle.fill;
  paint449fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p449, paint449fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p450 = Path();
  p450.moveTo(s.width * 0.4460500, s.height * 0.3756126);
  p450.lineTo(s.width * 0.4459500, s.height * 0.3756126);
  p450.lineTo(s.width * 0.4458000, s.height * 0.3753792);
  p450.lineTo(s.width * 0.4457000, s.height * 0.3750292);
  p450.lineTo(s.width * 0.4457500, s.height * 0.3745624);
  p450.lineTo(s.width * 0.4458000, s.height * 0.3742124);
  p450.lineTo(s.width * 0.4459500, s.height * 0.3742124);
  p450.lineTo(s.width * 0.4461000, s.height * 0.3742124);
  p450.lineTo(s.width * 0.4463500, s.height * 0.3746791);
  p450.lineTo(s.width * 0.4464000, s.height * 0.3750292);
  p450.lineTo(s.width * 0.4461500, s.height * 0.3756126);
  p450.lineTo(s.width * 0.4460500, s.height * 0.3756126);
  p450.close();

  Paint paint450fill = Paint()..style = PaintingStyle.fill;
  paint450fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p450, paint450fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p451 = Path();
  p451.moveTo(s.width * 0.4491000, s.height * 0.3715286);
  p451.lineTo(s.width * 0.4491000, s.height * 0.3717620);
  p451.lineTo(s.width * 0.4488000, s.height * 0.3721120);
  p451.lineTo(s.width * 0.4486000, s.height * 0.3726954);
  p451.lineTo(s.width * 0.4484500, s.height * 0.3729288);
  p451.lineTo(s.width * 0.4484500, s.height * 0.3733956);
  p451.lineTo(s.width * 0.4482500, s.height * 0.3742124);
  p451.lineTo(s.width * 0.4482000, s.height * 0.3746791);
  p451.lineTo(s.width * 0.4479500, s.height * 0.3753792);
  p451.lineTo(s.width * 0.4479000, s.height * 0.3756126);
  p451.lineTo(s.width * 0.4478000, s.height * 0.3756126);
  p451.lineTo(s.width * 0.4475000, s.height * 0.3758460);
  p451.lineTo(s.width * 0.4474500, s.height * 0.3757293);
  p451.lineTo(s.width * 0.4474000, s.height * 0.3752625);
  p451.lineTo(s.width * 0.4472500, s.height * 0.3747958);
  p451.lineTo(s.width * 0.4472000, s.height * 0.3745624);
  p451.lineTo(s.width * 0.4471000, s.height * 0.3742124);
  p451.lineTo(s.width * 0.4471000, s.height * 0.3738623);
  p451.lineTo(s.width * 0.4469000, s.height * 0.3731622);
  p451.lineTo(s.width * 0.4471500, s.height * 0.3728121);
  p451.lineTo(s.width * 0.4473000, s.height * 0.3730455);
  p451.lineTo(s.width * 0.4476000, s.height * 0.3728121);
  p451.lineTo(s.width * 0.4478000, s.height * 0.3728121);
  p451.lineTo(s.width * 0.4480500, s.height * 0.3725788);
  p451.lineTo(s.width * 0.4483000, s.height * 0.3721120);
  p451.lineTo(s.width * 0.4483000, s.height * 0.3718786);
  p451.lineTo(s.width * 0.4486000, s.height * 0.3715286);
  p451.lineTo(s.width * 0.4489000, s.height * 0.3715286);
  p451.lineTo(s.width * 0.4490500, s.height * 0.3714119);
  p451.lineTo(s.width * 0.4491000, s.height * 0.3715286);
  p451.close();

  Paint paint451fill = Paint()..style = PaintingStyle.fill;
  paint451fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p451, paint451fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p452 = Path();
  p452.moveTo(s.width * 0.4542000, s.height * 0.3747958);
  p452.lineTo(s.width * 0.4540500, s.height * 0.3752625);
  p452.lineTo(s.width * 0.4538500, s.height * 0.3753792);
  p452.lineTo(s.width * 0.4537000, s.height * 0.3752625);
  p452.lineTo(s.width * 0.4535000, s.height * 0.3752625);
  p452.lineTo(s.width * 0.4535000, s.height * 0.3750292);
  p452.lineTo(s.width * 0.4536500, s.height * 0.3750292);
  p452.lineTo(s.width * 0.4539500, s.height * 0.3747958);
  p452.lineTo(s.width * 0.4541500, s.height * 0.3744457);
  p452.lineTo(s.width * 0.4543000, s.height * 0.3740957);
  p452.lineTo(s.width * 0.4543500, s.height * 0.3735123);
  p452.lineTo(s.width * 0.4544000, s.height * 0.3731622);
  p452.lineTo(s.width * 0.4545000, s.height * 0.3725788);
  p452.lineTo(s.width * 0.4546500, s.height * 0.3721120);
  p452.lineTo(s.width * 0.4548000, s.height * 0.3714119);
  p452.lineTo(s.width * 0.4549000, s.height * 0.3704784);
  p452.lineTo(s.width * 0.4550000, s.height * 0.3702450);
  p452.lineTo(s.width * 0.4552000, s.height * 0.3701284);
  p452.lineTo(s.width * 0.4553500, s.height * 0.3704784);
  p452.lineTo(s.width * 0.4554000, s.height * 0.3710618);
  p452.lineTo(s.width * 0.4553500, s.height * 0.3716453);
  p452.lineTo(s.width * 0.4553000, s.height * 0.3722287);
  p452.lineTo(s.width * 0.4553000, s.height * 0.3728121);
  p452.lineTo(s.width * 0.4552500, s.height * 0.3729288);
  p452.lineTo(s.width * 0.4551000, s.height * 0.3737456);
  p452.lineTo(s.width * 0.4549500, s.height * 0.3740957);
  p452.lineTo(s.width * 0.4546500, s.height * 0.3742124);
  p452.lineTo(s.width * 0.4543000, s.height * 0.3745624);
  p452.lineTo(s.width * 0.4542000, s.height * 0.3747958);
  p452.close();

  Paint paint452fill = Paint()..style = PaintingStyle.fill;
  paint452fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p452, paint452fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p453 = Path();
  p453.moveTo(s.width * 0.4444000, s.height * 0.3695449);
  p453.lineTo(s.width * 0.4445500, s.height * 0.3694282);
  p453.lineTo(s.width * 0.4446500, s.height * 0.3697783);
  p453.lineTo(s.width * 0.4447500, s.height * 0.3703617);
  p453.lineTo(s.width * 0.4446500, s.height * 0.3707118);
  p453.lineTo(s.width * 0.4447000, s.height * 0.3711785);
  p453.lineTo(s.width * 0.4444000, s.height * 0.3723454);
  p453.lineTo(s.width * 0.4443500, s.height * 0.3722287);
  p453.lineTo(s.width * 0.4443000, s.height * 0.3717620);
  p453.lineTo(s.width * 0.4441000, s.height * 0.3707118);
  p453.lineTo(s.width * 0.4440500, s.height * 0.3703617);
  p453.lineTo(s.width * 0.4440000, s.height * 0.3701284);
  p453.lineTo(s.width * 0.4441000, s.height * 0.3696616);
  p453.lineTo(s.width * 0.4442500, s.height * 0.3694282);
  p453.lineTo(s.width * 0.4444000, s.height * 0.3695449);
  p453.close();

  Paint paint453fill = Paint()..style = PaintingStyle.fill;
  paint453fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p453, paint453fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p454 = Path();
  p454.moveTo(s.width * 0.4564500, s.height * 0.3672112);
  p454.lineTo(s.width * 0.4564500, s.height * 0.3676779);
  p454.lineTo(s.width * 0.4563500, s.height * 0.3682614);
  p454.lineTo(s.width * 0.4560000, s.height * 0.3688448);
  p454.lineTo(s.width * 0.4557500, s.height * 0.3689615);
  p454.lineTo(s.width * 0.4555500, s.height * 0.3695449);
  p454.lineTo(s.width * 0.4553000, s.height * 0.3693116);
  p454.lineTo(s.width * 0.4553000, s.height * 0.3691949);
  p454.lineTo(s.width * 0.4554000, s.height * 0.3687281);
  p454.lineTo(s.width * 0.4554000, s.height * 0.3682614);
  p454.lineTo(s.width * 0.4555000, s.height * 0.3679113);
  p454.lineTo(s.width * 0.4556500, s.height * 0.3676779);
  p454.lineTo(s.width * 0.4558000, s.height * 0.3676779);
  p454.lineTo(s.width * 0.4559500, s.height * 0.3673279);
  p454.lineTo(s.width * 0.4562000, s.height * 0.3673279);
  p454.lineTo(s.width * 0.4562500, s.height * 0.3672112);
  p454.lineTo(s.width * 0.4563500, s.height * 0.3666278);
  p454.lineTo(s.width * 0.4564500, s.height * 0.3665111);
  p454.lineTo(s.width * 0.4565500, s.height * 0.3667445);
  p454.lineTo(s.width * 0.4564500, s.height * 0.3672112);
  p454.close();

  Paint paint454fill = Paint()..style = PaintingStyle.fill;
  paint454fill.color = cClrs.eS ?? dfltClr;
  canvas.drawPath(p454, paint454fill, onTapUp: (tabdetail) {
    callback('es', tabdetail);
  });

  Path p455 = Path();
  p455.moveTo(s.width * 0.6201000, s.height * 0.6803967);
  p455.lineTo(s.width * 0.6202000, s.height * 0.6807468);
  p455.lineTo(s.width * 0.6204500, s.height * 0.6809802);
  p455.lineTo(s.width * 0.6204500, s.height * 0.6813302);
  p455.lineTo(s.width * 0.6203500, s.height * 0.6815636);
  p455.lineTo(s.width * 0.6204000, s.height * 0.6817970);
  p455.lineTo(s.width * 0.6202500, s.height * 0.6824971);
  p455.lineTo(s.width * 0.6203000, s.height * 0.6827305);
  p455.lineTo(s.width * 0.6201500, s.height * 0.6828471);
  p455.lineTo(s.width * 0.6200500, s.height * 0.6824971);
  p455.lineTo(s.width * 0.6200500, s.height * 0.6821470);
  p455.lineTo(s.width * 0.6201500, s.height * 0.6819137);
  p455.lineTo(s.width * 0.6200500, s.height * 0.6810968);
  p455.lineTo(s.width * 0.6200000, s.height * 0.6809802);
  p455.lineTo(s.width * 0.6199500, s.height * 0.6807468);
  p455.lineTo(s.width * 0.6201000, s.height * 0.6803967);
  p455.close();

  Paint paint455fill = Paint()..style = PaintingStyle.fill;
  paint455fill.color = cClrs.yT ?? dfltClr;
  canvas.drawPath(p455, paint455fill, onTapUp: (tabdetail) {
    callback('yt', tabdetail);
  });

  Path p456 = Path();
  p456.moveTo(s.width * 0.6475000, s.height * 0.7418903);
  p456.lineTo(s.width * 0.6477000, s.height * 0.7418903);
  p456.lineTo(s.width * 0.6479000, s.height * 0.7421237);
  p456.lineTo(s.width * 0.6480500, s.height * 0.7424737);
  p456.lineTo(s.width * 0.6480500, s.height * 0.7428238);
  p456.lineTo(s.width * 0.6481000, s.height * 0.7434072);
  p456.lineTo(s.width * 0.6482500, s.height * 0.7436406);
  p456.lineTo(s.width * 0.6483500, s.height * 0.7438740);
  p456.lineTo(s.width * 0.6484000, s.height * 0.7441074);
  p456.lineTo(s.width * 0.6483000, s.height * 0.7448075);
  p456.lineTo(s.width * 0.6482500, s.height * 0.7452742);
  p456.lineTo(s.width * 0.6481500, s.height * 0.7455076);
  p456.lineTo(s.width * 0.6479500, s.height * 0.7456243);
  p456.lineTo(s.width * 0.6475000, s.height * 0.7456243);
  p456.lineTo(s.width * 0.6474000, s.height * 0.7453909);
  p456.lineTo(s.width * 0.6470000, s.height * 0.7449242);
  p456.lineTo(s.width * 0.6468500, s.height * 0.7443407);
  p456.lineTo(s.width * 0.6468500, s.height * 0.7439907);
  p456.lineTo(s.width * 0.6467000, s.height * 0.7432905);
  p456.lineTo(s.width * 0.6467500, s.height * 0.7428238);
  p456.lineTo(s.width * 0.6468500, s.height * 0.7425904);
  p456.lineTo(s.width * 0.6469500, s.height * 0.7421237);
  p456.lineTo(s.width * 0.6470000, s.height * 0.7421237);
  p456.lineTo(s.width * 0.6472500, s.height * 0.7418903);
  p456.lineTo(s.width * 0.6475000, s.height * 0.7418903);
  p456.close();

  Paint paint456fill = Paint()..style = PaintingStyle.fill;
  paint456fill.color = cClrs.rE ?? dfltClr;
  canvas.drawPath(p456, paint456fill, onTapUp: (tabdetail) {
    callback('re', tabdetail);
  });

  Path p457 = Path();
  p457.moveTo(s.width * 0.3215000, s.height * 0.4666278);
  p457.lineTo(s.width * 0.3213500, s.height * 0.4666278);
  p457.lineTo(s.width * 0.3212500, s.height * 0.4661610);
  p457.lineTo(s.width * 0.3213000, s.height * 0.4659277);
  p457.lineTo(s.width * 0.3214500, s.height * 0.4655776);
  p457.lineTo(s.width * 0.3216000, s.height * 0.4658110);
  p457.lineTo(s.width * 0.3216500, s.height * 0.4661610);
  p457.lineTo(s.width * 0.3216500, s.height * 0.4663944);
  p457.lineTo(s.width * 0.3215000, s.height * 0.4666278);
  p457.close();

  Paint paint457fill = Paint()..style = PaintingStyle.fill;
  paint457fill.color = cClrs.gP ?? dfltClr;
  canvas.drawPath(p457, paint457fill, onTapUp: (tabdetail) {
    callback('gp', tabdetail);
  });

  Path p458 = Path();
  p458.moveTo(s.width * 0.3206000, s.height * 0.4635939);
  p458.lineTo(s.width * 0.3207500, s.height * 0.4635939);
  p458.lineTo(s.width * 0.3207500, s.height * 0.4638273);
  p458.lineTo(s.width * 0.3207500, s.height * 0.4639440);
  p458.lineTo(s.width * 0.3206500, s.height * 0.4640607);
  p458.lineTo(s.width * 0.3206500, s.height * 0.4649942);
  p458.lineTo(s.width * 0.3206500, s.height * 0.4654609);
  p458.lineTo(s.width * 0.3205500, s.height * 0.4656943);
  p458.lineTo(s.width * 0.3202500, s.height * 0.4660443);
  p458.lineTo(s.width * 0.3202500, s.height * 0.4658110);
  p458.lineTo(s.width * 0.3201500, s.height * 0.4655776);
  p458.lineTo(s.width * 0.3201000, s.height * 0.4649942);
  p458.lineTo(s.width * 0.3201000, s.height * 0.4644107);
  p458.lineTo(s.width * 0.3200500, s.height * 0.4638273);
  p458.lineTo(s.width * 0.3200500, s.height * 0.4634772);
  p458.lineTo(s.width * 0.3201500, s.height * 0.4631272);
  p458.lineTo(s.width * 0.3203000, s.height * 0.4630105);
  p458.lineTo(s.width * 0.3205500, s.height * 0.4633606);
  p458.lineTo(s.width * 0.3206000, s.height * 0.4635939);
  p458.close();

  Paint paint458fill = Paint()..style = PaintingStyle.fill;
  paint458fill.color = cClrs.gP ?? dfltClr;
  canvas.drawPath(p458, paint458fill, onTapUp: (tabdetail) {
    callback('gp', tabdetail);
  });

  Path p459 = Path();
  p459.moveTo(s.width * 0.3213000, s.height * 0.4631272);
  p459.lineTo(s.width * 0.3215000, s.height * 0.4632439);
  p459.lineTo(s.width * 0.3217500, s.height * 0.4637106);
  p459.lineTo(s.width * 0.3211000, s.height * 0.4640607);
  p459.lineTo(s.width * 0.3209500, s.height * 0.4641774);
  p459.lineTo(s.width * 0.3207500, s.height * 0.4638273);
  p459.lineTo(s.width * 0.3208000, s.height * 0.4631272);
  p459.lineTo(s.width * 0.3209000, s.height * 0.4630105);
  p459.lineTo(s.width * 0.3208500, s.height * 0.4623104);
  p459.lineTo(s.width * 0.3209000, s.height * 0.4620770);
  p459.lineTo(s.width * 0.3210500, s.height * 0.4618436);
  p459.lineTo(s.width * 0.3212000, s.height * 0.4623104);
  p459.lineTo(s.width * 0.3212000, s.height * 0.4627771);
  p459.lineTo(s.width * 0.3213000, s.height * 0.4631272);
  p459.close();

  Paint paint459fill = Paint()..style = PaintingStyle.fill;
  paint459fill.color = cClrs.gP ?? dfltClr;
  canvas.drawPath(p459, paint459fill, onTapUp: (tabdetail) {
    callback('gp', tabdetail);
  });

  Path p460 = Path();
  p460.moveTo(s.width * 0.9945500, s.height * 0.7291715);
  p460.lineTo(s.width * 0.9944000, s.height * 0.7292882);
  p460.lineTo(s.width * 0.9944500, s.height * 0.7288215);
  p460.lineTo(s.width * 0.9945500, s.height * 0.7291715);
  p460.close();

  Paint paint460fill = Paint()..style = PaintingStyle.fill;
  paint460fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p460, paint460fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p461 = Path();
  p461.moveTo(s.width * 0.9908000, s.height * 0.7273046);
  p461.lineTo(s.width * 0.9909000, s.height * 0.7275379);
  p461.lineTo(s.width * 0.9910500, s.height * 0.7276546);
  p461.lineTo(s.width * 0.9910500, s.height * 0.7280047);
  p461.lineTo(s.width * 0.9908000, s.height * 0.7282380);
  p461.lineTo(s.width * 0.9905500, s.height * 0.7278880);
  p461.lineTo(s.width * 0.9903000, s.height * 0.7282380);
  p461.lineTo(s.width * 0.9901500, s.height * 0.7282380);
  p461.lineTo(s.width * 0.9900500, s.height * 0.7285881);
  p461.lineTo(s.width * 0.9901000, s.height * 0.7289382);
  p461.lineTo(s.width * 0.9899000, s.height * 0.7288215);
  p461.lineTo(s.width * 0.9898500, s.height * 0.7290548);
  p461.lineTo(s.width * 0.9896500, s.height * 0.7289382);
  p461.lineTo(s.width * 0.9896000, s.height * 0.7290548);
  p461.lineTo(s.width * 0.9894000, s.height * 0.7288215);
  p461.lineTo(s.width * 0.9895500, s.height * 0.7287048);
  p461.lineTo(s.width * 0.9896500, s.height * 0.7285881);
  p461.lineTo(s.width * 0.9897500, s.height * 0.7283547);
  p461.lineTo(s.width * 0.9899500, s.height * 0.7284714);
  p461.lineTo(s.width * 0.9901000, s.height * 0.7281214);
  p461.lineTo(s.width * 0.9902000, s.height * 0.7277713);
  p461.lineTo(s.width * 0.9904500, s.height * 0.7276546);
  p461.lineTo(s.width * 0.9907000, s.height * 0.7273046);
  p461.lineTo(s.width * 0.9908000, s.height * 0.7273046);
  p461.close();

  Paint paint461fill = Paint()..style = PaintingStyle.fill;
  paint461fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p461, paint461fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p462 = Path();
  p462.moveTo(s.width * 0.9912500, s.height * 0.7271879);
  p462.lineTo(s.width * 0.9911500, s.height * 0.7273046);
  p462.lineTo(s.width * 0.9910500, s.height * 0.7271879);
  p462.lineTo(s.width * 0.9911500, s.height * 0.7269545);
  p462.lineTo(s.width * 0.9912500, s.height * 0.7271879);
  p462.close();

  Paint paint462fill = Paint()..style = PaintingStyle.fill;
  paint462fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p462, paint462fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p463 = Path();
  p463.moveTo(s.width * 0.9942000, s.height * 0.7200700);
  p463.lineTo(s.width * 0.9942500, s.height * 0.7206534);
  p463.lineTo(s.width * 0.9941500, s.height * 0.7213536);
  p463.lineTo(s.width * 0.9941000, s.height * 0.7211202);
  p463.lineTo(s.width * 0.9940500, s.height * 0.7206534);
  p463.lineTo(s.width * 0.9939500, s.height * 0.7206534);
  p463.lineTo(s.width * 0.9940000, s.height * 0.7200700);
  p463.lineTo(s.width * 0.9941000, s.height * 0.7199533);
  p463.lineTo(s.width * 0.9942000, s.height * 0.7200700);
  p463.close();

  Paint paint463fill = Paint()..style = PaintingStyle.fill;
  paint463fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p463, paint463fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p464 = Path();
  p464.moveTo(s.width * 0.9929000, s.height * 0.7184364);
  p464.lineTo(s.width * 0.9928500, s.height * 0.7184364);
  p464.lineTo(s.width * 0.9928000, s.height * 0.7179697);
  p464.lineTo(s.width * 0.9929000, s.height * 0.7177363);
  p464.lineTo(s.width * 0.9931000, s.height * 0.7176196);
  p464.lineTo(s.width * 0.9931000, s.height * 0.7180863);
  p464.lineTo(s.width * 0.9930000, s.height * 0.7183197);
  p464.lineTo(s.width * 0.9929000, s.height * 0.7184364);
  p464.close();

  Paint paint464fill = Paint()..style = PaintingStyle.fill;
  paint464fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p464, paint464fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p465 = Path();
  p465.moveTo(s.width * 0.9918000, s.height * 0.7155193);
  p465.lineTo(s.width * 0.9917500, s.height * 0.7159860);
  p465.lineTo(s.width * 0.9919000, s.height * 0.7162194);
  p465.lineTo(s.width * 0.9919500, s.height * 0.7165694);
  p465.lineTo(s.width * 0.9921000, s.height * 0.7170362);
  p465.lineTo(s.width * 0.9922500, s.height * 0.7171529);
  p465.lineTo(s.width * 0.9923000, s.height * 0.7175029);
  p465.lineTo(s.width * 0.9924000, s.height * 0.7175029);
  p465.lineTo(s.width * 0.9924500, s.height * 0.7179697);
  p465.lineTo(s.width * 0.9923000, s.height * 0.7185531);
  p465.lineTo(s.width * 0.9923500, s.height * 0.7187865);
  p465.lineTo(s.width * 0.9924000, s.height * 0.7193699);
  p465.lineTo(s.width * 0.9922500, s.height * 0.7196033);
  p465.lineTo(s.width * 0.9922500, s.height * 0.7201867);
  p465.lineTo(s.width * 0.9923500, s.height * 0.7201867);
  p465.lineTo(s.width * 0.9924000, s.height * 0.7207701);
  p465.lineTo(s.width * 0.9922500, s.height * 0.7211202);
  p465.lineTo(s.width * 0.9919500, s.height * 0.7213536);
  p465.lineTo(s.width * 0.9919000, s.height * 0.7211202);
  p465.lineTo(s.width * 0.9917500, s.height * 0.7212369);
  p465.lineTo(s.width * 0.9917000, s.height * 0.7214702);
  p465.lineTo(s.width * 0.9915500, s.height * 0.7211202);
  p465.lineTo(s.width * 0.9911500, s.height * 0.7214702);
  p465.lineTo(s.width * 0.9907500, s.height * 0.7222870);
  p465.lineTo(s.width * 0.9906000, s.height * 0.7221704);
  p465.lineTo(s.width * 0.9904000, s.height * 0.7224037);
  p465.lineTo(s.width * 0.9902500, s.height * 0.7222870);
  p465.lineTo(s.width * 0.9899500, s.height * 0.7224037);
  p465.lineTo(s.width * 0.9898000, s.height * 0.7221704);
  p465.lineTo(s.width * 0.9893500, s.height * 0.7218203);
  p465.lineTo(s.width * 0.9892000, s.height * 0.7217036);
  p465.lineTo(s.width * 0.9889000, s.height * 0.7215869);
  p465.lineTo(s.width * 0.9888000, s.height * 0.7214702);
  p465.lineTo(s.width * 0.9885500, s.height * 0.7212369);
  p465.lineTo(s.width * 0.9884500, s.height * 0.7200700);
  p465.lineTo(s.width * 0.9886000, s.height * 0.7192532);
  p465.lineTo(s.width * 0.9887500, s.height * 0.7192532);
  p465.lineTo(s.width * 0.9889000, s.height * 0.7191365);
  p465.lineTo(s.width * 0.9889500, s.height * 0.7185531);
  p465.lineTo(s.width * 0.9891000, s.height * 0.7184364);
  p465.lineTo(s.width * 0.9891500, s.height * 0.7179697);
  p465.lineTo(s.width * 0.9890500, s.height * 0.7177363);
  p465.lineTo(s.width * 0.9893500, s.height * 0.7172695);
  p465.lineTo(s.width * 0.9895500, s.height * 0.7166861);
  p465.lineTo(s.width * 0.9896000, s.height * 0.7168028);
  p465.lineTo(s.width * 0.9899000, s.height * 0.7162194);
  p465.lineTo(s.width * 0.9900000, s.height * 0.7162194);
  p465.lineTo(s.width * 0.9904500, s.height * 0.7157526);
  p465.lineTo(s.width * 0.9907500, s.height * 0.7159860);
  p465.lineTo(s.width * 0.9909000, s.height * 0.7158693);
  p465.lineTo(s.width * 0.9911500, s.height * 0.7156359);
  p465.lineTo(s.width * 0.9914500, s.height * 0.7155193);
  p465.lineTo(s.width * 0.9916000, s.height * 0.7151692);
  p465.lineTo(s.width * 0.9918000, s.height * 0.7155193);
  p465.close();

  Paint paint465fill = Paint()..style = PaintingStyle.fill;
  paint465fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p465, paint465fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p466 = Path();
  p466.moveTo(s.width * 0.9949500, s.height * 0.7157526);
  p466.lineTo(s.width * 0.9948500, s.height * 0.7158693);
  p466.lineTo(s.width * 0.9949500, s.height * 0.7148191);
  p466.lineTo(s.width * 0.9951500, s.height * 0.7148191);
  p466.lineTo(s.width * 0.9951000, s.height * 0.7152859);
  p466.lineTo(s.width * 0.9949500, s.height * 0.7157526);
  p466.close();

  Paint paint466fill = Paint()..style = PaintingStyle.fill;
  paint466fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p466, paint466fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p467 = Path();
  p467.moveTo(s.width * 0.9892500, s.height * 0.7134189);
  p467.lineTo(s.width * 0.9891500, s.height * 0.7137690);
  p467.lineTo(s.width * 0.9889000, s.height * 0.7141190);
  p467.lineTo(s.width * 0.9889000, s.height * 0.7137690);
  p467.lineTo(s.width * 0.9891000, s.height * 0.7133022);
  p467.lineTo(s.width * 0.9892500, s.height * 0.7134189);
  p467.close();

  Paint paint467fill = Paint()..style = PaintingStyle.fill;
  paint467fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p467, paint467fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p468 = Path();
  p468.moveTo(s.width * 0.9967000, s.height * 0.7129522);
  p468.lineTo(s.width * 0.9966000, s.height * 0.7127188);
  p468.lineTo(s.width * 0.9966500, s.height * 0.7124854);
  p468.lineTo(s.width * 0.9969000, s.height * 0.7119020);
  p468.lineTo(s.width * 0.9970500, s.height * 0.7113186);
  p468.lineTo(s.width * 0.9969000, s.height * 0.7126021);
  p468.lineTo(s.width * 0.9967000, s.height * 0.7129522);
  p468.close();

  Paint paint468fill = Paint()..style = PaintingStyle.fill;
  paint468fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p468, paint468fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });

  Path p469 = Path();
  p469.moveTo(s.width * 0.9972000, s.height * 0.7071179);
  p469.lineTo(s.width * 0.9970000, s.height * 0.7075846);
  p469.lineTo(s.width * 0.9966000, s.height * 0.7088681);
  p469.lineTo(s.width * 0.9964500, s.height * 0.7089848);
  p469.lineTo(s.width * 0.9961000, s.height * 0.7094516);
  p469.lineTo(s.width * 0.9960000, s.height * 0.7101517);
  p469.lineTo(s.width * 0.9958000, s.height * 0.7103851);
  p469.lineTo(s.width * 0.9957000, s.height * 0.7107351);
  p469.lineTo(s.width * 0.9956500, s.height * 0.7109685);
  p469.lineTo(s.width * 0.9958000, s.height * 0.7110852);
  p469.lineTo(s.width * 0.9961000, s.height * 0.7107351);
  p469.lineTo(s.width * 0.9961500, s.height * 0.7106184);
  p469.lineTo(s.width * 0.9963000, s.height * 0.7102684);
  p469.lineTo(s.width * 0.9964000, s.height * 0.7099183);
  p469.lineTo(s.width * 0.9967000, s.height * 0.7095683);
  p469.lineTo(s.width * 0.9968500, s.height * 0.7092182);
  p469.lineTo(s.width * 0.9971500, s.height * 0.7088681);
  p469.lineTo(s.width * 0.9971500, s.height * 0.7092182);
  p469.lineTo(s.width * 0.9969000, s.height * 0.7100350);
  p469.lineTo(s.width * 0.9968000, s.height * 0.7101517);
  p469.lineTo(s.width * 0.9968500, s.height * 0.7108518);
  p469.lineTo(s.width * 0.9967000, s.height * 0.7112019);
  p469.lineTo(s.width * 0.9965500, s.height * 0.7108518);
  p469.lineTo(s.width * 0.9963500, s.height * 0.7108518);
  p469.lineTo(s.width * 0.9961000, s.height * 0.7109685);
  p469.lineTo(s.width * 0.9959000, s.height * 0.7113186);
  p469.lineTo(s.width * 0.9955500, s.height * 0.7114352);
  p469.lineTo(s.width * 0.9950500, s.height * 0.7114352);
  p469.lineTo(s.width * 0.9953000, s.height * 0.7108518);
  p469.lineTo(s.width * 0.9951000, s.height * 0.7106184);
  p469.lineTo(s.width * 0.9948000, s.height * 0.7108518);
  p469.lineTo(s.width * 0.9946000, s.height * 0.7110852);
  p469.lineTo(s.width * 0.9946000, s.height * 0.7113186);
  p469.lineTo(s.width * 0.9944500, s.height * 0.7114352);
  p469.lineTo(s.width * 0.9943500, s.height * 0.7115519);
  p469.lineTo(s.width * 0.9943000, s.height * 0.7120187);
  p469.lineTo(s.width * 0.9942000, s.height * 0.7123687);
  p469.lineTo(s.width * 0.9940500, s.height * 0.7122520);
  p469.lineTo(s.width * 0.9940500, s.height * 0.7120187);
  p469.lineTo(s.width * 0.9938500, s.height * 0.7119020);
  p469.lineTo(s.width * 0.9936500, s.height * 0.7121354);
  p469.lineTo(s.width * 0.9935500, s.height * 0.7127188);
  p469.lineTo(s.width * 0.9934000, s.height * 0.7129522);
  p469.lineTo(s.width * 0.9932500, s.height * 0.7129522);
  p469.lineTo(s.width * 0.9932500, s.height * 0.7126021);
  p469.lineTo(s.width * 0.9932500, s.height * 0.7121354);
  p469.lineTo(s.width * 0.9931500, s.height * 0.7116686);
  p469.lineTo(s.width * 0.9932000, s.height * 0.7114352);
  p469.lineTo(s.width * 0.9931500, s.height * 0.7113186);
  p469.lineTo(s.width * 0.9928500, s.height * 0.7115519);
  p469.lineTo(s.width * 0.9928500, s.height * 0.7110852);
  p469.lineTo(s.width * 0.9930500, s.height * 0.7107351);
  p469.lineTo(s.width * 0.9931000, s.height * 0.7107351);
  p469.lineTo(s.width * 0.9930500, s.height * 0.7101517);
  p469.lineTo(s.width * 0.9932000, s.height * 0.7100350);
  p469.lineTo(s.width * 0.9934500, s.height * 0.7103851);
  p469.lineTo(s.width * 0.9937500, s.height * 0.7099183);
  p469.lineTo(s.width * 0.9938500, s.height * 0.7099183);
  p469.lineTo(s.width * 0.9940000, s.height * 0.7095683);
  p469.lineTo(s.width * 0.9941000, s.height * 0.7095683);
  p469.lineTo(s.width * 0.9942500, s.height * 0.7092182);
  p469.lineTo(s.width * 0.9942500, s.height * 0.7089848);
  p469.lineTo(s.width * 0.9946500, s.height * 0.7088681);
  p469.lineTo(s.width * 0.9951000, s.height * 0.7085181);
  p469.lineTo(s.width * 0.9952500, s.height * 0.7084014);
  p469.lineTo(s.width * 0.9954500, s.height * 0.7085181);
  p469.lineTo(s.width * 0.9957000, s.height * 0.7082847);
  p469.lineTo(s.width * 0.9958000, s.height * 0.7078180);
  p469.lineTo(s.width * 0.9959000, s.height * 0.7078180);
  p469.lineTo(s.width * 0.9960000, s.height * 0.7073512);
  p469.lineTo(s.width * 0.9962000, s.height * 0.7074679);
  p469.lineTo(s.width * 0.9962500, s.height * 0.7072345);
  p469.lineTo(s.width * 0.9963500, s.height * 0.7073512);
  p469.lineTo(s.width * 0.9968500, s.height * 0.7067678);
  p469.lineTo(s.width * 0.9969000, s.height * 0.7071179);
  p469.lineTo(s.width * 0.9970000, s.height * 0.7070012);
  p469.lineTo(s.width * 0.9971000, s.height * 0.7071179);
  p469.lineTo(s.width * 0.9972500, s.height * 0.7067678);
  p469.lineTo(s.width * 0.9975000, s.height * 0.7065344);
  p469.lineTo(s.width * 0.9975500, s.height * 0.7066511);
  p469.lineTo(s.width * 0.9973000, s.height * 0.7071179);
  p469.lineTo(s.width * 0.9972000, s.height * 0.7071179);
  p469.close();

  Paint paint469fill = Paint()..style = PaintingStyle.fill;
  paint469fill.color = cClrs.fJ ?? dfltClr;
  canvas.drawPath(p469, paint469fill, onTapUp: (tabdetail) {
    callback('fj', tabdetail);
  });
}
