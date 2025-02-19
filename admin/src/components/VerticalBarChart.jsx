import React from 'react';
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend,
} from 'chart.js';
import { Bar } from 'react-chartjs-2';

ChartJS.register(
  CategoryScale,
  LinearScale,
  BarElement,
  Title,
  Tooltip,
  Legend
);

const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

export const data = {
  labels,
  datasets: [
    {
      label: 'Visitors',
      data:[1,2,3,4,5,6,7],
      backgroundColor: '#94152B',
    },
    {
      label: 'Borrowers',
      data: [1,2,3,4,5,6,7],
      backgroundColor: '#b1b1b1',
    },
  ],
};

export function VerticalBarChart() {
  return <Bar data={data} />;
}