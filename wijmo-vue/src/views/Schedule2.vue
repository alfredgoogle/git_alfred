<template>
    <div>
        <div class="col-md-12 control-section">
            <div class="content-wrapper">
                <ejs-schedule id='Schedule' ref="ScheduleObj" :cssClass="cssClass" width="100%" height="650px" :selectedDate='selectedDate' :currentView='currentView' :timeScale="timeScale" :workHours='workHours' :eventSettings='eventSettings'
                    :group='group' :resourceHeaderTemplate ='resourceHeaderTemplate' :popupOpen="onPopupOpen" :eventRendered='onEventRendered'
                    :actionBegin="onActionBegin" :renderCell="onRenderCell">
                    <e-views>
                        <e-view option="TimelineDay"></e-view>
                        <e-view option="TimelineWeek"></e-view>
                    </e-views>
                    <e-resources>
                        <e-resource field='RoomId' title='Room Type' name='MeetingRoom' allowMultiple=true :dataSource='meetingRoomDataSource' textField='text'
                            idField='id' colorField='color'>
                        </e-resource>
                    </e-resources>
                </ejs-schedule>
            </div>
        </div>
    </div>
</template>

<script>
	// import Vue from "vue";
	import { Component, Prop, Vue,Watch } from "vue-property-decorator";
	// import Vue from 'vue/dist/vue.esm.js'

    import { extend, isNullOrUndefined } from '@syncfusion/ej2-base';
    import roomData from './datasource';
	import { SchedulePlugin, TimelineViews, Resize, DragAndDrop } from "@syncfusion/ej2-vue-schedule";
	import resourceHeader from './headerTemplate.vue';
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

	Vue.use(SchedulePlugin);

    // const resourceHeaderVue = Vue.component("resourceHeader", {
	// 	template: 	`<div class="template-wrap">
	// 					<div class="room-name">{{data.resourceData.text}}</div>
	// 					<div class="room-type">{{data.resourceData.type}}</div>
	// 					<div class="room-capacity">{{data.resourceData.capacity}}</div>
	// 				</div>`,
    //     data:function() {
    //         return {
    //             data: {}
    //         };
    //     }
	// });

    export default Vue.extend({
        data: function () {
            return {
                cssClass: 'room-scheduler',
                eventSettings: {
                    dataSource: extend([], roomData, null, true),
                    fields: {
                        id: 'Id',
                        subject: { title: 'Summary', name: 'Subject' },
                        location: { title: 'Location', name: 'Location' },
                        description: { title: 'Comments', name: 'Description' },
                        startTime: { title: 'From', name: 'StartTime' },
                        endTime: { title: 'To', name: 'EndTime' }
                    }
                },
                selectedDate: new Date(2018, 7, 1),
                currentView: 'TimelineWeek',
                workHours: { start: '08:00', end: '18:00' },
                timeScale: { interval: 60, slotCount: 1 },
                resourceHeaderTemplate: function (e) {
                    return {
                        template: resourceHeader
                    };
                },
                group: {
                    enableCompactView: false,
                    resources: ['MeetingRoom']
                },
                meetingRoomDataSource: [
                    { text: 'Jammy', id: 1, color: '#ea7a57', capacity: 20, type: 'Conference' },
                    { text: 'Tweety', id: 2, color: '#7fa900', capacity: 7, type: 'Cabin' },
                    { text: 'Nestle', id: 3, color: '#5978ee', capacity: 5, type: 'Cabin' },
                    { text: 'Phoenix', id: 4, color: '#fec200', capacity: 15, type: 'Conference' },
                    { text: 'Mission', id: 5, color: '#df5286', capacity: 25, type: 'Conference' },
                    { text: 'Hangout', id: 6, color: '#00bdae', capacity: 10, type: 'Cabin' },
                    { text: 'Rick Roll', id: 7, color: '#865fcf', capacity: 20, type: 'Conference' },
                    { text: 'Rainbow', id: 8, color: '#1aaa55', capacity: 8, type: 'Cabin' },
                    { text: 'Swarm', id: 9, color: '#df5286', capacity: 30, type: 'Conference' },
                    { text: 'Photogenic', id: 10, color: '#710193', capacity: 25, type: 'Conference' }
                ],
            }
        },
        provide: {
            schedule: [TimelineViews, Resize, DragAndDrop]
        },
        methods: {
            isReadOnly: function(endDate) {
                return (endDate < new Date(2018, 6, 31, 0, 0));
            },
            onPopupOpen: function (args) {
                const data = args.data;
                if (args.type === 'QuickInfo' || args.type === 'Editor' || args.type === 'RecurrenceAlert' || args.type === 'DeleteAlert') {
                    const target = (args.type === 'RecurrenceAlert' ||
                        args.type === 'DeleteAlert') ? args.element[0] : args.target;
                    if (!isNullOrUndefined(target) && target.classList.contains('e-work-cells')) {
                        const scheduleObj = this.$refs.ScheduleObj;
                        if ((target.classList.contains('e-read-only-cells')) || (!scheduleObj.isSlotAvailable(data))) {
                            args.cancel = true;
                        }
                    } else if (!isNullOrUndefined(target) && target.classList.contains('e-appointment') &&
                        (this.isReadOnly(data.EndTime))) {
                        args.cancel = true;
                    }
                }
            },
            onRenderCell: function (args) {
                if (args.element.classList.contains('e-work-cells')) {
                    if (args.date < new Date(2018, 6, 31, 0, 0)) {
                        args.element.setAttribute('aria-readonly', 'true');
                        args.element.classList.add('e-read-only-cells');
                    }
                }
                if (args.elementType === 'emptyCells' && args.element.classList.contains('e-resource-left-td')) {
                    const target = args.element.querySelector('.e-resource-text');
                    target.innerHTML = '<div class="name">Rooms</div><div class="type">Type</div><div class="capacity">Capacity</div>';
                }
            },
            onEventRendered: function (args) {
                if (this.isReadOnly(args.data.EndTime)) {
                    args.element.setAttribute('aria-readonly', 'true');
                    args.element.classList.add('e-read-only');
                }
            },
            onActionBegin: function (args) {
                if (args.requestType === 'eventCreate' || args.requestType === 'eventChange') {
                    let data;
                    const scheduleObj = this.$refs.ScheduleObj;
                    if (args.requestType === 'eventCreate') {
                        data = args.data[0];
                    } else if (args.requestType === 'eventChange') {
                        data = args.data;
                    }
                    if (!scheduleObj.isSlotAvailable(data)) {
                        args.cancel = true;
                    }
                }
            }
		},
		mounted:function(){
			console.log('data',roomData)
		}
    });
</script>

<style>
    .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td {
        vertical-align: bottom;
    }

    .room-scheduler.e-schedule.e-device .e-timeline-view .e-resource-left-td {
        width: 75px;
    }

    .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td .e-resource-text {
        display: flex;
        font-weight: 500;
        padding: 0;
    }

    .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td .e-resource-text>div {
        border-right: 1px solid rgba(0, 0, 0, 0.12);
        border-top: 1px solid rgba(0, 0, 0, 0.12);
        flex: 0 0 33.3%;
        font-weight: 500;
        height: 36px;
        line-height: 34px;
        padding-left: 5px;
    }

    .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td .e-resource-text>div:last-child {
        border-right: 0;
    }

    .room-scheduler.e-schedule .template-wrap {
        display: flex;
        height: 100%;
        text-align: left;
    }

    .room-scheduler.e-schedule .template-wrap>div {
        border-right: 1px solid rgba(0, 0, 0, 0.12);
        flex: 0 0 33.3%;
        font-weight: 500;
        line-height: 57px;
        overflow: hidden;
        padding-left: 5px;
        text-overflow: ellipsis;
    }

    .room-scheduler.e-schedule .template-wrap>div:last-child {
        border-right: 0;
    }

    .room-scheduler.e-schedule .e-timeline-view .e-resource-cells,
    .room-scheduler.e-schedule .e-timeline-month-view .e-resource-cells {
        padding-left: 0;
    }

    .room-scheduler.e-schedule .e-timeline-view .e-date-header-wrap table col,
    .room-scheduler.e-schedule .e-timeline-view .e-content-wrap table col {
        width: 100px;
    }

    .room-scheduler.e-schedule .e-read-only {
        opacity: .8;
    }

    @media (max-width: 550px) {
        .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td {
            width: 100px;
        }
        .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td .e-resource-text>div,
        .room-scheduler.e-schedule .template-wrap>div {
            flex: 0 0 100%;
        }
        .room-scheduler.e-schedule .template-wrap>div:first-child {
            border-right: 0;
        }
        .room-scheduler.e-schedule .e-timeline-view .e-resource-left-td .e-resource-text>div:first-child {
            border-right: 0;
        }
        .room-scheduler.e-schedule .room-type,
        .room-scheduler.e-schedule .room-capacity {
            display: none;
        }
    }
</style>
