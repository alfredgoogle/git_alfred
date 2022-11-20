import dayjs from 'dayjs';

export default  {
    formatDate(date) {
        return dayjs(date).format('YYYY-MM-DD HH:mm:ss');
      },
}