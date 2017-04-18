<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
                      '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
    <title>WmSAP - Statistics</title>
    <link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
    <script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
    <meta http-equiv="Pragma" content="no-cache"></meta>
    <meta http-equiv="Expires" content="-1"></meta>
  </head>
  <body onLoad="setNavigation('/WmSAP/statistics.dsp?adapterTypeName=WmSAP', '/WmSAP/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm?context=Help&topic=IS_MG_Pools', 'foo');">
    %invoke wm.sap.Statistics:getClientPoolInfos%
    <table width="100%">
      <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt; SAP Adapter &gt; Monitoring &gt; Connection Pools</td>
      </tr>
      <tr>
	<td colspan="2">
	  <ul>
	    <li><a href="/WmSAP/statistics.dsp?adapterTypeName=WmSAP">Return to Monitoring</a></li>
	  </ul>
	</td>
      </tr>
      <tr>
	<td class="padding">&nbsp;</td>
	<td>
	  <table class="tableView" width="95%">
	    <thead>
	      <tr>
		<td class="heading" colspan="5">JCo Pools</td>
	      </tr>
	      <tr>
		<td class="oddcol">Name</td>
		<td class="oddcol">Current Size</td>
		<td class="oddcol">Peak Size</td>
		<td class="oddcol">Max Size</td>
		<td class="oddcol">Current Used</td>
	      </tr>
	    </thead>
	    <tbody id="tbodyNode">
	      <!-- %loop pools% -->
	      <tr>
		<td class="evenrowdata-l">%value poolName encode(html)%</td>
		<td class="evenrowdata">%value currentSize encode(html)%</td>
		<td class="evenrowdata">%value peakSize encode(html)%</td>
		<td class="evenrowdata">%value maxSize encode(html)%</td>
		<td class="evenrowdata">%value currentUsed encode(html)%</td>
	      </tr>
	      <!-- %endloop% -->
	    </tbody>
  	  </table>
	  <script type="text/javascript">swapColor('tbodyNode', false);</script>
	</td>
      </tr>
    </table>
    %onerror% %include error.html%
    %endinvoke%
  </body>
</html>