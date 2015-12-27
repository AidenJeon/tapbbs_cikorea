{? need_update_password}
<script type = "text/javascript">
    jAlert('<!--{need_update_password}-->', lang['alert'], function(r) { if(r) {} });
</script>
{/}

<section id="blog">
    <div class="container">
        <ul id="notice_list" style="display:none"></ul>

        <div class="row">
            <div class="features">
                <div class="col-lg-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-question-circle"></i> {qna_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ qna }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{qna->bbs_id}?idx={qna->idx}&lists_style={qna_bbs_lists_style}">

                                            {qna->title}

                                            <span class="pull-right">
                                                {? qna->new_article_icon}
                                                    <img src = "{BASE_URL}{qna->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? qna->comment_count > 0}
                                                    <span class="comment_count label label-default">{qna->comment_count}</span>
                                                {/}

                                                <span>{= substr(qna->timestamp, 0, 10) }</span>
                                            </span>

                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-question-circle"></i> {etcqna_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ etcqna }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{etcqna->bbs_id}?idx={etcqna->idx}&lists_style={etcqna_bbs_lists_style}">

                                            {etcqna->title}

                                            <span class="pull-right">
                                                {? etcqna->new_article_icon}
                                                    <img src = "{BASE_URL}{etcqna->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? etcqna->comment_count > 0}
                                                    <span class="comment_count label label-default">{etcqna->comment_count}</span>
                                                {/}

                                                <span>{= substr(etcqna->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-book"></i> {lecture_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ lecture }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{lecture->bbs_id}?idx={lecture->idx}&lists_style={lecture_bbs_lists_style}">

                                            {lecture->title}

                                            <span class="pull-right">
                                                {? lecture->new_article_icon}
                                                    <img src = "{BASE_URL}{lecture->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? lecture->comment_count > 0}
                                                    <span class="comment_count label label-default">{lecture->comment_count}</span>
                                                {/}

                                                <span class="pull-right">{= substr(lecture->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-user"></i> {recruit_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ recruit }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{recruit->bbs_id}?idx={recruit->idx}&lists_style={recruit_bbs_lists_style}">

                                            {recruit->title}

                                            <span class="pull-right">
                                                {? recruit->new_article_icon}
                                                    <img src = "{BASE_URL}{recruit->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? recruit->comment_count > 0}
                                                    <span class="comment_count label label-default">{recruit->comment_count}</span>
                                                {/}

                                                <span>{= substr(recruit->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-exclamation-triangle"></i> {tip_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ tip }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{tip->bbs_id}?idx={tip->idx}&lists_style={tip_bbs_lists_style}">

                                            {tip->title}

                                            <span class="pull-right">
                                                {? tip->new_article_icon}
                                                    <img src = "{BASE_URL}{tip->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? tip->comment_count > 0}
                                                    <span class="comment_count label label-default">{tip->comment_count}</span>
                                                {/}

                                                <span>{= substr(tip->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-star"></i> {news_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ news }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{news->bbs_id}?idx={news->idx}&lists_style={news_bbs_lists_style}">

                                            {news->title}

                                            <span class="pull-right">
                                                {? news->new_article_icon}
                                                    <img src = "{BASE_URL}{news->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? news->comment_count > 0}
                                                    <span class="comment_count label label-default">{news->comment_count}</span>
                                                {/}

                                                <span>{= substr(news->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-external-link-square"></i> {usedci_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ usedci }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{usedci->bbs_id}?idx={usedci->idx}&lists_style={usedci_bbs_lists_style}">

                                            {usedci->title}

                                            <span class="pull-right">
                                                {? usedci->new_article_icon}
                                                    <img src = "{BASE_URL}{usedci->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? usedci->comment_count > 0}
                                                    <span class="comment_count label label-default">{usedci->comment_count}</span>
                                                {/}

                                                <span>{= substr(usedci->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-code"></i> {pds_ci_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ pds_ci }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{pds_ci->bbs_id}?idx={pds_ci->idx}&lists_style={pds_ci_bbs_lists_style}">

                                            {pds_ci->title}

                                            <span class="pull-right">
                                                {? pds_ci->new_article_icon}
                                                    <img src = "{BASE_URL}{pds_ci->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? pds_ci->comment_count > 0}
                                                    <span class="comment_count label label-default">{pds_ci->comment_count}</span>
                                                {/}

                                                <span>{= substr(pds_ci->timestamp, 0, 10) }</span>
                                        </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-file"></i> {pds_normal_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ pds_normal }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{pds_normal->bbs_id}?idx={pds_normal->idx}&lists_style={pds_normal_bbs_lists_style}">

                                            {pds_normal->title}

                                            <span class="pull-right">
                                                {? pds_normal->new_article_icon}
                                                    <img src = "{BASE_URL}{pds_normal->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? pds_normal->comment_count > 0}
                                                    <span class="comment_count label label-default">{pds_normal->comment_count}</span>
                                                {/}

                                                <span>{= substr(pds_normal->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-bell"></i> {notice_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ notice }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{notice->bbs_id}?idx={notice->idx}&lists_style={notice_bbs_lists_style}">

                                            {notice->title}

                                            <span class="pull-right">
                                                {? notice->new_article_icon}
                                                    <img src = "{BASE_URL}{notice->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? notice->comment_count > 0}
                                                    <span class="comment_count label label-default">{notice->comment_count}</span>
                                                {/}

                                                <span>{= substr(notice->timestamp, 0, 10) }</span>
                                            </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-comments"></i> {community_bbs_name}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ community }
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{community->bbs_id}?idx={community->idx}&lists_style={community_bbs_lists_style}">

                                            {community->title}

                                            <span class="pull-right">
                                                {? community->new_article_icon}
                                                    <img src = "{BASE_URL}{community->new_article_icon}" width="16" height="11" alt="new" />
                                                {/}

                                                {? community->comment_count > 0}
                                                    <span class="comment_count label label-default">{community->comment_count}</span>
                                                {/}

                                                <span>{= substr(community->timestamp, 0, 10) }</span>
                                        </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pull-left widget archieve recently">
                        <h3><i class="fa fa-comments-o"></i> {lang.recently_comment}</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="blog_archieve">
                                    {@ recently_comment}
                                    <li>
                                        <a href="{BASE_URL}bbs/view/{.bbs_id}?idx={.article_idx}&amp;page_comment={recently_comment_page[.key_]}">

                                            {.comment}

                                            <span class="pull-right">
                                                {? .new_comment_icon != ''}
                                                    <img src = "{.new_comment_icon}" width = "16" height = "11" alt = "new" />
                                                {/}
                                                <span>{= substr(.print_date, 0, 10) }</span>
                                        </span>
                                        </a>
                                    </li>
                                    {/}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
$(document).ready(function() {
    $.get('/ci/getNotice', null, function(r) {
        var $notice = $('#notice_list');
        for (var i = 0; i < r.length; i++) {

            r[i].title = '<a href="/bbs/view/notice?idx=' + r[i].idx + '">' + r[i].title + '</a>';
            var title = '<p class="title">' + r[i].title + '</p>';
            var content = '<p class="content">' + r[i].contents + '</p>';
            $notice.append('<li>' + title + content + '</li>');
        }

        if (r.length > 0) {
            $notice.show();
        }
    }, 'json');
});
</script>