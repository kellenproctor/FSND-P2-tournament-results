#P2: Tournament Results
13 July 2015
=============
Common code for the Relational Databases and Full Stack Fundamentals courses
from Udacity.

Project 2 additions by Kellen Proctor
=============
####INTRODUCTION:
Tournament Results contains a database schema with tables tp record players in
a tournament, record matches between them, and two views for finding a win
count, and a matches played count. Also included are Python files for adding
information to the database tables, and an untouched test file to make sure
that Python code runs!

####FILES:
tournament.sql - contains database schema
tournament.py - contains python code for interacting with database
tournament_test.py - contains tests for python code

####DOWNLOAD:
Please clone to your most convenient directory (folder) via the following
command:

```
git clone https://github.com/kellenproctor/tournament-results.git
```

####REQUIREMENTS:
[Vagrant](https://www.vagrantup.com/)

[Virtual Box](https://www.virtualbox.org/)

####RUNNING:
Please open a terminal, navigate to /vagrant, and run the following commands:

```
vagrant up
vagrant ssh
cd /vagrant/tournament
```

This will get you into the tournament directory, where you can interact with
the files as listed above. To initiate the tournament database,
run the following command:

```
psql \i tournament.sql
```

Further, the **tourament_test.py** file is can be run by the following
command:

```
./tournament_test.py
```

Now enjoy interacting with the code!


######Enjoy your experience! All feedback is welcome!

A second stab at these, thanks to some help from Udacity and some resources
from coach (unknown).