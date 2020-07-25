# README

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
but is very likely to be added later

<!--  -->
<!-- This README would normally document whatever steps are necessary to get the -->
<!-- application up and running. -->
<!--  -->
<!-- Things you may want to cover: -->
<!--  -->
<!-- * Ruby version -->
<!--  -->
<!-- * System dependencies -->
<!--  -->
<!-- * Configuration -->
<!--  -->
<!-- * Database creation -->
<!--  -->
<!-- * Database initialization -->
<!--  -->
<!-- * How to run the test suite -->
<!--  -->
<!-- * Services (job queues, cache servers, search engines, etc.) -->
<!--  -->
<!-- * Deployment instructions -->
<!--  -->
<!-- * ... -->
