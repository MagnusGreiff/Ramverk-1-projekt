---
title: "Redovisning"
...
Redoviningar
=========================

Här ska jag skriva mina redovisningar.

###Kmom01

#### Gör din egen kunskapsinventering baserat på PHP The Right Way, berätta om dina styrkor och svagheter som du vill förstärka under det kommande året. 
  
Det är svårt att komma på sina egna styrkor. Det finns en styrka som jag kommer på och det är att lösa problem även om det tar många timmar och en massa försök. Svagheter är lite enklare att hitta. När jag läste artikeln så kom jag på att jag inte är så bra på att testa/dokumentera min kod. Det är något jag måste jobba på. Det finns också vissa områden som Dependency Management, Dependency Injection, Interface och trait som jag inte har så bra koll på. Det måste jag också fixa. 

#### Vilket blev resultatet från din mini-undersökning om vilka ramverk som för närvarande är mest populära inom PHP (ange källa var du fann informationen)? 

Det verkar som om Laravel är det populäraste ramverket som används nu. Det är open-source, användarvänligt och man kan själv utveckla dess funktionalitet. På andraplats kommer Symfony. Det är ett ramverk som är väldigt stabilt, snabbt och modulärt.  
  
Såhär ser min rangordning ut: 
1. Laravel 
2. Symfony 
3. CodeIgniter 
4. Yii 
5. Nette Framework 
  
Källor: 
https://www.dunebook.com/5-best-php-frameworks-learn-2017/ 
https://medium.com/@elitechsystems/the-most-popular-php-frameworks-in-2017-a90a1189405e 
https://www.techjunkie.com/popular-php-frameworks/ 
  
  
  
#### Berätta om din syn/erfarenhet generellt kring communities och specifikt communities inom opensource och programmeringsdomänen. 

Jag har inte någon direkt erfarenhet av communities och opensource då jag inte är så aktiv på forum och githubprojekt. Men jag tycker att det är viktigt att det finns communities då man kan få hjälp med diverse problem man har. Man sparar tid på att fråga om hjälp än att sitta och försöka utan framgång. Även om jag inte har någon egen erfarenhet av opensource så känns det bra att det finns. Att man kan komma och hjälpa till med projekt utökar ens egna erfarenhet samt att det kan vara bra att visa upp på ens cv.  
  
  
#### Vad tror du om begreppet “en ramverkslös värld” som framfördes i videon? 
  
Jag tror att det är något som kommer att bli mer och mer populärt i framtiden. Att man själv kan välja vilka moduler man vill använda och inte bara ha den som kommer med ramverket. I videon säger han att man ska kunna byta ut bibliotek under produktionen. Om man inte tycker om ett specifikt bibliotek så kan man byta ut det mot ett bibliotek man tycker om. Det låter väldigt användbart då man kanske kan mer om ett specifikt bibliotek som inte följer med ramverket man använder att man kan byta ut det som följer med till det man kan och man blir mer produktiv. 
  
  
#### Hur gick dina förberedelser inför kommentarssystemet? 

Det gick sådär. Jag har kollat rundor på olika webbsidor som har kommentarsystem och försökt fundera på hur deras system var uppbyggt. Jag har inte skrivit ner någon kod utan jag har mest funderar i mitt huvud på hur man kan bygga ett kommentarsystem. Jag försökte också komma på hur ens SQL kan se ut. Det finns några moduler som jag kan använda från andra kurser som kan vara bra att ha här.  

###Kmom02

#### Vilka tidigare erfarenheter har du av MVC? Använde du någon speciell källa för att läsa på om MVC?

Jag har inga tidigare erfarenheter med MVC men jag har hört talas om det tidigare. Jag använde mig av artikeln vi fick samt den wikipedia artikeln för att läsa om MVC. När jag tänker på MVC så är det att användaren skickar in en request till kontrollern som sedan skickar vidare till modellen som hämtar information from t.ex. databas och sedan skickar det till vyn för att uppdatera innehållet.

#### Kom du fram till vad begreppet SOLID innebar och vilka källor använde du? Kan du förklara SOLID på ett par rader med dina egna ord?

Jag kom fram till att SOLID är ett svårt begrepp som jag inte har full koll på än. Jag kan bara förklara vad S och O betyder i SOLID. De andra kan jag inte förklara.

S: Att en klass eller modul bara ska göra en sak. Ett exempel kan vara en klass som har hand om databaser ska inte göra andra saker som textvalidering.

O: Att man ska kunna utöka klassen med nya funktioner men man ska inte kunna redigera de som finns.


#### Gick arbetet med REM servern bra och du lyckades integrera den i din me-sida?

Ja det var inga problem med att jobba med REM servern. Jag följde artikeln och de lade en bra grund på hur man fick det att fungera. Att integrera REM servern i min me-sida var inga problem då jag följde stegen som fanns i artikeln. Just nu ser jag ingen användning av REM servern men det kommer kanske senare i kursen.

#### Berätta om arbetet med din kommentarsmodul, hur långt har du kommit och hur tänker du?

När jag började försökte jag först tänka ut vilka routes jag vill ha. För att få en bra grund. Jag tog inspiration från REM serverns routes. När jag hade de routes jag vill ha så började jag med Kontrollern. Min Kontroller gör inte så mycket just nu, det enda den gör är att skicka vidare till min modell. I modellen gör jag lite mer saker. Där hämtar jag hem information från min databas som jag redan lägger i vyer. Jag använde mig av MVC varianten user->controller->model->view->user. Det var mest för att det är så jag tänker mig MVC. Att användaren skickaren en request till kontrollern som sedan skickar vidare till modellen som sedan hämtar från t.ex. en databas och sedan till vyn som skriver ut det man fick från modellen. Jag har kommit rätt så långt, det var två krav som jag inte gjorde (redigera och radera), det var mest för att jag vill vänta till man kan logga in då det känns bättre då så att man inte kan radera alla kommentarer eller redigera dem.

###Kmom03

#### Hur känns det att jobba med begreppen kring dependency injection, service locator och lazy loading?

Det känns bra. Det är många nya begrepp som jag har behövt lära mig. Jag har haft lite problem med att förstå vissa begrepp just nu men det kommer nog lösa sig under senare tillfällen i kursen. 

#### Hur känns det att göra dig av med beroendet till $app, blir $di bättre?

Det känns som om vi bara har bytat ut $app mot $di. Jag behöver få mer information om varför det skulle bli bättre med $di istället för $app.

#### Hur känns det att återigen göra refaktoring på din me-sida, blir det förbättringar på kodstrukturen, eller bara annorlunda?

Det känns som om kodstrukturen har blivit annorlunda. Det är inte jättemycket som har ändrats. Det är bara hur vi implementerar klasserna, hur vi använder dem och hur vi skriver routes. Om vi jämför kodstrukturen från innan refaktoring med kodstrukturen efter refaktoring så känns det som om den har blivit mer komplicerad. Vi har lagt till callback i routen samt en massa andra saker.

#### Lyckades du införa begreppen kring DI när du vidareutvecklade ditt kommentarssystem?

Det var inga problem med att implementera DI i kommentarssystemet. Jag ändrade bara så att jag använde $di istället för $app. Jag hade lite problem då jag glömde att använda mig av $di->get("class")->metod.

#### Påbörjade du arbetet (hur gick det) med databasmodellen eller avvaktar du till kommande kmom?

Jag avvaktar till nästa kursmoment mest för att jag redan hade en databasmodel som jag tror kommer att fungera. Om den inte skulle fungera så får jag fixa det då. 

#### Allmänna kommentarer kring din me-sida och dess kodstruktur?

Eftersom kodstrukturen har blivit bättre så har även felsökningen blivit lite enklare.

###Kmom04

#### Hur gick det att integrera formulärhantering och databashantering i ditt kommentarssystem?

Det gick rätt så smidigt att integrera dessa. Databashantering hade jag lite sen kmom02 och nu har jag fixat så att man kan logga in.

#### Berätta om din syn på Active record och liknande upplägg, ser du fördelar och nackdelar?
Jag och Active record är inte direkt bra vänner. Jag har problem med att skriva kod med hjälp av det här design mönstret. Kan dock inte svara på varför jag har så mycket problem med det. Det känns som om jag vill skriva min SQL kod själv och inte att det ska hända magiskt. För mig så ser jag inga fördelar just nu, jag tycker att det är komplicerat.  

#### Utveckla din syn på koden du nu har i ramverket och din kommentars- och användarkod. Hur känns det?
Tyvärr hade jag inte tid att köra refactoring på min kommentarskod så det ser likadan ut. Det är något jag behöver fixa när jag får tid över. Användarkoden använder sig av active record och formulärhantering. Det var mest för att jag använde mig av Book exemplet när jag gjorde användarhanteringen. Formulärhantering tycker jag är trevligt, det gör ens vardag lite enklare.

#### Om du vill, och har kunskap om, kan du även berätta om din syn på ORM och designmönstret Data Mapper som är närbesläktade med Active Record. Du kanske har erfarenhet av likande upplägg i andra sammanhang?

Jag har inte tillräckligt med kunskap för att skriva något här.

#### Vad tror du om begreppet scaffolding, kan det vara något att kika mer på?
Jag tycker att det är ett väldigt bra begrepp. Det gör det enklare att komma igång på projekt och liknande. Man behöver bara köra ett kommando så får man all kod man behöver för att börja. Jag vill gärna kika mer på scaffolding.

###Kmom05

###Kmom06

###Kmom07/10