class PostsController < ApplicationController
    def index
        #postsでアクセスしたときの処理データベースから全ての投稿を取得して@postsに格納
        @posts = Post.all
    end

    def new
        #新しい投稿を作成するためのフォームを表示するためのアクション
        @post = Post.new
    end
end
