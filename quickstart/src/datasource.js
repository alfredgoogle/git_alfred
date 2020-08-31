const roomData = [{
    "Id": 1,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business goal of 2018.",
    "StartTime": "[native Date Mon Jul 30 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 1
}, {
    "Id": 2,
    "Subject": "Training session on JSP",
    "Description": "Knowledge sharing on JSP topics.",
    "StartTime": "[native Date Mon Jul 30 2018 15:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 17:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 3,
    "Subject": "Sprint Planning with Team members",
    "Description": "Planning tasks for sprint.",
    "StartTime": "[native Date Mon Jul 30 2018 09:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 3
}, {
    "Id": 4,
    "Subject": "Meeting with Client",
    "Description": "Customer meeting to discuss features.",
    "StartTime": "[native Date Mon Jul 30 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 13:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 5,
    "Subject": "Support Meeting with Managers",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Mon Jul 30 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 17:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 6,
    "Subject": "Client Meeting",
    "Description": "Meeting to discuss client requirements.",
    "StartTime": "[native Date Mon Jul 30 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 13:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 6
}, {
    "Id": 7,
    "Subject": "Appraisal Meeting",
    "Description": "Meeting to discuss employee appraisals.",
    "StartTime": "[native Date Mon Jul 30 2018 15:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 16:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 7
}, {
    "Id": 8,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Mon Jul 30 2018 08:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 9,
    "Subject": "Customer Meeting",
    "Description": "Meeting to discuss customer reported issues.",
    "StartTime": "[native Date Mon Jul 30 2018 10:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 8
}, {
    "Id": 10,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business plans.",
    "StartTime": "[native Date Mon Jul 30 2018 14:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 17:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 9
}, {
    "Id": 11,
    "Subject": "Training session on Vue",
    "Description": "Knowledge sharing on Vue concepts.",
    "StartTime": "[native Date Mon Jul 30 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 10
}, {
    "Id": 12,
    "Subject": "Meeting with Team members",
    "Description": "Meeting to discuss on work report.",
    "StartTime": "[native Date Mon Jul 30 2018 11:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 13,
    "Subject": "Meeting with General Manager",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Mon Jul 30 2018 14:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Mon Jul 30 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 14,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business goal of 2018.",
    "StartTime": "[native Date Tue Jul 31 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 1
}, {
    "Id": 15,
    "Subject": "Training session on JSP",
    "Description": "Knowledge sharing on JSP topics.",
    "StartTime": "[native Date Tue Jul 31 2018 14:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 17:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 6
}, {
    "Id": 16,
    "Subject": "Sprint Planning with Team members",
    "Description": "Planning tasks for sprint.",
    "StartTime": "[native Date Tue Jul 31 2018 09:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 2
}, {
    "Id": 17,
    "Subject": "Meeting with Client",
    "Description": "Customer meeting to discuss features.",
    "StartTime": "[native Date Tue Jul 31 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 13:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 7
}, {
    "Id": 18,
    "Subject": "Support Meeting with Managers",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Tue Jul 31 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 17:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 2
}, {
    "Id": 19,
    "Subject": "Training session on C#",
    "Description": "Training session",
    "StartTime": "[native Date Tue Jul 31 2018 14:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 9
}, {
    "Id": 20,
    "Subject": "Client Meeting",
    "Description": "Meeting to discuss client requirements.",
    "StartTime": "[native Date Tue Jul 31 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 13:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 3
}, {
    "Id": 21,
    "Subject": "Appraisal Meeting",
    "Description": "Meeting to discuss employee appraisals.",
    "StartTime": "[native Date Tue Jul 31 2018 15:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 16:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 3
}, {
    "Id": 22,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Tue Jul 31 2018 08:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 23,
    "Subject": "Customer Meeting",
    "Description": "Meeting to discuss customer reported issues.",
    "StartTime": "[native Date Tue Jul 31 2018 10:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 24,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business plans.",
    "StartTime": "[native Date Wed Aug 01 2018 16:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 18:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 10
}, {
    "Id": 25,
    "Subject": "Training session on Vue",
    "Description": "Knowledge sharing on Vue concepts.",
    "StartTime": "[native Date Tue Jul 31 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 26,
    "Subject": "Meeting with Team members",
    "Description": "Meeting to discuss on work report.",
    "StartTime": "[native Date Tue Jul 31 2018 11:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 27,
    "Subject": "Meeting with General Manager",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Tue Jul 31 2018 14:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Jul 31 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 10
}, {
    "Id": 28,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business goal of 2018.",
    "StartTime": "[native Date Wed Aug 01 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 1
}, {
    "Id": 29,
    "Subject": "Training session on JSP",
    "Description": "Knowledge sharing on JSP topics.",
    "StartTime": "[native Date Wed Aug 01 2018 17:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 20:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 6
}, {
    "Id": 30,
    "Subject": "Sprint Planning with Team members",
    "Description": "Planning tasks for sprint.",
    "StartTime": "[native Date Wed Aug 01 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 2
}, {
    "Id": 31,
    "Subject": "Meeting with Client",
    "Description": "Customer meeting to discuss features.",
    "StartTime": "[native Date Wed Aug 01 2018 18:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 20:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 8
}, {
    "Id": 32,
    "Subject": "Support Meeting with Managers",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Wed Aug 01 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 17:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 7
}, {
    "Id": 33,
    "Subject": "Training session on C#",
    "Description": "Training session",
    "StartTime": "[native Date Wed Aug 01 2018 14:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 2
}, {
    "Id": 34,
    "Subject": "Client Meeting",
    "Description": "Meeting to discuss client requirements.",
    "StartTime": "[native Date Wed Aug 01 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 13:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 3
}, {
    "Id": 35,
    "Subject": "Appraisal Meeting",
    "Description": "Meeting to discuss employee appraisals.",
    "StartTime": "[native Date Wed Aug 01 2018 15:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 16:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 8
}, {
    "Id": 36,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Wed Aug 01 2018 09:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 11:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 37,
    "Subject": "Customer Meeting",
    "Description": "Meeting to discuss customer reported issues.",
    "StartTime": "[native Date Wed Aug 01 2018 10:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 9
}, {
    "Id": 38,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business plans.",
    "StartTime": "[native Date Wed Aug 01 2018 15:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 17:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 39,
    "Subject": "Training session on Vue",
    "Description": "Knowledge sharing on Vue concepts.",
    "StartTime": "[native Date Wed Aug 01 2018 09:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 40,
    "Subject": "Meeting with Team members",
    "Description": "Meeting to discuss on work report.",
    "StartTime": "[native Date Wed Aug 01 2018 11:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 41,
    "Subject": "Meeting with General Manager",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Wed Aug 01 2018 14:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 10
}, {
    "Id": 43,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Wed Aug 01 2018 18:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 20:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 2
}, {
    "Id": 44,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Wed Aug 01 2018 17:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 20:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 1
}, {
    "Id": 45,
    "Subject": "Client Meeting",
    "Description": "Meeting to discuss client requirements.",
    "StartTime": "[native Date Wed Aug 01 2018 16:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 18:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 3
}, {
    "Id": 46,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business plans.",
    "StartTime": "[native Date Wed Aug 01 2018 18:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 20:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 4
}, {
    "Id": 47,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business plans.",
    "StartTime": "[native Date Wed Aug 01 2018 15:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 18:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 48,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Wed Aug 01 2018 18:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 20:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 5
}, {
    "Id": 49,
    "Subject": "HR Meeting",
    "Description": "Meeting to discuss HR plans.",
    "StartTime": "[native Date Wed Aug 01 2018 14:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 16:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 6
}, {
    "Id": 50,
    "Subject": "Board Meeting",
    "Description": "Meeting to discuss business plans.",
    "StartTime": "[native Date Wed Aug 01 2018 09:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 6
}, {
    "Id": 51,
    "Subject": "Client Meeting",
    "Description": "Meeting to discuss client requirements.",
    "StartTime": "[native Date Wed Aug 01 2018 10:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 7
}, {
    "Id": 52,
    "Subject": "Appraisal Meeting",
    "Description": "Meeting to discuss employee appraisals.",
    "StartTime": "[native Date Wed Aug 01 2018 18:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 19:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 7
}, {
    "Id": 53,
    "Subject": "Support Meeting with Managers",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Wed Aug 01 2018 15:30:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 17:00:00 GMT+0800 (中国标准时间)]",
    "RoomId": 9
}, {
    "Id": 54,
    "Subject": "Support Meeting with Managers",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Wed Aug 01 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 8
}, {
    "Id": 55,
    "Subject": "Support Meeting with Managers",
    "Description": "Meeting to discuss support plan.",
    "StartTime": "[native Date Wed Aug 01 2018 11:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Wed Aug 01 2018 12:30:00 GMT+0800 (中国标准时间)]",
    "RoomId": 10
}, {
    "Id": 56,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 1
}, {
    "Id": 57,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 2
}, {
    "Id": 58,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 3
}, {
    "Id": 59,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 4
}, {
    "Id": 60,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 5
}, {
    "Id": 61,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 6
}, {
    "Id": 62,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 7
}, {
    "Id": 63,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 8
}, {
    "Id": 64,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 9
}, {
    "Id": 65,
    "Subject": "Lunch Break",
    "StartTime": "[native Date Tue Aug 01 2017 13:00:00 GMT+0800 (中国标准时间)]",
    "EndTime": "[native Date Tue Aug 01 2017 14:00:00 GMT+0800 (中国标准时间)]",
    "RecurrenceRule": "FREQ=DAILY;INTERVAL=1;",
    "IsBlock": true,
    "RoomId": 10
}]
export default roomData