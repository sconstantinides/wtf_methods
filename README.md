
# WTF methods

## What it do?

WTF methods (wtf_methods) is a Ruby gem that prints a formatted list of class methods, excluding ActiveRecord::Base (when applicable) and generic Object methods.

## How it do that?

Place the following code in your Gemfile to install the gem in your development environment:

```ruby
group :development do
  gem 'wtf_methods'
end
```

To return a pretty list of class-specific methods, use the following in your console or code:

```ruby
WTF[ClassName]
```

For example:
```ruby
WTF[Date]
WTF[Toucan] # Assuming you have a Toucan class that does awesome stuff
```

## That's all, folks.

Please send any questions or suggestions to sconstantinides@gmail.com
