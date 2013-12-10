
# Proprietary Methods - Ruby gem

## What it do?

Proprietary Methods (prop_methods) prints a formatted list of class methods, excluding generic object methods.

## How it do dat?

Place the following code in your Gemfile to install the gem in your development environment:

```ruby
group :development do
  gem 'prop_methods'
end
```

To return a pretty list of class-specific methods use the following syntax in your console or code:

```ruby
  Methods.prop(ClassName)
```

For example:
```ruby
  Methods.prop(Date)
  Methods.prop(Toucan)
```

For all avaiable methods use the following syntax:
```ruby
  Methods.all(ClassName)
```

## That's all, folks.

Please send any questions or suggestions to sconstantinides@gmail.com
