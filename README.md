# README

ruby 3.2
rails 7.1.3.4
postgresql 16.3

# Lois Lane: An Open Source Newspaper CMS

## download / clone the project and deploy to make and manage your own newspaper

Uses active storage defaults -- local storage will work on ec2 (recommend using nginx),

#### For external cloud providers (so you can use on heroku or other ephemeral deployments):

Active Storage can be configured for multiple cloud providers in `config/storage.yml`.

### First Time Setup: 
First, `cd loislane` then `rails db:setup`

### If you need to drop the database and start from scratch:

`rails db:drop`, `rails db:create` then `rails db:migrate`

or

`rails db:drop`, then `rails db:setup`

(setup will create tables and run any migrations)


### If you'd like to stay up to date 

`git pull` and then run `rails db:migrate`

#### Running the Server

`rails s`

## This is currently a work in progress and not ready to deploy a real newspaper yet.

# SPEC/TODO:

## Allows a single person to start a newspaper, and manage it as it grows and more people join.

### ~~Includes a dynamic, responsive css layout~~

### ~~Users can make custom color palettes, and custom css themes~~

### ~~Users can add categories and modify the order of their layout~~

### ~~Users can upload audio, video, and images~~

### ~~Users can upload story specific files and assets~~

### ~~Stories have unique slugs with friendly ids~~

### ~~Stories have WYSIWYG editing with full html capability~~

### Stories can be set to be auto or prepublished (variables set, validations in progress)

### Require user to make journalist account in order to create or edit a story and require user to have journalist account with editor status to manage themes, newspaper settings, admin, etc

### Ensure audits are available for transparency and story history to keep audiences informed of corrections and to keep journalists honest. (an audit gem was already added, wip)

### Provide full rss reading and writing capability, so readers can access the newspaper via their favorite RSS reader. Vloggers and Podcasters may find this of interest as we support audio and video uploads. 
(Evaluate if possible to syndicate another RSS feed of a sibling site/news outlet or fellow journalist and if users are interested in such a feature.)

### integrate flac audio and other HIFI cross platform audio and video fallback supports and polyfills for older browsers
