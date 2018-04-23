using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    
    protected void Grid_CommandButtonInitialize(object sender, ASPxGridViewCommandButtonEventArgs e) {
        if(e.ButtonType == ColumnCommandButtonType.SelectCheckbox)
            e.Enabled = !chkDisabled.Checked;
    }
}