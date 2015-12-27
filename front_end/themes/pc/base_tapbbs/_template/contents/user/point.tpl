<section id="blog">
    <div class="container">
        {= this->xfetch('layout/banner_left.tpl')}

        <div>
            <h2><i class="fa fa-users"></i> {lang.menu_user_point}</h2>

            <div class="header_button_group">
                <button type="button" class="btn btn-default{? operator == 'all' || operator == ''} btn-info{/}"
                        onclick="window.location.href='{BASE_URL}user/point?operator=all';">{lang.all}</button>
                <button type="button" class="btn btn-default{? operator == 'plus'} btn-info{/}"
                        onclick="window.location.href='{BASE_URL}user/point?operator=plus';">{lang.plus}</button>
                <button type="button" class="btn btn-default{? operator == 'minus'} btn-info{/}"
                        onclick="window.location.href='{BASE_URL}user/point?operator=minus';">{lang.minus}</button>
            </div>

            <table class="bbs_table">
                <colgroup>
                    <col />
                    <col width="120" />
                    <col width="200" />
                </colgroup>
                <thead>
                <tr>
                    <th>{lang.point_info}</th>
                    <th>{lang.point}</th>
                    <th>{lang.timestamp}</th>
                </tr>
                </thead>
                {@ users_point}
                    <tr>
                        <td class="left" style="padding-left:20px">{users_point->alliance}</td>
                        <td class="center">{users_point->point}{SETTING_point_unit}</td>
                        <td class="center">{users_point->exec_date}</td>
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