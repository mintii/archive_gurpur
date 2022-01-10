# Gurpur

# Local Development
1. Set your local Ruby environment to 2.7.5
2. `bundle install`

      a. It may fail on installing the `pg` gem. So check if your Homebrew has it `postgresql` installed.
      
      `brew list | grep postgresql`
      
      `brew install postgresql`
  
    Next, we need to initialize your database:
    
    `initdb `brew --prefix`/var/postgres/data -E utf8`
    
    If successful, run this next: 
    
    `pg_ctl -D /usr/local/var/postgres/data -l logfile start`
    
    Now you should be able to bundle install successfully. 🎉
3. `bin/rails db:create`
4. `bin/rails db:migrate`
5. `bin/rails db:seed`
6. `bin/rails s` 

## Visit localhost:3000 in your browser. 
