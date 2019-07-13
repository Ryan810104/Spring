<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Document</title>
</head>
<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 1000px; height: 600px;"></div>


	<script src='https://cdn.bootcss.com/echarts/3.4.0/echarts.js'></script>
	<script src='/resources/echarts-stat-master/dist/ecStat.js'></script>

	<!-- 	<script src='https://cdn.bootcss.com/echarts/3.4.0/echarts.js'></script> -->
	<!-- 	<script src="ecStat.js"></script> -->
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));

		var data0001 = [ [ 1, 4862.4 ], [ 2, 5294.7 ], [ 3, 5934.5 ],
				[ 4, 7171.0 ], [ 5, 8964.4 ], [ 6, 10202.2 ], [ 7, 11962.5 ],
				[ 8, 14928.3 ], [ 9, 16909.2 ], [ 10, 18547.9 ],
				[ 11, 21617.8 ], [ 12, 26638.1 ], [ 13, 34634.4 ],
				[ 14, 46759.4 ], [ 15, 58478.1 ], [ 16, 67884.6 ],
				[ 17, 74462.6 ], [ 18, 79395.7 ] ];

		var myRegression = ecStat.regression('exponential', data0001);

		myRegression.points.sort(function(a, b) {
			return a[0] - b[0];
		});

		option = {
			title : {
				text : '1981 - 1998 gross domestic product GDP (trillion yuan)',
				subtext : 'By ecStat.regression',
				sublink : 'https://github.com/ecomfe/echarts-stat',
				left : 'center'
			},
			tooltip : {
				trigger : 'axis',
				axisPointer : {
					type : 'cross'
				}
			},
			xAxis : {
				type : 'value',
				splitLine : {
					lineStyle : {
						type : 'dashed'
					}
				},
				splitNumber : 20
			},
			yAxis : {
				type : 'value',
				splitLine : {
					lineStyle : {
						type : 'dashed'
					}
				}
			},
			series : [
					{
						name : 'scatter',
						type : 'scatter',
						label : {
							emphasis : {
								show : true,
								position : 'left',
								textStyle : {
									color : 'blue',
									fontSize : 16
								}
							}
						},
						data : data0001
					},
					{
						name : 'line',
						type : 'line',
						showSymbol : false,
						smooth : true,
						data : myRegression.points,
						markPoint : {
							itemStyle : {
								normal : {
									color : 'transparent'
								}
							},
							label : {
								normal : {
									show : true,
									position : 'left',
									formatter : myRegression.expression,
									textStyle : {
										color : '#333',
										fontSize : 14
									}
								}
							},
							data : [ {
								coord : myRegression.points[myRegression.points.length - 1]
							} ]
						}
					} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	</script>
</body>
</html>