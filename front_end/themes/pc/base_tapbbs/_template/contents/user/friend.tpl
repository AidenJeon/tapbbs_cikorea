<section id="blog">
    <div class="container">
        <div>
            <h2><i class="fa fa-users"></i> {lang.menu_user_friend}</h2>
            <table class="bbs_table">
                <colgroup>
                    <col />
                    <col width="150" />
                </colgroup>
                <thead>
                <tr>
                    <th>{lang.friend}</th>
                    <th>{lang.action}</th>
                </tr>
                </thead>
                {@ users_friend}
                    <tr>
                        <td class="left">
                            <a href="#send_message" title="{users_friend->print_name}" role="friends" data-toggle="modal" data-target="#send_message" idx="{users_friend->friend_user_idx}">{users_friend->print_name}</a>
                        </td>
                        <td class="center"><a class="cursor" onclick="delete_friend({users_friend->idx}, '{BASE_URL}user/friend', {SETTING_ajax_timeout});">[{lang.delete}]</a></td>
                    </tr>
                {:}
                    <tr>
                        <td colspan="2" class="center">{lang.none}</td>
                    </tr>
                {/}
            </table>

            <div class="col-md-12 center">
                <ul class="pagination" style="margin:0 0 30px 0">
                    {pagination}
                </ul>
            </div>
        </div>
    </div>
</section>

<form method="post" name="delete_friend_form" id="delete_friend_form">
    <input type="hidden" name="idx" id="idx" value="" />
</form>

<div id="send_message" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">{lang.message}</h3>
            </div>
            <form method="post" name="send_message_form" id="send_message_form" data-ajax="false" class="form-horizontal">
                <div class="modal-body">
                    TO : <span id="print_receiver_name"></span>
                    <input type="hidden" name="receiver" id="receiver" value="" />
                    <p><div align="center"><textarea name="contents" id="contents" rows="5" class="form-control"></textarea></div></p>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btn_close" class="btn btn-default" data-dismiss="modal" aria-hidden="true">{lang.close}</button>
                    <button type="button" class="btn btn-message" onclick="send_message_exec({SETTING_ajax_timeout});">{lang.send}</button>
                </div>
            </form>
        </div>
    </div>
</div>