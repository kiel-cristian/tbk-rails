TBK-Rails
=========

Provides [TBK][tbk] integration with Rails.

 [tbk]: http://sagmor.com/tbk/


Installation
------------

Add this to your Gemfile and run the `bundle` command.

```
gem 'tbk-rails', git: 'https://github.com/kiel-cristian/tbk-rails.git'
```

This installs both the `tbk` and `tbk-rails` gems.


Installing WebPay controller and related views 
----------------------------------------------

After successful bundle installation, you need to run the following command inside your Rails Application to generate WebPay controller

```
rails g tbk_rails:install
```

After entering the given command, you will be asked if you want a minimal installation or not ( both installations brings Twitter Bootstrap markup integration,
this means that, the gem doesn't install bootstrap-rails, only generate compatible views for you)


```
Would you like to create complete views (also integrated with Bootstrap layout)? [Y/n]
```

Type __Y__[es] or __n__[o] in order to continue.

If everything went ok, you should see in your shell somenthing like this:

```

```

__(readme under construction)__
