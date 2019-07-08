# JavaWeb點餐系統作品功能演示
### 首頁  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/001.png)
### 新增訂單  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/002.png)
該頁面配合所設計的res物件  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/res_java.png)
傳送變數時也以  
物件名稱.屬性名稱的方式  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/add_jsp.png)
發送資料到orderaction  
隨後會建立一個包含所有變數的物件  
以便資料庫與Session變數的操作簡化  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/orderaction_java.png)
再利用Spring框架的功能，以多型的方式  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/spring_tack.png)  
主介面  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/tack_java.png)  
繼承主介面的包廂輸出計算  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/room_java.png)  
繼承主介面的雅座輸出計算  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/seat_java.png)  
繼承主介面的外帶輸出計算  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/out_java.png)
試算包廂雅座外帶的付費變化  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/orderaction_java_tack.png)
這裡根據是否登入管理權限，有無輸入客戶名稱決定輸出  
然後根據結果轉換頁面，若資料不全則回上頁補齊資料  
管理權限的展示將在後續內容裡說明  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/struts_orderaction.png)
### 確認訂單內容  
本頁即為orderaction執行後的結果確認與展示  
但尚未執行資料庫的資料新增  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/003.png)
### 成功新增訂單  
確認後新增訂單到資料庫  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/004.png)
利用Hibernate框架的功能，建立resdao類別  
以resdao類別的add方法新增資料到資料庫  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/resdao_add.png)
### 查詢訂單  
輸入欲查詢的訂單編號  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/005.png)  
接收訂單編號後  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/queryaction.png)
以resdao類別的query方法查詢對應訂單資料  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/resdao_query.png)
### 查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/006.png)
### 資料庫狀態  
修改35號訂單前的資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/007.png)
### 修改訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/008.png)
同先前的頁面將變數集中至一個物件  
並根據完整性與權限決定後續頁面  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/updateaction.png)  
若資料不全則回上頁補齊資料  
管理權限的展示將在後續內容裡說明  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/struts_updateaction.png)  
### 修改確認
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/009.png)
### 修改成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/010.png)
確認後以resdao類別的update方法修改對應訂單資料  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/resdao_update.png)
### 資料庫狀態  
35號訂單修改
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/011.png)
### 刪除33號訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/012.png)
### 刪除確認
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/013.png)
### 刪除成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/014.png)
確認後以resdao類別的delete方法刪除對應訂單資料  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/resdao_delete.png)
### 資料庫狀態  
33號訂單已刪除  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/015.png)

### 管理員登入頁面
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/016.png)
接收帳號密碼後確認使否符合  
並根據輸出決定後續頁面  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/loginaction.png)
若符合則前往管理頁面，不符合則回到首頁
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/struts_loginaction.png)
### 登入成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/017.png)
由於管理者頁面都在WEB-INF資料夾底下  
無法直接以一般超連結方式前往  
因此將以struts框架的功能管理頁面轉換  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/struts_manageraction.png)
### 管理員訂單新增功能  
訂餐數量不受限制  
此外與一般訂餐相同  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/018.png)
### 新增成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/019.png)
### 資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/020.png)
### 管理員查詢頁面  
此部分以無框架的方式查詢資料庫資料  
可以根據編號/客戶名稱/會員有無/總價進行任意組合的查詢  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/queryby.png)
以訂單編號35查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/021.png)
### 35號訂單查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/022.png)
### 以客戶名稱Gjun查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/023.png)
### 客戶名稱Gjun查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/024.png)
### 無會員資格訂單查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/025.png)
### 以訂單總價大於3000查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/026.png)
### 訂單總價大於3000查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/027.png)
### 以客戶名稱Bob，且總價大於3000查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/028.png)
### 客戶名稱Bob，且總價大於3000查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/029.png)
### 資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/030.png)
### 管理員訂單修改頁面  
訂餐數量不受限制  
此外與一般修改頁面功能相同  
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/031.png)
### 修改成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/032.png)
### 資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/033.png)

restaurant01.rar檔案內容為此網站的程式碼
# 一個模擬點餐過程的網頁APP
使用了Hibernate Spring Struts框架的功能

* Hibernate相關的功能與檔案
	* 一般情況下的mysql資料庫溝通
	* 相關檔案與說明
		* WebContent/mainwork/add/success.jsp 點餐確認後在資料庫新增資料
		* WebContent/mainwork/delete/success.jsp 刪除確認後在資料庫刪除資料
		* WebContent/mainwork/update/success.jsp 修改確認後在資料庫修改資料
		* WebContent/mainwork/query.jsp 在資料庫查詢資料
		* src/com/dao/resdao.java 利用Hibernate相關API實作溝通資料庫功能
		* src/com/model/res.hbm.xml 資料表格式指定
		* src/com/model/res.java 對應點餐資料表的相關類別
		* src/hibernate.cfg.xml 連接資料庫需要的網址、使用者名稱、密碼、Driver位置、資料庫對應的xml檔的指定
* Spring相關的功能與檔案
	* 多型宣告的應用
	* 相關檔案與說明
		* WebContent/mainwork/add/check.jsp 點餐確認頁面顯示不同情況的服務費計算
		* WebContent/manager.jsp 管理者登入的相關功能
		* src/spring.xml 將以下4個.java設定為要使用的相關類別
		* src/com/model/login.java 登入資料的傳輸用類別
		* src/com/tack/room.java 同資料夾tack介面的功能實作
		* src/com/tack/seat.java 同資料夾tack介面的功能實作
		* src/com/tack/out.java 同資料夾tack介面的功能實作
		* src/com/tack/tack.java 未實作功能的介面定義
* Struts相關的功能與檔案
	* 控制各頁面之間的轉換並呼叫該頁面所需功能，將結果轉發給下個頁面
	* 相關檔案與說明
		* src/com/action資料夾下所有.java檔
			* Hibernate相關
				* orderaction.java 資料庫溝通前將dao類別實體與要傳輸的資料提升為Session
				* queryaction.java
				* updateaction.java
				* deleteaction.java
			* Spring相關
				* orderaction.java 不同情況下的餐費計算
				* loginaction.java 宣告需要使用的類別
			* 控制WebContent/WEB-INF/內的頁面轉換
				* manageraction.java
			* 以基本sqlAPI實作資料庫查詢功能
				* managerqueryaction.java
		* 專案下所有.jsp檔
		* WebContent/WEB-INF/web.xml
		* src/struts.xml 設定不同執行結果要轉換的頁面
* 未使用框架的檔案與功能說明
	* src/com/dao/queryby.java 以基本sqlAPI實作WebContent/WEB-INF/manager/query.jsp頁面下的的資料庫多筆資料篩選查詢功能
