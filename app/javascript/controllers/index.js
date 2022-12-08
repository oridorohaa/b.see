// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AddressInputController from "./address_input_controller"
application.register("address-input", AddressInputController)

import FilterVideosController from "./filter_videos_controller"
application.register("filter-videos", FilterVideosController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import LanesGoogleMapsController from "./lanes_google_maps_controller"
application.register("lanes-google-maps", LanesGoogleMapsController)

import RacksGoogleMapsController from "./racks_google_maps_controller"
application.register("racks-google-maps", RacksGoogleMapsController)

import ShopsGoogleMapsController from "./shops_google_maps_controller"
application.register("shops-google-maps", ShopsGoogleMapsController)
