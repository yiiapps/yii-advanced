<?php

namespace common;

class DbManager extends \yii\rbac\DbManager
{
    protected function executeRule($user, $item, $params)
    {
        if (empty($item->ruleName)) {
            return true;
        }
        $rule = $this->getRule($item->ruleName);
        if ($rule instanceof Rule) {
            return $rule->execute($user, $item, $params);
        }

        throw new InvalidConfigException("Rule not found: {$item->ruleName}");
    }
}
