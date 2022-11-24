import { request } from '../utils/request';

export default class ChannelApi {
    /**
     * 频道列表
     *
     */
    static async channelList(params) {
      return request(`/channel/all`, {
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
    static async channelDetail(id) {
      return request(`/channel/${id}`, {
        method: 'GET',
      });
    }


        /**
     * 删除频道
     *
     */
    static async channelDelete(id) {
      return request(`/channel/${id}`, {
        method: 'DELETE',
      });
    }


    /**
     * 修改频道信息
     *
     */
      static async editChannelDetail(obj) {
        return request(`/channel`, {
          method: 'PUT',
          data: {
            ...obj
          }
        });
      }
    
    /**
     * 新增频道
     *
     */
     static async addChannelDetail(obj) {
      return request(`/channel`, {
        method: 'POST',
        data: {
          ...obj
        }
      });
    }
  


  }
  