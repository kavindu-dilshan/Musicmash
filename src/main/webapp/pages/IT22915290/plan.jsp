<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Subscription Plan Cards</title>
    <style>
        body {
        	font-family: helvetica;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url("resources/artist-background.png");
			background-size: cover;
        }

        .plan-cards {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .plan-card {
        	color:white;
            width: 300px;
            border: 1px solid #ccc;
            padding: 20px;
            background-color: #313131;
       	    border: 1px solid #919294;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .plan-card:hover {
            transform: scale(1.05);
        }

        .plan-name {
            font-size: 20px;
            font-weight: bold;
        }

        .plan-price {
            font-size: 18px;
            color: #ff1989;
        }

        .plan-description {
            font-size: 16px;
        }

        .free-music-listening {
            margin-top: 20px;
            font-size: 16px;
        }

        .plan-card-button {
            background-color: #ff1989;
            color: #fff;
            border: none;
            padding: 10px 30px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .plan-card-button:hover {
            background-color: #b31260;
        }
    </style>
</head>
<body>
    <div class="plan-cards">
        <div class="plan-card">
            <div class="plan-name">Individual Plan</div>
            <div class="plan-price">RS.6200.00/month after the offer period</div>
            <div class="plan-description">1 account</div>
            <ul>
                <li>Access to a library of over 50 million songs</li>
                <li>Create and share playlists</li>
                <li>Discover new music and artists</li>
                <li>Play anywhere - even offline</li>
            </ul>
        <a href="customerinsert.jsp">
       		 <button class="plan-card-button">Choose Plan</button>
   		</a>
        </div>

        <div class="plan-card">
            <div class="plan-name">Duo Plan</div>
            <div class="plan-price">RS 8900.00/month after the offer period</div>
            <div class="plan-description">2 accounts</div>
            <ul>
                <li>Access for two accounts</li>
                <li>Free music listening, play offline, on-demand playback</li>
            </ul>
        <a href="customerinsert.jsp">
       		 <button class="plan-card-button">Choose Plan</button>
   		</a>
        </div>

        <div class="plan-card">
            <div class="plan-name">Student</div>
            <div class="plan-price">RS 4900.00/month after the offer period</div>
            <div class="plan-description">1 account</div>
            <ul>
                <li>Special 60% discount for eligible students</li>
                <li>Ad-free music listening</li>
                <li>Play anywhere</li>
            </ul>
       
       <a href="customerinsert.jsp">
       		 <button class="plan-card-button">Choose Plan</button>
   		</a>
       
       
        </div>
    </div>
</body>
</html>