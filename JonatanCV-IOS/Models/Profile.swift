//
//  Profile.swift
//  JonatanCV-IOS
//
//  Created by Jonatan Larsson 4/2/21.
//

import Foundation
import SwiftUI


struct Profile: Hashable, Codable {
    
    var name: String
    var age: Int
    var title: String
    var email: String
    var mobile: String
    var address: String
    var letter: String
    
    static let `default` = Profile(name: "Jonatan Larsson", age: 24, title: "Höskoleingenjör inom mjukvaruutveckling och mobila plattformar", email: "jonatan_larsson_@hotmail.com", mobile: "0768066145", address: "Solbergagatan 8A", letter: "Hej! Nu till sommaren tar jag min högskolexamen och är därmed redo för nya utmaningar som höskoleingenjör.\n\nJag är 24 år och går min sista termin år inom Mjukvaruutveckling och mobila plattformar på Jönköping University. Jag är målmedveten och är ivrig på att lära mig nya saker och tillämpa mina kunskaper i arbetslivet.\n\nJag har flera års arbetserfarenhet och tar alltid mitt jobb på stort allvar. Året 2014 praoade jag på Gnotec i Habo, där jag sedan fick sommarjobb. Här fick jag lära mig hur arbetslivet fungerade på en industri och vad som krävs utav en.\n\nEfter studenten 2015 så började jag jobba natt på Swedecote i Mullsjö. Här var mina arbetsuppgifter att köra truck och hänga upp produkter som sedan skulle doppas i skyddsmedel för att sedan packas ner och skickas iväg.\n\n På hösten 2016 så började jag på Aditro Logistics i Jönköping som timanställd. Här fick jag köra många olika typer av truckar och jobbade både med inleverans samt utleverans. Efter ca 1 år fick ja ett delat ansvar över en avdelning. Här var en del av arbetsuppgifterna att ha kontakt med kund och ett ansvar gentemot dem. På Aditro lärde jag mig mycket om att jobba som ett team och vad ansvar gentemot kunder innebär.\n\nSommaren 2019 fick jag jobb som lagerarbetare på BeSafe i Jönköping. Här jobbade jag också både med inleverans och utleverans.\n\nUnder sommaren 2020 arbetade jag på GL skogsservice där de huvudsakliga arbetsuppgifterna är att plantera samt ta hand om skog.\n\nUnder mitt andra år som högskolestudent så hade jag praktik på En appstudio i Jönköping. Här fick jag jobba med webbutveckling, där jag implementerade en landing page. Jag fick jobba med två studenter som gjorde sitt exjobb hos En appstudio. Här var min roll att koppla en hårdvara till en app i Android Studio via Bluetooth. Jag fck också kolla på små buggar på en IOs applikation i Xcode. Under min tid hos En appstudio så fick jag möjlighet att se och lära mig hur ett företag jobbar mot sina klienter men även fler verktyg att använda i arbetslivet.\n\nNu under mitt sista år på högskolan så jobbar jag med mitt examensarbete med Telia, där min forskning går ut på att ta utveckla API.er med olika metoder, för att ta reda på deras värde. Om mitt cv låter intressant så hör gärna av er till min mobil eller via mail.\n\nDet jag kan erbjuda er är en person med hög arbetsmoral som alltid gör sitt bästa och inte är rädd för att testa nya saker. Jag har ett stort intresse för IT och sitter gärna och lär mig nya saker inom området på min fritid.\n\nMed vänliga hälsningar, Jonatan Larsson", imageName: "cvImage")

    
    private var imageName: String
    var image: Image {
        
        Image(imageName)
    }
}
