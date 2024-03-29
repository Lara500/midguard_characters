# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#


Kind.find_or_create_by!(name: "Berserker", gender: "Dowolna")
Kind.find_or_create_by!(name: "Einher", gender: "Dowolna")
Kind.find_or_create_by!(name: "Huskarl", gender: "Dowolna")
Kind.find_or_create_by!(name: "Jaeger", gender: "Dowolna")
Kind.find_or_create_by!(name: "Jarl", gender: "Dowolna")
Kind.find_or_create_by!(name: "Skald", gender: "Dowolna")
Kind.find_or_create_by!(name: "Techmistrz", gender: "Dowolna")
Kind.find_or_create_by!(name: "Thane", gender: "Dowolna")
Kind.find_or_create_by!(name: "Trickster", gender: "Dowolna")
Kind.find_or_create_by!(name: "Ulfhednar", gender: "Dowolna")
Kind.find_or_create_by!(name: "Wieszcz", gender: "Dowolna")
Kind.find_or_create_by!(name: "Wiking", gender: "Dowolna")
Kind.find_or_create_by!(name: "Wolwa", gender: "Kobieta")
Kind.find_or_create_by!(name: "Walkiria", gender: "Kobieta")



Benefit.find_or_create_by!(name: "Furiat", kind_name: "Berserker")
Benefit.find_or_create_by!(name: "Pogarda śmierci", kind_name: "Berserker")
Benefit.find_or_create_by!(name: "Runiczne tatuaże", kind_name: "Berserker")

Benefit.find_or_create_by!(name: "Cybernetyczne ciało", kind_name: "Einher")
Benefit.find_or_create_by!(name: "Niezniszczalny", kind_name: "Einher")
Benefit.find_or_create_by!(name: "Z grubej rury", kind_name: "Einher")

Benefit.find_or_create_by!(name: "Chwila chwały", kind_name: "Huskarl")
Benefit.find_or_create_by!(name: "Hekser", kind_name: "Huskarl")
Benefit.find_or_create_by!(name: "Wyga", kind_name: "Huskarl")

Benefit.find_or_create_by!(name: "Widzę wszystko", kind_name: "Jaeger")
Benefit.find_or_create_by!(name: "Zapach krwi", kind_name: "Jaeger")
Benefit.find_or_create_by!(name: "Żywy lub martwy", kind_name: "Jaeger")

Benefit.find_or_create_by!(name: "Broń rodowa", kind_name: "Jarl")
Benefit.find_or_create_by!(name: "Stać mnie", kind_name: "Jarl")
Benefit.find_or_create_by!(name: "Zasoby", kind_name: "Jarl")

Benefit.find_or_create_by!(name: "Natchnienie", kind_name: "Skald")
Benefit.find_or_create_by!(name: "Persona", kind_name: "Skald")
Benefit.find_or_create_by!(name: "Skupienie", kind_name: "Skald")

Benefit.find_or_create_by!(name: "Szalony geniusz", kind_name: "Techmistrz")
Benefit.find_or_create_by!(name: "Tajemnice", kind_name: "Techmistrz")
Benefit.find_or_create_by!(name: "Zaufaj mi, jestem inżynierem", kind_name: "Techmistrz")

Benefit.find_or_create_by!(name: "Analityczny umysł", kind_name: "Thane")
Benefit.find_or_create_by!(name: "Strzelec wyborowy", kind_name: "Thane")
Benefit.find_or_create_by!(name: "Zahartowany", kind_name: "Thane")

Benefit.find_or_create_by!(name: "Kanciarz", kind_name: "Trickster")
Benefit.find_or_create_by!(name: "Nieczysta zagrywka", kind_name: "Trickster")
Benefit.find_or_create_by!(name: "Oszust", kind_name: "Trickster")

Benefit.find_or_create_by!(name: "Akrobata", kind_name: "Ulfhednar")
Benefit.find_or_create_by!(name: "Kameleon", kind_name: "Ulfhednar")
Benefit.find_or_create_by!(name: "Zabójca", kind_name: "Ulfhednar")

Benefit.find_or_create_by!(name: "Badacz hekseri", kind_name: "Wieszcz")
Benefit.find_or_create_by!(name: "Mistrz entropii", kind_name: "Wieszcz")
Benefit.find_or_create_by!(name: "Tajemne arkana", kind_name: "Wieszcz")

Benefit.find_or_create_by!(name: "Poczułem krew", kind_name: "Wiking")
Benefit.find_or_create_by!(name: "Potomek tyra", kind_name: "Wiking")
Benefit.find_or_create_by!(name: "Wiarus", kind_name: "Wiking")

Benefit.find_or_create_by!(name: "Potęga nadziei", kind_name: "Wolwa")
Benefit.find_or_create_by!(name: "Władczyni losu", kind_name: "Wolwa")
Benefit.find_or_create_by!(name: "Więź z Yggdrasilem", kind_name: "Wolwa")

Benefit.find_or_create_by!(name: "Córka Frei", kind_name: "Walkiria")
Benefit.find_or_create_by!(name: "Gwiazda Heimdala", kind_name: "Walkiria")
Benefit.find_or_create_by!(name: "Skrzydła Asgardu", kind_name: "Walkiria")

MainParameter.find_or_create_by!(physique: 7, dexterity: 4, perception: 4, intelligence: 3, control: 5, entropy: 4, kinds_id: Kind.find_by(name: "Berserker").id) #Berserker
MainParameter.find_or_create_by!(physique: 6, dexterity: 4, perception: 5, intelligence: 3, control: 6, entropy: 3, kinds_id: Kind.find_by(name: "Einher").id) #Einher
MainParameter.find_or_create_by!(physique: 5, dexterity: 5, perception: 3, intelligence: 4, control: 4, entropy: 6, kinds_id: Kind.find_by(name: "Huskarl").id) #Huskarl
MainParameter.find_or_create_by!(physique: 4, dexterity: 4, perception: 6, intelligence: 4, control: 5, entropy: 4, kinds_id: Kind.find_by(name: "Jaeger").id) #Jaeger
MainParameter.find_or_create_by!(physique: 5, dexterity: 4, perception: 4, intelligence: 5, control: 5, entropy: 4, kinds_id: Kind.find_by(name: "Jarl").id) #Jarl
MainParameter.find_or_create_by!(physique: 3, dexterity: 5, perception: 4, intelligence: 6, control: 3, entropy: 6, kinds_id: Kind.find_by(name: "Skald").id) #Skald
MainParameter.find_or_create_by!(physique: 3, dexterity: 4, perception: 4, intelligence: 6, control: 5, entropy: 5, kinds_id: Kind.find_by(name: "Techmistrz").id) #Techmistrz
MainParameter.find_or_create_by!(physique: 4, dexterity: 5, perception: 4, intelligence: 7, control: 5, entropy: 2, kinds_id: Kind.find_by(name: "Thane").id) #Thane
MainParameter.find_or_create_by!(physique: 4, dexterity: 4, perception: 4, intelligence: 5, control: 6, entropy: 4, kinds_id: Kind.find_by(name: "Trickster").id) #Trickster
MainParameter.find_or_create_by!(physique: 4, dexterity: 7, perception: 5, intelligence: 4, control: 4, entropy: 3, kinds_id: Kind.find_by(name: "Ulfhednar").id) #Ulfhednar
MainParameter.find_or_create_by!(physique: 3, dexterity: 4, perception: 4, intelligence: 6, control: 3, entropy: 7, kinds_id: Kind.find_by(name: "Wieszcz").id) #Wieszcz
MainParameter.find_or_create_by!(physique: 5, dexterity: 5, perception: 5, intelligence: 4, control: 5, entropy: 3, kinds_id: Kind.find_by(name: "Wiking").id) #Wiking
MainParameter.find_or_create_by!(physique: 3, dexterity: 3, perception: 3, intelligence: 6, control: 6, entropy: 6, kinds_id: Kind.find_by(name: "Wolwa").id) #Wolwa
MainParameter.find_or_create_by!(physique: 4, dexterity: 6, perception: 5, intelligence: 4, control: 4, entropy: 4, kinds_id: Kind.find_by(name: "Walkiria").id) #Walkiria

Skill.find_or_create_by!(side_arm: 5, hand_to_hand_combat: 5, endurance: 5, short_weapon: 2, vehicle_service: 0, reflex: 2, long_weapon: 2, pilotage: 0, alert_senses: 2,
                          connections: 0, engineering: 0, knowledge: 0, hacking: 0, infiltration: 0, trick: 0, charisma: 0, hexeri: 0, willpower: 5, kinds_id: Kind.find_by(name: "Berserker").id) #Berserker

Skill.find_or_create_by!(side_arm: 4, hand_to_hand_combat: 4, endurance: 4, short_weapon: 0, vehicle_service: 3, reflex: 0, long_weapon: 5, pilotage: 3, alert_senses: 0,
                          connections: 0, engineering: 3, knowledge: 0, hacking: 3, infiltration: 0, trick: 0, charisma: 0, hexeri: 0, willpower: 3, kinds_id: Kind.find_by(name: "Einher").id) #Einher

Skill.find_or_create_by!(side_arm: 4, hand_to_hand_combat: 4, endurance: 3, short_weapon: 4, vehicle_service: 0, reflex: 3, long_weapon: 0, pilotage: 0, alert_senses: 0,
                          connections: 3, engineering: 0, knowledge: 0, hacking: 0, infiltration: 0, trick: 0, charisma: 4, hexeri: 5, willpower: 2, kinds_id: Kind.find_by(name: "Huskarl").id) #Huskarl

Skill.find_or_create_by!(side_arm: 3, hand_to_hand_combat: 0, endurance: 0, short_weapon: 3, vehicle_service: 3, reflex: 2, long_weapon: 5, pilotage: 3, alert_senses: 5,
                          connections: 3, engineering: 0, knowledge: 3, hacking: 0, infiltration: 4, trick: 0, charisma: 0, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Jaeger").id) #Jaeger

Skill.find_or_create_by!(side_arm: 4, hand_to_hand_combat: 0, endurance: 0, short_weapon: 0, vehicle_service: 2, reflex: 0, long_weapon: 0, pilotage: 0, alert_senses: 0,
                          connections: 4, engineering: 0, knowledge: 4, hacking: 0, infiltration: 0, trick: 0, charisma: 5, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Jarl").id) #Jarl

Skill.find_or_create_by!(side_arm: 3, hand_to_hand_combat: 0, endurance: 0, short_weapon: 3, vehicle_service: 0, reflex: 2, long_weapon: 0, pilotage: 0, alert_senses: 2,
                          connections: 3, engineering: 0, knowledge: 5, hacking: 0, infiltration: 0, trick: 3, charisma: 6, hexeri: 4, willpower: 0, kinds_id: Kind.find_by(name: "Skald").id) #Skald

Skill.find_or_create_by!(side_arm: 3, hand_to_hand_combat: 0, endurance: 0, short_weapon: 3, vehicle_service: 3, reflex: 0, long_weapon: 3, pilotage: 3, alert_senses: 0,
                          connections: 0, engineering: 5, knowledge: 3, hacking: 5, infiltration: 0, trick: 0, charisma: 0, hexeri: 3, willpower: 3, kinds_id: Kind.find_by(name: "Techmistrz").id) #Techmistrz

Skill.find_or_create_by!(side_arm: 0, hand_to_hand_combat: 0, endurance: 0, short_weapon: 5, vehicle_service: 2, reflex: 3, long_weapon: 0, pilotage: 0, alert_senses: 3,
                          connections: 2, engineering: 0, knowledge: 5, hacking: 0, infiltration: 5, trick: 0, charisma: 3, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Thane").id) #Thane

Skill.find_or_create_by!(side_arm: 4, hand_to_hand_combat: 0, endurance: 0, short_weapon: 4, vehicle_service: 0, reflex: 0, long_weapon: 0, pilotage: 0, alert_senses: 2,
                          connections: 5, engineering: 2, knowledge: 0, hacking: 3, infiltration: 3, trick: 5, charisma: 4, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Trickster").id) #Trickster

Skill.find_or_create_by!(side_arm: 4, hand_to_hand_combat: 0, endurance: 0, short_weapon: 4, vehicle_service: 0, reflex: 4, long_weapon: 4, pilotage: 0, alert_senses: 3,
                          connections: 3, engineering: 0, knowledge: 0, hacking: 0, infiltration: 4, trick: 4, charisma: 2, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Ulfhednar").id) #Ulfhednar

Skill.find_or_create_by!(side_arm: 3, hand_to_hand_combat: 0, endurance: 0, short_weapon: 3, vehicle_service: 0, reflex: 0, long_weapon: 0, pilotage: 0, alert_senses: 0,
                          connections: 2, engineering: 0, knowledge: 5, hacking: 3, infiltration: 0, trick: 2, charisma: 5, hexeri: 5, willpower: 3, kinds_id: Kind.find_by(name: "Wieszcz").id) #Wieszcz

Skill.find_or_create_by!(side_arm: 4, hand_to_hand_combat: 4, endurance: 4, short_weapon: 4, vehicle_service: 3, reflex: 3, long_weapon: 4, pilotage: 3, alert_senses: 3,
                          connections: 0, engineering: 0, knowledge: 0, hacking: 0, infiltration: 0, trick: 0, charisma: 0, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Wiking").id) #Wiking

Skill.find_or_create_by!(side_arm: 0, hand_to_hand_combat: 0, endurance: 0, short_weapon: 5, vehicle_service: 2, reflex: 3, long_weapon: 0, pilotage: 0, alert_senses: 3,
                          connections: 2, engineering: 0, knowledge: 5, hacking: 0, infiltration: 5, trick: 0, charisma: 3, hexeri: 0, willpower: 0, kinds_id: Kind.find_by(name: "Wolwa").id) #Wolwa

Skill.find_or_create_by!(side_arm: 3, hand_to_hand_combat: 0, endurance: 0, short_weapon: 0, vehicle_service: 0, reflex: 0, long_weapon: 0, pilotage: 0, alert_senses: 2,
                          connections: 0, engineering: 0, knowledge: 5, hacking: 4, infiltration: 2, trick: 0, charisma: 3, hexeri: 5, willpower: 4, kinds_id: Kind.find_by(name: "Walkiria").id) #Walkiria






