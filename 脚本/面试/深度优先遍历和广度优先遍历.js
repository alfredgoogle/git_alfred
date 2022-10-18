//1.深度优先遍历的递归写法
function deepTraversal(node) {
    let nodes = []
    if (node != null) {
      nodes.push[node]
      let childrens = node.children
      for (let i = 0; i < childrens.length; i++){
        deepTraversal(childrens[i])
      }
    }
    return nodes
  }
  
  //2.深度优先遍历的非递归写法 
  function deepTraversal1(node) {
    let nodes = []
    if (node != null) {
      let stack = []
      //同来存放将来要访问的节点 
      stack.push(node)
      while (stack.length != 0) {
        let item = stack.pop()
        //正在访问的节点 
        nodes.push(item)
        let childrens = item.children
        for (let i = childrens.length - 1; i >= 0; i--)
          //将现在访问点的节点的子节点存入 stack，供将来访问
          stack.push(childrens[i])
      }
    }
    return nodes
  }
  //3.广度优先遍历的递归写法 
  function wideTraversal(node) {
    let nodes = [],
      i = 0
    if (node != null) {
      nodes.push(node)
      wideTraversal(node.nextElementSibling)
      node = nodes[i++]
      wideTraversal(node.firstElementChild)
    }
    return nodes
  }
  //4.广度优先遍历的非递归写法 
  function wideTraversal1(node) {
    let nodes = [],
      i = 0
    while (node != null) {
      nodes.push(node)
      node = nodes[i++]
      let childrens = node.children
      for (let i = 0; i < childrens.length; i++) {
        nodes.push(childrens[i])
      }
    }
    return nodes
  }