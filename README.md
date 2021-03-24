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

After this, create a file called `Rakefile` (no .rb necessary) in your root directory. After this, rake tasks can be defined like this:

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

### Creating a run file with bin

Using bin is a common method to allow us to run our executable without calling `ruby` in our terminal.

Properly set up, it will allow you to run your code by simply writing `bin/run` in your terminal.

To make your run file a bin file, create a directory called `bin` in your root directory. Inside it, create a file with the name that you want to use to run it. For example, if I create a file named `batman`, I will eventually be able to run it with `bin/batman`. You do not need to add a `.rb`.

A bin file should start with a shebang statement to let your computer know what language to use to run it. It is usually this: `#!/usr/bin/env ruby`

Afterwards, treat it as a regular ruby file. Any ruby code in the bin file with a proper shebang statement should be runable from your main directory as `bin/batman` (or whatever you named the file.)

If your VSCode doesn't recognize it as Ruby and you want to see your normal color highlighting, hit the portion that says something like "Plain Text" at the bottom right corner of the screen.

If, for some reason, you run `bin/[YOUR FILENAME]` and get "Permission denied", you can give it write access with the following code in your terminal:
```chmod +x bin/[YOUR FILENAME]```

Alternatively, you can run it by calling `ruby bin/[YOUR FILENAME]`.

### Deliverables
We're going to create an app to allow Users to give supportive comments to different Breaking Bad Characters.

<!-- > Create an API service class
> Create a character class
> Create a CLI app that populates the characters, then allows us to see all their names
> Allow us to see more details on each character -->
> Allow us to add a message to the character
> Allow us to login
> Associate messages with user
