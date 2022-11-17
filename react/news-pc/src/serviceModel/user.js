import { request } from '../utils/request';

export default class UserApi {
    /**
     * 用户列表
     *
     */
    static async userList(params) {
      return request(`/user/list`, {
        method: 'GET',
        params: {
         ...params
      }
      });
    }


      /**
     * 注册接口
     *
     */
    static async register(data) {
      return request(`/admin/register`, {
          method: 'POST',
          data
        });
    }


    static async getVersion() {
      return request(`/api/tools/version`, {
        method: 'GET',
      });
    }
  
  }
  