// Copyright (c) 2017, kyorohiro. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'dart:async';


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
