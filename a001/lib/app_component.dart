import 'package:angular2/core.dart';
import './hero.dart';

@Component(
    selector: 'my-app',
    template: """
    <h1>{{title}}</h1>
    <h2>My favorite hero is {{hero}} </h2>
    <p>Heroes:</p>
    <ul>
     <li *ngFor="let hero of heroes">{{hero.name}}</li>
    </ul>
    <p *ngIf="heroes.length > 3">There are many heroes!</p>
    """)
class AppComponent {
  String title = "Tour of Heroes";
  List<Hero> heroes = [
    new Hero(1,"Windstorm"),
    new Hero(13,"Bombasto"),
    new Hero(15,"Magneta"),
    new Hero(20,"Tornado")];
  Hero get myHero => heroes.first;
}
