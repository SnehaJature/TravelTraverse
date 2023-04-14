<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Easy Travelling</title>
<jsp:include page="link.jsp"></jsp:include>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>


<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
			
			<div class="container" style="margin-left:-100px;">
			<h1 style="text-align: center;">Update Place Details</h1><br><br>
				<div class="row">
					<div class="col-md-offset-4 col-md-6">
					  <form action="updateplaceDB.jsp" method="post"  enctype="multipart/form-data" >
					    
					    <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
					      String sql1 = "select A.*, C.* from AddPlace as A inner join Category as C on A.CategoryName = C.CategoryId where placeid=?";
					      PreparedStatement ps1 = con.prepareStatement(sql1);
					      ps1.setString(1, request.getParameter("placeId"));
					      ResultSet rs1 = ps1.executeQuery();
					      
					      while(rs1.next()){
					        %>
							<input type="hidden" value="<%=rs1.getString("placeid")%>" id="placeid" name="placeid">
						
<div class="col-md-12">
<label>States Name</label>
<div class="form-group">
	<select id="state" name="state" class="form-control" >
 	<option value="<%=rs1.getString("state")%>"><%=rs1.getString("state")%></option>
 	
</select>
</div>
</div>
						
							<div class="col-md-8">
						<label>City Name</label>
						<div class="form-group">

							<select id="city" name="city" style="width: 510px; height: 35px;" class="form-control">
								<option value="<%=rs1.getString("city")%>"> <%=rs1.getString("city")%> </option>
								 
							</select>
						</div>
					</div>


                     <div class="col-md-12">
						<div class="form-group">
						<label>Category Name</label>
						<select class="form-control" id="categoryname" name="categoryname">
						<option value="<%=rs1.getString(12)%>"><%=rs1.getString(13)%></option>
						 <%
					      Class.forName("com.mysql.jdbc.Driver");
					      Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelling", "root", "root");
					      String sql = "select * from Category";
					      PreparedStatement ps = con1.prepareStatement(sql);
					      ResultSet rs = ps.executeQuery();
					      
					      while(rs.next()){
					        %>
							      <option value="<%=rs.getString("categoryId") %>"><%=rs.getString("categoryname") %></option>
							      <%} %>
						</select>
						</div>
					</div>
                    


					<div class="col-md-12">
						<div class="form-group">
							<label for="tabletName">Place Name</label> 
							<input type="text"
								name="placename" id="placename" class="form-control tablet" value="<%=rs1.getString("placename")%>" placeholder="Enter Place Name" required> <span
								id="placenameText"></span>
						</div>
					</div>


					<div class="col-md-12">

						<div class="form-group">
							<label for="file">Image</label> 
							<img src="<%=rs1.getString("image")%>" height="100" width="100"><br><br>
	                        <input type="file" name="image" id="image" class="form-control" placeholder="Choose File" >

 						</div>
					</div>


					<div class="col-md-12">
						<div class="form-group">
							<label for="District">District</label> 
							<input type="text" name="District" id="District" class="form-control" value="<%=rs1.getString("District")%>"  placeholder="Enter District" required>
						</div>
					</div>

					<div class="col-md-12">
						<div class="form-group">
							<label for="pin code">Pin Code</label> <input type="number" name="pin" id="pin" class="form-control" value="<%=rs1.getString("pin")%>" placeholder="Enter Pin Code" required >
						</div>
					</div>


					<div class="col-md-12">
						<div class="form-group">
							<label for="address">Address</label>
							<textarea rows="3" class="form-control" name="address"id="address"  placeholder="Enter Address" required><%=rs1.getString("address")%></textarea>
						</div>
					</div>


					<div class="col-md-12">
						<div class="form-group">
							<label for="location">Location</label>
							<textarea class="form-control" name="location" id="location"  placeholder="Enter Location" rows="3" required><%=rs1.getString("location")%></textarea>
						</div>
					</div>

					<div class="col-md-12">
						<div class="form-group">
							<label for="Description">Description</label>
							<textarea class="form-control" name="discription"
								id="discription"  placeholder="Enter Description" rows="3"  required><%=rs1.getString("discription")%></textarea>

						<input type="submit" class="btn btn-info" value="Update Data" style="margin-top:25px;">


						</div>
					</div>

							
						
					  </form>
					</div>
				</div>
			</div>
			
			
		</div>
			</div>
		
		
		<script type="text/javascript">
	var stats={
			
	
			'Andhra Pradesh':['Adoni','Amaravati','Anantapur','Chandragiri','Chittoor','Dowlaiswaram','Eluru','Guntur','Kadapa','Kakinada','Kurnool',
				'Machilipatnam','Nagarjunakoṇḍa','Rajahmundry','Srikakulam','Tirupati','Vijayawada','Visakhapatnam','Vizianagaram','Yemmiganur'],
				
	        'Arunachal Pradesh':['Itanagar'],
	        
	        'Assam':['Dhuburi','Dibrugarh','Dispur','Guwahati','Jorhat','Nagaon','Sivasagar','Silchar','Tezpur','Tinsukia'],
	        
 	        'Bihar': ['Ara', 'Barauni', 'Begusarai', 'Bettiah', 'Bhagalpur', 'Bihar Sharif', 'Bodh Gaya', 'Buxar', 'Chapra' ,'Darbhanga', 'Dehri' ,
	        	'Dinapur Nizamat', 'Gaya', 'Hajipur', 'Jamalpur', 'Katihar', 'Madhubani' ,'Motihari','Munger', 'Muzaffarpur' ,
	        	'Patna', 'Purnia' ,'Pusa' ,'Saharsa', 'Samastipur', 'Sasaram', 'Sitamarhi', 'Siwan'],
	        	
	               'Chandigarh': ['Chandigarh'],
	         
	        'Chhattisgarh': ['Ambikapur', 'Bhilai', 'Bilaspur',  'Dhamtari', 'Durg', 'Jagdalpur', 'Raipur', 'Rajnandgaon'],
	         'Dadra and Nagar Haveli and Daman and Diu':['Daman', 'Diu','Silvassa'],
	         
	         'Delhi':['Delhi', 'New Delhi'],
	         
	         'Goa':['Madgaon','Panaji'],
	        
	         'Gujarat':['Ahmadabad','Amreli','Bharuch','Bhavnagar','Bhuj','Dwarka','Gandhinagar','Godhra','Jamnagar','Junagadh',
	        	 'Kandla', 'Khambhat' ,'Kheda', 'Mahesana' ,'Morbi','Nadiad', 'Navsari', 'Okha', 'Palanpur', 'Patan', 'Porbandar'
	        	 ,'Rajkot' ,'Surat' ,'Surendranagar' ,'Valsad' ,'Veraval'],
	        
	        'Haryana':['Ambala','Bhiwani','Chandigarh','Faridabad','Firozpur Jhirka','Gurugram','Hansi','Hisar','Jind','Kaithal',
	        	 'Karnal','Kurukshetra','Panipat','Pehowa','Rewari','Rohtak','Sirsa','Sonipat'],
	        
	       'Himachal Pradesh':['Bilaspur','Chamba','Dalhousie','Dharmshala','Hamirpur','Kangra','Kullu','Mandi','Nahan','Shimla','Una'],
	        
	       'Jammu and Kashmir':['Anantnag', 'Baramula', 'Doda', 'Gulmarg', 'Jammu', 'Kathua', 'Punch', 'Rajouri', 'Srinagar', 'Udhampur'],
	      
	   	     'Jharkhand':['Bokaro','Chaibasa','Deoghar', 'Dhanbad','Dumka','Giridih','Hazaribag',
	        'Jamshedpur','Jharia','Rajmahal','Ranchi','Saraikela'],
	        
	       'karnataka':['Badami','Ballari','Bengaluru','Belagavi','Bhadravati','Bidar','Chikkamagaluru',
	    	   'Chitradurga','Davangere','Halebid','Hassan','Hubballi-Dharwad','Kalaburagi','Kolar',
	    	   'Madikeri','Mandya','Mangaluru','Mysuru','Raichur','Shivamogga','Shravanabelagola',
	    	   'Shrirangapattana','Tumakuru','Vijayapura'],
	    	   
	       'Kerala':['Alappuzha','Vatakara','Idukki','Kannur','Kochi','Kollam','Kottayam','Kozhikode',
	    	   'Mattancheri','Palakkad','Thalassery','Thiruvananthapuram','Thrissur'],
	    	   
	    	'Ladakh':['Kargil', 'Leh'],
	    	
	    	'Madhya Pradesh':['Balaghat','Barwani','Betul','Bharhut','Bhind','Bhojpur','Bhopal',
	    	'Burhanpur','Chhatarpur','Chhindwara','Damoh','Datia','Dewas','Dhar',
	    	'Dr. Ambedkar Nagar (Mhow)','Guna','Gwalior','Hoshangabad','Indore','Itarsi',
	    	'Jabalpur','Jhabua','Khajuraho','Khandwa','Khargone','Maheshwar','Mandla','Mandsaur'
	    	,'Morena','Murwara','Narsimhapur','Narsinghgarh','Narwar','Neemuch','Nowgong','Orchha',
	    	'Panna','Raisen','Rajgarh','Ratlam','Rewa','Sagar','Sarangpur','Satna','Sehore','Seoni'
	    	,'Shahdol','Shajapur','Sheopur','Shivpuri','Ujjain','Vidisha'],

	       'maharastra':['Ahmadnagar','Akola','Amravati','Aurangabad','Bhandara','Bhusawal',
	    	   'Bid','Buldhana','Chandrapur','Daulatabad','Dhule','Jalgaon','Kalyan','Karli',
	    	   'Kolhapur','Mahabaleshwar','Malegaon','Matheran','Mumbai','Nagpur','Nanded',
	    	   'Nashik','Osmanabad','Pandharpur','Parbhani','Pune','Ratnagiri','Sangli','Satara',
	    	   'Sevagram','Solapur','Thane','Ulhasnagar','Vasai-Virar','Wardha','Yavatmal'],
	    	   
	    'Manipur':['Imphal'],
	    
	    'Meghalaya':['Cherrapunji','Shillong'],
			
	    'Mizoram':['Aizawl','Lunglei'],
	       
	    'Nagaland':['Kohima','Mon','Phek','Wokha','Zunheboto'],
	    
	    'Odisha':['Balangir','Baleshwar','Baripada','Bhubaneshwar','Brahmapur','Cuttack','Dhenkanal',
	    'Kendujhar','Konark','Koraput','Paradip','Phulabani','Puri','Sambalpur','Udayagiri'],
	    
	    'Puducherry': ['Karaikal','Mahe','Puducherry','Yanam'],
	    
	    'Punjab':['Amritsar','Batala','Chandigarh','Faridkot','Firozpur','Gurdaspur','Hoshiarpur',
	    'Jalandhar','Kapurthala','Ludhiana','Nabha','Patiala','Rupnagar','Sangrur'],
	    
	    'Rajasthan':['Abu','Ajmer','Alwar','Amer','Barmer','Beawar','Bharatpur','Bhilwara',
	    'Bikaner','Bundi','Chittaurgarh','Churu','Dhaulpur','Dungarpur','Ganganagar',
	    'Hanumangarh','Jaipur','Jaisalmer','Jalor','Jhalawar','Jhunjhunu','Jodhpur','Kishangarh',
	    'Kota','Merta','Nagaur','Nathdwara','Pali','Phalodi','Pushkar','Sawai Madhopur'
	   ,'Shahpura','Sikar','Sirohi','Tonk','Udaipur'],
	    
	   'Sikkim':['Gangtok','Gyalshing','Lachung','Mangan'],
	   
	       'Tamil Nadu':['Arcot','Chengalpattu','Chennai','Chidambaram','Coimbatore','Cuddalore','Dharmapuri',
	   'Dindigul','Erode','Kanchipuram','Kanniyakumari','Kodaikanal','Kumbakonam','Madurai',
	   'Mamallapuram','Nagappattinam','Nagercoil','Palayamkottai','Pudukkottai','Rajapalayam',
	   'Ramanathapuram','Salem','Thanjavur','Tiruchchirappalli','Tirunelveli','Tiruppur',
	   'Thoothukudi','Udhagamandalam','Vellore'],
	   
	 'Telangana':['Hyderabad','Karimnagar','Khammam','Mahbubnagar','Nizamabad','Sangareddi','Warangal'],

	   'Tripura':['Agartala'],
	   
	  'Uttar Pradesh':['Agra','Aligarh','Amroha','Ayodhya','Azamgarh','Bahraich','Ballia','Banda',
	   'Bara Banki','Bareilly','Basti','Bijnor','Bithur','Budaun','Bulandshahr','Deoria','Etah',
	   'Etawah','Faizabad','Farrukhabad-cum-Fatehgarh','Fatehpur','Fatehpur Sikri','Ghaziabad',
	   'Ghazipur','Gonda','Gorakhpur','Hamirpur','Hardoi','Hathras','Jalaun','Jaunpur','Jhansi',
	   'Kannauj','Kanpur','Lakhimpur','Lalitpur','Lucknow','Mainpuri','Mathura','Meerut',
	   'Mirzapur-Vindhyachal','Moradabad','Muzaffarnagar','Partapgarh','Pilibhit','Prayagraj','Rae Bareli',
	   'Rampur','Saharanpur','Sambhal','Shahjahanpur','Sitapur','Sultanpur','Tehri','Varanasi'],

	   'Uttarakhand':['Almora','Dehra Dun','Haridwar','Mussoorie','Nainital','Pithoragarh'],

	   'West Bengal':['Alipore','Alipur Duar','Asansol','Baharampur','Bally','Balurghat','Bankura',
	   'Baranagar','Barasat','Barrackpore','Basirhat','Bhatpara','Bishnupur','Budge Budge',
	   'Burdwan','Chandernagore','Darjeeling','Diamond Harbour','Dum Dum','Durgapur','Halisahar','Haora',
	   'Hugli','Ingraj Bazar','Jalpaiguri','Kalimpong','Kamarhati','Kanchrapara','Kharagpur',
	   'Cooch Behar','Kolkata','Krishnanagar','Malda','Midnapore','Murshidabad','Nabadwip','Palashi','Panihati',
	   'Purulia','Raiganj','Santipur','Shantiniketan','Shrirampur','Siliguri','Siuri','Tamluk','Titagarh'],
		 
	};
	
		var defaultState='';
		var options='';
		if(!defaultState){
			options+='<option value="<%=rs1.getString("state")%>"><%=rs1.getString("state")%></option>';
		}else{
			changeCity(defaultState);
		}
		for(var i in stats){
			
			options+='<option>'+i+'</option>';
		}
		state.innerHTML=options;
		function changeCity(s){
			var options='';
			stats[s].forEach(function(v,i){
				options+='<option>'+v+'</option>';
			});
			city.innerHTML=options;
		}
		state.addEventListener('change',function(e){
			if(this.value){
				changeCity(this.value);

			}else{
				city.innerHTML='';
			}
		},false);
		</script>
			
								<%} %>
		

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>