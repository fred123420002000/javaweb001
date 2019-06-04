# javaweb001

#一個模擬點餐過程的網頁APP
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
















	