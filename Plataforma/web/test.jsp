<head>
  <!-- Plotly.js -->
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
</head>

<body>
  
  <div id="myDiv"><!-- Plotly chart will be drawn inside this DIV --></div>
  <script>
   var trace1 = {
  x: [1, 2, 3, 4],
  y: [10, 15, 13, 17],
  mode: 'markers',
  name: 'Scatter'
};

var trace2 = {
  x: [2, 3, 4, 5],
  y: [16, 5, 11, 9],
  mode: 'lines',
  name: 'Lines'
};

var trace3 = {
  x: [1, 2, 3, 4],
  y: [12, 9, 15, 12],
  mode: 'lines+markers',
  name: 'Scatter + Lines'
};

var trace4 = {
  x: [3, 3],
  y: [1, 15],
  mode: 'lines',
  name: 'line V'
};

var data = [ trace1, trace2, trace3, trace4 ];

var layout = {
  title:'Adding Names to Line and Scatter Plot',
  xaxis:{
      title:'X title'
  },
  yaxis:{
      title:'y title'
  }
};

Plotly.newPlot('myDiv', data, layout);
  </script>
</body>