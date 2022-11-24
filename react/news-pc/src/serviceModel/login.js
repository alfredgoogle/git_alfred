import { request } from '../utils/request';

export default class LoginApi {
    /**
     * 登录接口
     *
     */
    static async login(data) {
      return request(`/admin/login`, {
        method: 'POST',
        data
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
  
  }
  