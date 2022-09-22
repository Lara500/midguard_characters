# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#


Kind.find_or_create_by!(name: "Berserker", gender: "Dowolna")
Kind.find_or_create_by!(name: "Jaeger", gender: "Dowolna")
Kind.find_or_create_by!(name: "Einher", gender: "Dowolna")
Kind.find_or_create_by!(name: "Jarl", gender: "Dowolna")
Kind.find_or_create_by!(name: "Huskarl", gender: "Dowolna")
Kind.find_or_create_by!(name: "Skald", gender: "Dowolna")
Kind.find_or_create_by!(name: "Techmistrz", gender: "Dowolna")
Kind.find_or_create_by!(name: "Wieszcz", gender: "Dowolna")
Kind.find_or_create_by!(name: "Thane", gender: "Dowolna")
Kind.find_or_create_by!(name: "Wiking", gender: "Dowolna")
Kind.find_or_create_by!(name: "Trickster", gender: "Dowolna")
Kind.find_or_create_by!(name: "Wolwa", gender: "Kobieta")
Kind.find_or_create_by!(name: "Ulfhednar", gender: "Dowolna")
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


