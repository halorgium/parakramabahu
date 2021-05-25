monarch = Monarch.create(name: "Parakramabahu")

kingdoms = %w{
Arendelle
Florin
Calormen
Gilead
Enchancia
Solamnia
Themyscira
Maldonia
Krakozhia
Latveria
Chernarus
Barovia
Mandalore
Nosgoth
Cairnholm
}.map do |k|
  Kingdom.create(name: k, monarch: monarch)
end

ship_names = %w{
Seaduction
For Reels
Yachts All Folks
Bacon in the Sun
Best Sailection
Legacy
Miss Conduct
Alotta Ocean
Vamoose
Row V. Wave
Dreadnought
Best of Boat Worlds
Dirty Oar
Ships n' Giggles
The Court Ship
Master Baiter
Moor Often Than Knot
Sea Senora
Life is Good
Grace to Glory
Big Nauti
B-Yacht'ch
Inversion of the Curve
Seas the Day
Fandango
Yada Yachta
The Zartan
Chaste
All Spice
Arm Candy
Working Girl
Inside Fast
Wild Bill
Capers
Prosperity
Snake Eyes
Devlin
Corona
Miami MVP
Bad Attitude
Second Glance
Double Up
}.map do |s|
  Ship.create(name: s, kingdom: kingdoms.sample)
end
