#### MySQL  資料庫: gjun

##### I.資料表:member 

```MySql
CREATE TABLE `gjun`.`member` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(45) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `mobile` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
```

##### II.資料表:porder

```MySQL
CREATE TABLE `gjun`.`porder1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `desk` VARCHAR(45) NULL DEFAULT NULL,
  `A` INT NULL DEFAULT NULL,
  `B` INT NULL DEFAULT NULL,
  `C` INT NULL DEFAULT NULL,
  `sum` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
```

### 前端網頁(視圖層)

##### I.網站登入帳號首頁 : 

- WIN-INF.index.jsp



##### II.客戶訂單網頁如下7頁(porder)

- porder.addPorder.jsp  新增網頁
- porder. delete.jsp 刪除網頁 
- porder.update.jsp 修改網頁 
- porder.query.jsp 查詢網頁 
- porder.confirm.jsp 確認訂單網頁
- porder.finish.jsp 訂單完成網頁 
- poder.index.jsp   訂單(CRUD)網頁 



##### III.會員帳號資料網頁如下5頁(member)

- member.addMember.jsp  新增註冊會員帳號網頁 
- mmber.addMemberError.jsp  會員帳號重複網頁 
- member.addMemberSuccess.jsp  會員帳號註冊成功網頁
- member.loginError.jsp  登入失敗網頁 
- member.loginSuccess.jsp  登入成功網頁



### 後端控制層/業務層/數據訪問層

##### I .後端業務層(Model)

- Model.member.java-(class) 會員資料取得及設定方法類別(對應會員資料庫欄位方法物件等) 
- Model.porder.java-(class) 訂單資料取的及設定方法(對應訂單資料庫欄位方法物件等) 



##### II.後端數據訪問層(Dao)

- Dao.implDao.java-(interface)  父介面的數據訪問方法及CRUD物件的方法到資料庫
- Dao.memberDao.java-(class)  會員類別改寫父介面的數據訪問方法及CRUD物件的方法到member資料庫
- Dao.porderDao.java-(class)  訂單類別改寫父介面的數據訪問方法及CRUD物件的方法到porder資料庫



##### III.後端控制層(Controller)

- addMemberController-(Servlet)  

  接收前端網頁addMember.jsp 傳送資料判斷有無該會員,有則顯示在member/addMemberSuccess.jsp網頁上,否則顯示member/addMemberError.jsp,透過memberDao().add(m)方法把資料放入member資料庫

- addPorderController.java-(Servlet)

  接收前端網頁confirm.jsp 的資料需符合Model.porder格式才能用他的porderDao().add( )方法,並將該資料新

  增porder資料庫,把頁面導向porder/finish.jsp

- LoginController.java-(Servlet)

  從前端網頁WIN-INF.index.jsp接收資料,透過memberDao.query(username, password)方法取得值,設定資料生命週期,如果有該筆資料則將網頁導向member/loginSuccess.jsp,否則導向member/loginError.jsp

