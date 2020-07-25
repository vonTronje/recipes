# README

Easily run a console with `./dev_console` and a server with `./dev_server`.
This will ensure the correct ENV vars are set to be able to access the
Contentful API.

Run specs with `rspec spec`. This will however NOT run the tests which actually
call to the Contentful API. To run those tests use `rspec spec --tag
call-contentful-api`.
This way normal test runs don't require a connection to the API, but tests that
check the connection (and end-to-end tests) can be run when desired.



Created the app with
`rails new recipes --skip-turbolinks --skip-test --skip-javascript
--skip-action-mailer --skip-action-mailbox --skip-action-storage
--skip-action-text --skip-active-record --skip-action-cable
--skip-webpack-install`
since the requirements for the app are minimal and it is preferrable not to
include things which aren't needed. If the any of the skipped features are
required in the future they may of course still be added.
Notable skips are
`--skip-test` -> RSpec will be added
`--skip-javacript` and `--skip-webpack-install -> this is fine for the current
very simple requirements, but is very likely to be added later
`--skip-active-record` -> this is fine for the current very simple requirements,
