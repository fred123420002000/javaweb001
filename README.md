# JavaWeb點餐系統作品功能演示
首頁
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/001.png)
新增訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/002.png)
確認訂單內容
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/003.png)
成功新增訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/004.png)
查詢訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/005.png)
查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/006.png)
資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/007.png)
修改訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/008.png)
修改確認
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/009.png)
修改成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/010.png)
資料庫狀態(35號訂單修改)
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/011.png)
刪除33號訂單
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/012.png)
刪除確認
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/013.png)
刪除成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/014.png)
資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/015.png)
管理員登入頁面
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/016.png)
登入成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/017.png)
管理員訂單新增功能(數量不受限制)
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/018.png)
新增成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/019.png)
資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/020.png)
管理員查詢頁面  
以訂單編號35查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/021.png)
35號訂單查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/022.png)
以客戶名稱Gjun查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/023.png)
客戶名稱Gjun查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/024.png)
無會員資格訂單查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/025.png)
以訂單總價大於3000查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/026.png)
訂單總價大於3000查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/027.png)
以客戶名稱Bob，且總價大於3000查詢
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/028.png)
客戶名稱Bob，且總價大於3000查詢結果
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/029.png)
資料庫狀態
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/030.png)
管理員訂單修改頁面
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/031.png)
修改成功
![image](https://github.com/fred123420002000/javaweb001/blob/master/demopicture/032.png)
資料庫狀態
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
