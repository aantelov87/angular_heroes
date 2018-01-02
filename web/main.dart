import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:heroes/app_component.dart';
import 'package:heroes/in_memory_data_service.dart';
import 'package:http/http.dart';

void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    // Remove next line in production
    provide(LocationStrategy, useClass: HashLocationStrategy),
    provide(Client, useClass: InMemoryDataService),
    //    provide(BrowserClient, useFactory: () => new BrowserClient(), deps: []),
  ]);
}
