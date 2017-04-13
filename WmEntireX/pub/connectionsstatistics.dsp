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

  <body onLoad="setNavigation('/WmEntireX/connectionsstatistics.dsp?adapterTypeName=WEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">

	<table width="100%">
	  <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  EntireX Adapter &gt; Connections Information</td>
	  </tr>
	  <tr>
	<td colspan="2">
	  <ul>
		<li><a href="connectionsstatistics.dsp">Refresh</a></li>
	  </ul>
	</td>
	<td class="padding">&nbsp;</td>

  %invoke com.softwareag.entirex.wmadapter.Admin:getConnectionStatistics%
    <TR>
		<TD>
      <TABLE class="tableView">
        <TR>
          <TD COLSPAN=20 CLASS="heading">Broker Information</TD>
        </TR>
        <TR>
          <TD class="oddcol-l">Broker ID</TD>
          <TD class="oddcol-l">Status</TD>
       </TR>

      %loop brokers%
      <TR>
        <script>writeTD('rowdata-l');</script>
          %value brokerID%
        </TD>
          %switch isError%
            %case 'true'%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/red-ball.gif" height=13 width=13 alt="Disable" border=0>
          %value brokerStatus%
        </TD>

	          %case 'false'%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/green-ball.gif" height=13 width=13 alt="Disable" border=0>
          %value brokerStatus%
        </TD>
          %endswitch%
      </TR>
      %endloop%
      </TABLE>
      </TD>
      </TR>
   <td class="padding">&nbsp;</td>
    
    <TR>
     <TD>
      <TABLE class="tableView">
        <TR>
          <TD COLSPAN=20 CLASS="heading">Connections for Services</TD>
        </TR>
        <TR>
          <TD class="oddcol-l">Name</TD>
          <TD class="oddcol-l">Type</TD>
          <TD class="oddcol-l">Host</TD>
          <TD class="oddcol-l">Server</TD>
          <TD class="oddcol-l">Encoding</TD>
          <TD class="oddcol-l">Count</TD>
          <TD class="oddcol-l">Status</TD>
       </TR>

      %loop services%
      <TR>
        <script>writeTD('rowdata-l');</script>
          %value name% 
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value type%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value host%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value server%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value encoding%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value count%
        </TD>
        %ifvar isError equals('true')%
            <script>writeTD('rowdata-l');</script>
                    <img src="/WmRoot/icons/red-ball.gif" height=13 width=13 alt="Disable" border=0>
            %value serverStatus%
            </TD>
        %else%
	          %ifvar isError equals('false')%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/green-ball.gif" height=13 width=13 alt="Disable" border=0>
	            %value serverStatus%
              </TD>
            %else%
	            <script>writeTD('rowdata-l');</script>
	                    <img src="/WmRoot/icons/yellow-ball.gif" height=13 width=13 alt="Disable" border=0>
	            Status not available
              </TD>
	          %end%
	      %end%
      </TR>
      %endloop%
      <TR>
      </TR>
      </TABLE>
      </TD>
      </TR>
   <td class="padding">&nbsp;</td>
    
    <TR>
     <TD>
      <TABLE class="tableView">
        <TR>
          <TD COLSPAN=20 CLASS="heading">Connections for Listeners</TD>
        </TR>
        <TR>
          <TD class="oddcol-l">Name</TD>
          <TD class="oddcol-l">Type</TD>
          <TD class="oddcol-l">Broker ID</TD>
          <TD class="oddcol-l">Server Address</TD>
          <TD class="oddcol-l">Listener Status</TD>
       </TR>

      %loop listeners%
      <TR>
        <script>writeTD('rowdata-l');</script>
          %value name% 
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value type%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value brokerID%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value serverAddress%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %ifvar listenerStatus equals('okay')%
          	<img src="/WmRoot/icons/green-ball.gif" height=13 width=13 alt="Disable" border=0>
          %else%
	          %ifvar listenerStatus equals('warning')%
	          	<img src="/WmRoot/icons/yellow-ball.gif" height=13 width=13 alt="Disable" border=0>
	          %else%
	          	<img src="/WmRoot/icons/red-ball.gif" height=13 width=13 alt="Disable" border=0>
	          %end%
          %end%
          %value listenerText%
        </TD>
        
      </TR>
      %endloop%
      <TR>
      </TR>
      </TABLE>
      </TD>
      </TR>
   <td class="padding">&nbsp;</td>
  %endinvoke%
  </table>
</body>
</html>