# README

## Overview

This app shortens urls, inputted by the user.
Any user can load the app and input the url. The app will generate a unique shortened url, which will redirect to the original URL.

## Server and MVC

This repository contains all files that make up the server-side of the app, which was built using Ruby on Rails.
There is only one model, `Url` for which a REST API was set up. The model has controllers for `index`, `show` and `create`.

## Client

The client side of the app is set up in [this repository](https://github.com/francosta/url-shortener-client). The frontend was built in vanilla Javascript, HTML and CSS.

## CORS policy

For development purposes, the CORS policy was set to allow requests from all servers.

## Initialization

In the root directory of this repository:

- Clone this repository to your machine.
- Run `rails db:migrate` to initialize database;
- Run `bundle install` to install all dependencies;
- Run `rails s` to start de server.
- Follow the instructions in the [client-side repository](https://github.com/francosta/url-shortener-client) to start the app.
