<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>게시판 글쓰기</title>
    
        <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
    <style>
        header {
            padding: 1rem;
            background: #6667AB;
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        h3{
            color: white;
	        font-family: Verdana;
	        text-align: center;
            font-weight: bold;
        }
        .title{
            border:1.5px solid #6667AB;
            border-radius: 2px;
            padding: 7px;
            font-size: medium;
            width: 90%;
            display:block;
            margin: auto;
            margin-bottom: 25px;
            margin-top: 15px;
            
        }
        .button{
            border: solid #6667AB;
            border-radius: 4px;
            background: #6667AB;
            color: white;
            text-align: center;
            font-size: 14px;
            cursor: pointer;
            width: fit-content;
            float: right;
            margin-right: 3%;
            font-weight: bold;
            padding-top: 5px;
            padding-right: 8px;
            padding-bottom: 4px;
            padding-left: 8px;
            margin-bottom: 5%;
        }
        button {
            border: 0;
            background: none;
            color: white;
        }

        button:hover {
            font-size: 100%;
            text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #5C5E99;
        }
        .log{
            border: solid white;
            border-radius: 4px;
            background: white;
            color: #6667AB;
            text-align: center;
            font-size: 13px;
            cursor: pointer;
            width: fit-content;
            padding: 4px;
            font-weight: bold;
        }
    </style>
    <header>    
        <button type="button" onclick="location.href='board.jsp'">←</button>
        <h3>게시판 글쓰기</h3>
        <input type="submit" class="log" value="로그아웃"
					onclick="location.href='?.jsp'">
    </header>
    
    <br>
    <input type="text" class="title" placeholder="제목을 입력하세요."> 
    <script>
        $(document).ready(function () {
            $('#summernote').summernote({
              height: 500,                 
              minHeight: 500,            
              maxHeight: 500,            
              focus: true,                  
              lang: "ko-KR",					
              placeholder: '내용을 입력해주세요.',	
              toolbar: [
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                ['color', ['forecolor', 'color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert', ['picture', 'link', 'video']],
                ['view', ['fullscreen', 'help']]
              ],
              fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체',
                '굴림', '돋음체', '바탕체'],
              fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36',
                '50', '72']
            });
          });
    </script>
    <textarea id="summernote" name="editordata" placeholder="내용을 입력하세요."></textarea>
    <input type="submit" class="button" value="업로드"
					onclick="location.href='board.jsp'">
</body>
</html>