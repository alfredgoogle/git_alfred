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
     * 查看详情
     *
     */
    static async userDetail(id) {
      return request(`/user/${id}`, {
        method: 'GET',
      });
    }


        /**
     * 删除用户
     *
     */
    static async userDelete(id) {
      return request(`/user/${id}`, {
        method: 'DELETE',
      });
    }


    /**
     * 修改用户信息
     *
     */
      static async editUserDetail(obj) {
        return request(`/user`, {
          method: 'PUT',
          data: {
            ...obj
          }
        });
      }
    
    /**
     * 新增用户
     *
     */
     static async addUserDetail(obj) {
      return request(`/user`, {
        method: 'POST',
        data: {
          ...obj
        }
      });
    }
  


  }
  