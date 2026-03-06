class PostsController < ApplicationController
    def index
        #postsでアクセスしたときの処理データベースから全ての投稿を取得して@postsに格納
        @posts = Post.all
    end

    def new
        #新しい投稿を作成するためのフォームを表示するためのアクション
        @post = Post.new
    end

    def create
        #フォームから送信されたデータを処理して新しい投稿を作成するためのアクション
        @post = Post.new(post_params)
        if @post.save
            #保存に成功した場合は投稿一覧ページにリダイレクトし、成功メッセージを表示
            redirect_to posts_path
        else
            render :new
        end
    end

    private 
    
    def post_params
        #ストロングパラメータを使用して、許可された属性のみを受け取るためのメソッド
        params.require(:post).permit(:title, :content)
    end
    
end
