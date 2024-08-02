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

`git pull` and then `run rails db:migrate`

#### Running the Server

`rails s`

## This is currently a work in progress and not ready to deploy a real newspaper yet.
