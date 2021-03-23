# Breaking Better: A Breaking Bad Support Group For Breaking Buds

### To use this app

First run `bundle install`.

Then, start the app with `ruby run.rb`

### Implementing Bundler (Optional in Project)

Bundler allows you to denote which gems the app uses and lock your specific version. Then, it gives others a command to automatically install those gems. It's a great gem version tracker for large apps.

Start by using `bundle init` and then you can add gems to the gemfile.

Include the bundler by adding `require 'bundler'` and `Bundler.require` to the top of your code.

### TTY-Prompt (Optional in Project)

Because `gets.strip` is so 1982, get up to 1985 with: https://github.com/piotrmurach/tty-prompt

### Rake (Optional in Project)

Rake allows you to define ruby tasks to initiate from the command line. To use it, first make sure you have Rake installed with `gem install rake`.

After this, create a file called `Rakefile` (no .rb necessaary) in your root directory. After this, rake tasks can be defined like this:

```ruby
task :say_hi do
  puts "hi"
end
```

Once you've done this, you can run that ruby code by typing `rake say_hi` into the console while in the project's directory.

If you would like to have one rake task call another rake task (say, to require your environment file before opening up a pry session), you can use the following syntax:

```ruby
task :say_bye => :say_hi do
  puts "bye"
end
```

Running `rake say_bye` in the console will now puts "hi" and then puts "bye".

### Deliverables
We're going to create an app to allow Users to give supportive comments to different Breaking Bad Characters.

<!-- > Create an API service class
> Create a character class
> Create a CLI app that populates the characters, then allows us to see all their names
> Allow us to see more details on each character -->
> Allow us to add a message to the character
> Allow us to login
> Associate messages with user
