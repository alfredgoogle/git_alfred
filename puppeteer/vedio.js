const puppeteer = require('puppeteer');
const fs = require('fs');
const axios = require('axios');
const path = require('path');

(async () => {
  // 启动 Puppeteer 浏览器
  const browser = await puppeteer.launch({
    executablePath: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
    headless: false,  // 可选，显示浏览器界面
    args: ['--start-fullscreen']  // 启动时全屏
  });
  // 创建新的页面
  const page = await browser.newPage();
  await page.setViewport({ width: 1920, height: 1080 });
  // 打开目标网页
  await page.goto('https://x.com/elonmusk/status/1846421607394271441');
console.log(111)
  await page.waitForSelector('video source');
  console.log(222)
  // 查找视频元素并获取视频的 URL

    const video =  await page.$('video source');  // 查找页面中的第一个 <video> 元素
    console.log('video',video)
    const videoUrl =  video ? video.src : null;  // 返回视频的 src 属性（视频 URL）

  if (videoUrl) {
    console.log(`Video URL: ${videoUrl}`);

    // 下载视频
    const downloadVideo = async (url, filepath) => {
      const writer = fs.createWriteStream(filepath);
      const response = await axios({
        url,
        method: 'GET',
        responseType: 'stream'
      });
      
      // 将视频数据流保存到文件
      response.data.pipe(writer);

      return new Promise((resolve, reject) => {
        writer.on('finish', resolve);
        writer.on('error', reject);
      });
    };

    const videoPath = path.resolve(__dirname, 'downloaded-video.mp4');
    
    // 开始下载视频
    await downloadVideo(videoUrl, videoPath);
    console.log(`Video downloaded to: ${videoPath}`);
  } else {
    console.log('No video found on the page.');
  }

  // 关闭 Puppeteer 浏览器
  await browser.close();
})();
