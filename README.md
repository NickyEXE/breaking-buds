# Breaking Better: A Breaking Bad Support Group For Breaking Buds

### Implementing Bundler

Bundler allows you to denote which gems the app uses and lock your specific version. Then, it gives others a command to automatically install those gems. It's a great gem version tracker for large apps.

Start by using `bundle init` and then you can add gems to the gemfile.

Include the bundler by adding `require 'bundler'` and `Bundler.require` to the top of your code.

### TTY-Prompt

Because `gets.strip` is so 1982, get up to 1985 with: https://github.com/piotrmurach/tty-prompt

### Deliverables
We're going to create an app to allow Users to give supportive comments to different Breaking Bad Characters.

> Create an API service class
> Create a character class
> Create a CLI app that populates the characters, then allows us to see all their names
> Allow us to see more details on each character
> Allow us to add a message to the character
> Allow us to login
> Associate messages with user
