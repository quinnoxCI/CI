<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Direct RPC Administration</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/directrpcadmin.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
	
	%ifvar action equals('Save')%
		%ifvar actionedit equals('SaveLoggingLevel')%
			  %invoke pub.wmentirex.directrpc.admin:setLoggingLevel%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
		%endifvar%
		
		%ifvar actionedit equals('SaveTCPPortNumber')%
			  %invoke pub.wmentirex.directrpc.admin:setTCPPortNumber%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
		%endifvar%
		
		%ifvar actionedit equals('SaveSSLPortNumber')%
			  %invoke pub.wmentirex.directrpc.admin:setSSLPortNumber%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
		%endifvar%
		
		%ifvar actionedit equals('SaveKeyStoreAlias')%
			  %invoke pub.wmentirex.directrpc.admin:setKeyStoreAlias%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
		%endifvar%
		
		%ifvar actionedit matches('SaveCharset*')%
			%switch actionedit%
			%case 'SaveCharsetWindowsUnix'%
			  %invoke pub.wmentirex.directrpc.admin:setWindowsUnixDefaultCharset%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
			%case 'SaveCharsetIbmMf'%
			  %invoke pub.wmentirex.directrpc.admin:setIbmMainframeDefaultCharset%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
			%case 'SaveCharsetSiemensMf'%
			  %invoke pub.wmentirex.directrpc.admin:setSiemensMainframeDefaultCharset%
			  %onerror%
					<table width="100%">
			    <HR><P><FONT COLOR="#FF0000">
			    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			    </FONT></P><HR>
			    </table>
			  %endinvoke%
			%end%
		%endifvar%
	%endifvar%
	
	%ifvar action equals('Start')%
		  %invoke pub.wmentirex.directrpc.admin:start%
		  %onerror%
				<table width="100%">
		    <HR><P><FONT COLOR="#FF0000">
		    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
		    </FONT></P><HR>
		    </table>
		  %endinvoke%
	%endifvar%

	<!-- %ifvar action equals('Stop')%
		  %invoke pub.wmentirex.directrpc.admin:stop%
		  %endinvoke%
	%endifvar% -->    
	
	%ifvar action equals('Shutdown')%
		  %invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:shutdownServer%
		  %onerror%
				<table width="100%">
		    <HR><P><FONT COLOR="#FF0000">
		    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
		    </FONT></P><HR>
		    </table>
		  %endinvoke%
	%endifvar%     
	
	%ifvar action equals('ShutdownService')%
		  %invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:shutdownService%
		  %onerror%
				<table width="100%">
		    <HR><P><FONT COLOR="#FF0000">
		    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
		    </FONT></P><HR>
		    </table>
		  %endinvoke%
	%endifvar%  
	
	<!-- %ifvar action equals('AutoStart')%
		  %invoke pub.wmentirex.directrpc.admin:setAutoStart%
		  %endinvoke%
	%endifvar% -->
	
	<!-- %ifvar action equals('JMXEnabled')%
		  %invoke pub.wmentirex.directrpc.admin:setJMXEnabled%
		  %endinvoke%
	%endifvar% -->

	<!-- %ifvar action matches('Change*')% --> 
		  
	<table width="100%">
	  <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  EntireX Adapter &gt; Direct RPC Administration &gt; Edit</td>
	  </tr>
	  <tr>
	<td colspan="2">
	  <ul>
		<li><a href="directrpcadmin.dsp?adapterTypeName=WmEntireX">
		      Return to Direct RPC Administration</a></li>
	  </ul>
	</td>
	 </tr>
	<tr>
		<td>
		<form action="directrpcadmin.dsp" method="post">
		<table class="tableForm">
			<tr>
				<td class="heading" colspan="2">Change Setting</td>
			</tr>
			<tr>
				%ifvar action equals('ChangeLoggingLevel')%
				  	<script>writeTD('row');</script>
						Logging Level
					</td>
					<td class="oddrow-l">
						<select name="loggingLevel">
							<OPTION value="Fatal" 
								%ifvar loggingLevel equals('Fatal')% selected %endif%>Fatal
							</OPTION>
							<OPTION value="Error" 
								%ifvar loggingLevel equals('Error')% selected %endif%>Error
							</OPTION>
							<OPTION value="Warning" 
								%ifvar loggingLevel equals('Warning')% selected %endif%>Warning
							</OPTION>
							<OPTION value="Info" 
								%ifvar loggingLevel equals('Info')% selected %endif%>Info
							</OPTION>
							<OPTION value="Debug" 
								%ifvar loggingLevel equals('Debug')% selected %endif%>Debug
							</OPTION>
							<OPTION value="Trace" 
								%ifvar loggingLevel equals('Trace')% selected %endif%>Trace
							</OPTION>
						</select>
					</td>
				%endifvar%
				%ifvar action equals('ChangeTCPPort')%
					<script>writeTD('row');</script>
					TCP Port Number
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="tcpPortNumber1" value="%value tcpPortNumber1%" size="100"></input>
				%endifvar%
				%ifvar action equals('ChangeSSLPort')%
					<script>writeTD('row');</script>
					SSL Port Number
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="sslPortNumber1" value="%value sslPortNumber1%" size="100"></input>
				%endifvar%
				%ifvar action equals('ChangeKeyStoreAlias')%
					<script>writeTD('row');</script>
					Keystore Alias (for SSL)
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="keyStoreAlias" value="%value keyStoreAlias%" size="100"></input>
				%endifvar%
				%ifvar action equals('ChangeCharset')%
					<script>writeTD('row');</script>
					Default Encoding for %value os% RPC Clients and Servers
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="charset%value charsetter%" value="%value charset%" size="100"></input>
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
					%ifvar action equals('ChangeLoggingLevel')%
						<input type="hidden" name="actionedit" value="SaveLoggingLevel"></input>
					%else%
						%ifvar action equals('ChangeTCPPort')%
							<input type="hidden" name="actionedit" value="SaveTCPPortNumber"></input>
						%else%
							%ifvar action equals('ChangeSSLPort')%
								<input type="hidden" name="actionedit" value="SaveSSLPortNumber"></input>
							%else%
								%ifvar action equals('ChangeKeyStoreAlias')%
									<input type="hidden" name="actionedit" value="SaveKeyStoreAlias"></input>
								%else%
									<input type="hidden" name="actionedit" value="SaveCharset%value charsetter%"></input>
								%endif%
							%endif%
						%endif%
					%endif%
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
		EntireX Adapter &gt; Direct RPC Administration</td>
	</tr>
	
	<td colspan="2">
	  <ul>
		<li><a href="directrpcadmin.dsp">Refresh</a></li>
	  </ul>
	</td>
	
	%ifvar startupError -notempty%
		<table width="100%">
			<HR><P><FONT COLOR="#FF0000">
		    	Last startup failed because the following error occurred:<br>%value startupError%
			</FONT></P><HR>
		</table>
	%endifvar%
	
	<td class="padding">&nbsp;</td>
	
	<table class="tableView">
		<tr>
			<td class="heading" colspan=3>Configuration</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			Status
			</td>
			<script>writeTD('rowdata-l');</script>
			%value status%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
          	%ifvar status equals('Running')%
            	<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=Stop">Stop</a>
	        %else%
							<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=Start">Start</a>
          	%endif%
			</TD>
		</tr>
		<tr>
			<script>writeTD('row');</script>
			Logging Level
			</td>
			<script>writeTD('rowdata-l');</script>
			%value loggingLevel%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeLoggingLevel&amp;loggingLevel=%value loggingLevel%">Change</a>
			</td>
		</tr>
		<tr>
			<script>writeTD('row');</script>
				TCP Port Number
			</td>
			<script>writeTD('rowdata-l');</script>
			%ifvar tcpPortNumber1 -notempty%
			  %value tcpPortNumber1% %ifvar status equals('Running')% listening %endif%
			%endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				%ifvar status matches('Stopped*')%
					<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeTCPPort&amp;tcpPortNumber1=%value tcpPortNumber1%">Change</a>
				%endif%
			</td>
		</tr>
		<tr>
			<script>writeTD('row');</script>
				SSL Port Number
			</td>
			<script>writeTD('rowdata-l');</script>
			%ifvar sslPortNumber1 -notempty%
				%value sslPortNumber1%  %ifvar status equals('Running')% listening %endif%
			%endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				%ifvar status matches('Stopped*')%
					<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeSSLPort&amp;sslPortNumber1=%value sslPortNumber1%">Change</a>
				%endif%
			</td>
		</tr>
		
		<tr>
			<script>writeTD('row');</script>
				Keystore Alias (for SSL)
			</td>
			<script>writeTD('rowdata-l');</script>
				%value keyStoreAlias%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				%ifvar status matches('Stopped*')%
					<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeKeyStoreAlias&amp;keyStoreAlias=%value keyStoreAlias%">Change</a>
				%endif%
			</td>
		</tr>
		
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			Auto Start
			</td>
			<script>writeTD('rowdata-l');</script>
            %ifvar autoStart equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
          %ifvar autoStart equals('true')%
							<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=AutoStart&amp;autoStart=false">Disable</a>
	        %else%
							<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=AutoStart&amp;autoStart=true">Enable</a>
          %endif%
			</td>
		</tr>
	</table>
	</td>
	</table>
  <TR><TD>&nbsp;</TD></TR>
	
	<td class="padding">&nbsp;</td>
	
	<table class="tableView">
		<tr>
			<td class="heading" colspan=3>Default Encoding for RPC Clients and Servers</td>
		</tr>
		<tr>
			<script>writeTD('row');</script>
				Windows and Unix
			</td>
			<script>writeTD('rowdata-l');</script>
				%value charsetWindowsUnix%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeCharset&amp;os=Windows and Unix&amp;charset=%value charsetWindowsUnix%&amp;charsetter=WindowsUnix">Change</a>
			</td>
		</tr>
		<tr>
			<script>writeTD('row');</script>
				z/OS and z/VSE
			</td>
			<script>writeTD('rowdata-l');</script>
				%value charsetIbmMf%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeCharset&amp;os=z/OS and z/VSE&amp;charset=%value charsetIbmMf%&amp;charsetter=IbmMf">Change</a>
			</td>
		</tr>
		<tr>
			<script>writeTD('row');</script>
				BS2000
			</td>
			<script>writeTD('rowdata-l');</script>
				%value charsetSiemensMf%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
				<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeCharset&amp;os=BS2000&amp;charset=%value charsetSiemensMf%&amp;charsetter=SiemensMf">Change</a>
			</td>
		</tr>
	</table>
	</td>
	</table>
  <TR><TD>&nbsp;</TD></TR>
	%endinvoke%
	

  %invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:getStatistics%
      <TABLE class="tableView">
        <TR>
          <TD COLSPAN=20 CLASS="heading">Monitoring</TD>
        </TR>
        <TR>
          <TD class="oddcol">Name</TD>
          <TD class="oddcol">Active</TD>
          <TD class="oddcol">Maximum</TD>
          <TD class="oddcol">Total</TD>
       </TR>

      %loop statistics%
      <TR>
        <script>swapRows();writeTD('rowdata-l');</script>
          %value name% 
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value active%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value max%
        </TD>
        <script>writeTD('rowdata-l');</script>
          %value total%
        </TD>
      </TR>
      %endloop%
  </table>
  <TR><TD>&nbsp;</TD></TR>
  %endinvoke%
  
  
	%invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:getServices%
		<TR>
			<TABLE class="tableView">
				<TR>
					<TD COLSPAN=20 CLASS="heading">Services</TD>
				</TR>
				<TR>
					<TD class="oddcol">Name</TD>
					<TD class="oddcol-l">Type</TD>
					<TD class="oddcol">Instances</TD>
					<TD class="oddcol">Requests</TD>
					<TD class="oddcol">Wait for Server</TD>
					<TD class="oddcol">Action</TD>
				</TR>
				
				%loop services%
					<TR>
						<script>writeTD('rowdata-l');</script>
						%value name%
						</TD>
						<script>swapRows();writeTD('rowdata-l');</script>
						%ifvar internal equals('true')%
						Direct RPC Server
						%else%
						External RPC Server
						%endif%
						</TD>
						<script>writeTD('rowdata-l');</script>
						%value instances%
						</TD>
						<script>writeTD('rowdata-l');</script>
						%value requests%
						</TD>
						<script>writeTD('rowdata-l');</script>
						%value busyservers%
						</TD>
						<script>writeTD('rowdata-l');</script>
						%ifvar internal equals('true')%
					  	%else%
							<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=ShutdownService&amp;serviceName=%value name%">Shutdown</a>
						%endif%
						</TD>
					</TR>
				%endloop%
			</TABLE>
			<TR><TD>&nbsp;</TD></TR>
		</TR>
	%endinvoke%
    
	%invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:getRunningServers%
		<TR>
			<TABLE class="tableView">
				<TR>
					<TD COLSPAN=20 CLASS="heading">Servers</TD>
				</TR>
				<TR>
					<TD class="oddcol-l">Service Name</TD>
					<TD class="oddcol-l">Type</TD>
					<TD class="oddcol-l">Name</TD>
					<TD class="oddcol-l">Host</TD>
					<TD class="oddcol-l">Version</TD>
					<TD class="oddcol-l">Action</TD>
				</TR>
				
				%loop runningServers%
					<TR>
						<script>writeTD('rowdata-l');</script>
							%value name% 
						</TD>
						<script>writeTD('rowdata-l');</script>
							%value stype%
						</TD>
						<script>writeTD('rowdata-l');</script>
							%value aname% 
					  </TD>
						<script>writeTD('rowdata-l');</script>
							%value anode% 
					  </TD>
						<script>writeTD('rowdata-l');</script>
							%value aversion% 
					  </TD>
						<script>writeTD('rowdata-l');swapRows();</script>
					  %ifvar internal equals('true')%
					  %else%
								<a href="directrpcadmin.dsp?adapterTypeName=WmEntireX&amp;action=Shutdown&amp;serverPuid=%value puid%">Shutdown</a>
						%endvar%
						</TD>
					</TR>
				%endloop%
			</TABLE>
		</TR>
	%endinvoke%
	
	<!-- %endifvar% -->
	
	</body>
</html>