default: all

all: fixfooter

push: fixfooter
	#if you want to publish to some intranet server; just sync up html and these files
	rsync --verbose --recursive --delete reports/. ssh:someserver/path
	rsync --verbose * ssh:someserver/path

fixfooter: reports/index.html
	#fix generated stuff adding your logo
	ruby -pi -e "gsub(/>(.*?)<\/h1>/,'><img src=\"http://somecompany/logo.png\" style=\"float:right;\"width=\"145\" height=\"25\"> \\1</h1>')" reports/*.html
	#if you follow a convention for JIRA tickets, add a link
	ruby -pi -e "gsub(/\(JIRA-(\d+)\)<\/td>/,'<a href="https://somecompany.atlassian.net/browse/JIRA-\\1">(JIRA-\\1)</a></td>')" reports/*.html

reports/index.html: plan.tjp *.tji
	mkdir -p reports
	#tj3 --freeze plan.tjp --freezedate `date +%Y-%m-%d` -o reports/
	tj3 plan.tjp  -o reports/

clean:
	rm -fR reports

