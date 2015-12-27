<?php
class Cikorea extends MY_Controller
{
    public function getNotice()
    {
        $query = "
            SELECT
                ba.idx,
                ba.title,
                bc.contents
            FROM
                tb_bbs_article AS ba,
                tb_bbs_contents AS bc
            WHERE
                ba.bbs_idx = ?
                AND ba.is_notice = ?
                AND ba.idx = bc.article_idx
                AND ba.bbs_idx = bc.bbs_idx
            ORDER BY ba.idx DESC
        ";
        $query = $this->db->query($query, array(
            3,
            '1',
        ));

        $list = $query->result_array();
        foreach ($list as &$article) {
            $article['contents'] = cut_string($article['contents'], 200);
        }
        echo json_encode($list);
    }
}