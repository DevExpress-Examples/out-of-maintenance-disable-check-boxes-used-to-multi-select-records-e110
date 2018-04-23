using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Grid_Selection_DisableCheckboxes_DisableCheckboxes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string IsRowChecked(int visibleIndex) {
        return grid.Selection.IsRowSelected(visibleIndex) ? "checked" : string.Empty;
    }
    protected string IsSelectionCheckboxDisabled() {
        return cbDisabled.Checked ? "disabled=\"disabled\"" : string.Empty;
    }
    protected void cbDisabled_CheckedChanged(object sender, EventArgs e) {
        grid.DataBind();
    }
}
