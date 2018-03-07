using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SportsPro {
    public partial class CustomerSurvey : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            lblNoIncidents.Visible = false;
        }

        protected void btnGetIncidents_Click(object sender, EventArgs e) {
            lstIncidents.Items.Clear();
            DataView incidentsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            incidentsTable.RowFilter = string.Format("CustomerID = '{0}' And DateClosed Is Not Null",
                txtCustomerID.Text);
            if (incidentsTable.Count == 0) {
                lblNoIncidents.Text = "No incidents found for that customer ID.";
                lblNoIncidents.Visible = true;
                DisableSurveyFields();
            } else {
                lstIncidents.Items.Add(new ListItem("--Select an incident--", "None"));
                foreach (DataRowView row in incidentsTable) {
                    Models.Incident i = new Models.Incident();
                    i.IncidentID = (int)row["IncidentID"];
                    i.CustomerID = (int)row["CustomerID"];
                    i.ProductCode = row["ProductCode"].ToString();
                    i.TechID = (int)row["TechID"];
                    i.DateOpened = (DateTime)row["DateOpened"];
                    i.DateClosed = (DateTime)row["DateClosed"];
                    i.Title = row["Title"].ToString();
                    lstIncidents.Items.Add(new ListItem(i.CustomerIncidentDisplay(), i.IncidentID.ToString()));
                }
                lstIncidents.Focus();
                lstIncidents.Items[0].Selected = true;
                EnableSurveyFields();
            }
        }

        private void EnableSurveyFields() {
            rblResponseTime.Enabled = true;
            rblEfficiency.Enabled = true;
            rblResolution.Enabled = true;
            txtComments.Enabled = true;
            chkContactMe.Enabled = true;
            rdoEmail.Enabled = true;
            rdoPhone.Enabled = true;
            btnSubmit.Enabled = true;
        }

        private void DisableSurveyFields() {
            rblResponseTime.Enabled = false;
            rblEfficiency.Enabled = false;
            rblResolution.Enabled = false;
            txtComments.Enabled = false;
            chkContactMe.Enabled = false;
            rdoEmail.Enabled = false;
            rdoPhone.Enabled = false;
            btnSubmit.Enabled = false;
        }
    }
}