import 'package:angular2/platform/browser.dart';
import 'package:angular2/core.dart';
import 'dart:async';

main() {
  bootstrap(AppComponent);
}

@Component(
    selector: 'my-app',
    template: """
  <div>{{counter}}</div>
  """
)
class AppComponent implements OnInit {
  int counter = 0;

  ngOnInit() {
    new Future(() async {
      while (true) {
        await new Future.delayed(new Duration(seconds: 1));
        counter++;
      }
    });
  }
}