which git-flow 2>/dev/null
has_it=$?
if [ ${has_it} -gt 0 ];then
  echo "*******************************************"
  echo "You need gitflow"
  echo "Please see: https://github.com/nvie/gitflow"
  exit 1
fi

echo "Configuring git for this repository..."
git flow init -d

git config push.default tracking
git config branch.autosetuprebase always

echo "Adding basic files to git..."
mkdir src
vim test/rutests.sh
git add LICENSE README.md Makefile test/rutests.sh 

