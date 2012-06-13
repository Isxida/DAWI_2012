<%@taglib prefix="s" uri="/struts-tags"%>
<table>
	<tr>
		<td align="center" style="background-color: #000099; color: #FFFFFF"><s:text
				name="menu.titulo"/>
		</td>

	</tr>
	<tr>
		<td>
			<s:url action="#" id="olvidoClave">
			
			</s:url>
			<s:a href="%{olvidoClave}">
				<s:text name="menu.olvido" />
			</s:a>
		</td>
	</tr>
</table>