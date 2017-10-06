# The Social Connection Index

This app aggregates user's LinkedIn connections, Facebook friends, and twitter followers into a 'social connection index.' The higher a user's number of social connections, the higher their social connection ranking.

## Link to Live App

## Features
* Pagination: The site displays 5 users at a time for ease of viewing
* Filtering: Users can be filtered by any of the following categories (social connection index (aka 'Rank'), Name, LinkedIn Connections, Facebook Friends, or Twitter Followers)
* Search: A search bar allows you to search for users by name.
* APIs: Facebook, LinkedIn, Twitter integration still to come.

## Social Connection Index aka 'Rank' Calculation
The rank is determined as follows:
  1 => 0-50 connections 
  1.5 => 50-100 connections 
  5 => 100-200 connections 
  10 => 200-400 connections
  15 => 400+ connections

## Technology
  Ruby on Rails with Ajax for asynchronous filtering 
