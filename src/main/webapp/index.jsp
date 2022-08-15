<html>  
<body>  
<style>
	body {
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #65646c;
    font-family: Arial, Helvetica, sans-serif;
  background-image: linear-gradient(180deg, rgba(0,0,0,0.15) 0%, rgba(0,153,212,0) calc(15% + 100px), rgba(0,99,138,0) calc(85% + 100px), rgba(0,0,0,0.15) 100%);
}
h2, section {
    text-align: center;
    color: white;
    font-weight: bold;
}
.main {
    color: white;
}
div.container {
	display: flex;
	justify-content: center;
	align-items: center;
}
div > div {
	width: 12px;
	height: 12px;
	border-radius: 100%;
	margin: 2vw;
	background-image: linear-gradient(145deg, rgba(255,255,255,0.5) 0%, rgba(0,0,0,0) 100%);
	animation: bounce 1.5s 0.5s linear infinite;
}
.yellow {
	background-color: orange;
}

.red {
	background-color: orange;
	animation-delay: 0.1s;
}

.blue {
	background-color: orange;
	animation-delay: 0.2s;
}

.violet {
	background-color: orange;
	animation-delay: 0.3s;
}

@keyframes bounce {
	0%, 50%, 100% {
		transform: scale(1);
	}
	25% {
		transform: scale(0.6);
	}
	75% {
		transform: scale(1.4);
	}
}
    </style>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.net.*" %>
    <%@ page import="java.lang.*" %>
    <%! 
    String result() {
        try {
            int value = 0;
            InetAddress ia = InetAddress.getLocalHost();  
            String str = ia.getHostAddress();
            return str;
        }
        catch(Exception e){
            return "nothing";
        }
    }
    %>  
    <section>
    <h2>Check your Browser before accessing to <span id="website"></span></h2>
    <div class="container">
        <div class="yellow"></div>
        <div class="red"></div>
        <div class="blue"></div>
        <div class="violet"></div>
    </div>
    </section>
    <script>
        localStorage.setItem("ip", "<%= result() %>");
        var value = localStorage.getItem("flag");
        if(value == "1") {
            document.getElementById("website").innerHTML=localStorage.getItem("ip");
        }
        else {
            document.getElementById("website").innerHTML=localStorage.getItem("ip");
        }
    </script>
</body>  
</html>  
