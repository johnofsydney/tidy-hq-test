# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

API

- send cURL request to create a new link like this:

```
$ curl -X POST http://localhost:3000/links \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -d '{"link": {"original": "http://example.com"}}'
```

Response:

```
{"original":"http://example.com","shortened":"http://localhost:3000/short/a3c135c2","short_code":"a3c135c2"}%
```
