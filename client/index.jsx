import ReactOnRails from 'react-on-rails';
var app = require('app')
ReactOnRails.register(app);
// import {Api} from 'app'
import routes from './config/routes.json'
//calback helper use Api.todos(cb) in $$r it's the result
window.$$r = {};window.cb = (x) => {$$r=x;console.log(x)}

// window.Api = Api

// to generate root path to app folder
// ln -s YOUR_ROUTE/APP_NAME/client/app YOUR_ROUTE/APP_NAME/client/node_modules/
// or
// bundle exec rake app:node_modules_link
