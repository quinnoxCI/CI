<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Application Monitoring</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/appmonadmin.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
		
		%ifvar actionedit equals('SaveCollectorId')%
			  %invoke pub.wmentirex.appmon:setAppMonCollectorId'%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
		%endifvar%
		
	<!-- %ifvar action equals('AppMonEnabled')%
		  %invoke pub.wmentirex.appmon:setAppMonEnabled%
		  %endinvoke%
	%endifvar% -->

	<!-- %ifvar action matches('Change*')% --> 
		  
	<table width="100%">
	  <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  EntireX Adapter &gt; Application Monitoring &gt; Edit</td>
	  </tr>
	  <tr>
	<td colspan="2">
	  <ul>
		<li><a href="appmonadmin.dsp?adapterTypeName=WmEntireX">
		      Return to Application Monitoring</a></li>
	  </ul>
	</td>
	 </tr>
	<tr>
		<td>
		<form action="appmonadmin.dsp" method="post">
		<table class="tableForm">
			<tr>
				<td class="heading" colspan="2">Change Setting</td>
			</tr>
			<tr>
				%ifvar action equals('ChangeCollectorId')%
					<script>writeTD('row');</script>
					Application Monitoring Data Collector Id
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="appMonCollectorId" value="%value appMonCollectorId%" size="100"></input>
				%endifvar%
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td class="action" colspan="2">
					<input type="hidden" name="adapterTypeName" value="WmEntireX"></input>
					<input type="submit" name="action" value="Save"></input>
					<input type="hidden" name="actionedit" value="SaveCollectorId"></input>
					<input type="submit" name="action" value="Cancel"></input>
				</td>
			</tr>
		</table>
		</form>
		</td>
	</tr>

	<!-- %else% -->


	%invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:getAll%
	
	<table width="100%">
	<tr>
		<td class="menusection-Adapters" colspan="3">Adapters &gt;
		EntireX Adapter &gt; Application Monitoring</td>
	</tr>
	
	<td colspan="2">
	  <ul>
		<li><a href="appmonadmin.dsp">Refresh</a></li>
	  </ul>
	</td>
	
	<td class="padding">&nbsp;</td>
	
	<table class="tableView">
		<tr>
			<td class="heading" colspan=3>Configuration</td>
		</tr>
		
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			Application Monitoring
			</td>
			<script>writeTD('rowdata-l');</script>
            %ifvar appMonEnabled equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
          %ifvar appMonEnabled equals('true')%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=AppMonEnabled&amp;appMonEnabled=false">Disable</a>
	        %else%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=AppMonEnabled&amp;appMonEnabled=true">Enable</a>
          %endif%
			</td>
		</tr>
		<tr>
			<script>writeTD('row');</script>
				Application Monitoring Data Collector Id
			</td>
			<script>writeTD('rowdata-l');</script>
				%value appMonCollectorId%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeCollectorId&amp;appMonCollectorId=%value appMonCollectorId%">Change</a>
			</td>
		</tr>
		
	</table>
	</td>
	</table>
  <TR><TD>&nbsp;</TD></TR>
	
	<td class="padding">&nbsp;</td>
	
	%endinvoke%
	
	
	<!-- %endifvar% -->
	
	</body>
</html>