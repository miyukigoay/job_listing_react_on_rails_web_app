# README

This is a simple job listing web app using React on Rails and ActiveAdmin. The web app is deployed onto Heroku, and can be viewed here: https://joblisting-react-on-rails.herokuapp.com/


* Ruby version == 2.4.9

* System dependencies
    [refer to Gemfile]

* Configuration
    You will need a secrets.yml file in the config folder as required by Devise, which handles authentication for ActiveAdmin. Run this twice to generate two different secret keys for development and test.

    `bin/rake secret | pbcopy`

    The secrets.yml file looks like this:
    
        ```
        development:
          secret_key_base: {YOUR_SECRET_KEY}

        test:
          secret_key_base: {YOUR_SECRET_KEY}

        production:
          secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
        ```

* App initialization
    - Starting Rails: 
        $ bin/rails s -p 3001
    - Starting React:
        $ yarn --cwd client start


