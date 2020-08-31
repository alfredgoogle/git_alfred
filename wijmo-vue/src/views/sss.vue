<template>
	<div class="container">
		<div class="line">
			str1:
			<input type="text" v-model="str1">
			<div class="origin_str" v-html="str1Html"></div>
		</div>
		<div class="line">
			str2:
			<input type="text" v-model="str2">
			<div class="origin_str" v-html="str2Html"></div>
		</div>
		<div class="line">
			res:
			{{str3}}
		</div>
	</div>
</template>

<script>
import { Component, Prop, Vue,Watch } from "vue-property-decorator";

@Component
export default class Wijimo extends Vue {
	str1='';
	str2='';
	str1Html='';
	str2Html='';
	str3='';

	@Watch('str1', { immediate: true })
    onStr1Change (str1) {
		console.log('str1',str1);
		this.sss(str1,this.str2)
	}

	@Watch('str2', { immediate: true })
    onStr2Change (str2) {
		console.log('str1',str2);
		this.sss(this.str1,str2)
	}

	sss(s1, s2) {
		const length = s1.length;
		const arr4 = [];
		let arr5 = [];
		let index1Arr = [];
		let index2Arr = [];
		for (let index = 0; index < length; index++) {
			const s = s1.slice(index);
			const arr1 = s.split('');
			const arr2 = s2.split('');
			const arr3 = [];
			arr1.map((v, i)=>{
				if (~arr2.indexOf(v)) {
					arr3.push({
						value: v,
						index1: i + index,
						index2: (arr3.length ? (arr3[arr3.length -1].index2 + arr2.indexOf(v) + 1) : arr2.indexOf(v)),
					});
					arr2.splice(0, arr2.indexOf(v) + 1);
				}
			});
			if (arr3.length) {
				// arr4.push(arr3.map(obj=>obj.value).join(''));
				arr4.push(arr3);
			}
		}
		if (arr4.length) {
			arr4.sort((a, b)=>{ return a.length - b.length < 0; });
			arr4.map(str=>{
				if (str.length == arr4[0].length) {
					arr5.push(str);
				}
			});
		}
		if (arr5.length > 1) {
			arr5.map((arr,index)=>{
				arr.map(obj=>{
					index1Arr.push(obj.index1);
					index2Arr.push(obj.index2);
				})
			})
			index1Arr = [...new Set(index1Arr)]
			index2Arr = [...new Set(index2Arr)]
			this.str1Html  = this.getHtmlStr(index1Arr,s1);
			this.str2Html  = this.getHtmlStr(index2Arr,s2);
			arr5 = arr5.map(arr=>(arr.map(obj=>obj.value).join('')));
			arr5 = [...new Set(arr5)]
			this.str3 = arr5.join(',');
		} else if (arr5.length == 1) {
			arr5[0].map(obj=>{
				index1Arr.push(obj.index1);
				index2Arr.push(obj.index2);
			})
			this.str1Html  = this.getHtmlStr(index1Arr,s1);
			this.str2Html  = this.getHtmlStr(index2Arr,s2);
			arr5 = arr5.map(arr=>(arr.map(obj=>obj.value).join('')));
			this.str3 = arr5[0];
		} else {
			this.str3 = '';
			this.str1Html  = s1;
			this.str2Html  = s2;
		}

	}


	getHtmlStr(indexArr,str){
		let strArr = str.split('');
		strArr = strArr.map((s,index)=>{
			if(~indexArr.indexOf(index)){
				return `<span>${s}</span>`
			}else{
				return s;
			}
		});
		return strArr.join('');
	}

}

</script>

<style>
.container{
	text-align: left;
	padding-left: 100px;

}
.line{
	margin-bottom: 20px;
}
.origin_str{
	display: inline-block;
	margin-left:10px;
	width: 200px;
	text-align: left;
}
.origin_str span{
	color: red
}
</style>

