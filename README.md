# Summon::Refworks

This provides an extension to the summon gem to convert summon documents
to [refworks tagged format][1]

It does this by implementing a single `to_refworks` method, which returns
a hash containing refworks tags as keys corresponding to field values.

    document = summon.search('shakespeare').first
    document.to_refworks #=> {:RT => 'Play', :T1 => 'Romeo and Juliet', ...}

## Mappings

Content type mappings can be found in `lib/summon/refworks/RT.yaml`

## Installation

Gemfile

    gem 'summon-refworks'

standalone

    gem install summon-refworks

[1]: http://www.refworks.com/rwathens/help/RefWorks_Tagged_Format.htm