const puppeteer = require('puppeteer');

(async () => {
  // 启动浏览器
  const browser = await puppeteer.launch({
    executablePath: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
    headless: false,  // 可选，显示浏览器界面
    args: ['--start-fullscreen']  // 启动时全屏
  });
  // 创建新的页面
  const page = await browser.newPage();
  await page.setViewport({ width: 1920, height: 1080 });

  // 导航到目标网页
  await page.goto('https://pmutest.peoplus.cn/usercenter/login.html');  // 替换为你要访问的 URL
    
  // 输入用户名
  await page.type('#fname', 'xhy');  // 替换为用户名输入框的选择器和你的用户名
  
  // 输入密码
  await page.type('#password', '123456');  // 替换为密码输入框的选择器和你的密码
  
  // 点击登录按钮
  await page.click('#login');  // 替换为登录按钮的选择器

  // 等待导航（等待页面跳转或加载新的内容）
  await page.waitForNavigation();

  await page.goto('https://pmutest.peoplus.cn/performance/evaluationPlan/detail?id=7920');  // 替换为你要访问的 URL

    // 等待导航（等待页面跳转或加载新的内容）
    // await page.waitForNavigation();

    // await page.waitForTimeout(10000);  
    await page.waitForSelector('.PerformanceDetailTimeLine__node');

    // await page.click('.PerformanceDetailTimeLine__node');  // 替换为登录按钮的选择器


      // 获取第一个类为 login-button 的元素并点击
    const firstButton = await page.$('.PerformanceDetailTimeLine__node');  // 获取第一个匹配的元素
    if (firstButton) {
        await firstButton.click();  // 点击第一个按钮
    } else {
        console.log('按钮未找到');
    }








  // 等待目标元素加载，确保页面完全渲染
//   await page.waitForSelector('#target-element');  // 替换为你的元素选择器

//   // 获取目标元素的句柄
//   const element = await page.$('#target-element');  // 替换为你的元素选择器

//   // 截取元素的截图
//   await element.screenshot({ path: 'element-screenshot.png' });

//   // 关闭浏览器
//   await browser.close();
})();
