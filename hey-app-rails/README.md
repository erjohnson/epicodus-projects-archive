# Hey App Ruby on Rails prototype

Quick & dirty Rails app to flesh out features.

## Overview

**Hey App** is a location-based message board. Users will be able to leave messages at geolocations that can only be viewed if present at that geolocation. The end goal is to take this Rails proof-of-concept and get it running on [Firebase](https://www.firebase.com/), a real-time json dbaas. Firebase has a fantastic library, [GeoFire](https://github.com/firebase/geofire), that can be leveraged to find current location of users and show only messages in the current radius.

## Features todo

* User sign-ups, login.
* User create messages.
* User can only see messages at current location.
* NSFW filtering.
* Favorite / up-votes for messages.
* NSFW flag for messages.
* Time limit on messages?
