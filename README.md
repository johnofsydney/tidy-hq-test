# README

## API

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

## Counter

- is counting twice. ran out of time to debug

## Copy to clipboard

- https://gorails.com/episodes/copy-link-to-clipboard
