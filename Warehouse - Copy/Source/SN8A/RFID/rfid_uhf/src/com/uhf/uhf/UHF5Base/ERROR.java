package com.uhf.uhf.UHF5Base;

public class ERROR {
	public final static byte SUCCESS = 0x10;
	public final static byte FAIL = 0x11;
	public final static byte MCU_RESET_ERROR = 0x20;
	public final static byte CW_ON_ERROR = 0x21;
	public final static byte ANTENNA_MISSING_ERROR = 0x22;
	public final static byte WRITE_FLASH_ERROR = 0x23;
	public final static byte READ_FLASH_ERROR = 0x24;
	public final static byte SET_OUTPUT_POWER_ERROR = 0x25;
	public final static byte TAG_INVENTORY_ERROR = 0x31;
	public final static byte TAG_READ_ERROR = 0x32;
	public final static byte TAG_WRITE_ERROR = 0x33;
	public final static byte TAG_LOCK_ERROR = 0x34;
	public final static byte TAG_KILL_ERROR = 0x35;
	public final static byte NO_TAG_ERROR = 0x36;
	public final static byte INVENTORY_OK_BUT_ACCESS_FAIL = 0x37;
	public final static byte BUFFER_IS_EMPTY_ERROR = 0x38;
	public final static byte ACCESS_OR_PASSWORD_ERROR = 0x40;
	public final static byte PARAMETER_INVALID = 0x41;
	public final static byte PARAMETER_INVALID_WORDCNT_TOO_LONG = 0x42;
	public final static byte PARAMETER_INVALID_MEMBANK_OUT_OF_RANGE = 0x43;
	public final static byte PARAMETER_INVALID_LOCK_REGION_OUT_OF_RANGE = 0x44;
	public final static byte PARAMETER_INVALID_LOCK_ACTION_OUT_OF_RANGE = 0x45;
	public final static byte PARAMETER_READER_ADDRESS_INVALID = 0x46;
	public final static byte PARAMETER_INVALID_ANTENNA_ID_OUT_OF_RANGE = 0x47;
	public final static byte PARAMETER_INVALID_OUTPUT_POWER_OUT_OF_RANGE = 0x48;
	public final static byte PARAMETER_INVALID_FREQUENCY_REGION_OUT_OF_RANGE = 0x49;
	public final static byte PARAMETER_INVALID_BAUDRATE_OUT_OF_RANGE = 0x4A;
	public final static byte PARAMETER_BEEPER_MODE_OUT_OF_RANGE = 0x4B;
	public final static byte PARAMETER_EPC_MATCH_LEN_TOO_LONG = 0x4C;
	public final static byte PARAMETER_EPC_MATCH_LEN_ERROR = 0x4D;
	public final static byte PARAMETER_INVALID_EPC_MATCH_MODE = 0x4E;
	public final static byte PARAMETER_INVALID_FREQUENCY_RANGE = 0x4F;
	public final static byte FAIL_TO_GET_RN16_FROM_TAG = 0x50;
	public final static byte PARAMETER_INVALID_DRM_MODE = 0x51;
	public final static byte PLL_LOCK_FAIL = 0x52;
	public final static byte RF_CHIP_FAIL_TO_RESPONSE = 0x53;
	public final static byte FAIL_TO_ACHIEVE_DESIRED_OUTPUT_POWER = 0x54;
	public final static byte COPYRIGHT_AUTHENTICATION_FAIL = 0x55;
	public final static byte SPECTRUM_REGULATION_ERROR = 0x56;
	public final static byte OUTPUT_POWER_TOO_LOW = 0x57;

    public static String format(byte btErrorCode)
    {
        String strErrorCode = "";
        switch (btErrorCode)
        {
            case SUCCESS:
                strErrorCode = "�賭誘��摰�";
                break;
            case FAIL:
                strErrorCode = "�賭誘�扯�憭梯揖";
                break;
            case MCU_RESET_ERROR:
                strErrorCode = "CPU 憭��秤";
                break;
            case CW_ON_ERROR:
                strErrorCode = "��CW �秤";
                break;
            case ANTENNA_MISSING_ERROR:
                strErrorCode = "憭拍瑪�芾���";
                break;
            case WRITE_FLASH_ERROR:
                strErrorCode = "�lash �秤";
                break;
            case READ_FLASH_ERROR:
                strErrorCode = "霂肇lash �秤";
                break;
            case SET_OUTPUT_POWER_ERROR:
                strErrorCode = "霈曄蔭�����秤";
                break;
            case TAG_INVENTORY_ERROR:
                strErrorCode = "���倌�秤";
                break;
            case TAG_READ_ERROR:
                strErrorCode = "霂餅�蝑暸�霂�";
                break;
            case TAG_WRITE_ERROR:
                strErrorCode = "��蝑暸�霂�";
                break;
            case TAG_LOCK_ERROR:
                strErrorCode = "���倌�秤";
                break;
            case TAG_KILL_ERROR:
                strErrorCode = "�剜暑�倌�秤";
                break;
            case NO_TAG_ERROR:
                strErrorCode = "����倌�秤";
                break;
            case INVENTORY_OK_BUT_ACCESS_FAIL:
                strErrorCode = "����雿挪�桀仃韐�";
                break;
            case BUFFER_IS_EMPTY_ERROR:
                strErrorCode = "蝻�銝箇征";
                break;
            case ACCESS_OR_PASSWORD_ERROR:
                strErrorCode = "霈輸�倌�秤�挪�桀���霂�";
                break;
            case PARAMETER_INVALID:
                strErrorCode = "������";
                break;
            case PARAMETER_INVALID_WORDCNT_TOO_LONG:
                strErrorCode = "wordCnt �頞�閫��踹漲";
                break;
            case PARAMETER_INVALID_MEMBANK_OUT_OF_RANGE:
                strErrorCode = "MemBank �頞�";
                break;
            case PARAMETER_INVALID_LOCK_REGION_OUT_OF_RANGE:
                strErrorCode = "Lock �唳�箏��啗��箄���";
                break;
            case PARAMETER_INVALID_LOCK_ACTION_OUT_OF_RANGE:
                strErrorCode = "LockType �頞�";
                break;
            case PARAMETER_READER_ADDRESS_INVALID:
                strErrorCode = "霂餃��典�����";
                break;
            case PARAMETER_INVALID_ANTENNA_ID_OUT_OF_RANGE:
                strErrorCode = "Antenna_id 頞�";
                break;
            case PARAMETER_INVALID_OUTPUT_POWER_OUT_OF_RANGE:
                strErrorCode = "颲���頞�";
                break;
            case PARAMETER_INVALID_FREQUENCY_REGION_OUT_OF_RANGE:
                strErrorCode = "撠�閫��箏��頞�";
                break;
            case PARAMETER_INVALID_BAUDRATE_OUT_OF_RANGE:
                strErrorCode = "瘜Ｙ���啗��箄���";
                break;
            case PARAMETER_BEEPER_MODE_OUT_OF_RANGE:
                strErrorCode = "�腦�刻挽蝵桀��啗��箄���";
                break;
            case PARAMETER_EPC_MATCH_LEN_TOO_LONG:
                strErrorCode = "EPC �寥��踹漲頞�";
                break;
            case PARAMETER_EPC_MATCH_LEN_ERROR:
                strErrorCode = "EPC �寥��踹漲�秤";
                break;
            case PARAMETER_INVALID_EPC_MATCH_MODE:
                strErrorCode = "EPC �寥��頞�";
                break;
            case PARAMETER_INVALID_FREQUENCY_RANGE:
                strErrorCode = "憸��霈曄蔭��秤";
                break;
            case FAIL_TO_GET_RN16_FROM_TAG:
                strErrorCode = "���交�倌�N16";
                break;
            case PARAMETER_INVALID_DRM_MODE:
                strErrorCode = "DRM 霈曄蔭��秤";
                break;
            case PLL_LOCK_FAIL:
                strErrorCode = "PLL 銝��";
                break;
            case RF_CHIP_FAIL_TO_RESPONSE:
                strErrorCode = "撠��舐���摨�";
                break;
            case FAIL_TO_ACHIEVE_DESIRED_OUTPUT_POWER:
                strErrorCode = "颲颲曆��唳�摰�颲��";
                break;
            case COPYRIGHT_AUTHENTICATION_FAIL:
                strErrorCode = "��霈方��芷�餈�";
                break;
            case SPECTRUM_REGULATION_ERROR:
                strErrorCode = "憸停閫�霈曄蔭�秤";
                break;
            case OUTPUT_POWER_TOO_LOW:
                strErrorCode = "颲��餈�";
                break;
            default:
                strErrorCode = "�芰�秤";
                break;
        }
        return strErrorCode;
    }

	public static int BeepType = -1;

	public static void setBeep(String str) {
		if (str.equals("beeper_quiet")) {
			BeepType = 0;
		} else if (str.equals("beeper_all")) {
			BeepType = 1;
		} else if (str.equals("beeper_one")) {
			BeepType = 2;
		}
	}
}
