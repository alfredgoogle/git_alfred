function debounce(fn) {
    let timeout = null
    // 创建一个标记用来存放定时器的返回值
    return function () {
      clearTimeout(timeout)
      // 每当用户输入的时候把前一个 setTimeout clear 掉 
      timeout = setTimeout(() => {
        // 然后又创建一个新的 setTimeout, 这样就能保证输入字符后的 interval 间隔内如果还有字符输入的话，就不会执行 fn 函数 
        fn.apply(this, arguments)
      }, 500)
    }
  }
  function sayHi() { console.log('防抖成功') }
  var inp = document.getElementById('inp')
  
  inp.addEventListener('input', debounce(sayHi)) // 防抖 节流——高频事件触发，但在





  function throttle(fn) {
    let canRun = true
    // 通过闭包保存一个标记 
    return function () {
      if (!canRun) return
      // 在函数开头判断标记是否为 true，不为 true 则 return 
      canRun = false
      // 立即设置为 false 
      setTimeout(() => {
        // 将外部传入的函数的执行放在 setTimeout 中 
        fn.apply(this, arguments)
        // 最后在 setTimeout 执行完毕后再把标记设置为 true(关键) 表 示可以执行下一次循环了。当定时器没有执行的时候标记永远是 false，在开头 被 return 掉
        canRun = true
      }, 500)
    }
  }
  
  function sayHi(e) {
    console.log(e.target.innerWidth, e.target.innerHeight)
  }
  window.addEventListener('resize', throttle(sayHi))