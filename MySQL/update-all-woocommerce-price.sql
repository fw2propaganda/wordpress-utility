-- Alterar "wp_", de acordo com prefixo configurado na instalação do Wordpress
-- Em " meta_value*1.2 ", significa que o valor sera atualizado em 1.2, equivalente a 120% (valor atual + 20%)
-- Em outras palavras, 1.2 aumenta em 20% o valor do produto. Para diminuir em 20%, o valor seria 0.8 e etc.
-- Esse script atualiza tanto produto simples quanto produto variável

UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_regular_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_sale_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_regular_price_tmp' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_sale_price_tmp' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_price_tmp' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_min_variation_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_max_variation_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_min_variation_regular_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_max_variation_regular_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_min_variation_sale_price' AND meta_value != '';
UPDATE wp_postmeta SET meta_value = meta_value*1.2 WHERE meta_key = '_max_variation_sale_price' AND meta_value != '';
DELETE FROM wp_options WHERE (option_name LIKE '_transient_wc_var_prices_%' OR option_name LIKE '_transient_timeout_wc_var_prices_%');

-- Esse último comando deleta os preços salvos em cache, para que sejam atualizados imediatamente no front-end do site.