import axios from 'axios';
import { message} from 'antd';
const axiosInstance = axios.create();
export function request(url, options) {

  options.headers = options.headers || {};
  options.url = url;
  const type = options.method;

  // 非GET请求使用JSON格式数据
  if (type === 'POST' || type === 'DELETE' || type === 'PUT' || type === 'PATCH') {
    options.headers = {
      Accept: 'application/json',
      'Content-Type': 'application/json; charset=utf-8',
      ...options.headers,
    };
  }

  return new Promise(resolve => {
    axiosInstance
      .request(options)
      .then(response => {
        return new Promise((interResolve, interReject) => {
          console.log('response',response)

          if (response.status >= 200 && response.status < 300) {
            if(response.data && response.data.code){
              let code = response.data.code;
              if(code != '200'){
                console.log('response.data',response.data)
                interReject(response);
                message.error(response.data.msg)
              }else{
                interResolve(response);
              }
            }else{
              interResolve(response);
            }
          } else {
            interReject(response);
          }
        });
      })
      .then(response => {
        // 处理response格式不一致问题
        if (response.data && response.data.data) {
          resolve({
            data: response.data.data,
            response: response,
          });
        } else {
          resolve({
            data: response.data,
            response: response,
          });
        }
      })
      .catch(e => {
        console.error(e);
        resolve({
          error: e,
        });
      });
  });
}

export default request;
