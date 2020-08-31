<template>
	<div class="container">
		<div id="Schedule"></div>
	</div>
</template>

<script>
import { Component, Prop, Vue,Watch } from "vue-property-decorator";
import { Schedule, Day, Week, WorkWeek, Month, Agenda } from '@syncfusion/ej2-schedule';
import '@syncfusion/ej2-base/styles/material.css';
import '@syncfusion/ej2-buttons/styles/material.css';
import '@syncfusion/ej2-calendars/styles/material.css';
import '@syncfusion/ej2-dropdowns/styles/material.css';
import '@syncfusion/ej2-inputs/styles/material.css';
import '@syncfusion/ej2-splitbuttons/styles/material.css';
import '@syncfusion/ej2-lists/styles/material.css';
import '@syncfusion/ej2-navigations/styles/material.css';
import '@syncfusion/ej2-popups/styles/material.css';
import '@syncfusion/ej2-schedule/styles/material.css';
@Component
export default class Wijimo extends Vue {
	mounted(){
		console.log('mounted');
		Schedule.Inject(Day, Week, WorkWeek, Month, Agenda);
		const scheduleObj = new Schedule();
		scheduleObj.appendTo('#Schedule');
	}
}

</script>

<style>

</style>

