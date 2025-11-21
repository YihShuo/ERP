using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UHF
{
    class CCommondMethod
    {
        /// <summary>
        /// 字符串转16进制数组，字符串以空格分割
        /// </summary>
        /// <param name="strHexValue"></param>
        /// <returns></returns>
        /// //xoa
        public static byte[] StringToByteArray(string strHexValue)
        {
            string[] strAryHex = strHexValue.Split(' ');
            byte[] btAryHex = new byte[strAryHex.Length];

            try
            {
                int nIndex = 0;
                foreach (string strTemp in strAryHex)
                {
                    btAryHex[nIndex] = Convert.ToByte(strTemp, 16);
                    nIndex++;
                }
            }
            catch (System.Exception ex)
            {

            }

            return btAryHex;
        }
        /// <summary>
        /// 字符数组转为16进制数组
        /// </summary>
        /// <param name="strAryHex"></param>
        /// <param name="nLen"></param>
        /// <returns></returns>
        /// //xoa
        public static byte[] StringArrayToByteArray(string[] strAryHex, int nLen)
        {
            if (strAryHex.Length < nLen)
            {
                nLen = strAryHex.Length;
            }

            byte[] btAryHex = new byte[nLen];

            try
            {
                int nIndex = 0;
                foreach (string strTemp in strAryHex)
                {
                    btAryHex[nIndex] = Convert.ToByte(strTemp, 16);
                    nIndex++;
                }
            }
            catch (System.Exception ex)
            {

            }

            return btAryHex;
        }
        /// <summary>
        /// 16进制字符数组转成字符串
        /// </summary>
        /// <param name="btAryHex"></param>
        /// <param name="nIndex"></param>
        /// <param name="nLen"></param>
        /// <returns></returns>
        public static string ByteArrayToString(byte[] btAryHex, int nIndex, int nLen)
        {
            if (nIndex + nLen > btAryHex.Length)
            {
                nLen = btAryHex.Length - nIndex;
            }

            string strResult = string.Empty;

            for (int nloop = nIndex; nloop < nIndex + nLen; nloop++)
            {
                string strTemp = string.Format(" {0:X2}", btAryHex[nloop]);

                strResult += strTemp;
            }

            return strResult;
        }
        /// <summary>
        /// 将字符串按照指定长度截取并转存为字符数组，空格忽略
        /// </summary>
        /// <param name="strValue"></param>
        /// <param name="nLength"></param>
        /// <returns></returns>
        /// //xoa
        public static string[] StringToStringArray(string strValue, int nLength)
        {
            string[] strAryResult = null;

            if (!string.IsNullOrEmpty(strValue))
            {
                System.Collections.ArrayList strListResult = new System.Collections.ArrayList();
                string strTemp = string.Empty;
                int nTemp = 0;

                for (int nloop = 0; nloop < strValue.Length; nloop++)
                {
                    if (strValue[nloop] == ' ')
                    {
                        continue;
                    }
                    else
                    {
                        nTemp++;

                        //校验截取的字符是否在A~F、0~9区间，不在则直接退出
                        System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex(@"^(([A-F])*(\d)*)$");
                        if (!reg.IsMatch(strValue.Substring(nloop, 1)))
                        {
                            return strAryResult;
                        }

                        strTemp += strValue.Substring(nloop, 1);

                        //判断是否到达截取长度
                        if ((nTemp == nLength) || (nloop == strValue.Length - 1 && !string.IsNullOrEmpty(strTemp)))
                        {
                            strListResult.Add(strTemp);
                            nTemp = 0;
                            strTemp = string.Empty;
                        }
                    }
                }

                if (strListResult.Count > 0)
                {
                    strAryResult = new string[strListResult.Count];
                    strListResult.CopyTo(strAryResult);
                }
            }

            return strAryResult;
        }
        public static string FormatErrorCode(byte btErrorCode)
        {
            string strErrorCode = "";
            switch (btErrorCode)
            {
                case 0x10:
                    strErrorCode = "Command executed";
                    break;
                case 0x11:
                    strErrorCode = "Command execution failed";
                    break;
                case 0x20:
                    strErrorCode = "CPU Reset error";
                    break;
                case 0x21:
                    strErrorCode = "Open CW error";
                    break;
                case 0x22:
                    strErrorCode = "Antenna not connected";
                    break;
                case 0x23:
                    strErrorCode = "Write Flash error";
                    break;
                case 0x24:
                    strErrorCode = "Read Flash error";
                    break;
                case 0x25:
                    strErrorCode = "Set transmit power error";
                    break;
                case 0x31:
                    strErrorCode = "Inventory label error";
                    break;
                case 0x32:
                    strErrorCode = "Read tag error";
                    break;
                case 0x33:
                    strErrorCode = "Write tag error";
                    break;
                case 0x34:
                    strErrorCode = "Lock tab error";
                    break;
                case 0x35:
                    strErrorCode = "Kill tag error";
                    break;
                case 0x36:
                    strErrorCode = "No action tag error";
                    break;
                case 0x37:
                    strErrorCode = "Inventory succeeded but access failed";
                    break;
                case 0x38:
                    strErrorCode = "Cache is empty";
                    break;
                case 0x40:
                    strErrorCode = "Wrong access label or wrong access password";
                    break;
                case 0x41:
                    strErrorCode = "Invalid parameter";
                    break;
                case 0x42:
                    strErrorCode = "The wordCnt parameter exceeds the specified length";
                    break;
                case 0x43:
                    strErrorCode = "MemBank parameter out of range";
                    break;
                case 0x44:
                    strErrorCode = "Lock data area parameter is out of range";
                    break;
                case 0x45:
                    strErrorCode = "LockType parameter out of range";
                    break;
                case 0x46:
                    strErrorCode = "Card reader address is invalid";
                    break;
                case 0x47:
                    strErrorCode = "Antenna_id is out of range";
                    break;
                case 0x48:
                    strErrorCode = "Output power parameter out of range";
                    break;
                case 0x49:
                    strErrorCode = "RF specification area parameter out of range";
                    break;
                case 0x4A:
                    strErrorCode = "Baud rate parameter out of range";
                    break;
                case 0x4B:
                    strErrorCode = "Buzzer setting parameter is out of range";
                    break;
                case 0x4C:
                    strErrorCode = "EPC match length out of bounds";
                    break;
                case 0x4D:
                    strErrorCode = "EPC match length error";
                    break;
                case 0x4E:
                    strErrorCode = "EPC match parameter out of range";
                    break;
                case 0x4F:
                    strErrorCode = "The frequency range setting parameter is wrong";
                    break;
                case 0x50:
                    strErrorCode = "RN16 not able to receive tags";
                    break;
                case 0x51:
                    strErrorCode = "DRM setting parameter error";
                    break;
                case 0x52:
                    strErrorCode = "PLL cannot lock";
                    break;
                case 0x53:
                    strErrorCode = "RF chip does not respond";
                    break;
                case 0x54:
                    strErrorCode = "The output does not reach the specified output power";
                    break;
                case 0x55:
                    strErrorCode = "Copyright certification failed";
                    break;
                case 0x56:
                    strErrorCode = "Spectrum specification set incorrectly";
                    break;
                case 0x57:
                    strErrorCode = "Output power too low";
                    break;
                case 0xFF:
                    strErrorCode = "Unknown mistake";
                    break;

                default:
                    break;
            }

            return strErrorCode;
        }
    }
}
