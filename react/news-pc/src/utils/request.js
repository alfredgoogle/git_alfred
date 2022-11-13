import axios, { Method as AxiosMethod, AxiosResponse } from 'axios';
import Cookies from 'js-cookie';
import { get as getValue } from 'lodash';
// import { goLoginPage } from '@/utils/getTargetPage';
// production
const axiosInstance = axios.create();
const CancelToken = axios.CancelToken;
let confirm_show = false;





const codeMessage = {
    200: '操作成功',
    201: '新建或修改數據成功',
    202: '一个请求已经进入后台排队（异步任务）',
    204: '删除数据成功。',
    400: '服务器开小差了,请稍后再试',
    401: '需要用户验证',
    403: '用户无权限',
    404: '资源不存在',
    405: '不支持的操作方法',
    406: '请求的格式不可得。',
    410: '请求的资源被永久删除，且不会再得到的',
    422: '当创建一个对象时，发生一个验证错误',
    500: '网络开小差了,请您重试.',
    502: '网络开小差了,请您重试.',
    503: '网络开小差了,请您重试.',
    504: '请求数据超时,建议检查网络',
};

function errorShow(status, errorText) {
  // 处理，限制在401状态下显示弹窗个数
  if (status === 401) {
    const localErrorText = sessionStorage.getItem('localErrorText');
    const now = new Date().getTime();
    sessionStorage.setItem('localErrorText', now + '');
    if (localErrorText && now - Number(localErrorText) < 20000) {
      return;
    }
  }
}

export function request(url, options, showError = true) {
  const { cancel, ...config } = options;
  config.headers = options.headers || {};

  config.url = url;
  const type = options.method;

  // 非GET请求使用JSON格式数据
  if (type === 'POST' || type === 'DELETE' || type === 'PUT' || type === 'PATCH') {
    config.headers = {
      Accept: 'application/json',
      'Content-Type': 'application/json; charset=utf-8',
      ...config.headers,
    };
  }

  return new Promise(resolve => {
    axiosInstance
      .request(config)
      .then(response => {
        return new Promise((interResolve, interReject) => {
          if (response.status >= 200 && response.status < 300) {
            interResolve(response);
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
        const response = getValue(e, 'response');
        const status = getValue(e, 'response.status');
        // 403的时候 并且 code等于和中台约定的值的时候 做提示处理，其他情况与以前一致不做改动
        if (
          response.data &&
          response.data.error &&
          response.data.error.statusCode === 403 &&
          response.data.error.code === 'AUTHORIZATION_REQUIRED'
        ) {

        } else if (status === 401) {
          if (!confirm_show) {
            confirm_show = true;
          
          }
        } else {
          const data = getValue(e, 'response.data');
          if (status === 400 && data && data.error && data.error.error_type === 'table_row') {

            console.log(`181,request error${JSON.stringify(e)}`);
          } else {
            if (showError) {
            }
          }
        }
        resolve({
          error: e,
        });
      });
  });
}

export default request;
