div { 
	background: black; 
	color: white; 
	text-align: center; 
	margin: 0; 
	padding: 0; 
} 
.big { 
	width: 100%; 
	position: relative; 
	height: 40px; 
} 
.smallcov { 
	vertical-align: middle; 
	float: left; line-height: 20px; 
	overflow: hidden; 
	position: absolute; 
	width: 100%; 
	height: 20px; 
	flex-direction: row; 
} 

.small { 
	line-height: 20px; 
	width: 30%; 
	height: 20px; 
	display: none; 
	margin-right: -1px; 
} 
.big:hover .small { 
	display: inline-block; 
}


</style>
</head>
<body>
<div class="big"> 
	<div> menu </div> 
	<div class="smallcov"> 
		<div class="small"> 2 </div> 
		<div class="small"> 3 </div> 
		<div class="small"> 4 </div> 
	</div> 
</div>