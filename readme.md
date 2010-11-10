# WHO ARE YOU?

## The Social Graph Project (Failure?)

## Project Purpose

Find out what interests the user using a simple algorithm as possible, the goal would be
to enter the users social id, and quickly receive their main interest categories or keywords.

## Why

The theory is that a person that interacts in a Social Graph connects to friends, that they
are interested in hearing from.  So if a system could understand the focus of these nodes,
it could quickly determine basic categories the user is interested in, therefore provide
more context about who the user is.

## The Algorithm

* Step 1: Identify User by Screen Name
* Step 2: Find all nodes that the user follows
* Step 3: Filter all followed nodes by a ranking algorithm
* Step 4: Grab each followed nodes profile description and send to a natural language api
* Step 5: Retrieve the category the description most likely meets from the NL API
* Step 6: Weight the Categories based on occurrence and display to the requestor
 

## The experiment details

In this project we are using twitter as the graph.  And we are connecting to infochimps API to calculate
the trstrank.  The trstrank will allow us to select the top 15 followers for a given user.  Then we will
use the twitter api to grab the description of each follower and use the Alchemy API to perform natural
language processing on each description, to determine a category that this user fits.

Hopefully, at the end of the experiement it will show a simple way to determine a users major interests.

We will see.

