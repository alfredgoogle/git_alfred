<template>
  <div id='app'>
      <ejs-schedule height='550px' width='100%' :selectedDate='selectedDate'
      :eventSettings= 'eventSettings'>
        <e-views>
          <e-view option='Week' startHour='07:00' endHour='15:00' ></e-view>
          <e-view option='WorkWeek' startHour='10:00' endHour='18:00' ></e-view>
          <e-view option='Month' showWeekend=false></e-view>
        </e-views>
      </ejs-schedule>
  </div>
</template>
<script>
  import Vue from 'vue';
  import scheduleData from './datasource.js';
  import { extend } from '@syncfusion/ej2-base';
  import { SchedulePlugin,  WorkWeek, Month, Week } from '@syncfusion/ej2-vue-schedule';
    import '@syncfusion/ej2-base/styles/material.css';
  import '@syncfusion/ej2-buttons/styles/material.css';
  import '@syncfusion/ej2-calendars/styles/material.css';
  import '@syncfusion/ej2-dropdowns/styles/material.css';
  import '@syncfusion/ej2-inputs/styles/material.css';
  import '@syncfusion/ej2-navigations/styles/material.css';
  import '@syncfusion/ej2-popups/styles/material.css';
  import '@syncfusion/ej2-vue-schedule/styles/material.css';
  Vue.use(SchedulePlugin);
  export default {
    data () {
      return {
        eventSettings: { dataSource: extend([], scheduleData, null, true) },
        selectedDate: new Date(2018, 1, 15)
      }
    },
    provide: {
      schedule: [ WorkWeek, Month, Week]
    }
  }
</script>

<style>

  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  }

  h1, h2 {
    font-weight: normal;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  li {
    display: inline-block;
    margin: 0 10px;
  }

  a {
    color: #42b983;
  }
</style>
