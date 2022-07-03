import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = '调查对象年龄分布';

  var myData = JsObject.jsify([
    {'menu': '12-18', 'number': 10},
    {'menu': '18-25', 'number': 5},
    {'menu': '25-40', 'number': 7},
    {'menu': '40-60', 'number': 5},
    {'menu': '60+', 'number': 2},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
