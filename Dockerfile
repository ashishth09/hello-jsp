FROM ibmcom/websphere-traditional:profile
COPY dist/hello.war /tmp
RUN wsadmin.sh -lang jython -conntype NONE -c "AdminApp.install('/tmp/hello.war', '[ -appname hello -contextroot /hello -MapWebModToVH [[  HelloWorld hello.war,WEB-INF/web.xml default_host ]]]')"
