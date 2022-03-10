# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css
echo '正在生成css文件...'
npx postcss src/ln-ui.css -o dist/ln-ui.css -u postcss-import autoprefixer --no-map
echo '正在生成压缩css文件...'
npx postcss src/ln-ui.css -o dist/ln-ui.min.css -u postcss-import autoprefixer cssnano --no-map
echo '搞定!'
