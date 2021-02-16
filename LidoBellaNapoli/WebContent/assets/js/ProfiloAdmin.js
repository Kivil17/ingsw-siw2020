/*var pivot = new WebDataRocks({
    container: "#wdr-component",
    toolbar: true,
    width: 800,
    report: {
        "dataSource": {
            "dataSourceType": "json",
            "data": getJSONData()
        },
        formats: [{
            name: "rating",
            decimalPlaces: 2
        }],
        "slice": {
        "rows": [
            {
                "uniqueName": "Company Location"
            }
        ],
        "columns": [
            {
                "uniqueName": "Review Date"
            },
            {
                "uniqueName": "Measures"
            }
        ],
        "measures": [
            {
                "uniqueName": "Rating",
                "aggregation": "average",
                "format": "rating"
            }
        ],
        "sorting": {
            "column": {
                "type": "desc",
                "tuple": [],
                "measure": "Rating"
            }
        }
    },
    "conditions": [
        {
            "formula": "#value >= 3.5",
            "format": {
                "backgroundColor": "#039BE5",
                "color": "#FFFFFF",
                "fontFamily": "Arial",
                "fontSize": "12px"
            }
        }
    ],
    "formats": [
        {
            "name": "rating",
            "decimalPlaces": 2
        }
    ]
    },
    reportcomplete: function() {
        pivot.off("reportcomplete");
        applyHighchartsThemes();
        createLineChart();
        createBarChart();
        createPieChart();
    }
});

function createLineChart() {
    pivot.highcharts.getData({
        type: "spline",
        slice: {
            rows: [{
                uniqueName: "Company Location"
            }],
            columns: [{
                uniqueName: "[Measures]"
            }],
            measures: [{
                uniqueName: "Rating",
                aggregation: "average"
            }],
            sorting: {
                column: {
                    type: "desc",
                    tuple: [],
                    measure: "Rating"
                }
            }
        }
    }, drawLineChart, drawLineChart);
}


function createBarChart() {
    pivot.highcharts.getData({
        type: "bar",
        slice: {
            rows: [{
                uniqueName: "Bean Type"
            }],
            columns: [{
                uniqueName: "[Measures]"
            }],
            measures: [{
                uniqueName: "Rating",
                aggregation: "average"
            }],
            sorting: {
                column: {
                    type: "desc",
                    tuple: [],
                    measure: "Rating"
                }
            }
        }
    }, drawBarChart, drawBarChart);
}


function createPieChart() {
    pivot.highcharts.getData({
        type: "pie",
        slice: {
            rows: [{
                uniqueName: "Specific Bean Origin",
                "filter": {
                    "type": "top",
                    "quantity": 6,
                    "measure": "Rating"
                },
                "sort": "asc"
            }],
            columns: [{
                uniqueName: "[Measures]"
            }],
            measures: [{
                uniqueName: "Rating",
                aggregation: "max"
            }],
            sorting: {
                column: {
                    type: "desc",
                    tuple: [],
                    measure: "Rating"
                }
            }
        }
    }, drawPieChart, drawPieChart);
}

function drawLineChart(data) {
   data.title.text = "Best chocolate manufacturers by country";
   Highcharts.chart('lineChartContainer', data);
}

function drawBarChart(data) {
   data.title.text = "Best bean types";
   Highcharts.chart('barChartContainer', data);
}

function drawPieChart(data) {
   data.title.text = "Best chocolate by specific bean origin";
   Highcharts.chart('pieChartContainer', data);
}

function applyHighchartsThemes() {
  // Load the fonts
Highcharts.createElement('link', {
    href: 'https://fonts.googleapis.com/css?family=Dosis:400,600',
    rel: 'stylesheet',
    type: 'text/css'
}, null, document.getElementsByTagName('head')[0]);

Highcharts.theme = {
    colors: ['#7cb5ec', '#f7a35c', '#90ee7e', '#7798BF', '#aaeeee', '#ff0066',
        '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
    chart: {
        backgroundColor: null,
        style: {
            fontFamily: 'Dosis, sans-serif'
        }
    },
    title: {
        style: {
            fontSize: '16px',
            fontWeight: 'bold',
            textTransform: 'uppercase'
        }
    },
    tooltip: {
        borderWidth: 0,
        backgroundColor: 'rgba(219,219,216,0.8)',
        shadow: false
    },
    legend: {
        itemStyle: {
            fontWeight: 'bold',
            fontSize: '13px'
        }
    },
    xAxis: {
        gridLineWidth: 1,
        labels: {
            style: {
                fontSize: '12px'
            }
        }
    },
    yAxis: {
        minorTickInterval: 'auto',
        title: {
            style: {
                textTransform: 'uppercase'
            }
        },
        labels: {
            style: {
                fontSize: '12px'
            }
        }
    },
    plotOptions: {
        candlestick: {
            lineColor: '#404048'
        }
    },


    // General
    background2: '#F0F0EA'

};

// Apply the theme
Highcharts.setOptions(Highcharts.theme);
}
function getJSONData() {
    return [{
            "Company Maker": "A. Morin",
            "Specific Bean Origin": "Agua Grande",
            "REF": 1876,
            "Review Date": 2016,
            "Cocoa Percent": "63%",
            "Company Location": "France",
            "Rating": 3.75,
            "Bean Type": "",
            "Broad Bean Origin": "Sao Tome"
        },
        
    ]
}*/


// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
google.charts.setOnLoadCallback(drawChart2);

var r1 = Math.random() * (10 - 1) + 1;
var r2 = Math.random() * (10 - 1) + 1;
var r3 = Math.random() * (10 - 1) + 1;
var r4 = Math.random() * (10 - 1) + 1;
var r5 = Math.random() * (10 - 1) + 1;

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Product', 'quantity by price'],
  ['Pizza', r1],
  ['Bevande', r2],
  ['Cucina', r3],
  ['Vini', r4],
  ['Dessert', r5]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Prodotti venduti', 'width':800, 'height':500};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}

var r6 = Math.random() * (10 - 1) + 1;
var r7 = Math.random() * (10 - 1) + 1;
var r8 = Math.random() * (10 - 1) + 1;
var r9 = Math.random() * (10 - 1) + 1;
var r10 = Math.random() * (10 - 1) + 1;

function drawChart2() {
  var data = google.visualization.arrayToDataTable([
  ['User', 'time by operation'],
  ['Francesco', r6],
  ['Giuseppe', r7],
  ['Nicola', r8],
  ['Giovanni', r9],
  ['Gino', r10]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Utenti Frequenti', 'width':800, 'height':500};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
  chart.draw(data, options);
}
