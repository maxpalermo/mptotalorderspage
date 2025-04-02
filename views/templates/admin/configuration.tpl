{*
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License version 3.0
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    Massimiliano Palermo <maxx.palermo@gmail.com>
 * @copyright Since 2016 Massimiliano Palermo
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License version 3.0
 *}

{if $message}
    {$message}
{/if}

<form method="post">
    <div class="panel">
        <div class="panel-heading">
            <i class="icon icon-cogs"></i>
            <span></span>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label for="forbidden_os">{l s='Forbidden Order states' mod='mptotalorderspage'}</label>
                <select id="forbidden_os" class="form-control chosen" name="forbidden_os[]" multiple>
                    {foreach $orderStates as $row}
                        <option value="{$row.id_order_state}" {if in_array($row.id_order_state, $forbidden_os)} selected {/if}>{$row.name}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <div class="panel-footer">
            <button class="btn btn-default pull-right" type="submit" name="submitSaveConfig" value="1">
                <i class="process-icon-save"></i>
                <span>{l s='Save' mod='mptotalorderspage'}</span>
            </button>
        </div>
    </div>
</form>