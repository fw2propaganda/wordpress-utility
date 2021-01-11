-- Esse script altera o link base do site no banco de dados do Wordpres
-- Isso é útil para quando o site foi desenvolvido em um domínio e será migrado para outro
-- Exemplo: artsferro.fw2propaganda.com.br para --> artsferro.com.br

-- Também é útil para alterar http para https

UPDATE wp_options SET option_value = replace(option_value, 'link antigo', 'htlink novo') WHERE option_name = 'home' OR option_name = 'siteurl'; UPDATE wp_posts SET guid = replace(guid, 'link antigo','htlink novo'); UPDATE wp_posts SET post_content = replace(post_content, 'link antigo', 'htlink novo'); UPDATE wp_postmeta SET meta_value = replace(meta_value,'link antigo','htlink novo');
