<?php
session_start();
require_once 'UserLogic.php';
require_once 'functions.php';

// ログインしてるか判定し、していなかったら新規登録画面へ返す
$result = UserLogic::checkLogin();

if (!$result){
    $_SESSION['login_err'] = 'ユーザーを登録してログインしてください';
    header('Location: signup_form.php');
    return;
}

$login_user = $_SESSION['login_user'];

//1.  DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=gs_bm;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
  exit('DB接続エラー:' . $e->getMessage());
}

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if ($status == false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){//←一つずつ取ってくるという定型文
    $view .= '<tr>';
    $view .= '<td>'.$result['indate'].'</td>';
    $view .= '<td><a href="'.$result['url'].'" target=”_blank”>'.$result['name'].'</a>'.'</td>';
    $view .= '<td>'.$result['text'].'</td>';
    $view .= '</tr>';
  }
}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>お薦め書籍一覧</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="bookmark_form.php">お薦め書籍登録画面へ</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
  <div>
    <div class="container jumbotron">
      <table border="1">
          <tr>
              <th>登録日時</th>
              <th>お名前</th>
              <th>性別</th>
          </tr>
          <?= $view ?>
      </table>
    </div>
    <form action="logout.php" method="POST">
        <input type="submit" name="logout" value="ログアウト">
    </form>
  </div>
<!-- Main[End] -->

</body>
</html>
