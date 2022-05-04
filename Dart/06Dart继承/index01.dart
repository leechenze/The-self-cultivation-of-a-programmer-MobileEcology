import 'lib/Father.dart';
import 'lib/Son.dart';

void main() {
  Father f = new Father('皇帝');
  Father s = new Son('卖草鞋的');
  print(f.name);
  print(s.name);
  print(s.money);
  print(s.say());
  print(s.getMoney);
}
