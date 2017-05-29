# Boris Bikes #

## A program to model the functionality of the London bike rental system.

#### * Docking Stations are initialized with default capacity
#### * Bikes can be released from docking station
#### * Bikes can be docked to docking station - user is able to determine is bike is broken
#### * Vans take broken bikes from docking stations to Garages
#### * Garages fix broken bikes
#### * Vans take fixed bikes back to docking stations

### To run program:
```bash
Clone this repository, then:
$ irb/pry
$ require_relative 'lib/bike.rb'
$ require_relative 'lib/garage.rb'
$ require_relative 'lib/vans.rb'
$ require_relative 'lib/docking_station.rb'
```

### Example:
```
[7] pry(main)> docking_station = DockingStation.new
=> #<DockingStation:0x007fa838a92d50
 @bikes=
  [#<Bike:0x007fa838a92c10>,
   #<Bike:0x007fa838a92be8>,
   #<Bike:0x007fa838a92b98>,
   #<Bike:0x007fa838a92ad0>,
   #<Bike:0x007fa838a92a30>,
   #<Bike:0x007fa838a929b8>,
   #<Bike:0x007fa838a92940>,
   #<Bike:0x007fa838a92850>,
   #<Bike:0x007fa838a92788>,
   #<Bike:0x007fa838a926e8>,
   #<Bike:0x007fa838a92648>,
   #<Bike:0x007fa838a925a8>,
   #<Bike:0x007fa838a923a0>,
   #<Bike:0x007fa838a92378>,
   #<Bike:0x007fa838a92328>,
   #<Bike:0x007fa838a92300>,
   #<Bike:0x007fa838a922d8>,
   #<Bike:0x007fa838a922b0>,
   #<Bike:0x007fa838a92288>,
   #<Bike:0x007fa838a92260>],
 @broken_bikes=[],
 @capacity=20>
[8] pry(main)* docking_station.release_bike
=> #<Bike:0x007fa838a92260>
[9] pry(main)> bike = Bike.new
=> #<Bike:0x007fa838acb060>
[10] pry(main)> docking_station.dock(bike)
Is bike broken? Y or N
Y
=> [#<Bike:0x007fa838acb060>]
[12] pry(main)> bike_2 = Bike.new
=> #<Bike:0x007fa838a32248>
[13] pry(main)> docking_station.dock(bike_2)
RuntimeError: Docking station is full
[14] pry(main)> van = Vans.new
=> #<Vans:0x007fa8388cd498>
[15] pry(main)> van.ships_to_garage(docking_station.broken_bikes)
=> [#<Bike:0x007fa838acb060>]
[16] pry(main)> garage = Garage.new
=> #<Garage:0x007fa838810c08>
[17] pry(main)> garage.fix(docking_station.broken_bikes)
=> []
[18] pry(main)> van.ships_to_station(garage.fixed_bikes, docking_station.bikes)
=> [#<Bike:0x007fa838acb060>]
[19] pry(main)> docking_station
=> #<DockingStation:0x007fa838a92d50
 @bikes=
  [#<Bike:0x007fa838a92c10>,
   #<Bike:0x007fa838a92be8>,
   #<Bike:0x007fa838a92b98>,
   #<Bike:0x007fa838a92ad0>,
   #<Bike:0x007fa838a92a30>,
   #<Bike:0x007fa838a929b8>,
   #<Bike:0x007fa838a92940>,
   #<Bike:0x007fa838a92850>,
   #<Bike:0x007fa838a92788>,
   #<Bike:0x007fa838a926e8>,
   #<Bike:0x007fa838a92648>,
   #<Bike:0x007fa838a925a8>,
   #<Bike:0x007fa838a923a0>,
   #<Bike:0x007fa838a92378>,
   #<Bike:0x007fa838a92328>,
   #<Bike:0x007fa838a92300>,
   #<Bike:0x007fa838a922d8>,
   #<Bike:0x007fa838a922b0>,
   #<Bike:0x007fa838a92288>,
   #<Bike:0x007fa838acb060>],
 @broken_bikes=[],
 @capacity=20>
```
