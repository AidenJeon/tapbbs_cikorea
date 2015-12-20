<section id="blog">
    <div class="container">
        <div>
            <h2><i class="fa fa-users"></i> {lang.message}</h2>

            <div class="header_button_group">
                <button type="button" class="btn btn-default{? search == 'receive' || search == ''} btn-info{/}"
                    onclick="window.location.href='{BASE_URL}user/message?search=receive';">{lang.message_receive_box}</button>
                <button type="button" class="btn btn-default{? search == 'send'} btn-info{/}"
                    onclick="window.location.href='{BASE_URL}user/message?search=send';">{lang.message_send_box}</button>
            </div>

            <table class="bbs_table">
                <colgroup>
                    <col />
                    <col width="200" />
                    <col width="120" />
                </colgroup>
                <thead>
                <tr>
                    <th>{lang.message}</th>
                    <th>{lang.timestamp}</th>
                    <th>{lang.status}</th>
                </tr>
                </thead>
                {@ users_message}
                    <tr>
                        <td class="left" style="padding-left:20px">
                            <a href="#" role="message_list" search="{search}" idx="{users_message->idx}">
                                {? search == 'receive'}
                                {lang.sender}
                                {:}
                                {lang.receiver}
                                {/}
                                : {users_message->print_name}
                                - {users_message->title}
                            </a>
                        </td>
                        <td class="center">{users_message->print_send_date}</td>
                        <td class="center"><span id = "is_read_{users_message->idx}" class="{users_message->is_read_class}">{users_message->is_read_text}</span></td>
                    </tr>
                {:}
                    <tr>
                        <td colspan="3" class="center">{lang.none}</td>
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

<form id="hidden_form">
    <input type="hidden" id="search" value="{search}">
    <input type="hidden" id="ajax_timeout" value="{SETTING_ajax_timeout}">
</form>

<form method="post" name="delete_message_form" id="delete_message_form">
    <input type="hidden" name="idx" id="message_idx" value="" />
    <input type="hidden" name="search" value="{search}" />
</form>

<div id="message_detail" class="modal fade">

    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">{lang.message}</h3>
            </div>

            <div class="modal-body">
                <div><span name="kind"></span> : <span name="name"></span></div>
                <div><span name="receive_date"></span></div>
                <br />
                <div name="contents"></div>
            </div>

            <div class="modal-footer">
                <a href="#" name="delete_link" class="btn btn-danger">{lang.delete}</a>
                <a href="#" name="reply_link" class="hide btn btn-info" role="button" data-toggle="modal">{lang.reply_message}</a>
                <a href="#" class="btn" data-dismiss="modal" aria-hidden="true">{lang.close}</a>
            </div>
        </div>
    </div>
</div>

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