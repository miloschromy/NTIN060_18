---
layout: post
title:  "Rýchlý úvod do Mavenu pre Javistov"
date: 2017-01-03 1:01:00 +0100
categories: NPRG030
---

Tento text je určený len pre tých, ktorí sa rozhodli písať svoj zápočťák v **Jave**.

# Maven

**Maven** je buildovací nástroj pre **Javu**, ktorý umožňuje oddeliť buildovanie projektu od samotného IDE.
Čo veľmi uľahčuje druhej osobe, zbuildovať aký koľvek projekt u seba a
jeho následné spustenie bez toho, aby si inštaloval vaše IDE alebo si celý build nastavoval od začiatku.
Veľká výhoda je, že **Maven** projekty viete bez problémov naimportovať do vášho obľúbeného IDE, ako napr. Netbeans, Eclipse či IntelliJ.

## Šablona

Pre záujemcov o **Maven** som pripravil jednoduchú šablonu, ktorú môžete rovno použiť.
Stiahnuť si ju môžete **[tu]({{site.baseurl}}/assets/maven_projekt.zip)**.

## Návod na použitie

1. Nainštalujte si **Javu 8**
1. Nainštalujte si **[Maven](https://maven.apache.org/install.html)**
2. Skúste si či **Maven** funguje otvorením terminálu príkazom **mvn -version**
3. Stiahnite **[šablonu projektu]({{site.baseurl}}/assets/maven_projekt.zip)**
4. Rozbalte šablonu
5. V terminály sa príkazom **cd** presuňte do koreňovej zložky projektu (obsahuje **pom.xml**)
6. Projekt teraz zbuildujete príkazom **mvn clean package**

Po zbuildovaní projektu môžete program spustiť buď príkazom:
{% highlight bash %}
java -jar target/project-1.0-SNAPSHOT.jar
{% endhighlight %}

alebo príkazom:

{% highlight bash %}
java -cp target/project-1.0-SNAPSHOT.jar cz.cuni.HelloWorld
{% endhighlight %}

Ak je všetko v poriadku, tak by ste mali vidieť tento výstup:
{% highlight bash %}
Hello World!
{% endhighlight %}

V súbore **pom.xml** môžete zmeniť:

* verziu javy
* triedu obsahujúcu metódu **main**, tak aby fungoval prvý z príkazov vyššie

Ak všetko funguje, tak len jednoducho nakopírujte vaše zdrojové kódy do zložky **src/main** projektu a ste hotový.
Potom už iba otvorte tento projekt vo vašom obľúbenom IDE, všetky by mali bez problémov podporovať **Maven** projekty.
