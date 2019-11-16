# Roman Numerals

Solve roman numerals using Ruby and TDD

## Notes


### TODO

- [ ] write some code
- [ ] get a local ruby version manager rbenv or adsf
- [ ] get a better understanding of users, groups and permissions on Unix

## Process

```
gem install bundler
bundle init

# edit Gemfile to add gem "rspec"
bundle
rspec --init

# run tests
rspec
```
    
### Install issues

using MacOSX Ruby

but we were at railscamp so
  # use local mirror for gems and install bundler
  gem install --clear-sources --source http://gems.railscamp.local bundler

  # configure bundler to use mirror
  bundle config --global mirror.https://rubygems.org http://gems.railscamp.local

but before that, as we were using Mac's default ruby we could not write gems as
we did not have permission so we
  ls -l /Library/Ruby/Gems
  drwxr-xr-x  9 root             wheel  288 16 Nov 14:23 2.3.0

  # so we modified it with SuperUserDO CHangeOWNer
  sudo chown helena.franczak:staff /Library/Ruby/Gems/2.3.0

  # resulting in
  drwxrwxr-x  9 helena.franczak  staff  288 16 Nov 14:23 2.3.0

and then some other things like allowing helena.franczak to write files to
/usr/local/bin

