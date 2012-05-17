# Summon::Refworks

This provides an extension to the summon gem to convert summon documents
to [refworks tagged format][1]

It does this by implementing a single `to_refworks` method, which returns
a hash containing refworks tags as keys corresponding to field values.

### Basic Usage

```ruby
require 'summon/refworks'
document = summon.search('shakespeare').first
document.to_refworks #=> {:RT => ['Play'], :T1 => ['Romeo and Juliet'], ...}
```

### Advanced Usage

If you want to override the default mappings, you can do so by passing
in a hash of options to the `to_refworks` method where the keys are the
refworks tag names, and the values are either a value, a symbol or a proc


## Mappings

Content type mappings can be found in `lib/summon/refworks/RT.yaml`

Other field mappings are found in `lib/summon/refworks/mappings.rb`

## Installation

summon-refworks requires ruby > 1.9.2

Gemfile

    gem 'summon-refworks'

standalone

    gem install summon-refworks

[1]: http://www.refworks.com/rwathens/help/RefWorks_Tagged_Format.htm