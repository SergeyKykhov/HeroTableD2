//
//  Model.swift
//  HeroTableD2
//
//  Created by Sergey Kykhov on 18.05.2023.
//

import UIKit

enum  Сharacteristics: String {
    case forc = "Cила"
    case agility = "Ловкость"
    case intellect = "Интеллект"
}

struct Hero: Hashable {
    var photoImage: UIImage
    var name: String
    var contrPick: String
    var characteristic: Сharacteristics
    var logoImage: UIImage

}

extension Hero {
    static var heros: [[Hero]] = [
        //Forc
        [Hero(photoImage: UIImage(named: "10")!, name: "Clockwerk", contrPick: "Phantom Lancer, Huskar, Phantom Assassin", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "11")!, name: "Night Stalker", contrPick: "Huskar, Axe, Blood Seeker", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "12")!, name: "Huskar", contrPick: "Necrophos, Axe, Viper", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "14")!, name: "Alchemist", contrPick: "Ancient Apparition, Anti-Mage, Bane", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "15")!, name: "Doom", contrPick: "Templar Assassin, Dazzle, Phantom Lancer", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "33")!, name: "Tidehunter", contrPick: "Spirit Breaker, Rubick, Dazzle", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "35")!, name: "Spirit Breaker", contrPick: "Viper, Faceless Void, Phantom Lancer", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "41")!, name: "Beastmaster", contrPick: "Alchemist, Outworld Destroyer, Chen", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "43")!, name: "Axe", contrPick: "Alchemist, Necrophos, Viper", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!),
         Hero(photoImage: UIImage(named: "47")!, name: "Tiny", contrPick: "Alchemist, Doom, Night Stalker", characteristic: .forc, logoImage: UIImage(named: "Dota 1")!)
        ],

        //Agility
        [Hero(photoImage: UIImage(named: "0")!, name: "Luna", contrPick: "Templar Assassin, Alchemist, Night Stalker", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "1")!, name: "Faceless Void", contrPick: "Axe, Tiny, Rubick", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "2")!, name: "Nyx Assassin", contrPick: "Sladar, Axe, Blood Seeker", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "3")!, name: "Naga Siren", contrPick: "Juggernaut, Enigma, Queen of Pain", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "4")!, name: "Phantom Lancer", contrPick: "Axe, Bounty Hunter, Jakiro", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "5")!, name: "Slark", contrPick: "Blood seeker, Sladar, Troll Warlord", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "7")!, name: "Templar Assassin", contrPick: "Leshrac, Alchemist, Viper", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "16")!, name: "Riki", contrPick: "Sladar, Bounty Hunter, Zeus", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "18")!, name: "Phantom Assassin", contrPick: "Doom, Chaos Knight Tiny", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "21")!, name: "Shadow Fiend", contrPick: "Pudge, Templar Assassin, Tinker", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "22")!, name: "Juggernaut", contrPick: "Phantom Lancer, Windranger, Templar Assassin", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "24")!, name: "Bounty Hunter", contrPick: "Sladar, Zeus, Tiny", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "31")!, name: "Sniper", contrPick: "Pudge, Drow Ranger, Lina", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "38")!, name: "Razor", contrPick: "Anti-Mage, Lina, Sniper", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "40")!, name: "Medusa", contrPick: "Anti-Mage, Viper, Huskar", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "44")!, name: "Viper", contrPick: "Alchemist, Night Stalker, Silencer", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!),
         Hero(photoImage: UIImage(named: "50")!, name: "Anti-Mage", contrPick: "Riki, Outworld Destroyer, Faceless Void", characteristic: .agility, logoImage: UIImage(named: "Dota 0")!)
        ],

        //Intellect
        [Hero(photoImage: UIImage(named: "6")!, name: "Keeper", contrPick: "Nyx Assassin, Bounty Hunter, Anti-Mage", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "9")!, name: "Necrophos", contrPick: "Ursa, Viper, Pudge", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "13")!, name: "Dazzle", contrPick: "Axe, Ursa, Alchemist", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "17")!, name: "Windranger", contrPick: "Queen of Pain, Blood Seeker, Alchemist", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "23")!, name: "Chen", contrPick: "Clinks, Doom, Lich", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "26")!, name: "Leshrac", contrPick: "Anti-Mage, Doom, Bane", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "27")!, name: "Lich", contrPick: "Chen, Juggernaut, Anti-Mage", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "28")!, name: "Lina", contrPick: "Pugna, Juggernaut, Doom", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "30")!, name: "Queen of Pain", contrPick: "Doom, Tinker, Lion", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "32")!, name: "Enigma", contrPick: "Vengeful Spirit, Zeus, Silincer", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "36")!, name: "Ancient Apparition", contrPick: "Anti-Mage, Viper, Chen", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "37")!, name: "Zeus", contrPick: "Anti-Mage, Alchemist, Templar Assassin", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "45")!, name: "Jakiro", contrPick: "Juggernaut, Zeus, Slardar", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "46")!, name: "Outworld Destroyer", contrPick: "Nyx Assassin, Silincer, Doom", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!),
         Hero(photoImage: UIImage(named: "49")!, name: "Bane", contrPick: "Silencer, Mirana, Anti-Mage", characteristic: .intellect, logoImage: UIImage(named: "Dota 2")!)
        ]
    ]
}

