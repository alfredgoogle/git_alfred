import { request } from '../utils/request';

export default class NewsApi {
    /**
     * 新闻列表
     *
     */
    static async newsList(params) {
      return request(`/news/list`, {
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
    static async newsDetail(id) {
      return request(`/news/${id}`, {
        method: 'GET',
      });
    }


        /**
     * 删除新闻
     *
     */
    static async newsDelete(id) {
      return request(`/news/${id}`, {
        method: 'DELETE',
      });
    }


    /**
     * 修改新闻信息
     *
     */
      static async editNewsDetail(obj) {
        return request(`/news`, {
          method: 'PUT',
          data: {
            ...obj
          }
        });
      }
    
    /**
     * 新增新闻
     *
     */
     static async addNewsDetail(obj) {
      return request(`/news`, {
        method: 'POST',
        data: {
          ...obj
        }
      });
    }

    /**
     * 根据标签分页查询新闻
     *
     */
     static async listByTags(params) {
      return request(`/news/listByTags`, {
        method: 'GET',
        params: {
          ...params
        }
      });
    }



  


  }
  