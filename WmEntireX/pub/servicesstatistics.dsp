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

  <body onLoad="setNavigation('/WmEntireX/servicestatistics.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">

	%ifvar action equals('Reset')%
		%invoke com.softwareag.entirex.wmadapter.Admin:resetServiceStatistics%
		%endinvoke%
	%endifvar%


	<table width="100%">
	  <tr>
		<td class="menusection-Adapters" colspan="2">Adapters &gt;EntireX Adapter &gt; Services Information</td>
	  </tr>
	  <tr>
		<td colspan="2">
	  		<ul><li><a href="servicesstatistics.dsp">Refresh</a></li></ul>
	  		<ul><li><a href="servicesstatistics.dsp?adapterTypeName=WmEntireX&amp;action=Reset">Reset Statistics</a></li></ul>
		</td>
	  </tr>
    </table>

  %invoke com.softwareag.entirex.wmadapter.Admin:getServiceStatistics%
	<table class="tableView">
	    <TR>
          <TD COLSPAN=20 CLASS="heading">Services</TD>
        </TR>
        <TR>
          <TD class="oddcol">Name</TD>
          <TD class="oddcol">Program</TD>
          <TD class="oddcol">Success</TD>
          <TD class="oddcol">Error</TD>
          <TD class="oddcol">Avg Proc Time (ms)</TD>
          <TD class="oddcol">Last Access Time</TD>
          <TD class="oddcol">Last Proc Time (ms)</TD>
          <TD class="oddcol">Last Status</TD>
       </TR>

      %loop services%
      <TR>
        <script>writeTD('rowdata-l');</script>
          %value name% 
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value programName%
        </TD>
        <script>writeTD('rowdata');</script>
          %value count%
        </TD>
        <script>writeTD('rowdata');</script>
          %value errorCount%
        </TD>
        <script>writeTD('rowdata');</script>
          %value averageTime%
        </TD>
        <script>writeTD('rowdata');</script>
          %value lastAccessTime%
        </TD>
        <script>writeTD('rowdata');</script>
          %value lastTime%
        </TD>
          %switch isError%
            %case 'true'%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/red-ball.gif" height=13 width=13 alt="Disable" border=0>
	            %value status%
              </TD>
	          %case 'false'%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/green-ball.gif" height=13 width=13 alt="Disable" border=0>
              %value status%
              </TD>
	          %case 'n/a'%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/yellow-ball.gif" height=13 width=13 alt="Disable" border=0>
              No status
              </TD>
          %endswitch%
      </TR>
      %endloop%
      <TR>
      </TR>
    </table>
  %endinvoke%
</body>
</html>