using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueueDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TokenQueue"] == null)
            {
                Queue<int> queueTokens = new Queue<int>();
                Session["TokenQueue"] = queueTokens;
            }

        }

        //Button click event
        protected void btnPrintTokens_Click(object sender, EventArgs e)
        {
            Queue<int> tokenQueue = (Queue<int>)Session["TokenQueue"];
            lblStatus.Text = "There are " + tokenQueue.Count.ToString() + "customers  before you in the queue";

            if (Session["LastTokenNumberIssued"] == null)
            {
                Session["LastTokenNumberIssued"] = 0;
            }

            int nextTokenNumberToBeIssued = (int)Session["LastTokenNumberIssued"] + 1;
            Session["LastTokenNumberIssued"] = nextTokenNumberToBeIssued;

            tokenQueue.Enqueue(nextTokenNumberToBeIssued);
            AddTokensToListBox(tokenQueue);

        }

        private void AddTokensToListBox(Queue<int> tokenQueue)
        {
            listTokens.Items.Clear();
            foreach (int token in tokenQueue)
            {
                listTokens.Items.Add(token.ToString());
            }
        }

        protected void btnCounter1_Click(object sender, EventArgs e)
        {
            ServeNextCustomers(txtCounter1, 1);
        }

        protected void btnCounter2_Click(object sender, EventArgs e)
        {
            ServeNextCustomers(txtCounter2, 2);
        }

        protected void btnCounter3_Click(object sender, EventArgs e)
        {
            ServeNextCustomers(txtCounter3, 3);
        }


        private void ServeNextCustomers(TextBox textBox, int counterNumbers)
        {
            Queue<int> tokenQueue = (Queue<int>)Session["TokenQueue"];
            if (tokenQueue.Count <= 0)
            {
                textBox.Text = "No customers in the Queue";
            }
            else
            {
                int tokenNumberToBeServed = tokenQueue.Dequeue();
                textBox.Text = tokenNumberToBeServed.ToString();
                txtDisplay.Text = " Token Number : " + tokenNumberToBeServed.ToString() + " Please go to counter " + counterNumbers;
            }

            AddTokensToListBox(tokenQueue);
        }
    }
}