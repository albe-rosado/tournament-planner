# Swiss Tournament Planner

Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.
The game tournament use the Swiss system for pairing up players in each round: players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible.


## Usage


###Install Virtualbox
https://www.virtualbox.org/wiki/Downloads


###Install Vagrant
https://www.vagrantup.com/downloads


###Clone Udacity's Repository
Once you are sure that VirtualBox and Vagrant are installed correctly execute the following:

    $ git clone https://github.com/udacity/fullstack-nanodegree-vm.git
    $ cd fullstack-nanodegree-vm
    $ cd vagrant


###Launch the Vagrant Box###

    $ vagrant up   #to launch and provision the vagrant environment
    $ vagrant ssh  #to login to your vagrant environment

###Install git in the vagrant virtual machine and  clone this repository

    $ sudo apt-get install git
    $ git https://github.com/albe-rosado/tournament-planner.git
    $ cd tournament-planner

###Initialize the database###

    $ psql
    vagrant=> \i tournament.sql
    vagrant=> \q


###Run the unit tests###

    $ python tournament_test.py

You should see these results:

    1. Old matches can be deleted.
    2. Player records can be deleted.
    3. After deleting, countPlayers() returns zero.
    4. After registering a player, countPlayers() returns 1.
    5. Players can be registered and deleted.
    6. Newly registered players appear in the standings with no matches.
    7. After a match, players have updated standings.
    8. After one match, players with one win are paired.
    Success!  All tests pass!

###Shutdown Vagrant machine###

    $ vagrant halt


###Destroy the Vagrant machine###

    $ vagrant destroy


### License
[MIT](https://en.wikipedia.org/wiki/MIT_License)