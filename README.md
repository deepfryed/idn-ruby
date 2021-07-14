# LibIDN Ruby Bindings

Version 0.1.2

Ruby Bindings for the GNU LibIDN library, an implementation of the
Stringprep, Punycode and IDNA specifications defined by the IETF
Internationalized Domain Names (IDN) working group.

Included are the most important parts of the Stringprep, Punycode
and IDNA APIs like performing Stringprep processings, encoding to
and decoding from Punycode strings and converting entire domain names
to and from the ACE encoded form.

The latest version of the LibIDN Ruby Bindings project and its
documentation can always be found at

* https://github.com/deepfryed/idn-ruby

The original version can be found at,

* http://rubyforge.org/projects/idn

See the CHANGES file for detailed information on the changes of every
released version.


### Requirements

* [GNU LibIDN](http://www.gnu.org/software/libidn/) Library

* [Rake](http://rubyforge.org/projects/rake) to run the tests and generate
  the documentation

* [RubyGems](http://docs.rubygems.org/) to produce a Gem package

* Ruby 1.9.1 or above. Patches welcome to make this work in 1.8.7


### Installation

You need GNU LibIDN installed first.

* On MacOS you can install it with `brew install libidn`
* On Debian flavours of Linux `apt-get install libidn11-dev`

You can easily install the LibIDN Ruby Bindings by following one of the
ways outlined below:

#### Automatic installation and management with RubyGems

Simply invoke the standard RubyGems commands (install, update, ...),
for example:

```bash
gem install --remote --test idn
```

or if the GNU LibIDN library can only be found in a non-standard location

```bash
gem install --remote --test idn -- \
  --with-idn-dir=/path/to/non/standard/location
```

or in an even more complex setup

```bash
gem install --remote --test idn -- \
  --with-idn-lib=/path/to/non/standard/location/lib \
  --with-idn-include=/path/to/non/standard/location/include
```

#### Apple silicon
```
gem install idn-ruby -- --with-idn-dir=$(brew --prefix libidn)
```

#### Semi-automatic installation with Rake

If you are not able to or don't want to use RubyGems you can simply
download the latest release and install it with the help of Rake:

```bash
tar -xvzf idn-x.x.x.tar.gz
cd idn-x.x.x

rake install
```

or if the GNU LibIDN library can only be found in a non-standard location

```bash
rake install IDN_DIR=/path/to/non/standard/location
```

You can also run the tests or generate the documentation; just call Rake
with the '--tasks' parameter to get an overview of the available tasks:

```bash
rake --tasks
```

#### Manual installation with extconf.rb

If you are not able to or don't want to use even Rake then you will have to
do a little bit more work by yourself:

```bash
tar -xvzf idn-x.x.x.tar.gz
cd idn-x.x.x/ext

ruby extconf.rb
```

or if the GNU LibIDN library can only be found in a non-standard location

```bash
ruby extconf.rb \
  --with-idn-dir=/path/to/non/standard/location
```

or in an even more complex setup

```bash
ruby extconf.rb \
  --with-idn-lib=/path/to/non/standard/location/lib \
  --with-idn-include=/path/to/non/standard/location/include
```

and finally

```bash
make
sudo make install
```


### Documentation

The complete documentation is available online at

* http://rubydoc.info/github/deepfryed/idn-ruby/master/frames

#### Example usage

```ruby
require 'idn'
include IDN

puts 'Idna.toUnicode: ' + Idna.toUnicode('xn--rksmrgs-5wao1o.josefsson.org')
puts 'Punycode.decode: ' + Punycode.decode('egbpdaj6bu4bxfgehfvwxn')
puts 'Stringprep.with_profile: ' + Stringprep.with_profile('FOO', 'Nameprep')
```


### References

[GNU LibIDN]
  An implementation of the Stringprep, Punycode and IDNA specifications
  defined by the IETF Internationalized Domain Names (IDN) working group,
  used for internationalized domain names. The package is available under
  the GNU Lesser General Public License.

  * http://www.gnu.org/software/libidn

[RFC3454]
  P. Hoffman, M. Blanchet, "Preparation of Internationalized Strings
  ('stringprep')", IETF RFC3454, December 2002.

  * http://www.ietf.org/rfc/rfc3454.txt

[RFC3490]
  P. Faltstrom, P. Hoffman, A. Costello, "Internationalizing Domain
  Names in Applications (IDNA)", IETF RFC3490, March 2003.

  * http://www.ietf.org/rfc/rfc3490.txt

[RFC3491]
  P. Hoffman, M. Blanchet, "Nameprep: A Stringprep Profile for
  Internationalized Domain Names (IDN)", IETF RFC3491, March 2003.

  * http://www.ietf.org/rfc/rfc3491.txt

[RFC3492]
  A. Costello, "Punycode: A Bootstring encoding of Unicode for
  Internationalized Domain Names in Applications (IDNA)", IETF
  RFC3492, March 2003.

  * http://www.ietf.org/rfc/rfc3492.txt


### Questions, comments, patches?

If you have any questions, comments or feature requests or if you want
to submit a bug report or provide a patch, then have a look at the project
website at

* https://github.com/deepfryed/idn-ruby
* http://rubyforge.org/projects/idn (original)

For other information, feel free to ask on the idn-discuss at rubyforge.org
mailing list.


### Copyright & License

Copyright (c) 2005-2006 Erik Abele. 2011 Bharanee Rathna. All rights reserved.

This documentation and the software itself are licensed under the Apache
License, Version 2.0 (the "License").

Some portions of the software come with separate copyright notices and are
subject to additional license terms. Please see the file called LICENSE for
further details on these subcomponents of the software.

You may also obtain a copy of the License at

* http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

This software is OSI Certified Open Source Software.
OSI Certified is a certification mark of the Open Source Initiative.
