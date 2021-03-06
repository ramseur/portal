<%@ Control Language="c#" AutoEventWireup="false" Inherits="Appleseed.Framework.Design.PictureItem" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register Assembly="Appleseed.Framework.Core" Namespace="Appleseed.Framework.Web.UI.WebControls" TagPrefix="rbfwebui" %>
<%@ Register Assembly="Appleseed.Framework.Web.UI.WebControls" Namespace="Appleseed.Framework.Web.UI.WebControls" TagPrefix="rbfwebui" %>
<a href='<%# Appleseed.Framework.HttpUrlBuilder.BuildUrl("~/DesktopModules/CommunityModules/Pictures/PictureView.aspx?ItemID=" + GetMetadata("ItemID") + "&amp;mid=" + GetMetadata("ModuleID") + "&amp;wversion=" + GetMetadata("WVersion"))%>' runat="server">
	<img border='0' width='<%#GetMetadata("ThumbnailWidth")%>' height='<%#GetMetadata("ThumbnailHeight")%>' alt='<%#GetMetadata("Caption")%>' src='<%# GetMetadata("AlbumPath") + "/" + GetMetadata("ThumbnailFilename")%>'>
</a>
<rbfwebui:HyperLink id="editLink" ImageUrl='<%# GetCurrentImageFromTheme("Buttons_Edit", "Edit.gif") %>' NavigateUrl='<%# Appleseed.Framework.HttpUrlBuilder.BuildUrl("~/DesktopModules/CommunityModules/Pictures/PicturesEdit.aspx","ItemID=" + GetMetadata("ItemID") + "&amp;mid=" + GetMetadata("ModuleID"))%>' Visible='<%# GetMetadata("IsEditable") == "True"%>' runat="server" />
