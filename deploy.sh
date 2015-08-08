echo '************    clean resource   ***********'
hexo clean
echo '************    generate resource   ***********'
hexo generate
echo '************    ssh to aws instance and clean old html   ***********'
ssh -i path/to/aws/key aws/instance/public/dns/name 'rm -rf /var/www/html/*'
echo '************    copy respurce to aws instance   ***********'
scp -i path/to/aws/key -r ~/hexo/blog/public/* aws/instance/public/dns/name:/var/www/html
echo '============    Done   ==========='
