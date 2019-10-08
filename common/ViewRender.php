<?php

namespace common;

class ViewRender extends \yii\smarty\ViewRenderer
{
    public function init()
    {
        parent::init();
        $this->smarty->left_delimiter = '{{';
        $this->smarty->right_delimiter = '}}';
    }
}
