git add .
echo "Please add a commit!"
##
read SubmitInformation
while([[ -z $SubmitInformation ]])
do
echo "Error! Your input is empty!"
echo "Please add a commit!"
read SubmitInformation
done
git commit -m SubmitInformation
git push
exit 0
