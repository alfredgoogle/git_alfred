var fs = require('fs');
var path = require('path');
var en = require('./dist/assets/locale/en');
var zh = require('./dist/assets/locale/zh');
// console.log(en);
// console.log(zh);

var name_arr = [];
var origin_path = 'src/view';
function findPath(origin_path){
    var files = fs.readdirSync(origin_path);
    files.forEach((item)=>{
        var new_path = path.join(origin_path,item);
        var stat = fs.statSync(new_path);
        if(stat.isDirectory()){
            findPath(new_path);
        }else {
            // console.log('path: ',new_path);
            var file = fs.readFileSync(new_path,'utf-8');
            // console.log( 'length', file.length);
            var arr = file.match(/intl.get\(['"](\w+)['"]\)/g);
            if(arr){
                arr.map(v=>{
                    var name =  /intl.get\(['"](\w+)['"]\)/.exec(v)[1];
                    if(!(name in en) || !(name in zh)){
                        console.log(name);
                        console.log(new_path);
                        if(!~name_arr.indexOf(name)){
                            name_arr.push(name);
                        }
                    }
                });
            }
        }
    });
}
findPath(origin_path);
console.log('name_arr',name_arr.join());