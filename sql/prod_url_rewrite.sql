UPDATE wp_options SET option_value = replace(option_value, 'http://localhost', 'http://ricochetconstruction.com') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'http://localhost', 'http://ricochetconstruction.com');
UPDATE wp_posts SET post_content = replace(post_content, 'http://localhost', 'ricochetconstruction.com');
UPDATE wp_postmeta SET meta_value = replace(meta_value, 'http://localhost', 'ricochetconstruction.com');
commit;
