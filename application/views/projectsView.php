<div class = "content">
	<h1>Projects from work</h1>
	<div class = "dashboard">
			<h2>Support Dashboard</h2>
			<p>This is an internal facing website aimed at streamlining information for support.  It contains a hierarchy of the support operations at Aptean.
		
				It has the following functions:
				  Different Security levels based on user login
				  Administrative functions based on security level
				  Uses windows credentials to validate the user
				  Allows users to store bookmarks
				  Allows searches for information on the site
				  Database driven site is dynamically generated
				Programming languages used
				  PHP
				  Javascript
				  JQuery
				  JQuery UI
				  CSS
				  CSS3
				  HTML
				  HTML5
				  T-SQL
				Web server used: Apache
		  			</p>
			<div id="dashCarousel" class="barousel">
		    <div class="barousel_image">
		        <!-- image 1 -->
		        <img src="img/dashpics/DashboardHome.png" alt="" class="default" />
		        <!-- image 2 -->
		        <img src="img/dashpics/dashSearch.png" alt="" />
		        <!-- image 3 -->
		        <img src="img/dashpics/dashSkills.png" alt="" />
		        <!-- image 4 -->
		        <img src="img/dashpics/dashSkillsOpen.png" alt="" />
		    </div>
		    <div class="barousel_content">
		        <!-- content 1 -->
		        <div class="default">
		            <h3>Support Dashboard Home Page</h3>
		            <p>This is the gateway portal for the dashboard.  It gives access to all admin functions.</p>
		        </div>
		        <!-- content 2 -->
		        <div>
		            <h3>Support Dashboard Dynamic Search</h3>
		            <p>This is a dynamic search run via AJAX and it loads a dynamic table on the return response.</p>
		        </div>
		        <!-- content 3 -->
		        <div>
		            <h3>Support Dashboard Skills Inventory</h3>
		            <p>This is the skills inventory where support personnel can evaluate their skills.  Management can later
		            	search on these skills to look for gaps in their support staff.</p>
		        </div>
		        <!-- content 4 -->
		        <div>
		            <h3>Support Dashboard Skills Inventory Skill Category Open</h3>
		            <p>This is the skills inventory with a skill category open to display the individual skills.</p>
		        </div>
		    </div>
		    <div class="barousel_nav">
		    </div>
		</div>
	</div>
</div>

<script type = "text/javascript">
  		$(document).ready(function(){
  			$('#dashCarousel').barousel({navType:2,
  										 manualCarousel: 1,
  										 contentResize:0});
  		});
  	</script>