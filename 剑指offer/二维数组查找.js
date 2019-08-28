/**
 * 二维数组查找
 * 二维数组为横向和纵向都是递增顺序
 * **/


function find(target, arr){
    let i = arr.length -1;
    let j = 0;
    return compare(target, arr, i, j);
}

function compare(target, arr, i, j){
    let current = arr[i][j];

    if(arr[i] === undefined || current === undefined){
        return false;
    }
    if(current === target){
        console.log( "i %s, j %s",i,j);
        return true;
    }

    if(target < current){
        i -= 1;
        return  compare(target, arr, i, j);
    }

    if(target > current){
        j += 1;
        return  compare(target, arr, i, j);
    }
}