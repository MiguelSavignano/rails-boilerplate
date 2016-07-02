import Api from 'backend-service'
import routes from '../routes.json'

Api.init({
  routes: routes,
  serverPath: process.env.NODE_ENV == 'test' ? "http://localhost:3000" : ""
})

export default Api
