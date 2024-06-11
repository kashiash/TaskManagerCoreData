# Ultimate Portfolio CoreData

Tłumaczenie kursu 

https://www.hackingwithswift.com/plus/ultimate-portfolio-app/ultimate-portfolio-app-introduction



## Aplikacja Ultimate Portfolio: Wprowadzenie

Chociaż jestem pewien, że chcesz natychmiast rozpocząć programowanie, daj mi kilka minut na przedstawienie celów tego kursu i wyjaśnienie, dlaczego różni się on od innych kursów, które napisałem.

### Szybkie linki
Najważniejsze kroki
Jedna aplikacja, krok po kroku
Co Cię interesuje?
Co jest potrzebne
Wydawanie w ratach
O naszej aplikacji

### Najważniejsze kroki
Zaraz wyjaśnię kilka rzeczy na temat tego kursu, ale jeśli jesteś niecierpliwy, oto zestaw kroków, które musisz absolutnie wykonać:

1. Uruchom Xcode. Potrzebujesz co najmniej Xcode 14.2, aby podążać za kursem.
2. Stwórz nowy projekt.
3. Wybierz zakładkę „Multiplatform” i szablon „App”.
4. Nazwij swój projekt – ja nazwałem mój „UltimatePortfolio”, ale to Twój projekt, więc nazwij go, jak chcesz.
   

Uwaga: Ponieważ mój projekt nazywa się UltimatePortfolio, mój główny plik Swift będzie nosił nazwę UltimatePortfolioApp.swift. Kiedy zobaczysz odniesienie do UltimatePortfolioApp.swift, powinieneś oczywiście otworzyć odpowiedni plik w swoim projekcie – ten, który ma @main przed strukturą App.

Proszę, nie zaznaczaj opcji „Use Core Data” ani „Include Tests”. Zrobimy to ręcznie, abyś dokładnie widział, jak to działa.

Po kliknięciu „Next” zostaniesz zapytany, gdzie zapisać projekt. Zostaniesz również zapytany, czy chcesz włączyć kontrolę wersji dla tego projektu – jeśli czujesz się komfortowo z używaniem kontroli wersji w Xcode, możesz zaznaczyć to pole, ale jeśli nie, krótko pokażę, jak używać Gita w terminalu, aby chronić swój kod.

To absolutne minimum, które musisz zrobić, aby rozpocząć projekt. W dalszej części tego artykułu przeprowadzę Cię przez plan tego, co będziemy robić – ponownie zalecam, abyś podążał krok po kroku!

### Jedna aplikacja, krok po kroku
Wiele tutoriali, które piszę, uczy kilku specyficznych rzeczy na raz, często osadzonych w projekcie aplikacji. Sama aplikacja jest wystarczająco miła, ponieważ pozwala zobaczyć kod w kontekście rzeczywistym, ale nie jest celem tutoriali – celem jest nauczenie Cię Core Data, haptyki lub czegoś innego, a aplikacja jest tylko dodatkowym elementem.

Ten kurs jest zupełnie inny, ponieważ będziemy budować tylko jedną aplikację przez cały czas. A zamiast tego, aby aplikacja była czymś przypadkowym w końcowym rezultacie, tym razem aplikacja jest rdzeniem kursu, ponieważ naszym celem jest stworzenie świetnego przykładu wielu różnych aspektów tworzenia aplikacji, a także czegoś, z czego będziesz dumny, umieszczając to na GitHubie jako część swojego portfolio.

To oznacza dwie rzeczy. Po pierwsze, oznacza to, że będziemy obejmować szeroki zakres tematów: ważne frameworki, takie jak SwiftUI i Core Data, różne integracje systemowe, takie jak Widgety, StoreKit i Spotlight, a także dobre praktyki programistyczne, takie jak testowanie, architektura, lokalizacja, organizacja projektów i dostępność.

Po drugie, oznacza to, że ważne jest, abyś zrozumiał, jak wszystko się ze sobą łączy, więc będziemy dużo mówić o tym, dlaczego coś robimy, a nie tylko jak – zabiorę Cię na kilka błędnych ścieżek, abyś mógł zobaczyć, gdzie leżą problemy, a następnie pokażę, jak je rozwiązać. Mam nadzieję, że to oznacza, że kiedy będziesz rozmawiać o swoim projekcie z pracodawcą, będziesz w stanie udzielić jasnych, poprawnych odpowiedzi na temat wyborów, które podjęliśmy.

Naszym celem nie jest stworzenie fantazyjnego interfejsu użytkownika, który wygląda świetnie na zrzutach ekranu, ale pokazanie, że rozumiesz, co jest potrzebne do stworzenia solidnego, niezawodnego oprogramowania. Oczywiście chcę, abyś stworzył coś, co wygląda dobrze, ale co ważniejsze w tym kursie, chcę, abyś stworzył coś, co działa dobrze – co pokazuje, że można na Tobie polegać przy tworzeniu ważnego, skomplikowanego kodu Swift.

Nic z tego nie powinno powstrzymać Cię przed zabawą z dostosowywaniem projektu tak bardzo, jak chcesz, po prostu nie będzie to moim priorytetem.

### Co Cię interesuje?
Ten kurs podzielony jest na trzy sekcje:

1. Budowanie rdzenia aplikacji, gdzie zajmiemy się SwiftUI, Core Data, architekturą, testowaniem, dostępnością, dokumentacją, siecią, lokalizacją i więcej.
2. Integracja z systemem, gdzie przyjrzymy się StoreKit, Core Spotlight, widgetom, powiadomieniom, haptyce i więcej.
3. Projektowanie dla każdej platformy, gdzie rozszerzymy naszą bazową aplikację iOS, aby działała równie dobrze na macOS i watchOS.

Tylko pierwsza sekcja jest wymagana. Ważne jest, aby każdy przeszedł przez pierwszą sekcję w całości i w odpowiedniej kolejności, ponieważ tam budujemy rdzeń naszej aplikacji.

Po ukończeniu pierwszej sekcji możesz przejść dowolną lub wszystkie z sekcji 2 lub 3, w dowolnej kolejności – są one wszystkie opcjonalne i w dużej mierze samodzielne. To jest miejsce, gdzie kurs staje się bardziej zabawny, ponieważ możesz dostosować swoją aplikację do portfolio, aby pasowała do tego, co Cię interesuje, i oznacza to również, że Twoja aplikacja będzie unikalna, ponieważ skupia się na rzeczach, na których Ci zależy.

Teraz, pierwsza sekcja jest zupełnie inna niż wszystko, co wcześniej nauczałem, ponieważ, jak zobaczysz, prowadzi to do fascynującego crescendo złego kodu. W moich regularnych tutorialach próbowałbym albo wprowadzić najlepsze praktyki po drodze, albo dostarczyć skrót, ponieważ ciągłe powtarzanie tego samego może być dość nużące.

Tutaj jednak zaczniemy od budowania dość naiwnej wersji aplikacji – bez testów, bez dokumentacji, bez lokalizacji, bez rzeczywistej struktury projektu i tak dalej. To wyprodukuje całkowicie użyteczną aplikację, którą mogłbyś wysłać do App Store, jeśli byś chciał, ale nie będzie to rodzaj aplikacji, która otrzyma pochwały, gdy będziesz o niej mówił podczas rozmowy kwalifikacyjnej.

Ale potem, gdy aplikacja będzie już zbudowana, zaczniemy ją krok po kroku naprawiać. Nie tylko pozwoli to na posiadanie aplikacji, która ma na przykład świetną internacjonalizację, ale również pokaże techniki potrzebne do zapewnienia świetnej internacjonalizacji w każdej aplikacji.

### Co jest potrzebne
Cały kurs został napisany przy użyciu Xcode 14 dla iOS 16, macOS Ventura i watchOS 9, ale powinien działać świetnie na przyszłych wersjach. Zaleca się posiadanie aktywnego konta w Programie Deweloperskim Apple, ale nie jest to konieczne poza czymś takim jak StoreKit.

Gorąco polecam zapisywanie swojej pracy w repozytorium kodu źródłowego, takim jak GitHub, po zakończeniu każdego kroku. Nie musi to być publiczne repozytorium; gdziekolwiek możesz umieścić kod, aby go zabezpieczyć, to dobry pomysł. Pokażę to raz, abyś mógł zobaczyć, jak to wygląda, ale później to już zależy od Ciebie.

Jeśli chodzi o Twoje umiejętności, chociaż będę wyjaśniał każdy krok naszego kodu po drodze, gorąco polecam ukończenie mojego kursu „100 Days of SwiftUI” przed rozpoczęciem, ponieważ moim celem nie jest omawianie wszystkich podstaw SwiftUI. Zamiast tego skupię się na bardziej interesujących rzeczach – dlaczego pewne wybory mają sens, jak dobrze strukturują kod i tak dalej.

### Wydawanie w ratach
To pierwszy raz, kiedy piszę kurs w odcinkach, więc to dla mnie prawdziwa przygoda. Oczywiście niektóre części kursu są znacznie łatwiejsze niż inne, więc dokładny harmonogram wydawniczy może się nieco zmieniać, ale to mój cel.

To oznacza, że mogę potrzebować wydać poprawki w trakcie kursu, na podstawie mojej zmiany zdania lub opinii czytelników. Oczywiście mam nadzieję, że to się nie zdarzy, ale

## Projektowanie świetnego modelu

Prawie zawsze kluczem do uzyskania świetnej aplikacji jest uzyskanie świetnego modelu danych - decydowanie tak wcześnie, jak to możliwe, jakie dane chcesz przechowywać i jak każdy element odnosi się do innych elementów. Więc, zagłębimy się od razu w Core Data!

### Szybkie linki
Podstawy naszych danych
Zarządzanie dostępem do danych
Podstawy naszych danych

### Podstawy naszych danych
Naprawdę wierzę, że ważne jest prawidłowe zbudowanie modeli danych i dostępu do nich już na początku tworzenia aplikacji. Tak, często muszę z czasem doskonalić swoje modele i kod, ale nadal staram się na początku ustawić fundamenty. Nie będę udawać, że ta praca jest szczególnie ekscytująca, bo nie jest! Jednak jest ważna i daje nam solidną podstawę do budowy reszty naszej aplikacji.

Tworzymy aplikację do śledzenia błędów w kodzie, więc naszym najważniejszym typem danych jest konkretne zagadnienie, które chcemy śledzić. Na przykład, możemy zgłosić błąd dotyczący uszkodzonej funkcji w naszej aplikacji, ale gdybyś tworzył tę aplikację jako narzędzie do zarządzania listą zadań, byłoby to ogólne zadanie do wykonania, takie jak „podaj psom smakołyki”.

Jednak posiadanie wielu luźnych zagadnień sprawiłoby, że nasza aplikacja byłaby trudna w użyciu, ponieważ łatwo można by coś zgubić. Dlatego pozwolimy użytkownikowi tworzyć tagi i dołączać je do swoich zagadnień. Umożliwia to filtrowanie po konkretnym tagu, co znacznie ułatwia znajdowanie danych w aplikacji.

Zaczniemy więc od stworzenia nowego modelu danych, który będzie reprezentował te dwa elementy danych. Naciśnij Cmd+N, aby utworzyć nowy plik, a następnie wybierz Data Model i nazwij go Main.xcdatamodeld.

Już powiedziałem, że potrzebujemy dwóch odrębnych typów danych, więc dodaj dwie encje, nazywając pierwszą Issue, a drugą Tag. To informuje Core Data, że chcemy przechowywać zagadnienia i tagi jako osobne typy danych.

Następnie dodamy kilka atrybutów do każdego z nich, zaczynając od Issue. Co powinno mieć jedno zagadnienie? Oto kilka rzeczy, które przychodzą na myśl:

- Tytuł, który jest główną nazwą tego zagadnienia. Na przykład, możemy mieć tytuły takie jak „Napraw błąd VoiceOver na ekranie konta”.
- Opcjonalne dodatkowe szczegóły, dostarczające dodatkowego kontekstu dla zagadnienia, jeśli jest to potrzebne. Kontynuując przykład z VoiceOver, może to być „Gdy VoiceOver jest włączony, przycisk Zamknij jest nieprawidłowo odczytywany” lub podobne.
- Informacja o tym, jak ważne jest to zagadnienie w porównaniu z innymi. Na przykład, naprawa błędu VoiceOver prawdopodobnie będzie miała wysoki priorytet, podczas gdy naprawa niewłaściwego koloru może mieć niższy priorytet.
- Czy zagadnienie jest uznawane za zamknięte, czy nie, aby było jasne, jakie prace są nadal w toku.
- Kiedy zagadnienie zostało utworzone i zmodyfikowane, abyśmy mogli utrzymać zagadnienia w sensownej kolejności.

Możemy to mniej więcej wszystko umieścić bezpośrednio w Core Data jako atrybuty encji Issue. Atrybuty encji są podobne do właściwości w strukturach, chociaż jak zobaczysz, Core Data ma bardzo specyficzne wyobrażenie o tym, jak powinny wyglądać jego dane.

Upewnij się, że Issue jest zaznaczone na liście encji, a następnie kliknij mały przycisk + pod Atrybutami sześć razy. To doda sześć atrybutów, każdy z typem Undefined, ale zmień je na następujące:

- „title” z typem String.
- „content” z typem String.
- „priority” z typem Integer 16.
- „completed” z typem Boolean.
- „creationDate” z typem Date.
- „modificationDate” z typem Date.

Większość z tych atrybutów jest jasna, ale zauważ, że musimy być precyzyjni, jeśli chodzi o rodzaj całkowity, który przechowujemy w Core Data – nie ma prostego typu „Integer”, który mapuje na Int w Swift, ponieważ to by się różniło między platformami. Zamiast tego używamy Integer 16, co odpowiada Int16 w Swift, co jest najmniejszym rozmiarem, jaki możemy wybrać.

Oczywiście, chcielibyśmy tutaj przechowywać enum, ale nie jest to możliwe w Core Data, chyba że naprawdę zgłębisz jego wewnętrzne mechanizmy. Zamiast tego użyjemy pola „priority”, aby reprezentowało wartości od 0 (niski priorytet) do 2 (wysoki priorytet).

To kończy naszą encję Issue, więc teraz wybierz encję Tag. Jeśli pamiętasz, są to sposób grupowania powiązanych zagadnień, więc potrzebują tylko dwóch atrybutów: unikalnego identyfikatora i nazwy tagu. Dodaj nowy atrybut o nazwie „id” z typem UUID, a następnie kolejny atrybut o nazwie „name” z typem String – gotowe!

Prawie skończyliśmy z Core Data, ale są trzy dodatkowe rzeczy, które chciałbym zrobić.

Po pierwsze, atrybut modificationDate zagadnień powinien zawsze być ustawiony na czas ostatniej modyfikacji danego zagadnienia. Moglibyśmy to aktualizować sami, ale to zarówno uciążliwe, jak i łatwe do pomyłki. Lepszym pomysłem jest uczynienie tego atrybutu atrybutem pochodnym, który poprosi Core Data o automatyczne obliczenie jego wartości.

Aby to zrobić, wybierz modificationDate z listy atrybutów, otwórz inspektor modelu danych i zaznacz pole „Derived”. Pojawi się nowe pole tekstowe „Derivation”, w którym decydujemy, jak Core Data powinna automatycznie ustawić wartość tego atrybutu. Wpisz teraz() w tym polu, co mówi Core Data, aby użyła aktualnego czasu dla tego pola, aktualizując go za każdym razem, gdy zapisujemy zmiany dla tego obiektu.

Drugą rzeczą, którą zmienimy, jest powiedzenie Core Data, że chcemy, aby ten model danych był używany z CloudKit. Wymaga to kilku kroków, ale teraz ważne jest tylko jedno: musisz wybrać „Default” pod Konfiguracjami, a następnie użyć inspektora modelu danych, aby zaznaczyć pole „Used with CloudKit”.

Trzecią rzeczą, którą chciałbym zmienić, jest powiedzenie Core Data, że każde zagadnienie może mieć wiele tagów, a także każdy tag może mieć wiele zagadnień. Nazywa się to relacją i pozwala Core Data wykonać mnóstwo pracy za nas.

Aby utworzyć relację między zagadnieniami a tagami, najpierw upewnij się, że encja Issue jest zaznaczona, a następnie kliknij mały przycisk + pod nagłówkiem Relationships. Nowa relacja będzie miała domyślną nazwę „relationship”, ale proszę zmień jej nazwę na „tags”. Dla Destinacji zmień „No Value” na „Tag”.

Mam nadzieję, że nadal masz otwarty inspektor modelu danych, ponieważ musimy dokonać jednej małej zmiany w tej nowej relacji: gdzie jest napisane „Type: To One”, zmień to na „To Many”. To mówi Core Data, że jedno zagadnienie może mieć wiele dołączonych tagów.

Teraz, gdy powiedzieliśmy Core Data, że każde zagadnienie ma wiele tagów, możemy utworzyć odwrotną relację w encji Tag – „każdy tag ma wiele zagadnień”. Pozwala to nam na odczytanie zagadnień dla danego tagu, ale także znalezienie tagu, który jest dołączony do danego zagadnienia; możemy poruszać się po naszych danych w obu kierunkach.

Wybierz encję Tag i kliknij + pod Relationships. Nazwij tę relację „issues”, ustaw jej Destinację na Issue, a następnie zmień Inverse na „tags”. Zmień także jej Type na „To Many”, ponieważ każdy tag może mieć wiele zagadnień.

I to wszystko, jeśli chodzi o nasz model danych Core Data – nie musimy teraz robić nic więcej, ponieważ powiedzieliśmy systemowi wszystko, co powinien wiedzieć o naszym modelu danych.

### Zarządzanie dostępem do danych
Nasz model danych Core Data jest kompletny, więc kolejnym krokiem jest napisanie kodu, który pozwoli nam na dostęp  do tych danych w prosty, spójny sposób w całej aplikacji.

To często miejsce, w którym ludzie chcą używać singletonów – prosty wzorzec projektowy, który tworzy jedną instancję typu podczas uruchamiania aplikacji i ogranicza resztę kodu do korzystania z tej wspólnej instancji.

Singletony są szeroko używane na platformach Apple i często mają sens – jest singleton UIDevice, ponieważ to urządzenie, z którego korzystasz teraz, jest singleton UIApplication, ponieważ to aplikacja, która działa teraz, i tak dalej.

Jednak chociaż singletons są powszechne i często mają sens, mają ogromną wadę – są trudniejsze do testowania. Jeśli wszyscy dzielą to samo miejsce przechowywania danych, trudniej jest zapewnić czystą kartę za każdym razem, gdy test jest uruchamiany.

Dlatego stworzymy nową klasę o nazwie DataController, która będzie odpowiedzialna za konfigurację Core Data i obsługę większości naszych interakcji z nim.

Naciśnij Cmd+N, aby utworzyć nowy plik. Tym razem wybierz Swift File i nazwij go DataController.swift. Na początku będzie miał prosty import Foundation, ale zmień to, aby importować Core Data:

```swift
import CoreData
```

Ten kontroler danych będzie ewoluował z czasem, aby mieć różne zdolności do manipulowania danymi, ale na początek interesuje nas ładowanie niektórych danych Core Data, tworzenie przykładowych danych, abyśmy mieli coś do obejrzenia, usuwanie niechcianych danych i oczywiście zapisywanie tych zmian, aby zostały zachowane.

To wymaga kilku kroków, więc rozłóżmy to na małe części, zaczynając od samej definicji klasy. Dodaj to do DataController.swift:

```swift
class DataController: ObservableObject {
    let container: NSPersistentCloudKitContainer
}
```

Zrobiłem to, aby konformowało do ObservableObject, więc każda widok SwiftUI może tworzyć instancję i obserwować ją, jeśli to konieczne. Dałem również jedno właściwości, która jest instancją NSPersistentCloudKitContainer. Jest ona odpowiedzialna za ładowanie i zarządzanie lokalnymi danymi za pomocą Core Data, ale także synchronizację tych danych z iCloud, aby wszystkie urządzenia użytkownika mogły dzielić te same dane dla naszej aplikacji.

Pierwszą rzeczą, którą dodamy do DataController, jest inicjalizator, który będzie ładować ten „Main” model danych, który zdefiniowaliśmy wcześniej. Jednak dodamy trochę elastyczności: aby łatwiej było przeglądać dane, dodamy boolean inMemory przy tworzeniu kontrolera danych. Gdy jest ustawiony na true, będziemy tworzyć dane całkowicie w pamięci, a nie na dysku, co oznacza, że znikną one, gdy aplikacja się zakończy – to świetne do przeglądania w SwiftUI, ale także pomocne do pisania testów.

Gdy skonfigurujemy nasz kontener Core Data, możemy go załadować, wywołując loadPersistentStores(). To załaduje faktyczną bazę danych na dysku lub stworzy ją, jeśli jeszcze nie istnieje, ale jeśli to się nie uda, nie mamy innego wyboru, jak tylko zakończyć działanie – coś jest bardzo poważnie nie tak!

Dodaj ten inicjalizator do DataController:

```swift
init(inMemory: Bool = false) {
    container = NSPersistentCloudKitContainer(name: "Main")

    if inMemory {
        container.persistentStoreDescriptions.first?.url = URL(filePath: "/dev/null")
    }

    container.loadPersistentStores { storeDescription, error in
        if let error {
            fatalError("Fatal error loading store: \(error.localizedDescription)")
        }
    }
}
```

Następnie napiszemy metodę createSampleData(), która utworzy kilka zagadnień i tagów. Jest to przydatne tylko do testowania i przeglądania, ale naprawdę się przydaje.

Jeśli nigdy wcześniej nie używałeś Core Data, to tutaj Xcode robi coś całkiem genialnego: ponieważ zdefiniowaliśmy encje o nazwach Issue i Tag, Xcode automatycznie wygeneruje klasy o nazwach Issue i Tag dla nas do użycia, z właściwościami odpowiadającymi wszystkim zdefiniowanym atrybutom. Co więcej, gdy tworzysz instancje tych klas za pomocą naszego stosu Core Data, mogą być one ładowane i zapisywane prawie automatycznie – to ogromna oszczędność czasu.

Dodaj teraz tę metodę do DataController:

```swift
func createSampleData() {
    let viewContext = container.viewContext

    for i in 1...5 {
        let tag = Tag(context: viewContext)
        tag.id = UUID()
        tag.name = "Tag \(i)"

        for j in 1...10 {
            let issue = Issue(context: viewContext)
            issue.title = "Issue \(i)-\(j)"
            issue.content = "Description goes here"
            issue.creationDate = .now
            issue.completed = Bool.random()
            issue.priority = Int16.random(in: 0...2)
            tag.addToIssues(issue)
        }
    }

    try? viewContext.save()
}
```

Kilka rzeczy, na które chcę zwrócić uwagę, zanim przejdziemy dalej.

Po pierwsze, ten widok kontekstu jest bardzo ważnym pojęciem w Core Data, ponieważ to on jest praktycznie pulą danych załadowanych z dysku. Już stworzyliśmy i załadowaliśmy nasz magazyn trwały, który jest podstawowymi danymi bazowymi istniejącymi w długoterminowej pamięci, ale ten widok kontekstu przechowuje wszystkie aktywne obiekty w pamięci podczas pracy z nimi i zapisuje je z powrotem do magazynu trwałego, gdy o to poprosimy.

Po drugie, gdy tworzymy instancje Issue i Tag, musimy powiedzieć im, w którym kontekście widoku się znajdują. To pozwala Core Data śledzić, gdzie zostały utworzone, więc wie, gdzie je później zapisać.

Po trzecie, nadałem tagom i zagadnieniom sensowne przykładowe dane, abyśmy mogli lepiej zobaczyć, jak nasz kod działa, gdy są one wyświetlane później w naszym interfejsie użytkownika.

I wreszcie, gdy wszystkie przykładowe obiekty zostaną utworzone, wywołujemy save() na naszym kontekście widoku, co mówi Core Data, aby zapisała wszystkie te nowe obiekty do trwałego magazynu. Może to być w pamięci, co oznacza, że nie przetrwa długo, ale może to być także magazyn trwały, co oznacza, że będzie trwał tak długo, jak długo nasza aplikacja jest zainstalowana, a nawet zsynchronizuje się z iCloud, jeśli użytkownik ma aktywne konto iCloud.

Teraz, gdy mamy przykładowe dane do pracy, możemy zbudować gotowy kontroler danych, odpowiedni do przeglądania widoków SwiftUI. Dodaj tę statyczną właściwość do DataController:

```swift
static var preview: DataController = {
    let dataController = DataController(inMemory: true)
    dataController.createSampleData()
    return dataController
}()
```

Zanim skończymy na teraz, chcę dodać jeszcze trzy metody do naszego kontrolera danych – dwie łatwe i jedną bardziej złożoną.

Pierwsza to sposób na zapisywanie zmian, aby jeśli jakaś inna część naszej aplikacji wprowadziła zmiany w naszych danych, mogła je zapisać na dysku. Moglibyśmy po prostu przekazać to bezpośrednio do kontekstu widoku, ale lepszym pomysłem jest robić to tylko wtedy, gdy są jakieś zmiany do zapisania, w przeciwnym razie będziemy zmuszać Core Data do niepotrzebnej pracy.

Dodaj teraz tę metodę do DataController:

```swift
func save() {
    if container.viewContext.hasChanges {
        try? container.viewContext.save()
    }
}
```

Druga łatwa metoda to usunięcie jednego konkretnego zagadnienia lub tagu z naszego kontekstu widoku. Można to bezpośrednio przekazać do metody delete() kontekstu widoku, a w rzeczywistości możemy to zrobić wszystko w jednej metodzie, ponieważ wszystkie klasy Core Data (w tym wygenerowane przez Xcode klasy Issue i Tag) dziedziczą po klasie nadrzędnej o nazwie NSManagedObject.

Dodaj teraz tę metodę delete() do DataController:

```swift
func delete(_ object: NSManagedObject) {
    objectWillChange.send()
    container.viewContext.delete(object)
    save()
}
```

Ostatni kod, który chcę dodać do DataController w tej chwili, to obsługa usuwania wszystkich naszych danych, która będzie wywoływana razem z createSampleData(), abyśmy mogli natychmiast zniszczyć zawartość naszej bazy danych. Ponownie, jest to tylko do celów testowych, ale naprawdę dobrze mieć taką strukturę testową, aby nie trzeba było ciągle dodawać i usuwać danych ręcznie podczas kodowania.

Ta metoda musi używać zapytania fetch request, aby znaleźć i usunąć wszystkie zagadnienia, co wymaga trzech kroków:

1. Używanie metody fetchRequest() na Issue, która jest automatycznie generowana przez Xcode. Mówi to Core Data, aby szukała zagadnień, bez określania jakiegokolwiek filtra.
2. Owijanie tego zapytania fetch request w zapytanie batch delete request, które mówi Core Data, aby usunęła wszystkie obiekty, które pasują do zapytania – tj. wszystkie zagadnienia.
3. Wykonanie tego zapytania batch delete request na naszym kontekście widoku.

Po tym możemy powtórzyć to samo dla tagów, aby po wykonaniu tej metody wszystkie zagadnienia i tagi zostały usunięte.

Jest tu jeden problem, który polega na tym, że uruchamianie zapytania batch delete request wymaga bardzo precyzyjnego kodu: musimy odczytać identyfikatory Core Data każdego usuniętego obiektu, a następnie połączyć je z naszym żywym kontekstem widoku. Szczerze mówiąc, jest to więcej pracy, niż można by się spodziewać, ale jeśli zawiniemy to w nową metodę delete(), przynajmniej stanie się ona ponownie używalna.

Dodaj tę nową metodę do DataController teraz:

```swift
private func delete(_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) {
    let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
    batchDeleteRequest.resultType = .resultTypeObjectIDs

    if let delete = try? container.viewContext.execute(batchDeleteRequest) as? NSBatchDeleteResult {
        let changes = [NSDeletedObjectsKey: delete.result as? [NSManagedObjectID] ?? []]
        NSManagedObjectContext.mergeChanges(fromRemoteContextSave: changes, into: [container.viewContext])
    }
}
```

Jak już mówiłem, to wymaga więcej pracy, niż można by się spodziewać:

- Specjalnie prosimy zapytanie batch delete request, aby zwróciło wszystkie identyfikatory obiektów, które zostały usunięte.
- Ta tablica identyfikatorów obiektów trafia do słownika z kluczem NSDeletedObjectsKey, z domyślną pustą tablicą, jeśli nie można jej odczytać.
- Ten słownik trafia do metody mergeChanges(), która aktualizuje nasz kontekst widoku zmianami, które właśnie wprowadziliśmy do magazynu trwałego.

Oznaczyłem tę metodę jako prywatną, ponieważ będziemy jej używać tylko w jednym miejscu: w naszej metodzie testowej, aby usunąć wszystkie przechowywane zagadnienia i tagi. Dodaj tę ostatnią metodę do DataController teraz:

```swift
func deleteAll() {
    let request1: NSFetchRequest<NSFetchRequestResult> = Tag.fetchRequest()
    delete(request1)

    let request2: NSFetchRequest<NSFetchRequestResult> = Issue.fetchRequest()
    delete(request2)

    save()
}
```

Dodamy więcej do DataController później, ale na razie to wystarczy.

Oczywiście, chcemy używać tego kontrolera danych, gdy nasza aplikacja SwiftUI się uruchamia, i możemy to zrobić w UltimatePortfolioApp.swift – pamiętaj, że twój własny plik @main będzie miał tę samą nazwę, co wybrałeś dla swojego projektu.

Praktycznie cała nasza aplikacja potrzebuje dostępu do instancji DataController, więc chcemy ją utworzyć, gdy nasza aplikacja się uruchamia, i umieścić ją w środowisku SwiftUI, aby można było ją odczytać później, gdy będzie to potrzebne.

To wymaga czterech kroków. Po pierwsze, stwórz właściwość w strukturze App, aby przechowywać kontroler danych:

```swift
@StateObject var dataController = DataController()
```

To oznacza, że nasza aplikacja utworzy i będzie posiadać kontroler danych, zapewniając, że pozostanie on aktywny przez cały czas działania naszej aplikacji.

Po drugie, musimy wysłać kontekst widoku naszego kontrolera danych do środowiska SwiftUI za pomocą specjalnego klucza o nazwie .managedObjectContext. To dlatego, że za każdym razem, gdy SwiftUI chce zapytać Core Data, musi wiedzieć, gdzie szukać wszystkich danych, więc to efektywnie łączy Core Data z SwiftUI.

Jednak zanim to dodamy, chcę dodać, że czwartą rzeczą do zrobienia jest wysłanie całego naszego kontrolera danych, aby każda część naszego własnego kodu mogła manipulować danymi.

Wspominam o nich razem, ponieważ oba są modyfikatorami, które trzeba dodać poniżej ContentView, tak:

```swift
ContentView()
    .environment(\.managedObjectContext, dataController.container.viewContext)
    .environmentObject(dataController)
```

To nasz model danych Core Data i kod Swift całkowicie ukończone, ale jest jeszcze jedna rzecz, zanim przejdziemy dalej: jeśli faktycznie chcesz, aby twoje informacje Core Data synchronizowały się między urządzeniami, musisz dokonać małej konfiguracji zarówno na swoich urządzeniach, jak i w Xcode.

Na swoich urządzeniach, główną rzeczą, którą musisz zrobić, jest upewnienie się, że są zalogowane do iCloud za pomocą tego samego konta. To działa najlepiej na fizycznych urządzeniach, ale można uzyskać ograniczone wsparcie także w symulatorze – może się okazać, że zmiany zostaną zapisane w iCloud płynnie, ale nie pokażą zdalnych zmian, dopóki nie ponownie uruchomisz aplikacji.

Ważne: Na wypadek, gdybyś przegapił to i myślał, że twój kod jest uszkodzony: iCloud w symulatorze jest naprawdę niespójny w porównaniu do rzeczywistych urządzeń i często znajdziesz dłuższe opóźnienia w synchronizacji lub może brak synchronizacji w ogóle. Jeśli możesz, użyj prawdziwego urządzenia, aby uzyskać najlepsze rezultaty!

Aby sprawdzić konfigurację iCloud na iOS, powinieneś uruchomić aplikację Ustawienia, a następnie dotknąć „Zaloguj się do swojego iPhone'a” na górze. Nie musisz łączyć wszystkich swoich danych w symulatorze; wystarczy, że jesteś zalogowany do iCloud.

Jeśli chodzi o konfigurację w Xcode, musimy poprosić o dostęp do iCloud za pomocą frameworka `CloudKit` firmy Apple. Robi się to, przechodząc do ustawień swojego celu w Xcode, wybierając kartę `Signing & Capabilities`, a następnie naciskając „+ Capability”. Zobaczysz wiele opcji, ale chciałbym, abyś wybrał dwie – najpierw „`iCloud`”, abyśmy mogli wysyłać i odbierać dane z chmury Apple, a po drugie „`Background Modes`”, aby iCloud mógł automatycznie wysyłać i odbierać dane synchronizacji.

Oba te wymagają trochę dostosowania. W przypadku Background Modes, to jest tak proste, jak zaznaczenie pól oznaczonych „**`Remote notifications`**” i „**`Background fetch`**” – pozwala to iCloud na ciche aktualizacje danych w tle.

Jeśli chodzi o iCloud, chciałbym, abyś zaznaczył pole oznaczone `**CloudKit**`, które jest API firmy Apple do wysyłania i odbierania danych naszego wyboru – w tym przypadku obiektów Core Data. CloudKit musi wiedzieć, gdzie w naszym koncie deweloperskim chcemy przechowywać dane, a to robi się za pomocą kontenerów. Powinieneś kliknąć znak +, a następnie wpisać swoje istniejące ID pakietu – moje to `com.hackingwithswift.ultimateportfolio`, ale twoje prawdopodobnie będzie inne.

Kiedy tworzysz nowy kontener, Xcode automatycznie dodaje „iCloud” na początku ID kontenera – nie martw się o to. Najważniejsze jest, aby ID kontenera było zaznaczone, aby było aktywne dla twojego projektu.

I to naprawdę wszystko na teraz, jeśli chodzi o naszą bazę danych – tak, to było dość dużo, ale to naprawdę świetna podstawa do budowania reszty naszej aplikacji.

## Pierwsze kroki w interfejsie użytkownika

Teraz, gdy mamy skonfigurowany i zakodowany nasz podstawowy model danych, możemy go wykorzystać, budując prosty interfejs użytkownika, aby upewnić się, że nasze dane są na miejscu i działają poprawnie.

### Szybkie linki
Podział widoków
Zaczynamy od inteligentnych filtrów
Dodawanie tagów użytkownika
Podział widoków

### Podział widoków
Asystent Feedback firmy Apple dzieli swój interfejs użytkownika na trzy komponenty:

1. Widok najwyższego poziomu, który pokazuje szerokie kategorie. Dla Apple to „Skrzynka odbiorcza”, „Szkice” i „Wysłane”, wraz z kilkoma specjalnymi filtrami, które Apple nazywa inteligentnymi skrzynkami pocztowymi.
2. Widok wtórny, który wyświetla wszystkie zagadnienia w wybranej kategorii.
3. Widok szczegółowy, który pozwala użytkownikom przeglądać konkretne zgłoszenie, które wysłali.

Dokładny układ może się nieco różnić między platformami, ale podstawowa struktura trójpoziomowa pozostaje taka sama i to właśnie od niej zaczniemy.

W SwiftUI ten układ mapuje się na `NavigationSplitView` z użyciem trzech widoków: sidebar dla widoku po lewej stronie pokazującego filtry, content dla środkowego widoku pokazującego listę zagadnień oraz detail dla widoku po prawej stronie pokazującego jedno konkretne zagadnienie.

Mamy już widok o nazwie `ContentView`, więc użyjemy go jako widoku „content” w naszym podzielonym układzie. To oznacza, że musimy stworzyć dwa dodatkowe widoki dla reszty podziału, więc utwórz nowy widok SwiftUI o nazwie `SidebarView`, a następnie stwórz kolejny widok SwiftUI o nazwie `DetailView`. Będą miały domyślny kod, który będzie mylący na tym wczesnym etapie, więc zalecam zmianę ich kodu body, aby używały widoku tekstowego opisującego ich rolę, tak jak poniżej:

```swift
struct SidebarView: View {
    var body: some View {
        Text("Sidebar")
    }
}

struct ContentView: View {
    var body: some View {
        Text("Content")
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail")
    }
}
```

Teraz możemy umieścić wszystkie trzy widoki w NavigationSplitView, otwierając UltimatePortfolioApp.swift, a następnie zastępując jego domyślny kod ContentView() tym:

```swift
NavigationSplitView {
    SidebarView()
} content: {
    ContentView()
} detail: {
    DetailView()
}
```

To wystarczy, aby coś uruchomić, więc wybierz preferowany symulator iPhone'a i naciśnij Cmd+R, aby zbudować i uruchomić swój projekt. Jeśli wszystko pójdzie dobrze, powinieneś zobaczyć na ekranie „Sidebar”, ale jeśli obrócisz urządzenie do trybu poziomego, będziesz mógł wyświetlić wszystkie trzy widoki jednocześnie.

### Zaczynamy od inteligentnych filtrów
Tagi pozwalają nam szybko znaleźć powiązane zagadnienia i chcemy je wszystkie wyświetlić w naszym bocznym pasku, aby użytkownicy mogli szybko przeskakiwać. Jednak Asystent Feedback ma bardzo pomocną koncepcję inteligentnych skrzynek pocztowych, dzięki czemu możemy łatwo pokazać wszystkie zagadnienia lub ostatnie zagadnienia.

Aby uzyskać podobną funkcjonalność tutaj, musimy pozwolić użytkownikowi wybrać jeden konkretny tag lub wbudowaną inteligentną skrzynkę pocztową, która zawiera wstępnie zdefiniowany filtr. Chociaż z perspektywy danych są one dość różne, muszą być takie same z perspektywy SwiftUI, aby użytkownik mógł wybrać albo inteligentną skrzynkę pocztową, albo tag z tej samej listy danych.

Zamierzamy więc połączyć te dwie koncepcje – inteligentne skrzynki pocztowe i tagi – w jeden nowy typ o nazwie Filter. Każdy filtr będzie miał nazwę i ikonę, abyśmy mogli wyświetlić go na ekranie, wraz z opcjonalną instancją Tag na wypadek, gdybyśmy filtrowali za pomocą jednego z tagów użytkownika. Oprócz tych trzech chcę dodać jeszcze dwie właściwości: unikalny identyfikator, abyśmy mogli konformować do protokołu Identifiable, oraz minimalną datę modyfikacji, abyśmy mogli szukać konkretnie ostatnich zagadnień.

Zacznij od utworzenia nowego pliku Swift o nazwie Filter.swift, a następnie dodaj do niego ten kod:

```swift
struct Filter: Identifiable, Hashable {
    var id: UUID
    var name: String
    var icon: String
    var minModificationDate = Date.distantPast
    var tag: Tag?
}
```

Jak widzisz, minimalna data modyfikacji jest domyślnie ustawiona na datę w odległej przeszłości, więc każde zagadnienie pojawia się w filtrze, chyba że wyraźnie poprosimy o nowszą datę. Mamy również opcjonalny Tag, co pozwoli nam filtrować według konkretnego tagu, jeśli jest to potrzebne.

Sama ta struktura to dobry początek, ale chcę dodać do niej jeszcze kilka ważnych rzeczy. Po pierwsze, chcę dodać dwie stałe wartości reprezentujące inteligentne skrzynki pocztowe, które będziemy mieć – „All Issues” i „Recent Issues”. Dodaj te dwie jako właściwości struktury teraz:

```swift
static var all = Filter(id: UUID(), name: "All Issues", icon: "tray")
static var recent = Filter(id: UUID(), name: "Recent Issues", icon: "clock", minModificationDate: .now.addingTimeInterval(86400 * -7))
```

Tutaj widać znaczenie minModificationDate – ustawienie go na 86400 * 7 powinno oznaczać, że uzyskujemy wszystkie zagadnienia zmodyfikowane w ciągu ostatnich siedmiu dni lub tak, gdy ten filtr jest aktywny.

Drugą rzeczą, którą chcę dodać, są niestandardowe konformacje `Hashable` i `Equatable`, ponieważ porównując dwa filtry, wszystko, co nas interesuje, to to, że mają tę samą właściwość id – nie ma sensu próbować hashować nazwy, ikony, daty modyfikacji i tagu, a w rzeczywistości może to powodować dziwne zachowania, gdy tag zmienia się z czasem.

Dodaj więc te dwie metody do struktury Filter, abyśmy porównywali tylko za pomocą id:

```swift
func hash(into hasher: inout Hasher) {
    hasher.combine(id)
}

static func ==(lhs: Filter, rhs: Filter) -> Bool {
    lhs.id == rhs.id
}
```

Chcemy wyświetlić te filtry w SidebarView i również pozwolić użytkownikowi wybrać jeden, abyśmy mogli pokazać jego zagadnienia. To wymaga czterech kroków:

1. Utworzenie miejsca do przechowywania wyboru użytkownika.
2. Odczytanie współdzielonej instancji DataController ze środowiska, abyśmy mogli uzyskać dostęp do tagów użytkownika.
3. Utworzenie tablicy filtrów inteligentnych skrzynek pocztowych przy użyciu wartości .all i .recent, które utworzyliśmy wcześniej.
4. Połączenie tego wszystkiego w prostą listę.

SwiftUI daje nam kilka sposobów na przechowywanie wyboru, aby rozwiązać ten pierwszy krok, ale najprostszy teraz jest dodanie opublikowanej właściwości w DataController, jak ta:

```swift
@Published var selectedFilter: Filter? = Filter.all
```

Aby rozwiązać drugi i trzeci krok, musimy dodać kilka właściwości SidebarView, aby odczytać naszą instancję DataController ze środowiska i również tablicę dwóch filtrów inteligentnych skrzynek pocztowych, które utworzyliśmy:

```swift
@EnvironmentObject var dataController: DataController
let smartFilters: [Filter] = [.all, .recent]
```

Ostatni krok to połączenie tego wszystkiego w listę, więc zastąp istniejący kod body SidebarView tym:

```swift
List(selection: $dataController.selectedFilter) {
    Section("Smart Filters") {
        ForEach(smartFilters) { filter in
            NavigationLink(value: filter) {
                Label(filter.name, systemImage: filter.icon)
            }
        }
    }
}
```

Uruchom projekt teraz, aby sprawdzić, czy wszystko działa poprawnie – powinieneś zobaczyć listę inteligentnych filtrów po naciśnięciu Back w trybie pionowym iPhone'a lub naciśnięciu ikony bocznego paska, a następnie Back w trybie poziomym iPhone'a.

Jeśli zamierzasz korzystać z podglądów Xcode, dodaj tam również obiekt środowiska:

```swift
static var previews: some View {
    SidebarView()
        .environmentObject(DataController.preview)
}
```

### Dodawanie tagów użytkownika
Wiem, wiem: wykonaliśmy dużo pracy bez zbyt wielu efektów! Jednak jesteśmy już tylko o kilka linijek kodu od tego, aby nasze przykładowe dane zaczęły się pojawiać na ekranie.

Już zdefiniowaliśmy encję Core Data o nazwie Tag, która przechowuje pojedynczy tag utworzony przez użytkownika. Aby wyświetlić to na naszej liście obok inteligentnych filtrów, musimy odczytać tablicę wszystkich tagów w kolejności alfabetycznej, a następnie przekonwertować tę tablicę Tag na tablicę Filter. To w dużej mierze polega na mostkowaniu danych z naszego tagu do filtru – jego ID i nazwa są identyczne, na przykład – ale pozwala nam również przypisać ikonę do tagu.

To wymaga dwóch kroków, zaczynając od zapytania fetch request Core Data, aby załadować wszystkie tagi, które mamy – dodaj tę właściwość do SidebarView teraz:

```swift
@FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) var tags: FetchedResults<Tag>
```

To używa wrappera właściwości @FetchRequest, który zapewnia, że SwiftUI automatycznie aktualizuje listę tagów, gdy tagi są dodawane lub usuwane.

Jednak, jak powiedziałem, obiekty Tag nie są wystarczające, ponieważ potrzebujemy obiektów Filter, aby pasowały do tego, co mamy w naszych inteligentnych filtrach. Możemy więc napisać małą właściwość obliczaną, która konwertuje wszystkie nasze tagi na pasujące filtry, dodając odpowiednią ikonę. To powoduje jedną irytującą przeszkodę dzięki sposobowi działania Core Data, ale z tym podejściem usuwamy tę przeszkodę od razu.

Dodaj teraz tę drugą właściwość do SidebarView:

```swift
var tagFilters: [Filter] {
    tags.map { tag in
        Filter(id: tag.id ?? UUID(), name: tag.name ?? "No name", icon: "tag", tag: tag)
    }
}
```

Jest jedna ciekawostka w tym kodzie, którą prawdopodobnie zauważyłeś, i to sposób, w jaki zarówno tag.id, jak i tag.name używają `nil coalescing`, aby upewnić się, że mają wartości.

To coś, co naprawdę dezorientuje ludzi, gdy uczą się Core Data, więc przygotuj się: Core Data ma koncepcję opcjonalnych danych, ale opcje Core Data nie są niczym podobnym do opcjonalnych Swift.

Podczas tworzenia modelu Core Data możesz oznaczyć dowolny atrybut jako opcjonalny lub nieopcionalny, ale to wpływa tylko na to, jak dane są zapisywane – jeśli spróbujesz zapisać obiekt Core Data, gdy brakuje mu niektórych wymaganych danych, twój kod się nie powiedzie, ale może być opcjonalny aż do momentu zapisania.

To oznacza, że jeśli oznaczysz atrybuty jako nieopcjonalne, Xcode nadal będzie syntezować wiele z nich używając opcjonalnych Swift. Na przykład, Stringi będą opcjonalne, nawet jeśli powiesz Core Data, że są wymagane, ponieważ wszystko, co Core Data obchodzi, to to, że mają wartość w momencie zapisywania kontekstu.

W każdym razie, teraz możemy dokończyć, dodając drugą sekcję do naszej listy, aby pokazać wszystkie tagi użytkownika poniżej wszystkich inteligentnych filtrów:

```swift
Section("Tags") {
    ForEach(tagFilters) { filter in
        NavigationLink(value: filter) {
            Label(filter.name, systemImage: filter.icon)
        }
    }
}
```

Możesz być chętny, aby od razu uruchomić ten kod, ale nie zrobi on jeszcze zbyt wiele, ponieważ nie mamy żadnych tagów do pokazania! Tutaj przydaje się nasza metoda createSampleData(), ponieważ możemy dodać tymczasowy element paska narzędzi, który usuwa wszelkie zapisane dane i zastępuje je przykładowymi danymi – dodaj ten modyfikator do List w SidebarView:

```swift
.toolbar {
    Button {
        dataController.deleteAll()
        dataController.createSampleData()
    } label: {
        Label("ADD SAMPLES", systemImage: "flame")
    }
}
```

I teraz spróbuj: powinieneś zobaczyć nasze dwa inteligentne filtry powyżej pięciu tagów użytkownika, a każdy z nich można wybrać.

To nie jest wiele, szczególnie biorąc pod uwagę, ile pracy wykonaliśmy, ale teraz mamy wszystkie podstawy gotowe, nasz tempo może zacząć się zwiększać!

## Przechowywanie kodu w bezpiecznym miejscu

W tym momencie mamy coś bardzo prostego w pracy, więc teraz jest świetny czas, aby schować swój kod w bezpiecznym miejscu za pomocą kontroli źródła. Jeśli już wiesz, jak korzystać z Git, możesz pominąć tę część, ale upewnij się i przechowuj gdzieś swoją pracę.

### Szybkie linki
- Dlaczego to omawiamy?
- Wprowadzenie do Git
- Tworzenie prywatnego repozytorium
- Wprowadzanie zmiany

### Dlaczego to omawiamy?
Kontrola wersji to praktyka przechowywania kodu w bezpiecznym miejscu, ale to znacznie więcej niż tylko kopia zapasowa – kontrola wersji przechowuje każdą wersję każdego pliku, dzięki czemu możesz porównać zmiany w czasie, cofnąć zmiany, jeśli okażą się problematyczne, oraz przeczytać komentarze osób, które zmieniły kod, aby zobaczyć, dlaczego zostały wprowadzone.

Normalnie nie omawiałbym kontroli wersji w jednym z moich tutoriali Swift, częściowo dlatego, że zakładam, że większość osób już jej używa, a częściowo dlatego, że jest to jeden z kluczowych tematów w mojej książce "Beyond Code".

Jednak budujemy aplikację Ultimate Portfolio App, a jednym z jej komponentów jest posiadanie kodu w kontroli wersji, aby potencjalni pracodawcy mogli go zobaczyć, przeczytać twój kod, a może nawet przejrzeć historię zmian – znaną jako historia commitów.

Dlatego krótko omówimy, jak używać kontroli wersji, aby każdy – nawet osoby, które nigdy wcześniej jej nie używały – mogli podążać za tym przewodnikiem.

### Wprowadzenie do Git
Istnieje wiele oprogramowań do kontroli wersji, ale realistycznie rzecz biorąc, będziesz używać oprogramowania o nazwie „git”. Zostało ono pierwotnie napisane przez Linusa Torvaldsa, twórcę Linuxa, ponieważ jest to brytyjskie określenie na nieprzyjemną osobę, a jak sam Linus mówi, lubi nazywać swoje projekty na swój sposób. Teraz jednak Git jest standardem w naszej branży – jednym z bardzo nielicznych, na które się zgadzamy.

Git jest zaprojektowany do przechowywania zmian w twoim projekcie w czasie, wraz z informacją, kto je wprowadził, kiedy i dlaczego. Jednak prawie wszyscy idą o krok dalej i używają zewnętrznej usługi hostingowej do przechowywania swojego kodu, abyśmy mieli pełną kopię na naszych lokalnych komputerach i pełną kopię na zdalnym serwerze.

Zaletą opcji zdalnej jest częściowo to, że mamy kopię zapasową całego naszego kodu, więc jeśli twój Mac się zepsuje, możesz po prostu zdobyć nowy i pobrać cały kod wraz z jego pełną historią. Jest to również sposób, w jaki pracują zespoły – różni programiści przesyłają i pobierają kod do tego samego zdalnego repozytorium, synchronizując zmiany w całym zespole.

Istnieje kilka różnych opcji zdalnego hostingu Git, z których większość ma darmową wersję. Działają one mniej więcej tak samo, ale zdecydowanie najpopularniejszy jest GitHub, więc to jego użyjemy tutaj.

Jeśli nie masz jeszcze konta na GitHub, załóż je teraz.

### Tworzenie prywatnego repozytorium
Po zalogowaniu się na GitHub, kliknij przycisk + w prawym górnym rogu i wybierz New Repository. To utworzy miejsce na GitHub, gdzie możesz przechowywać swój kod.

Musisz wypełnić kilka pól:
- Nazwa repozytorium powinna być unikalna wśród wszystkich twoich projektów. Ja wybiorę UltimatePortfolio.
- Możesz wpisać opis, jeśli chcesz; to nic nie zmienia poza tym, że będzie widoczny na stronie repozytorium.
- Możesz wybrać, czy repozytorium ma być publiczne czy prywatne. Możesz to zmienić później, więc na razie wybierz prywatne – oczywiście będziesz musiał je upublicznić, jeśli chcesz udostępnić swoją pracę pracodawcy, ale pamiętaj, że cała historia commitów również stanie się publiczna.
- Możesz dodać domyślne pliki, jeśli chcesz, ale najlepiej odznaczyć wszystkie trzy.

Po wypełnieniu kliknij Create Repository, a GitHub przeniesie cię na bardzo pomocny ekran pokazujący wszystkie komendy, które musisz wykonać, aby rozpocząć. Wszystkie są zaprojektowane do uruchomienia z linii komend, co będzie naturalne, jeśli już masz doświadczenie z linią komend, lub będzie wydawać się obce, jeśli rzadko lub nigdy jej nie używasz.

Nie martw się jednak – istnieje wiele programów do obsługi kontroli wersji w bardziej wizualny sposób! Tutaj jednak będziemy używać linii komend, ponieważ daje to solidne zrozumienie, co się naprawdę dzieje, a po opanowaniu podstaw możesz spróbować używać kontroli wersji w Xcode lub używać zewnętrznego oprogramowania Git, takiego jak Working Copy.

Uwaga: Nie będziemy dokładnie śledzić sekwencji sugerowanych komend GitHub, ponieważ mamy już trochę kodu.

Najpierw otwórz aplikację Terminal na macOS. Możesz ją znaleźć przez Spotlight lub szukając w Aplikacje > Narzędzia. Teraz przejdź do katalogu, w którym utworzyłeś swój projekt. Dla mnie to było moje biurko, więc wpisałbym:

```bash
cd ~/Desktop/UltimatePortfolio
```

Jeśli nie jesteś zaznajomiony z linią komend, „cd” oznacza „zmień katalog”, a „~” to skrót od „mojego katalogu domowego” – cała komenda brzmi „zmień katalog na mój katalog domowy, dodając Desktop/UltimatePortfolio” na końcu.

Jeśli jesteś w poprawnym katalogu, powinieneś móc uruchomić „ls” aby wylistować pliki w katalogu i zobaczyć swój projekt Xcode.

Teraz musimy utworzyć plik README, który GitHub pokaże, gdy ktoś odwiedzi twoje repozytorium. Później dodamy więcej informacji do tego pliku, aby wyjaśnić projekt i twoje wybory, ale na razie to tylko placeholder, więc uruchom tę komendę:

```bash
echo "# UltimatePortfolio" > README.md
```

To kopiuje tekst „# UltimatePortfolio” do pliku README.md, a w plikach Markdown znak „#” oznacza tytuł.

Następnie musimy utworzyć repozytorium Git w twoim lokalnym folderze. To powiadamia Git, aby zaczął śledzić twoją pracę, chociaż początkowo jest to tylko lokalnie. Aby to zrobić, uruchom następującą komendę:

```bash
git init
```

W tym momencie Git śledzi twoje pliki. Nie śledzi ich aktywnie – nie skanuje ich ciągle, gdy dokonujesz zmian, ale zamiast tego szuka zmian, gdy go o to poprosisz.

Obecnie wszystko jest nowe, więc chcemy, aby Git dodał wszystko. To wymaga kolejnej komendy:

```bash
git add .
```

Część „git add” oznacza „proszę przygotować jakieś zmiany do dodania do kontroli wersji”, a część „.” odnosi się do bieżącego katalogu, więc Git doda wszystko w bieżącym katalogu i wszystkich podkatalogach.

Dodanie plików do Git nie oznacza ich zapisania. Git nazywa to „stagingiem” – przygotowaliśmy pliki do dodania do kontroli wersji, ale nie dodaliśmy ich jeszcze. To pozwala ci uruchomić „git add” wielokrotnie, zanim w końcu zapiszesz swoje zmiany.

Na razie dodaliśmy wszystko na raz za pomocą „git add .”, więc kolejnym krokiem jest zapisanie tych zmian do kontroli wersji – zapisanie ich. Robi się to za pomocą komendy „git commit”, ale ważne jest, aby dodać wiadomość za pomocą „-m” i trochę tekstu. To pozwala ci wyjaśnić, dlaczego wprowadziłeś zmianę, a z czasem to pomocne, ponieważ jeśli musisz przejrzeć historię commitów, łatwiej znaleźć „Zmiana algorytmu wyszukiwania” w porównaniu do „Poprawki”.

Uruchom teraz tę komendę, aby zapisać wszystkie swoje zmiany:

```bash
git commit -m "Initial commit."
```

To zapisuje wszystko, co zostało dodane, więc jest to teraz bezpieczne w Git. Jeśli chcesz, możesz na tym zakończyć: umieściłeś swój kod w lokalnym repozytorium Git, co oznacza, że jeśli kiedykolwiek będziesz musiał wrócić do starszej wersji swojego kod