<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BONDHUBOOK - Dynamic</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #f0f2f5; margin: 0; padding: 0; }
        .navbar { background-color: #1877f2; color: white; padding: 12px; text-align: center; position: sticky; top: 0; font-size: 22px; font-weight: bold; z-index: 100; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        .main-container { max-width: 500px; margin: 10px auto; padding: 10px; }
        .create-post { background: white; border-radius: 10px; padding: 15px; margin-bottom: 20px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); }
        .create-post textarea { width: 93%; border: none; background: #f0f2f5; border-radius: 20px; padding: 12px; font-size: 15px; outline: none; resize: none; }
        .post-btn { background-color: #1877f2; color: white; border: none; padding: 10px; width: 100%; border-radius: 5px; font-weight: bold; margin-top: 10px; cursor: pointer; }
        .post-card { background: white; border-radius: 10px; padding: 15px; margin-bottom: 15px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); }
        .user-info { display: flex; align-items: center; margin-bottom: 10px; }
        .user-img { width: 40px; height: 40px; background: #ddd; border-radius: 50%; margin-right: 10px; }
        .user-name { font-weight: bold; color: #1c1e21; font-size: 16px; }
        .post-text { font-size: 15px; color: #050505; line-height: 1.4; margin: 10px 0; }
        .action-bar { border-top: 1px solid #ebedf0; padding-top: 10px; margin-top: 10px; display: flex; justify-content: space-around; }
        .action-btn { color: #65676b; font-weight: 600; font-size: 14px; cursor: pointer; }
    </style>
</head>
<body>

    <div class="navbar">BONDHUBOOK</div>

    <div class="main-container">
        <div class="create-post">
            <textarea id="postInput" placeholder="What's on your mind?"></textarea>
            <button class="post-btn" onclick="addPost()">Post Now</button>
        </div>

        <div id="newsFeed">
            <div class="post-card">
                <div class="user-info">
                    <div class="user-img"></div>
                    <div class="user-name">Gemini AI</div>
                </div>
                <div class="post-text">Welcome to BONDHUBOOK, Shahadat! Type something above and click 'Post Now' to see the magic.</div>
                <div class="action-bar">
                    <div class="action-btn">Like</div>
                    <div class="action-btn">Comment</div>
                    <div class="action-btn">Share</div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function addPost() {
            const postInput = document.getElementById('postInput');
            const newsFeed = document.getElementById('newsFeed');
            
            if (postInput.value.trim() === "") {
                alert("Please write something first!");
                return;
            }

            // Create New Post Card
            const newPost = document.createElement('div');
            newPost.className = 'post-card';
            newPost.innerHTML = `
                <div class="user-info">
                    <div class="user-img"></div>
                    <div class="user-name">Shahadat Hossain</div>
                </div>
                <div class="post-text">${postInput.value}</div>
                <div class="action-bar">
                    <div class="action-btn">Like</div>
                    <div class="action-btn">Comment</div>
                    <div class="action-btn">Share</div>
                </div>
            `;

            // Add to the top of News Feed
            newsFeed.prepend(newPost);
            
            // Clear the input box
            postInput.value = "";
        }
    </script>

</body>
</html>