<template>
	<div class="template-wrap">
		<div class="room-name">{{data.resourceData.text}}</div>
		<div class="room-type">{{data.resourceData.type}}</div>
		<div class="room-capacity">{{data.resourceData.capacity}}</div>
	</div>
</template>

<script>
	import Vue from "vue";
    export default Vue.extend({
		data:function(){
			return {
				data:{}
			}
		}
	})
</script>

<style>

</style>

