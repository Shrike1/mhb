{include file='header.tpl'}
<div class="mhb form">
<form action="" method="post" enctype="multipart/form-data">
<table>
 <thead>
 	<th>{$aLang.mhb_blog_title}</th>
 	<th>{$aLang.mhb_auto_join_title}</th>
 	<th>{$aLang.mhb_cant_leave_title}</th>
 </thead>
	{foreach from=$aData item=data}
	<tr>
		<td>{if $data.closed}[*] {/if}{$data.title|escape:html}</td>
		<td class="mhb_checkbox"><input type="checkbox" name="mhb_auto_join_{$data.blog_id}" class="checkbox" {if $data.auto_join}checked{/if}></td>
		<td class="mhb_checkbox"><input type="checkbox" name="mhb_cant_leave_{$data.blog_id}" class="checkbox" {if $data.cant_leave}checked{/if}></td>
	</tr>
	{/foreach}
</table>
<div>{$aLang.mhb_note}</div>
<input type="submit" class="button" name="submit_mhb" value="{$aLang.mhb_submit}" />
</form>
</div>
{include file='footer.tpl'}
