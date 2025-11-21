package com.uhf.uhf.UHF5Base;

public class CMD {
	public final static byte RESET = 0x70;
	public final static byte SET_UART_BAUDRATE = 0x71;
	public final static byte GET_FIRMWARE_VERSION = 0x72;
	public final static byte SET_READER_ADDRESS = 0x73;
	public final static byte SET_WORK_ANTENNA = 0x74;
	public final static byte GET_WORK_ANTENNA = 0x75;
	public final static byte SET_OUTPUT_POWER = 0x76;
	public final static byte GET_OUTPUT_POWER = 0x77;
	public final static byte SET_FREQUENCY_REGION = 0x78;
	public final static byte GET_FREQUENCY_REGION = 0x79;
	public final static byte SET_BEEPER_MODE = 0x7A;
	public final static byte GET_READER_TEMPERATURE = 0x7B;
	public final static byte READ_GPIO_VALUE = 0x60;
	public final static byte WRITE_GPIO_VALUE = 0x61;
	public final static byte SET_ANT_CONNECTION_DETECTOR = 0x62;
	public final static byte GET_ANT_CONNECTION_DETECTOR = 0x63;
	public final static byte SET_TEMPORARY_OUTPUT_POWER = 0x66;
	public final static byte SET_READER_IDENTIFIER = 0x67;
	public final static byte GET_READER_IDENTIFIER = 0x68;
	public final static byte SET_RF_LINK_PROFILE = 0x69;
	public final static byte GET_RF_LINK_PROFILE = 0x6A;
	public final static byte GET_RF_PORT_RETURN_LOSS = 0x7E;
	public final static byte INVENTORY = (byte) 0x80;
	public final static byte READ_TAG = (byte) 0x81;
	public final static byte WRITE_TAG = (byte) 0x82;
	public final static byte LOCK_TAG = (byte) 0x83;
	public final static byte KILL_TAG = (byte) 0x84;
	public final static byte SET_ACCESS_EPC_MATCH = (byte) 0x85;
	public final static byte GET_ACCESS_EPC_MATCH = (byte) 0x86;
	public final static byte REAL_TIME_INVENTORY = (byte) 0x89;
	public final static byte FAST_SWITCH_ANT_INVENTORY = (byte) 0x8A;
	public final static byte CUSTOMIZED_SESSION_TARGET_INVENTORY = (byte) 0x8B;
	public final static byte SET_IMPINJ_FAST_TID = (byte) 0x8C;
	public final static byte SET_AND_SAVE_IMPINJ_FAST_TID = (byte) 0x8D;
	public final static byte GET_IMPINJ_FAST_TID = (byte) 0x8E;
	public final static byte ISO18000_6B_INVENTORY = (byte) 0xB0;
	public final static byte ISO18000_6B_READ_TAG = (byte) 0xB1;
	public final static byte ISO18000_6B_WRITE_TAG = (byte) 0xB2;
	public final static byte ISO18000_6B_LOCK_TAG = (byte) 0xB3;
	public final static byte ISO18000_6B_QUERY_LOCK_TAG = (byte) 0xB4;
	public final static byte GET_INVENTORY_BUFFER = (byte) 0x90;
	public final static byte GET_AND_RESET_INVENTORY_BUFFER = (byte) 0x91;
	public final static byte GET_INVENTORY_BUFFER_TAG_COUNT = (byte) 0x92;
	public final static byte RESET_INVENTORY_BUFFER = (byte) 0x93;

    public static String format(byte btCmd)
    {
        String strCmd = "";
        switch (btCmd)
        {
            case RESET:
                strCmd = "復位讀寫器";
                break;
            case SET_UART_BAUDRATE:
                strCmd = "設置串口通訊通訊波特率";
                break;
            case GET_FIRMWARE_VERSION:
                strCmd = "讀取讀寫器固定版本";
                break;
            case SET_READER_ADDRESS:
                strCmd = "設置讀寫器地址";
                break;
            case SET_WORK_ANTENNA:
                strCmd = "設置讀和寫工作天線";
                break;
            case GET_WORK_ANTENNA:
                strCmd = "查詢當前工作天線";
                break;
            case SET_OUTPUT_POWER:
                strCmd = "設置讀和寫射頻輸出功率";
                break;
            case GET_OUTPUT_POWER:
                strCmd = "查詢讀和寫射頻輸出功率";
                break;
            case SET_FREQUENCY_REGION:
                strCmd = "設置讀寫器工作頻率範圍";
                break;
            case GET_FREQUENCY_REGION:
                strCmd = "查詢讀寫器工作頻率範圍";
                break;
            case SET_BEEPER_MODE:
                strCmd = "設置蜂頻器狀態";
                break;
            case GET_READER_TEMPERATURE:
                strCmd = "查詢當前設備工作溫度";
                break;
            case READ_GPIO_VALUE:
                strCmd = "讀取GPIO電位";
                break;
            case WRITE_GPIO_VALUE:
                strCmd = "設置GPIO電位";
                break;
            case SET_ANT_CONNECTION_DETECTOR:
                strCmd = "設置天線連接器狀態";
                break;
            case GET_ANT_CONNECTION_DETECTOR:
                strCmd = "讀取天線連接器狀態";
                break;
            case SET_TEMPORARY_OUTPUT_POWER:
                strCmd = "設置讀寫器臨時射頻輸出功率";
                break;
            case SET_READER_IDENTIFIER:
                strCmd = "設定讀寫器製別碼";
                break;
            case GET_READER_IDENTIFIER:
                strCmd = "查詢讀寫器製別碼";
                break;
            case SET_RF_LINK_PROFILE:
                strCmd = "設置射頻網路通訊速率";
                break;
            case GET_RF_LINK_PROFILE:
                strCmd = "讀取置射頻網路通訊速率";
                break;
            case GET_RF_PORT_RETURN_LOSS:
                strCmd = "測量天線端口回波耗損";
                break;
            case INVENTORY:
                strCmd = "盤存標籤";
                break;
            case READ_TAG:
                strCmd = "讀標籤";
                break;
            case WRITE_TAG:
                strCmd = "寫標籤";
                break;
            case LOCK_TAG:
                strCmd = "鎖定標籤";
                break;
            case KILL_TAG:
                strCmd = "刪除標籤";
                break;
            case SET_ACCESS_EPC_MATCH:
                strCmd = "匹配ACCESS操作EPC號";
                break;
            case GET_ACCESS_EPC_MATCH:
                strCmd = "查詢匹配的EPC狀態";
                break;
            case REAL_TIME_INVENTORY:
                strCmd = "盤存標籤(實際上的傳輸數據)";
                break;
            case FAST_SWITCH_ANT_INVENTORY:
                strCmd = "快速切換多個天線盤存標籤";
                break;
            case CUSTOMIZED_SESSION_TARGET_INVENTORY:
                strCmd = "自定義Session和Target盤存";
                break;
            case SET_IMPINJ_FAST_TID:
                strCmd = "設置Monza標籤快速讀TID盤存(不保存)";
                break;
            case SET_AND_SAVE_IMPINJ_FAST_TID:
                strCmd = "設置Monza標籤快速讀TID盤存(保存)";
                break;
            case GET_IMPINJ_FAST_TID:
                strCmd = "查詢當前的快速TID設置";
                break;
            case ISO18000_6B_INVENTORY:
                strCmd = "盤存18000-6B標籤";
                break;
            case ISO18000_6B_READ_TAG:
                strCmd = "讀18000-6B標籤";
                break;
            case ISO18000_6B_WRITE_TAG:
                strCmd = "寫18000-6B標籤";
                break;
            case ISO18000_6B_LOCK_TAG:
                strCmd = "鎖定18000-6B標籤";
                break;
            case ISO18000_6B_QUERY_LOCK_TAG:
                strCmd = "查詢18000-6B標籤";
                break;
            case GET_INVENTORY_BUFFER:
                strCmd = "提取標籤數據保留緩衝備份";
                break;
            case GET_AND_RESET_INVENTORY_BUFFER:
                strCmd = "提取標籤數據並刪除緩衝";
                break;
            case GET_INVENTORY_BUFFER_TAG_COUNT:
                strCmd = "查詢緩存中已讀標籤個數";
                break;
            case RESET_INVENTORY_BUFFER:
                strCmd = "清空標籤數據緩衝";
                break;
            default:
                strCmd = "未知操作";
                break;
        }
        return strCmd;
    }
}

