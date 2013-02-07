TBK-Rails
=========

Provides [TBK][tbk] integration with Rails.

 [tbk]: http://sagmor.com/tbk/


Installation
------------

Add this to your Gemfile and run the `bundle` command.

```bash
gem 'tbk-rails', git: 'https://github.com/kiel-cristian/tbk-rails.git'
```

This installs both the `tbk` and `tbk-rails` gems.


### Installing WebPay controller and related views

After successful bundle installation, you need to run the following command inside your Rails Application to generate WebPay controller

```bash
rails g tbk_rails:install
```

After entering the given command, you will be asked if you want a minimal installation or not ( both installations brings Twitter Bootstrap markup integration,
this means that, the gem doesn't install bootstrap-rails, only generate compatible views for you)


```bash
Would you like to create complete views(also with Bootstrap layout)? [Y/n]
```

Type __Y__[es] or __n__[o] in order to continue.

If everything went ok, you should see in your shell this:

```bash
Installing default version of TbkRails
Installing controllers ...
       exist  app/controllers
      create  app/controllers/webpay_controller.rb
      create  config/initializers/tbk.rb
Ready!
Installing routes ...
       route  post '/webpay/pay'
       route  post '/webpay/confirmation'
       route  get '/webpay/success'
       route  get '/webpay/failure'
Ready!
Installing views ...
       exist  app/views/webpay
      create  app/views/webpay/failure.html.erb
      create  app/views/webpay/success.html.erb
Installing TBK ...
     gemfile  https://github.com/gonzalo-bulnes/tbk.git
         run  bundle install from "."
...
Complete!
```

Configuration
-------------

You need to configure one file created by the generator, `app/config/initializers/tbk.rb`,
and set the defined variables in order to use the created controller.

### Pay button

Also, you need to create a button poiting to `webpay_pay_path` in a form like this:

```html
<form action="<%= webpay_pay_path %>" method="POST">
  <!-- Your transaction data here (TBK_MONTO, TBK_TIPO_TRANSACCION...) -->
  <input type="submit" value="Pay!">
</form>
```

