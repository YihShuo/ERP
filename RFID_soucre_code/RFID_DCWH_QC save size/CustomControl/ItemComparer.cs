using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Windows.Forms;

namespace CustomControl
{
    public class ItemComparer : IComparer
    {
        //column used for comparison
        public int Column { get; set; }

        //Order of sorting
        public SortOrder Order { get; set; }

        public ItemComparer(int colIndex)
        {
            Column = colIndex;
            Order = SortOrder.None;

        }
        public int Compare(object a, object b)
        {
            int result;

            ListViewItem itemA = a as ListViewItem;
            ListViewItem itemB = b as ListViewItem;
            if (itemA == null && itemB == null)
                result = 0;
            else if (itemA == null)
                result = -1;
            else if (itemB == null)
                result = 1;

            if (itemA == itemB)
                result = 0;

            string i = itemA.SubItems[Column].Text;
            string j = itemB.SubItems[Column].Text;

            if (i.IndexOf("/") >= 0)
            {
                string[] arrListStr = i.Split(new char[] { '/' });
                i = "";
                i = arrListStr[2] + arrListStr[1] + arrListStr[0];
            }
            if (j.IndexOf("/") >= 0)
            {
                string[] arrListStr = j.Split(new char[] { '/' });
                j = "";
                j = arrListStr[2] + arrListStr[1] + arrListStr[0];
            }

            //datetime comparison
            DateTime x1, y1;
            // Parse the two objects passed as a parameter as a DateTime.
            if (!DateTime.TryParse(i, out x1))
                x1 = DateTime.MinValue;
            if (!DateTime.TryParse(j, out y1))
                y1 = DateTime.MinValue;
            result = DateTime.Compare(x1, y1);

            if (x1 != DateTime.MinValue && y1 != DateTime.MinValue)
                goto done;

            //numeric comparison
            decimal x2, y2;
            if (!Decimal.TryParse(i, out x2))
                x2 = Decimal.MinValue;
            if (!Decimal.TryParse(j, out y2))
                y2 = Decimal.MinValue;
            result = Decimal.Compare(x2, y2);

            if (x2 != Decimal.MinValue && y2 != Decimal.MinValue)
                goto done;

            //alphabetic comparison
            result = String.Compare(i, j);



        done:
            // if sort order is descending.
            if (Order == SortOrder.Descending)
                // Invert the value returned by Compare.
                result *= -1;
            return result;

        }
    }
    }
