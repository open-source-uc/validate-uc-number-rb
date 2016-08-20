# UC Student ID Validator
> UC Student ID Validator provides a UC Student ID (número de alumno de la Pontificia Universidad Católica de Chile) validation method for a string or a model's attribute.

> Credits to [Patricio López](https://github.com/mrpatiwi) for his [JS implementation](https://github.com/mrpatiwi/uc-numero-alumno).

[![Gem Version](https://badge.fury.io/rb/uc_student_id.svg)](https://badge.fury.io/rb/uc_student_id)
[![Code Climate](https://codeclimate.com/github/sasalatart/uc-student-id-validator/badges/gpa.svg)](https://codeclimate.com/github/sasalatart/uc-student-id-validator)
[![Build Status](https://travis-ci.org/sasalatart/uc-student-id-validator.svg?branch=master)](https://travis-ci.org/sasalatart/uc-student-id-validator)

## Installation

Add this line to your application's Gemfile:

  `gem 'uc_student_id'`

And then execute:

  `$ bundle`

Or install it yourself as:

  `$ gem install uc_student_id`

## Usage

If you want to validate a single string:

```ruby
require 'uc_student_id' # Unless working with Ruby on Rails

'1263476J'.valid_uc_id?
=> true
'1263476-J'.valid_uc_id?
=> false
```

If you want to validate a model attribute you just need to set `uc_student_id: true` (like any model validation in Ruby on Rails):

```ruby
class User < ActiveRecord::Base
  attr_accessor :student_code

  validates :student_code, uc_student_id: true
end
```

## Contributing

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'add my feature'`)
4. Push to your feature branch (`git push origin my-new-feature`)
5. Create a new Pull Request
