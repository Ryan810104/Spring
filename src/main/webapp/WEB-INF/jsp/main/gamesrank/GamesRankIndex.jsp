<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/css/gamesrankindex.css">
</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="row">
			<div class="col-md-8" style="margin: 0 auto;">
				<div class="card card-plain">
					<div class="card-header">
						<h2 class="card-title">踩地雷</h2>
						<p class="card-category">本月勝率前三名</p>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table">
								<thead class=" text-primary">
									<th>使用者名稱</th>
									<th>徽章</th>
									<th>賺取金幣</th>
									<th class="text-right">好友申請</th>
								</thead>
								<tbody>
									<tr>
										<td>Dakota Rice</td>
										<td>Niger</td>
										<td>8,425 P</td>
										<td class="text-right"><label
											class="custom-control custom-checkbox"> <input
												type="checkbox" class="custom-control-input"> <span
												class="custom-control-indicator"></span>
										</label></td>
									</tr>
									<tr>
										<td>Minerva Hooper</td>
										<td>Curaçao</td>
										<td>5,555 P</td>
										<td class="text-right"><label
											class="custom-control custom-checkbox"> <input
												type="checkbox" class="custom-control-input"> <span
												class="custom-control-indicator"></span>
										</label></td>
									</tr>
									<tr>
										<td>Sage Rodriguez</td>
										<td>Netherlands</td>
										<td>5,262 P</td>
										<td class="text-right"><label
											class="custom-control custom-checkbox"> <input
												type="checkbox" class="custom-control-input"> <span
												class="custom-control-indicator"></span>
										</label></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
		<hr>
		<div class="row">
			<div class="col-md-8">
				<div class="card card-plain">
					<div class="card-header">
						<h2 class="card-title">踩地雷</h2>
						<p class="card-category">本月勝率前三名</p>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table">
								<thead class=" text-primary">
									<th>使用者名稱</th>
									<th>徽章</th>
									<th>賺取金幣</th>
									<th class="text-right">好友申請</th>
								</thead>
								<tbody>
									<tr>
										<td>Dakota Rice</td>
										<td>Niger</td>
										<td>8,425 P</td>
										<td class="text-right"><label
											class="custom-control custom-checkbox"> <input
												type="checkbox" class="custom-control-input"> <span
												class="custom-control-indicator"></span>
										</label></td>
									</tr>
									<tr>
										<td>Minerva Hooper</td>
										<td>Curaçao</td>
										<td>5,555 P</td>
										<td class="text-right"><label
											class="custom-control custom-checkbox"> <input
												type="checkbox" class="custom-control-input"> <span
												class="custom-control-indicator"></span>
										</label></td>
									</tr>
									<tr>
										<td>Sage Rodriguez</td>
										<td>Netherlands</td>
										<td>5,262 P</td>
										<td class="text-right"><label
											class="custom-control custom-checkbox"> <input
												type="checkbox" class="custom-control-input"> <span
												class="custom-control-indicator"></span>
										</label></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="header">
						<h4 class="title">Email Statistics</h4>
						<p class="category">Last Campaign Performance</p>
					</div>
					<div class="content">
						<div id="chartPreferences" class="ct-chart ct-perfect-fourth">
							<svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct"
								width="100%" height="100%" class="ct-chart-pie"
								style="width: 100%; height: 100%;">
								<g class="ct-series ct-series-a">
								<path
									d="M196.866,208.154A117.5,117.5,0,1,0,277.3,5L277.3,122.5Z"
									class="ct-slice-pie" ct:value="62"></path></g>
								<g class="ct-series ct-series-b">
								<path
									d="M234.045,13.251A117.5,117.5,0,0,0,197.165,208.434L277.3,122.5Z"
									class="ct-slice-pie" ct:value="32"></path></g>
								<g class="ct-series ct-series-c">
								<path d="M277.3,5A117.5,117.5,0,0,0,233.664,13.403L277.3,122.5Z"
									class="ct-slice-pie" ct:value="6"></path></g>
								<g>
								<text dx="331.92438685648165" dy="144.12731747022482"
									text-anchor="middle" class="ct-label">62%</text>
								<text dx="219.5906423302364" dy="111.49134776808874"
									text-anchor="middle" class="ct-label">32%</text>
								<text dx="266.2913660786355" dy="64.79062401968955"
									text-anchor="middle" class="ct-label">6%</text></g></svg>
						</div>

						<div class="footer">
							<div class="chart-legend">
								<i class="fa fa-circle text-info"></i> Open <i
									class="fa fa-circle text-danger"></i> Bounce <i
									class="fa fa-circle text-warning"></i> Unsubscribe
							</div>
							<hr>
							<div class="stats">
								<i class="ti-timer"></i> Campaign sent 2 days ago
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
