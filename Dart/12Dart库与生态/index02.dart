/* 所有系统库 */
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:core';
import 'dart:developer';
import 'dart:math';
import 'dart:typed_data';
/* VM */
import 'dart:cli';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'dart:mirrors';
/* WEB */
import 'dart:html';
import 'dart:indexed_db';
import 'dart:js';
import 'dart:js_util';
import 'dart:svg';
import 'dart:web_audio';
import 'dart:web_gl';

/* 自定义库 */
// show 后面是指定引入的内容;
import 'lib/system01.dart' show system01_1, system01_3;
// hide 后面是隐藏引入的内容;
import 'lib/system02.dart' hide system02_3;
import 'dart:math';
// core库是系统库中的一个特例, 是默认引入的;
// import 'dart:core';

void main(List<String> args) {
  print(pi);
  print(min(3, 6));
  print(max(3, 6));
  // 因为 system01_2 没有在show 后面指定所以找不到;
  // system01_2();
  system01_1();
  // system01_2();
  system01_3();
  // 因为 system01_3 在hide 后面指定了所以找不到;
  // system01_2();
  system02_1();
  system02_2();
  // system02_3();
}
