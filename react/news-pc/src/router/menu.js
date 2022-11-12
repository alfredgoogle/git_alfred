import User from '../pages/user'
import Channel from '../pages/channel'
import Article from '../pages/article'

let menus = [
    {
        path:'/web/user',
        name:'用户管理',
        component:User
    },
    {
        path:'/web/channer',
        name:'频道管理',
        component:Channel
    },
    {
        path:'/web/article',
        name:'文章管理',
        component:Article
    },
  ]



  export default  menus;