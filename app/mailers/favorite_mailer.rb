class FavoriteMailer < ApplicationMailer
  default from: "mendoza.omar.85@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
    headers["References"] = "<post/#{post.id}@bloccit.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
    mail(to: "conradwt@gmail.com", subject: "New Comment on #{post.title}")
    mail(cc: "mendoza.omar.85@gmail.com", subject: "Test Email")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@bloccit.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
    headers["References"] = "<post/#{post.id}@bloccit.example>"

    @post = post

    mail(to: post.user.email, subject: "New post #{post.title}!")
  end
end
