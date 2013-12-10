
# Proprietary Methods - Ruby gem

## What it do?

Proprietary Methods (prop_methods) prints a formatted list of class methods, excluding generic object methods.

## How it do dat?

Place the following code in your Gemfile to install the gem in your development environment:

  group :development do
    gem 'prop_methods'
  end

To return a pretty list of object-specific methods use the following syntax in your console or code:

  Methods.prop({object})

  For example: Methods.prop(Date)

For all avaiable methods use the following syntax:

  Methods.all({object})

## That's all, folks.

Please send any questions or suggestions to sconstantinides@gmail.com
