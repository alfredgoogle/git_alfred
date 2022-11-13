import { request } from '../utils/request';

export default class LoginApi {
    /**
     * 获取所有的字段信息
     *
     */
    static async login() {
      return request(`/api/CoreHrDivision/fields`, {
        method: 'GET',
      });
    }



    static async getVersion() {
      return request(`/api/tools/version`, {
        method: 'GET',
      });
    }
  
  }
  