### Micolet newsletter subscription

===================

This small application is use to store newsletter preferences.
And on successful subscribe an email being sent to user.

Use Internationalization (I18n) API: For now just using en.yml

## Dependencies

- Ruby 3.0.0
- Rails 6.1.3
- sqlite3
- RSpec
- Letter opener(Preview email in the default browser.)

Guidelines
===============

#### Model
 - NewsletterPreference model: is use to validate the email, email quality score and make sure at least one preference has been selected

#### Controller
 - NewsletterPreferencesController to create newsletter preference

 #### Mailer
  - send email(using Letter opener)

 #### EmailValidation
  - Get email quality score using abstractapi


  #### Tests

    To run the test suite type:

    ```
    $ bundle exec rspec
    ```