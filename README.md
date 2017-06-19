<!--
        <% post.replies.each do |reply| %>
       댓글: <%= reply.content %><br>
        <% end %>
    
    <form action='/home/reply_write' method='post'>
      <input type='hidden'value='<%= post.id %>' name='id_of_post'>
      <textarea class="form-control" id='content' name='content' row='3'></textarea>
      <button type="submit" class="btn btn-default">댓글</button>
    </form>
    <% end %>
    
    -->