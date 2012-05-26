# ForexDate

Calculate the date of the current forex day.

A forex week begins when the Wellington/Sydney forex markets open (Sun 5pm EST) and closes when the New York forex market closes (Fri 5pm EST).

In order to calculate daily OHCL bars, the around the clock forex week can be split in 5 days:

| day        | from         | to           |
|:-----------|:-------------|:-------------|
| monday     | Sun 5pm EST  | Mon EST 5pm  |
| tuesday    | Mon 5pm EST  | Tue EST 5pm  |
| wednesday  | Tue 5pm EST  | Wed EST 5pm  |
| thursday   | Wed 5pm EST  | Thu EST 5pm  |
| friday     | Thu 5pm EST  | Fri EST 5pm  |

For example, if current time is Thu May 24 06:38:34 UTC 2012:

> ForexDate.now
 => Thu, 24 May 2012

On saturdays and sundays it returns nil. If current time is Sat May 26 06:38:34 UTC 2012:

> ForexDate.now
 => nil

## Installation

Add this line to your application's Gemfile:

    gem 'forex_date'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install forex_date

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
