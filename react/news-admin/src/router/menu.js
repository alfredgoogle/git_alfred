import User from '../pages/user'
import Channel from '../pages/channel'
import News from '../pages/news'

let menus = [
    {
        path:'/web/user',
        name:'用户管理',
        component:User
    },
    {
        path:'/web/channel',
        name:'频道管理',
        component:Channel
    },
    {
        path:'/web/news',
        name:'新闻管理',
        component:News
    },
  ]



  export default  menus;

  