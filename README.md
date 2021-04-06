# Graham Hutchinson: Intercom Application

## 1. Technical Problem

### To run
First, clone this repo. Next, you'll need to install Ruby.
If you need help on how to do this, follow the [documentation](https://www.ruby-lang.org/en/documentation/installation/).
After installing Ruby, you'll need to install the json and test helper gem

``gem install json``

``gem install test_helper``

``bundle install``

The following command runs the program

``ruby gc_distance.rb``

And the command runs the test suite

``ruby gc_distance_test.rb``

The output of the program, i.e. each user within a 100km's name and user id sorted by user id in ascending order can be found in ``output.txt``.

A few things worth noting:
1. I chose to implement the simpler formula, as opposed to
[Vincenty's formula](https://en.wikipedia.org/wiki/Vincenty%27s_formulae)
because it is only required for cases with antipodal points. 
Dublin's antipodal point is in the Pacific Ocean, so I didn't feel it was necessary to implement.


## 2. Proudest Achievement

My proudest achievement so far in my career was my involvement in a large scale localisation project in my current position.
The project involved localising an entire product that has been in ongoing development for five years.
This project was a deliverable in a large contract that my employer had with a client, and was a critical feature necessary for deploying the product in non-English speaking regions.
This is my proudest achievement because of the scope of the project, and the large amount of responsibility I had to take on due to the size of my small team.
The project ran for approximately 4 months, and I was involved in each step of the process, including discussing and road-mapping what was needed for this project with the non-technical members of the team, 
development work, testing, bug fixes, etc. all in the run up to the project's due date. 
The project helped me understand how a large scale project changes over the course of it's lifecycle. 
Things that seem crucially important in the beginning can prove to be inconsequential, and oppositely, some issues don't rear their head until the final stages of development.
It taught me that these processes are fluid, and that having a clear picture at the inception of a project can be difficult, so taking things as they come and adapting is a crucial skill.
I feel as though it proved my capability in delivering in a high stakes environment, and despite limited resources and management, I was able to produce high quality work, which enabled the product to be used in almost any region.
