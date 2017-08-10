# Yosegi

Starter package for building web applications based on "Riot.js".

## Features

* Setup Riot.js based WAF with simple commands.
* Implement development styles like Web components.
* ES6 compatible (Automatic trans-pile to ES5 with Babel).
* Supports Sass syntax (also available within Riot tag).
* Browser auto reloading (watching files with Browsersync).
* Automatically compile and bundle using Webpack (also minifying).

## Requirement

* nodejs
* Sass
* Compass

## Getting started

If you can use "docker-compose" in your project.  
Execute the following commands.

```
$ cd docker
$ docker-compose up --build
```

The docker is auto starting Yosegi modules.  
If you keep the standard settings, you can access it with the following URL.

```
http://localhost:3000
```

Only this.

## Getting setup it manually

But if you would like to set it manually.  

Move to the cloned directory.   
Execute the following commands.

```
$ npm install
```

### Usage

First you need to start the browsersync http server and commpass watch.  
Please execute the following commands (reccomend use tmux or screen).

```
$ compass watch (or compass compile)
$ npm start
```

Browsersync will now start http server.  
If you keep the standard settings, you can access it with the following URL.

```
http://localhost:3000
```

1. If you using a remote server, replace localhost.
2. It is necessary to open port 3000　(and optional UI port 3001 too).

If you using a local server, current browser will open automatically.  
But if using a remote server, Browsersync say "Couldn't open browser" error. In that case please access the URL manually (Even in that case, the automatically reload will work normally).

## In Case of dedicated http server (ex. Nginx)

Browsersync has "proxy" option.  

#### bs-config.js

```js:bs-config.js
"proxy": {
  target: "127.0.0.1:80",
  ws: true
},
```
_See also [Browsersync options](https://www.browsersync.io/docs/options#option-proxy)._

Connected to nginx via proxy, 
It is also possible to connect to another socket server through different port numbers (ex. 8080). This is useful for development using golang, for example.

## Setup sample for Google Compute Engine

1. Create a new instance with CentOS.
2. Add release of ports 3000 and 3001 to GCE 's network rule. 
3. Connect to SSH prompto on browser.
4. Exucute following `yum install` commands.
5. Please install Yosegi (clone and npm install).
6. Start the server (compass compile and npm start).
7. Access `http://[External IP]:3000`.
8. Enjoy!

```
$ sudo yum install git
$ sudo yum install epel-release
$ sudo yum install nodejs npm --enablerepo=epel
$ sudo yum install ruby
$ sudo yum install ruby-devel
$ sudo yum install rubygems
$ sudo yum install gcc
$ sudo gem update --system
$ sudo gem install sass
$ sudo gem install compass
```

## Snapshot

![Snapshot](https://github.com/hisayatanaka/yosegi/wiki/img/yosegi_screen.png "Snapshot")

## Structure

* As a general rule, compilation etc. is done based on the contents of `src` and output to `dist`.
* `img` `js` `css` directory is a static directory (can be freely changed / deleted).
* `.babelrc` is the Babel configuration file.
* `bs-config.js` is the Browsersync configuration file.
* `config.rb` is the Sass configuration file.
* `webpack.config.js` is a webpack configuration file.
* `package.json` is a npm configuration file.
* `docker` directory is a included docker-compose.yaml and Dockerfile.

## Links

[Riot.js](http://riotjs.com/v2/ja/ "Riot.js")  
[Browsersync](https://www.browsersync.io/ "Browsersync")  
[Webpack](https://webpack.github.io/ "Webpack")  
[Babel](https://babeljs.io/ "Babel")  
[Sass](http://sass-lang.com/ "Sass")  
[Compass](http://compass-style.org/ "Compass")  
[Docker](https://www.docker.com/ "Docker")

## License

MIT licensed. See the LICENSE file for details.
