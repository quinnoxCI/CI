<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Settings</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/license.dsp?adapterTypeName=WEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
	<!--
	If DSP was requested from the Save button
	then invoke the setProperties service.

	%ifvar action equals('Save')%
	  %invoke com.softwareag.entirex.wmadapter.License:setProperties%
	  %endinvoke%
	%endifvar%
	-->
	%invoke com.softwareag.entirex.wmadapter.License:getProperties%
	<table width="100%">
	  <!-- %ifvar action equals('Edit')% -->
	  <tr>
		<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  	EntireX Adapter &gt; License Information &gt; Edit</td>
	  </tr>
	  <tr>
		<td colspan="2">
		  <ul>
			<li><a href="license.dsp?adapterTypeName=WmEntireX">
		      Return to License Information</a></li>
	  	  </ul>
		</td>
	  </tr>
	  <tr>
		<td>
		<form action="license.dsp" method="post">
		<table class="tableForm">
			<tr>
				<td class="heading" colspan="2">EntireX License Information</td>
			</tr>
			<tr>
				<script>writeTD('row');</script>
				License File Location (Folder and File)
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				<input name="licenseFilename" value="%value licenseFilename%"
					size="100"></input>
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td class="action" colspan="2"><input type="hidden"
					name="adapterTypeName" value="WmEntireX"></input> <input
					type="submit" name="action" value="Save"></input> <input
					type="submit" name="action" value="Cancel"></input></td>
			</tr>
		</table>
		</form>
		</td>
	</tr>
	<!-- %else% -->
	<tr>
		<td class="menusection-Adapters" colspan="3">Adapters &gt;
		EntireX Adapter &gt; License Information</td>
	</tr>
	<tr>
		<td colspan="4">
		<ul>
			<li><a
				href="license.dsp?adapterTypeName=WmEntireX&amp;action=Edit">
			Change Settings</a></li>
		</ul>
		</td>
	</tr>
	<td>
	<table class="tableView">
		<tr>
			<td class="heading" colspan=2>EntireX License Information</td>
		</tr>
		%ifvar licenseErrormessage -notempty%
			<tr>
				<script>writeTD('row');</script>
				Error Message:
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				%value licenseErrormessage%
				</td>
			</tr>
		%else%
			<tr>
				<script>writeTD('row');</script>
				Valid until
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				%value expires%
				</td>
			</tr>
		%endifvar%
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for connections to IMS Connect
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value imsLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for connections to CICS ECI
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value cicsLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for Direct RPC connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value directRpcLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for COBOL Converter connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value cobolConverterLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for EntireX Broker connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value brokerRpcLicense%
			</td>
		</tr>
	</table>
	</td>
	</table>
	%endinvoke%
	</body>
</html>