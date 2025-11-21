壓縮檔裡面一共兩個專案：
	1. FileClient 包含 class化 的套件 ( 本身為 Client 端範例程式 )：
		FileTransClient
	2. FileServer ( 服務型態，包含兩個安裝/移除服務 bat檔 )

class FileTransClient 說明：
    Create( inipath: string = '' ); { inipath 為指定 ini檔讀取路徑，如不指定則為 C：\ }
    List( fp: string = '' ): string; { 取出檔案清單，fp可指定 根目錄下的路徑，如不指定則為 根目錄 , 傳回 StringList.CommaText 字串 或 錯誤訊息 }
    down( fn: string; fp: string = ''; downfp: string = '' ): TMemoryStream; { 下載檔案，fn為檔名（必要），fp(預設為根目錄) ，傳回 MemoryStream資料流 或 nil }
    put( fn: string; fp: string = ''; refresh: boolean = False ): string; { 上傳檔案，fn為要上傳的檔案路徑（預設會自行打開 OpenDialog 對話窗），fp 主機端目錄（預設根目錄）， refresh 為是否回傳檔案清單（StringList.CommaText 字串 或 錯誤訊息）}
    delete( fn: string; fp: string = ''; refresh: boolean = False ): string; { 刪除檔案，fn為指定主機端檔名，fp為指定主機端路徑，refresh 為是否回傳檔案清單（StringList.CommaText 字串 或 錯誤訊息） }	

Service FileServer 說明：
	主機端則與 FileTransClient 配合，亦會在 C：\ 下面建立 INI設定檔