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
  <body onLoad="setNavigation('/WmEntireX/settings.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
	<!--
	If DSP was requested from the Save button
	then invoke the setProperties service.
	-->

	%ifvar action equals('Save')%
	  %invoke com.softwareag.entirex.wmadapter.Admin:setProperties%
	  %onerror%
			<table width="100%">
	    <HR><P><FONT COLOR="#FF0000">
	    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
	    </FONT></P><HR>
	    </table>
	  %endinvoke%
	%endifvar%
	%invoke com.softwareag.entirex.wmadapter.Admin:getProperties%
	<table width="100%">
	  <!-- %ifvar action equals('Edit')% -->
	  <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  EntireX Adapter &gt; Settings &gt; Edit</td>
	  </tr>
	  <tr>
	<td colspan="2">
	  <ul>
		<li><a href="settings.dsp?adapterTypeName=WmEntireX">
		      Return to Settings</a></li>
	  </ul>
	</td>
	  </tr>
	  <tr>
	<td>
	  <form action="settings.dsp" method="post">
	    <table class="tableForm">
	      <tr>
			<td class="heading" colspan="2">EntireX Tracing</td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Level of EntireX Tracing</td>
				<td class="oddrow-l"><select name="traceLevel">
					<OPTION value="0" 
						%ifvar traceLevel equals('0')%  selected %endif%>0
					(no tracing)</OPTION>
					<OPTION value="1" 
						%ifvar traceLevel equals('1')%  selected %endif%>1
					(trace calls)</OPTION>
					<OPTION value="2" 
						%ifvar traceLevel equals('2')%  selected %endif%>2
					(trace calls and buffers)</OPTION>
					<OPTION value="3" 
						%ifvar traceLevel equals('3')%  selected %endif%>3
					(full tracing)</OPTION>
				</select></td>
			</tr>
	      <tr>
				<td class="evenrow-l">Tracefile Location (Folder)</td>
				<td class="evenrow-l"><input name="tracefileLoc" 
				value="%value tracefileLoc%" size="80"></input></td>
	      </tr>
	      <tr>
	      </tr>
	      <tr>
		<td>&nbsp;</td>
	      </tr>
	      <tr>
			<td class="heading" colspan="2">Date and Time Patterns</td>
	      </tr>
	      <tr>
				<td class="evenrow-l">Date Pattern</td>
				<td class="evenrow-l"><input name="dateFormat" value="%value dateFormat%" size="80"></input></td>
	      </tr>
	      <tr>
				<td class="evenrow-l">Time Pattern</td>
				<td class="evenrow-l"><input name="timeFormat" value="%value timeFormat%" size="80"></input></td>
	      </tr>
	      <tr>
				<td class="evenrow-l">Locale for Date/Time Pattern</td>
				<td class="evenrow-l"><input name="locale" value="%value locale%" size="80"></input></td>
	      </tr>
	      <tr>
	      </tr>
	      <tr>
		<td colspan="2">&nbsp;</td>
	      </tr>
	      <tr>
		<td class="action" colspan="2">
		  <input type="hidden" name="adapterTypeName" value="WmEntireX"></input>
		  <input type="submit" name="action" value="Save"></input>
		  <input type="submit" name="action" value="Cancel"></input>
		</td>
	      </tr>
	    </table>
	  </form>
	</td>
      </tr>
      <!-- %else% -->
	<tr>
		<td class="menusection-Adapters" colspan="4">Adapters &gt;
		EntireX Adapter &gt; Settings</td>
	</tr>
	<tr>
		<td colspan="4">
		<ul>
			<li><a
				href="settings.dsp?adapterTypeName=WmEntireX&amp;action=Edit">
			Change Settings</a></li>
		</ul>
		</td>
	</tr>
	<tr>
		<td>
		<table class="tableView">
			<tr>
				<td class="heading" colspan="2">EntireX Tracing</td>
			</tr>
			<tr>
				<td class="oddrow-l">Level of EntireX Tracing</td>
				%switch traceLevel% 
				%case '0'%
				<td class="oddrowdata">0 (no tracing)</td>
				%case '1'%
				<td class="oddrowdata">1 (trace calls)</td>
				%case '2'%
				<td class="oddrowdata">2 (trace calls and buffers)</td>
				%case '3'%
				<td class="oddrowdata">3 (full tracing)</td>
				%endswitch%
			</tr>
			<tr>
				<td class="evenrow-l">Tracefile Location (Folder)</td>
				<td class="evenrowdata">%value tracefileLoc%</td>
			</tr>
			<tr>
			</tr>
		</table>
		</td>
	</tr>
	
	<td class="padding">&nbsp;</td>
	<tr>
		<td>
		<table class="tableView">
			<tr>
				<td class="heading" colspan="2">Date and Time Patterns</td>
			</tr>
			<tr>
				<td class="evenrow-l">Date Pattern</td>
				<td class="evenrowdata">%value dateFormat%</td>
			</tr>
			<tr>
				<td class="evenrow-l">Time Pattern</td>
				<td class="evenrowdata">%value timeFormat%</td>
			</tr>
			<tr>
				<td class="evenrow-l">Locale for Date/Time Pattern</td>
				<td class="evenrowdata">%value locale%</td>
			</tr>
			<tr>
			</tr>
		</table>
		</td>
	</tr>
      <!-- %endifvar% -->
    </table>
    %endinvoke%
  </body>
</html>