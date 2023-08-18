# Help Queue API

A bare-bones API built with [Sinatra](http://www.sinatrarb.com/) for storing help-tickets to a postgres db. The goal is to interface with [Queue](https://github.com/dustinbrownman/ember-queue) and store data outside of [Firebase](https://www.firebase.com/) in a normalized way to better run queries on the data.  This project is a work-in-progress.


## Routes

Roadmap for routes:

```
# returns all tickets
GET /tickets

# returns ticket with given id
GET /tickets/:id

# create a new ticket
POST /tickets

# destroys a ticket
DELETE /tickets/:id

# updates a ticket
PUT /tickets/:id
```