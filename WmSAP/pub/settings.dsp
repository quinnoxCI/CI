<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmSAP - Settings</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmSAP/settings.dsp?adapterTypeName=WmSAP', '/WmSAP/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm?context=Help&topic=IS_SS', 'foo');">
	<!--
	If DSP was requested from the Save button
	then invoke the setProperties service.

	%ifvar action equals('Save')%
	  %invoke wm.sap.Admin:setProperties%
	  %endinvoke%
	%endifvar%
	-->
	%invoke wm.sap.Admin:getProperties%
	<table width="100%">
	  <!-- %ifvar action equals('Edit')% -->
	  <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  SAP Adapter &gt; Settings &gt; Edit</td>
	  </tr>
	  <tr>
	<td colspan="2">
	  <ul>
		<li><a href="settings.dsp?adapterTypeName=WmSAP">Return to Settings</a></li>
	  </ul>
	</td>
	  </tr>
	  <tr>
	<td class="padding">&nbsp;</td>
	<td>
	  <form action="settings.dsp" method="post">
	    <table class="tableForm">
	      <tr>
		<td class="heading" colspan="2">SAP Repository Connection Pools</td>
	      </tr>
	      <script LANGUAGE="JavaScript">
		        var membership = new Array (%loop facList% "%value Value%" %loopsep ', '% %endloop%);
			function enableAll()
			{
			  var optlist = document.forms[0].fac.options;
			  for (var i=0; i < membership.length; i++)
			  {
				optlist[i].selected = true;
			  }
			}
			function disableAll()
			{
			  var optlist = document.forms[0].fac.options;
			  for (var i=0; i < membership.length; i++)
			  {
				optlist[i].selected = false;
			  }
			}
	      </script>
	      <tr>
		<td class="oddrow-l">Timeout (minutes)</td>
		<td class="oddrow-l"><input name="timeout" value="%value timeout%"></input></td>
	      </tr>
	      <tr>
		<td class="evenrow-l">Timeout check period (seconds)</td>
		<td class="evenrow-l"><input name="timeoutCheckPeriod" value="%value timeoutCheckPeriod%"></input></td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Sessionpool size</td>
		<td class="oddrow-l"><input name="poolSize" value="%value poolSize%"></input></td>
	      </tr>
	      <tr>
		<td class="evenrow-l">Poolqueue waiting time (seconds)</td>
		<td class="evenrow-l"><input name="waitForPool" value="%value waitForPool%"></input></td>
	      </tr>

	      <tr>
		<td colspan="2">&nbsp;</td>
	      </tr>
	      <tr>
		<td class="heading" colspan="2">SAP Listeners</td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Check time (minutes)</td>
		<td class="oddrow-l"><input name="checkTime" value="%value checkTime%"></input></td>
	      </tr>
	      <tr>
		<td class="evenrow-l">Response time (seconds)</td>
		<td class="evenrow-l"><input name="responseTime" value="%value responseTime%"></input></td>
	      </tr>
<!--
	      <tr>
		<td colspan="2">&nbsp;</td>
	      </tr>
	      <tr>
		<td class="heading" colspan="2">SAP Adapter SLD</td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Integration Server Alias</td>
		<td class="oddrow-l">
		  <select name="sldAlias">
		    %loop sldAliases%
		    <option value="%value%"%ifvar sldAliases vequals(../sldAlias)% selected="selected"%endif%>%value%</option>
		    %endloop%
		  </select>
		</td>
	      </tr>
-->
	      <tr>
		<td colspan="2">&nbsp;</td>
	      </tr>
	      <tr>
		<td class="heading" colspan="2">Misc</td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Default XRFC version</td>
		<td class="oddrow-l">
		  %ifvar xrfcVersion equals('1.0')%
		  <input type="radio" name="xrfcVersion" value="1.0" checked="checked"></input>1.0&nbsp;
		  %else%
		  <input type="radio" name="xrfcVersion" value="1.0"></input>1.0&nbsp;
		  %endif%
		  %ifvar xrfcVersion equals('1.0')%
		  <input type="radio" name="xrfcVersion" value="0.9"></input>0.9
		  %else%
		  <input type="radio" name="xrfcVersion" value="0.9" checked="checked"></input>0.9
		  %endif%
		</td>
	      </tr>
	      <tr>
		<td class="evenrow-l">SNC library</td>
		<td class="evenrow-l"><input name="sncLibPath" value="%value sncLibPath%" size="50"></input></td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Log Throughput data</td>
		<td class="oddrow-l">
		  %ifvar throughput equals('true')%
		  <input type="radio" name="throughput" value="true" checked="checked"></input>On&nbsp;
		  %else%
		  <input type="radio" name="throughput" value="true"></input>On&nbsp;
		  %endif%
		  %ifvar throughput equals('false')%
		  <input type="radio" name="throughput" value="false" checked="checked"></input>Off
		  %else%
		  <input type="radio" name="throughput" value="false"></input>Off
		  %endif%
		</td>
	      </tr>
	      <tr>
		<td class="evenrow-l">Use Monitor</td>
		<td class="evenrow-l">
		  %ifvar monitor equals('true')%
		  <input type="radio" name="monitor" value="true" checked="checked"></input>On&nbsp;
		  %else%
		  <input type="radio" name="monitor" value="true"></input>On&nbsp;
		  %endif%
		  %ifvar monitor equals('false')%
		  <input type="radio" name="monitor" value="false" checked="checked"></input>Off
		  %else%
		  <input type="radio" name="monitor" value="false"></input>Off
		  %endif%
		</td>
	      </tr>
	      <tr>
		<td colspan="2">&nbsp;</td>
	      </tr>
	      <tr>
		<td class="heading" colspan="2">Logging</td>
	      </tr>
	      <tr>
		<td class="oddrow">Level of Logging</td>
		<td class="oddrow-l">
		  <select name="logLevel">
		    <OPTION value="0"  %ifvar logLevel equals('0')%  selected %endif%>0  (C-Critical)</OPTION>
		    <OPTION value="1"  %ifvar logLevel equals('1')%  selected %endif%>1  (E-Error)</OPTION>
		    <OPTION value="2"  %ifvar logLevel equals('2')%  selected %endif%>2  (W-Warning)</OPTION>
		    <OPTION value="3"  %ifvar logLevel equals('3')%  selected %endif%>3  (I-Information)</OPTION>
		    <OPTION value="4"  %ifvar logLevel equals('4')%  selected %endif%>4  (D-Debug) [Default]</OPTION>
		    <OPTION value="5"  %ifvar logLevel equals('5')%  selected %endif%>5  (V1-Verbose1)</OPTION>
		    <OPTION value="6"  %ifvar logLevel equals('6')%  selected %endif%>6  (V2-Verbose2)</OPTION>
		    <OPTION value="7"  %ifvar logLevel equals('7')%  selected %endif%>7  (V3-Verbose3)</OPTION>
		    <OPTION value="8"  %ifvar logLevel equals('8')%  selected %endif%>8  (V4-Verbose4)</OPTION>
		    <OPTION value="9"  %ifvar logLevel equals('9')%  selected %endif%>9  (V5-Verbose5)</OPTION>
		    <OPTION value="10" %ifvar logLevel equals('10')% selected %endif%>10 (V6-Verbose6)</OPTION>
		  </select>
		</td>
	      </tr>
	      <tr>
		<td class="evenrow">Facilities</td>
		<td class="evenrow-l">
		  <a href="#" onclick="enableAll(); return false;">Select All</a> <a href="#" onclick="disableAll(); return false;">Unselect All</a>
		  <br>
		    <select name="fac" multiple size=9 width=180>
		      %loop facList%
		      <option value="%value Value%" %ifvar Selected% selected %endif%>%value Fac% %value FacDesc%</option>
		      %endloop%
		    </select>
		    <br>(Highlighted entries will be logged)
		</td>
	      </tr>
	      <tr>
		<td colspan="2">&nbsp;</td>
	      </tr>
	      <tr>
		<td class="action" colspan="2">
		  <input type="hidden" name="adapterTypeName" value="WmSAP"></input>
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
	<td class="menusection-Adapters" colspan="4">Adapters &gt; SAP
	  Adapter &gt; Settings</td>
      </tr>
      <tr>
	<td colspan="4">
	  <ul>
	    <li><a href="settings.dsp?adapterTypeName=WmSAP&amp;action=Edit">Change Settings</a></li>
	  </ul>
	</td>
      </tr>
      <tr>
	<td class="padding">&nbsp;</td>
	<td>
	  <table class="tableView">
	    <tr>
	      <td class="heading" colspan="4">SAP Repository Connection Pools</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Timeout (minutes)</td>
	      <td class="oddrowdata" colspan="2">%value timeout%</td>
	    </tr>
	    <tr>
	      <td class="evenrow-l" colspan="2">Timeout check period (seconds)</td>
	      <td class="evenrowdata" colspan="2">%value timeoutCheckPeriod%</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Sessionpool size</td>
	      <td class="oddrowdata" colspan="2">%value poolSize%</td>
	    </tr>
	    <tr>
	      <td class="evenrow-l" colspan="2">Poolqueue waiting time (seconds)</td>
	      <td class="evenrowdata" colspan="2">%value waitForPool%</td>
	    </tr>

	    <tr><td colspan="4" class="space">&nbsp;</td></tr>
	    <tr>
	      <td class="heading" colspan="4">SAP Listeners</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Check time (minutes)</td>
	      <td class="oddrowdata" colspan="2">%value checkTime%</td>
	    </tr>
	    <tr>
	      <td class="evenrow-l" colspan="2">Response time (seconds)</td>
	      <td class="evenrowdata" colspan="2">%value responseTime%</td>
	    </tr>
<!--
	    <tr><td colspan="4" class="space">&nbsp;</td></tr>
	    <tr>
	      <td class="heading" colspan="4">SAP Adapter SLD</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Integration Server Alias</td>
	      <td class="oddrowdata" colspan="2">%value sldAlias%</td>
	    </tr>
-->
	    <tr><td colspan="4" class="space">&nbsp;</td></tr>
	    <tr>
	      <td class="heading" colspan="4">Misc</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Default XRFC version</td>
	      <td class="oddrowdata" colspan="2">%value xrfcVersion%</td>
	    </tr>
	    <tr>
	      <td class="evenrow-l" colspan="2">SNC library</td>
	      <td class="evenrowdata" colspan="2">%value sncLibPath%</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Log Throughput data</td>
	      <td class="oddrowdata" colspan="2">%ifvar throughput equals('true')%On%else%Off%endif%</td>
	    </tr>
	    <tr>
	      <td class="evenrow-l" colspan="2">Use Monitor</td>
	      <td class="evenrowdata" colspan="2">%ifvar monitor equals('true')%On%else%Off%endif%</td>
	    </tr>
	    <tr><td colspan="4" class="space">&nbsp;</td></tr>
	    <tr>
	      <td class="heading" colspan="4">Logging</td>
	    </tr>
	    <tr>
	      <td class="oddrow-l" colspan="2">Level of Logging</td>
	      <td class="oddrowdata" colspan="2">%value logLevel%</td>
	    </tr>
	    <tr>
	      <td class="evenrow" colspan="2">Facilities</td>
	      <td class="evenrow-l" colspan="2">
		<br>
		  <select name="facList" multiple size=9 width=180>
		    %loop facList%
		    <option value="%value Value%" %ifvar Selected% selected %endif%>%value Fac% %value FacDesc%</option>
		    %endloop%
		  </select>
		  <br>(Highlighted entries will be logged)
	      </td>
	    </tr>

	    <tr><td colspan="4" class="space">&nbsp;</td></tr>
	    <tr>
	      <td class="heading" colspan="4">SAP Adapter Group</td>
	    </tr>
	    %ifvar clusterState equals('true')%
	     <tr>
		 <td colspan="4" class="subHeading">Configuration</td>
	     </tr>
	    %endif%
	    <tr>
	      <td class="oddrow-l" colspan="2">Connected</td>
	      <td class="oddrowdata" colspan="2">%ifvar clusterState equals('true')%Yes%else%No%endif%</td>
	    </tr>
	    %ifvar clusterStore -notempty%
	     <tr>
	      <td class="evenrow-l" colspan="2">Centralized Store</td>
	      <td class="evenrowdata" colspan="2">%value clusterStore%</td>
	     </tr>
	    %endifvar%

	    %ifvar clusterList -notempty%
<!--
	    <tr><td colspan="4" class="space">&nbsp;</td></tr>
	    <tr>
	      <td class="heading" colspan="4">Adapters in this Cluster</td>
	    </tr>
-->
	    <tr>
		<td colspan="4" class="subHeading">Adapters in this Group</td>
	    </tr>

	    <tr>
	      <td class="oddcol" nowrap="nowrap">Host</td>
	      <td class="oddcol" nowrap="nowrap">Port</td>
	      <td class="oddcol" nowrap="nowrap">Load</td>
	      <td class="oddcol" nowrap="nowrap">Status</td>
	    </tr>
	    <!-- %loop clusterList% -->
	      <tr>
		<td class="oddrowdata">
		  %value host%
		</td>
		<td class="oddrowdata">
		  %value port%
		</td>
		<td class="oddrowdata">
		  %value load%
		</td>
		<td class="oddrowdata">
		  %value state%
		</td>
	      </tr>
	    <!-- %endloop% -->

	    %endifvar%

	  </table>
	</td>
      </tr>
      <!-- %endif% -->
    </table>
    %onerror%
    %include error.html%
    %endinvoke%
  </body>
</html>