<div id="bg">
		<div class="wrap">
<!-- logo -->
			<h1>E- Recruitment</h1>
			<!-- /logo -->
			
			<!-- menu -->
			<div id="mainmenu">
				<ul id="menu">
				   <li><a class="current" href="home.jsp">Home</a>
					<ul><li>
						
						</li>
					</ul>
					
									
					</li>
					<li><a class="current">Admin</a>
					<ul>
						<%if(session.getAttribute("position").equals("HR Manager")){%>
					    <li>
						<form name="submitForm1" method="post" action="addbgcadmin.jsp">
    					<input type="hidden" name="req" value="addbgcadmin">
    					<A HREF="javascript:document.submitForm1.submit()" class="Menu">Add BGC Admin</A>
						</form>
						</li>
						<%} %>
						<%if(session.getAttribute("position").equals("Unit Head")){%>
						<li>
						
						<form name="submitForm2" method="post" action="Control">
    					<input type="hidden" name="req" value="approvebgcadmin">
    					<A HREF="javascript:document.submitForm2.submit()" class="Menu">Approve BGC Admin</A>
						</form>
						</li>
						<%} %>
						<li>
						<form name="submitForm3" method="post" action="Control">
   						 <input type="hidden" name="req" value="viewbgcadmin">
    					<A HREF="javascript:document.submitForm3.submit()" class="Menu">View BGC Admin</A>
						</form>
						</li>
					</ul>				
					</li>
					<li><a class="current">BGC</a>
					<ul><li>
						<form name="submitForm4" method="post" action="Control">
    					<input type="hidden" name="req" value="viewbgc">
   						 <A HREF="javascript:document.submitForm4.submit()" class="Menu">View BGC Schedule</A>
						</form>
						</li>
						<li>
						<form name="submitForm5" method="post" action="selectbgcadmin.jsp">
    					<input type="hidden" name="req" value="selectbgcadmin">
    					<A HREF="javascript:document.submitForm5.submit()" class="Menu">Select BGC Admin</A>
						</form>
						</li>
						<li>
						<form name="submitForm6" method="post" action="Control">
   						 <input type="hidden" name="req" value="updatecandidate">
   						 <A HREF="javascript:document.submitForm6.submit()" class="Menu">Update Candidate</A>
						</form>
						</li>
					</ul>
					
									
					</li>
					<li><a class="current">Employee</a>
					<ul>
					    <%if(session.getAttribute("position").equals("HR Manager")){%>
					    <li>
						<form name="submitForm7" method="post" action="addemp.jsp">
    					<input type="hidden" name="req" value="updatecandidate">
    					<A HREF="javascript:document.submitForm7.submit()" class="Menu">Add Employee</A>
						</form>
						</li>
						
						<li>
						<form name="submitForm8" method="post" action="EditEmployee.jsp">
    					<input type="hidden" name="req" value="updatecandidate">
    					<A HREF="javascript:document.submitForm8.submit()" class="Menu">Edit Employee</A>
						</form>
						</li>
						
						<li>
						<form name="submitForm9" method="post" action="Control">
						<input type="hidden" name="req" value="ViewEmployee" ></input>
   						 <A HREF="javascript:document.submitForm9.submit()" class="Menu">View Employees</A>
						</form>
						</li>
						<%} %>
					</ul>
					
									
					</li>
					<li><a class="current"><%=(String)session.getAttribute("username")%></a>
					<ul><li>
						<form name="submitForm10" method="post" action="Control">
    					<input type="hidden" name="req" value="logout">
   						 <A HREF="javascript:document.submitForm10.submit()" class="Menu">Logout</A>
						</form>
						</li>
					</ul>
					
									
					</li>
				</ul>
			</div>
			<!-- /menu -->
			
			<!-- pitch -->
			<div id="pitch">
				<div id="slideshow">
					
					<!-- 1st frame -->
					<div class="active">
						<img src="images/pitch/pitch1.jpg" alt="" />
						<div class="overlay transparent">
							<h2>Professional Approach</h2>
						</div>
						<p class="arrow"><a href="#"></a></p>
					</div>
					<!-- /1st frame -->
					<!-- 2nd frame -->
					<div>
						<img src="images/pitch/pitch2.jpg" alt="" />
						<div class="overlay transparent">
							<h2>Precise Methods</h2>
						</div>
						<p class="arrow"><a href="#"></a></p>
					</div>
					<!-- /2nd frame -->
					
					<!-- 3rd frame -->
					<div>
						<img src="images/pitch/pitch3.jpg" alt="" />
						<div class="overlay transparent">
							<h2>Mesurable Results</h2>
						</div>
						<p class="arrow"><a href="#"></a></p>
					</div>
					<!-- 3rd frame -->
					
					
				</div>
			</div>
			<!-- /pitch -->