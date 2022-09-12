# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#

if Kind.all.empty?
  Kind.create(name: "Berserker", gender: "Dowolna")
  Kind.create(name: "Jaeger", gender: "Dowolna")
  Kind.create(name: "Einher", gender: "Dowolna")
  Kind.create(name: "Jarl", gender: "Dowolna")
  Kind.create(name: "Huskarl", gender: "Dowolna")
  Kind.create(name: "Skald", gender: "Dowolna")
  Kind.create(name: "Techmistrz", gender: "Dowolna")
  Kind.create(name: "Wieszcz", gender: "Dowolna")
  Kind.create(name: "Thane", gender: "Dowolna")
  Kind.create(name: "Wiking", gender: "Dowolna")
  Kind.create(name: "Trickster", gender: "Dowolna")
  Kind.create(name: "Wolwa", gender: "Kobieta")
  Kind.create(name: "Ulfhednar", gender: "Dowolna")
  Kind.create(name: "Walkiria", gender: "Kobieta")
end

if Benefit.all.empty?
  Benefit.create(name: "Furiat", kind_id: "Berserker")
  Benefit.create(name: "Pogarda śmierci", kind_id: "Berserker")
  Benefit.create(name: "Runiczne tatuaże", kind_id: "Berserker")

  Benefit.create(name: "Cybernetyczne ciało", kind_id: "Einher")
  Benefit.create(name: "Niezniszczalny", kind_id: "Einher")
  Benefit.create(name: "Z grubej rury", kind_id: "Einher")

  Benefit.create(name: "Chwila chwały", kind_id: "Huskarl")
  Benefit.create(name: "Hekser", kind_id: "Huskarl")
  Benefit.create(name: "Wyga", kind_id: "Huskarl")

  Benefit.create(name: "Widzę wszystko", kind_id: "Jaeger")
  Benefit.create(name: "Zapach krwi", kind_id: "Jaeger")
  Benefit.create(name: "Żywy lub martwy", kind_id: "Jaeger")

  Benefit.create(name: "Broń rodowa", kind_id: "Jarl")
  Benefit.create(name: "Stać mnie", kind_id: "Jarl")
  Benefit.create(name: "Zasoby", kind_id: "Jarl")

  Benefit.create(name: "Natchnienie", kind_id: "Skald")
  Benefit.create(name: "Persona", kind_id: "Skald")
  Benefit.create(name: "Skupienie", kind_id: "Skald")

  Benefit.create(name: "Szalony geniusz", kind_id: "Techmistrz")
  Benefit.create(name: "Tajemnice", kind_id: "Techmistrz")
  Benefit.create(name: "Zaufaj mi, jestem inżynierem", kind_id: "Techmistrz")

  Benefit.create(name: "Analityczny umysł", kind_id: "Thane")
  Benefit.create(name: "Strzelec wyborowy", kind_id: "Thane")
  Benefit.create(name: "Zahartowany", kind_id: "Thane")

  Benefit.create(name: "Kanciarz", kind_id: "Trickster")
  Benefit.create(name: "Nieczysta zagrywka", kind_id: "Trickster")
  Benefit.create(name: "Oszust", kind_id: "Trickster")

  Benefit.create(name: "Akrobata", kind_id: "Ulfhednar")
  Benefit.create(name: "Kameleon", kind_id: "Ulfhednar")
  Benefit.create(name: "Zabójca", kind_id: "Ulfhednar")

  Benefit.create(name: "Badacz hekseri", kind_id: "Wieszcz")
  Benefit.create(name: "Mistrz entropii", kind_id: "Wieszcz")
  Benefit.create(name: "Tajemne arkana", kind_id: "Wieszcz")

  Benefit.create(name: "Poczułem krew", kind_id: "Wiking")
  Benefit.create(name: "Potomek tyra", kind_id: "Wiking")
  Benefit.create(name: "Wiarus", kind_id: "Wiking")

  Benefit.create(name: "Potęga nadziei", kind_id: "Wolwa")
  Benefit.create(name: "Władczyni losu", kind_id: "Wolwa")
  Benefit.create(name: "Więź z Yggdrasilem", kind_id: "Wolwa")

  Benefit.create(name: "Córka Frei", kind_id: "Walkiria")
  Benefit.create(name: "Gwiazda Heimdala", kind_id: "Walkiria")
  Benefit.create(name: "Skrzydła Asgardu", kind_id: "Walkiria")
end

