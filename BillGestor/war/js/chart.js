
      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var peticiones = document.getElementById("nreq");
        var nreq = parseInt(peticiones.textContent || peticiones.innerText);
    	var data = new google.visualization.DataTable();
        data.addColumn('string', 'Info');
        data.addColumn('number', 'Number of Requests');
        data.addRows([
          ['Requests Left', nreq],
          ['Requests Used', 50-nreq],
        ]);

        // Set chart options
        var options = {'width':350,
                       'height':175,
                       'backgroundColor': '#DFE1F0',
                       'chartArea':{'width':'100%','height':'95%'},
                       'legend':{'position':'left'}};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
