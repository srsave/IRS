using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IRS.Forms
{
    public partial class IRSUnsubscribe : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Image imgText;
        private Bitmap image;
        private Random random = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void GenerateImage(string SS)
        {
            // Create a new 32-bit bitmap image.
            Bitmap bitmap = new Bitmap(200, 50, PixelFormat.Format32bppArgb);

            // Create a graphics object for drawing.
            Graphics g = Graphics.FromImage(bitmap);
            g.SmoothingMode = SmoothingMode.AntiAlias;
            Rectangle rect = new Rectangle(0, 0, 200, 50);

            // Fill in the background.
            HatchBrush hatchBrush = new HatchBrush(HatchStyle.SmallConfetti, Color.LightGray, Color.White);
            g.FillRectangle(hatchBrush, rect);

            // Set up the text font.
            SizeF size;
            float fontSize = rect.Height + 1;
            Font font;
            // Adjust the font size until the text fits within the image.
            do
            {
                fontSize--;
                font = new Font("Century Schoolbook", fontSize, FontStyle.Bold);
                size = g.MeasureString(SS, font);
            } while (size.Width > rect.Width);

            // Set up the text format.
            StringFormat format = new StringFormat();
            format.Alignment = StringAlignment.Center;
            format.LineAlignment = StringAlignment.Center;

            // Create a path using the text and warp it randomly.
            GraphicsPath path = new GraphicsPath();
            path.AddString(SS, font.FontFamily, (int)font.Style, font.Size, rect, format);
            float v = 4F;
            PointF[] points =
            {
                new PointF(this.random.Next(rect.Width) / v, this.random.Next(rect.Height) / v),
                new PointF(rect.Width - this.random.Next(rect.Width) / v, this.random.Next(rect.Height) / v),
                new PointF(this.random.Next(rect.Width) / v, rect.Height - this.random.Next(rect.Height) / v),
                new PointF(rect.Width - this.random.Next(rect.Width) / v, rect.Height - this.random.Next(rect.Height) / v)
            };
            Matrix matrix = new Matrix();
            matrix.Translate(0F, 0F);
            path.Warp(points, rect, matrix, WarpMode.Perspective, 0F);

            // Draw the text.
            hatchBrush = new HatchBrush(HatchStyle.LargeConfetti, Color.LightGray, Color.DarkGray);
            g.FillPath(hatchBrush, path);

            // Add some random noise.
            int m = Math.Max(rect.Width, rect.Height);
            for (int i = 0; i < (int)(rect.Width * rect.Height / 30F); i++)
            {
                int x = this.random.Next(rect.Width);
                int y = this.random.Next(rect.Height);
                int w = this.random.Next(m / 50);
                int h = this.random.Next(m / 50);
                g.FillEllipse(hatchBrush, x, y, w, h);
            }

            // Clean up.
            font.Dispose();
            hatchBrush.Dispose();
            g.Dispose();

            // Set the image.
            this.image = bitmap;

            MemoryStream ms = new MemoryStream();
            bitmap.Save(ms, ImageFormat.Jpeg);
            //bitmap.Save(ms, ImageFormat.Jpeg);
            var base64Data = Convert.ToBase64String(ms.ToArray());
            imgText.ImageUrl = "data:image/gif;base64," + base64Data;
            imgText.Visible = true;
        }

        protected void btnUnSubscribe_Click(object sender, EventArgs e)
        {
            if (txtEmailAddress.Text != "")
            {
                this.ShowMessage("User Unsubscribe succefully.", 2);
            }
            else
            {
                this.ShowMessage("Enter Valid Email Address", 2);
            }
        }

        public void ShowMessage(string strMessage, int iMsgNo)
        {
            strMessage = strMessage.Replace("'", "");
            strMessage = strMessage.Replace("\r\n", "");
            RegisterStartupScript("Msg" + iMsgNo, "<script>alert('" + strMessage + "')</script>");
        }
    }
}