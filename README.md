# UC Number Validator

> Provides a UC Student Number (número de alumno de la Pontificia Universidad Católica de Chile) validation method for a string or a model's attribute.
> Credits to [Patricio López](https://github.com/mrpatiwi) for his [JS implementation](https://github.com/mrpatiwi/uc-numero-alumno).

[![Gem Version](https://badge.fury.io/rb/uc_number_validator.svg)](https://badge.fury.io/rb/uc_number_validator)
[![Code Climate](https://codeclimate.com/github/sasalatart/uc-number-validator/badges/gpa.svg)](https://codeclimate.com/github/sasalatart/uc-number-validator)
[![Build Status](https://travis-ci.org/sasalatart/uc-number-validator.svg?branch=master)](https://travis-ci.org/sasalatart/uc-number-validator)
[![Coverage Status](https://coveralls.io/repos/github/sasalatart/uc-number-validator/badge.svg?branch=master)](https://coveralls.io/github/sasalatart/uc-number-validator?branch=master)

## Installation

Add this line to your application's Gemfile:

  `gem 'uc_number_validator'`

And then execute:

  `$ bundle`

Or install it yourself as:

  `$ gem install uc_number_validator`

## Usage

If you want to validate a single string:

```ruby
require 'uc_number_validator' # Unless working with Ruby on Rails

'1263476J'.valid_uc_number?
=> true
'1263476-J'.valid_uc_number?
=> false
```

If you want to validate a model attribute you just need to set `uc_number: true` (like any model validation in Ruby on Rails):

```ruby
class User < ActiveRecord::Base
  attr_accessor :student_number

  validates :student_number, uc_number: true
end
```

## Contributing

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'add my feature'`)
4. Push to your feature branch (`git push origin my-new-feature`)
5. Create a new Pull Request
