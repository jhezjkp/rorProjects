-- MySQL dump 10.13  Distrib 5.5.27, for osx10.6 (i386)
--
-- Host: localhost    Database: forum_dev
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `posts_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'测试','2013-03-13 03:35:04','2013-03-13 03:35:04',9),(2,'小说版','2013-03-13 04:09:47','2013-03-13 04:09:47',1),(3,'abc','2013-03-13 09:04:04','2013-03-13 09:04:04',0);
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `board_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `excerpt_image_file_name` varchar(255) DEFAULT NULL,
  `excerpt_image_content_type` varchar(255) DEFAULT NULL,
  `excerpt_image_file_size` int(11) DEFAULT NULL,
  `excerpt_image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'公告','这是一个公告111','2013-03-13 03:51:17','2013-03-13 12:57:27',1,1,NULL,NULL,NULL,NULL),(2,'工行去年现代服务业贷款劲增41%','近年来，中国工商银行将支持现代服务业发展作为推进经济结构优化升级的重要着力点，持续加大金融支持力度。据统计，截至2012年末工行对现代服务业提供的贷款余额已超过1.1万亿，较年初大幅增长了41%，是国内对现代服务业贷款支持力度最大的商业银行。其中，工行还将现代服务业中的中小企业作为重点支持对象，在工行提供信贷支持的4.83万户现代服务业企业中，中小企业占89%，贷款余额的占比则达到78%。','2013-03-13 03:51:50','2013-03-13 03:51:50',1,1,NULL,NULL,NULL,NULL),(7,'重生之官路商途','更俗','2013-03-13 04:13:31','2013-03-13 04:13:31',2,1,NULL,NULL,NULL,NULL),(10,'测试','You have a few options:  Install bundler to a global gemset. rvm gemset use global && gem install bundler If you have Homebrew installed, just do brew install ruby and avoid rvm altogether. (There\'s also rbenv and ry as alternatives to rvm, but I just use','2013-03-13 06:14:41','2013-03-13 06:14:59',1,1,NULL,NULL,NULL,NULL),(11,'qq----','tencent','2013-03-13 08:25:33','2013-03-13 10:20:45',1,2,NULL,NULL,NULL,NULL),(12,'微信','有次搜微信附近人，发现一个叫紫薇的，打招呼后不理我，再加一次内附留言：紫薇，是我，我是尔康！对方果断加上了，非让我带她去找她的皇阿玛！！我吓尿了！！ http://is.gd/bTl9uo ','2013-03-13 10:26:31','2013-03-13 10:26:31',1,1,NULL,NULL,NULL,NULL),(13,'自行车','我们北方学校在大雪中挣扎的自行车。颤抖吧。。南方的孩子们','2013-03-13 10:27:27','2013-03-13 10:27:27',1,1,NULL,NULL,NULL,NULL),(14,'波多野结衣','me-me*練いったん終わって、只今監面に来てます★＼(^o^)／終わったら皆と合流する( ^ω^ ) また夜はちょっと練習(*^^*)♪','2013-03-13 10:28:16','2013-03-13 12:56:05',1,1,NULL,NULL,NULL,NULL),(15,'Pow User\'s Manual','Pow is a zero-configuration Rack server for Mac OS X. It makes developing Rails and Rack applications as frictionless as possible. You can install it in ten seconds and have your first app up and running in under a minute. No mucking around with /etc/hosts, no compiling Apache modules, no editing configuration files or installing preference panes. And running multiple apps with multiple versions of Ruby is trivial.  How does it work? A few simple conventions eliminate the need for tedious configuration. Pow runs as your user on an unprivileged port, and includes both an HTTP and a DNS server. The installation process sets up a firewall rule to forward incoming requests on port 80 to Pow. It also sets up a system hook so that all DNS queries for a special top-level domain (.dev) resolve to your local machine.  To serve a Rack app, just symlink it into your ~/.pow directory. Let\'s say you\'re working on an app that lives in ~/Projects/myapp. You\'d like to access it at http://myapp.dev/. Setting it up is as easy as:  $ cd ~/.pow $ ln -s ~/Projects/myapp That\'s it! The name of the symlink (myapp) determines the hostname you use (myapp.dev) to access the application it points to (~/Projects/myapp).  1 Installation 1.1 Installing From Source 1.2 Uninstalling Pow 2 Managing Applications 2.1 Using Virtual Hosts and the .dev Domain 2.1.1 Subdomains 2.1.2 Multiple Virtual Hosts 2.1.3 The Default Virtual Host 2.1.4 Port Proxying 2.1.5 Accessing Virtual Hosts from Other Computers 2.2 Customizing Environment Variables 2.2.1 Choosing the Right Environment Script 2.3 Working With Different Versions of Ruby 2.3.1 Specifying Ruby Versions with rbenv 2.3.2 Specifying Ruby Versions with RVM 2.3.3 Specifying Ruby Versions by Setting $PATH 2.4 Serving Static Files 2.5 Restarting Applications 2.5.1 Restarting Before Every Request 2.6 Viewing Log Files 3 Configuring Pow 3.1 Configuring Top-Level Domains 3.2 Reading the Current Configuration 3.3 Restarting Pow 4 Third-Party Tools 5 Contributing 6 Version History 7 License 1 Installation  Pow requires Mac OS X version 10.6 or newer. To install or upgrade Pow, just open a terminal and run this command:  $ curl get.pow.cx | sh You can review the install script yourself before running it, if you\'d like. Always a good idea.  The installer unpacks the latest Pow version into ~/Library/Application Support/Pow/Versions and points the ~/Library/Application Support/Pow/Current symlink there. It also installs launchd scripts for your user (the Pow server itself) and for the system (to set up the ipfw rule), if necessary. Then it boots the server.  Note: The firewall rule installed by Pow redirects all incoming traffic on port 80 to port 20559, where Pow runs. This means if you have another web server running on port 80, like the Apache that comes with Mac OS X, it will be inaccessible without either disabling the firewall rule or updating that server\'s configuration to listen on another port.  1.1 Installing From Source To install Pow from source, you\'ll need Node 0.6.0 or higher and npm:  $ git clone https://github.com/37signals/pow.git $ cd pow $ npm --global install $ npm --global run-script pow restart For detailed instructions on installing Pow from source, including instructions on how to install Node and npm, see the Installation wiki page.  1.2 Uninstalling Pow If you decide Pow\'s not for you, uninstallation is just as easy:  $ curl get.pow.cx/uninstall.sh | sh (Review the uninstall script.)  2 Managing Applications  Pow deals primarily with Rack applications. For the purposes of this document, a Rack application is a directory with a config.ru rackup file (and optionally a public subdirectory containing static assets). For more information on rackup files, see the Rack::Builder documentation.  Pow automatically spawns a worker process for an application the first time it\'s accessed, and will keep up to two workers running for each application. Workers are automatically terminated after 15 minutes of inactivity.  2.1 Using Virtual Hosts and the .dev Domain A virtual host specifies a mapping between a hostname and an application. To install a virtual host, symlink a Rack application into your ~/.pow directory. The name of the symlink tells Pow which hostname you want to use to access the application. For example, a symlink named myapp will be accessible at http://myapp.dev/.  Note: The Pow installer creates ~/.pow as a convenient symlink to ~/Library/Application Support/Pow/Hosts, the actual location from which virtual host symlinks are read.  2.1.1 Subdomains Once a virtual host is installed, it\'s also automatically accessible from all subdomains of the named host. For example, the myapp virtual host described above could also be accessed at http://www.myapp.dev/ and http://assets.www.myapp.dev/. You can override this behavior to, say, point www.myapp.dev to a different application — just create another virtual host symlink named www.myapp for the application you want.  2.1.2 Multiple Virtual Hosts You might want to serve the same application from multiple hostnames. In Pow, an application may have more than one virtual host. Multiple symlinks that point to the same application will share the same worker processes.  2.1.3 The Default Virtual Host If you attempt to access a domain that Pow doesn\'t understand, like http://localhost/, you\'ll see a page letting you know that Pow is installed and working correctly, with instructions on how to set up an application.  You can override this behavior to serve all requests for unhandled domains with a particular Rack application. Create a symlink in ~/.pow named default and point it to the application of your choice.  2.1.4 Port Proxying Pow\'s port proxying feature lets you route all web traffic on a particular hostname to another port on your computer. To use it, just create a file in ~/.pow (instead of a symlink) with the destination port number as its contents.  For example, to forward all traffic for http://proxiedapp.dev/ to port 8080:  $ echo 8080 > ~/.pow/proxiedapp You can also use port proxying to access web apps written for other runtimes such as Python or Node.js. Remember that services behind the proxy won\'t automatically be started or stopped like Rack apps.  2.1.5 Accessing Virtual Hosts from Other Computers Sometimes you need to access your Pow virtual hosts from another computer on your local network — for example, when testing your application on a mobile device or from a Windows or Linux VM.  The .dev domain will only work on your development computer. However, you can use the special .xip.io domain to remotely access your Pow virtual hosts.  Construct your xip.io domain by appending your application\'s name to your LAN IP address followed by .xip.io. For example, if your development computer\'s LAN IP address is 10.0.1.43, you can visit myapp.dev from another computer on your local network using the URL http://myapp.10.0.1.43.xip.io/.  2.2 Customizing Environment Variables Pow lets you customize the environment in which worker processes run. Before an application boots, Pow attempts to execute two scripts — first .powrc, then .powenv — in the application\'s root. Any environment variables exported from these scripts are passed along to Rack.  For example, if you wanted to adjust the Ruby load path for a particular application, you could modify RUBYLIB in .powrc:  export RUBYLIB=\"app:lib:$RUBYLIB\" 2.2.1 Choosing the Right Environment Script Pow supports two separate environment scripts with the intention that one may be checked into your source control repository, leaving the other free for any local overrides. If this sounds like something you need, you\'ll want to keep .powrc under version control, since it\'s loaded first.  2.3 Working With Different Versions of Ruby Pow invokes each application\'s Ruby processes in an isolated environment. This design makes it possible to use different Ruby runtimes on a per-application basis.  There are three ways to specify which version of Ruby to use for a particular application.  2.3.1 Specifying Ruby Versions with rbenv You can use rbenv to specify per-application Ruby versions for use with Pow.  The rbenv local command lets you set a per-project Ruby version by saving an .rbenv-version file in the current directory. For example, to configure a particular application to run with Ruby 1.9.3-p194, change to the application\'s directory and run:  $ rbenv local 1.9.3-p194 Assuming you have set up rbenv in your login environment, there is no additional configuration necessary to use it with Pow.  For more information, see the rbenv documentation.  2.3.2 Specifying Ruby Versions with RVM RVM is another option for specifying per-application Ruby versions for use with Pow.  You can create a project .rvmrc file to specify an application\'s Ruby version. For example, to configure your application to run with Ruby 1.8.7, add the following to .rvmrc in the application\'s root directory:  rvm 1.8.7 Because RVM works by injecting itself into your shell, you must first load it in each application\'s .powrc or .powenv file using the following code:  if [ -f \"$rvm_path/scripts/rvm\" ] && [ -f \".rvmrc\" ]; then   source \"$rvm_path/scripts/rvm\"   source \".rvmrc\" fi For more information, see the RVM web site.  2.3.3 Specifying Ruby Versions by Setting $PATH You can adjust the PATH environment variable in .powrc or .powenv to select Ruby versions on a per-application basis. For example, if you have Ruby installed into /opt/ruby-1.8.7, you can add the following to .powenv:  export PATH=\"/opt/ruby-1.8.7/bin:$PATH\" When Pow loads your application, it will find and use the first ruby binary in your PATH — in this case /opt/ruby-1.8.7/bin/ruby.  2.4 Serving Static Files Pow automatically serves static files in the public directory of your application. It\'s possible to serve a completely static site without a config.ru file as long as it has a public directory.  2.5 Restarting Applications You can tell Pow to restart an application the next time it\'s accessed. Simply save a file named restart.txt in the tmp directory of your application (you\'ll need to create the directory first if it doesn\'t exist). The easiest way to do this is with the touch command:  $ touch tmp/restart.txt Restarting an application will also reload any environment scripts (.powrc, .powenv, or .rvmrc) before booting the app, so don\'t forget to touch restart.txt if you make changes to these scripts.  It\'s also fine to kill worker processes manually — they\'ll restart the next time you access the virtual host. A handy way to do this is with OS X\'s Activity Monitor. Select \"All Processes, Hierarchically\" from the dropdown at the top of the Activity Monitor window. Then find the pow process, expand the disclosure triangle, find the Ruby worker process you want to kill, and choose \"Quit Process.\" (You can click \"Inspect\" on a worker process and choose \"Open Files and Ports\" to determine which application the process is serving.)  2.5.1 Restarting Before Every Request It can be useful during development to reload your application with each request, and frameworks like Rails will handle such reloading for you. For pure Rack apps, or when using frameworks like Sinatra that don\'t manage code reloading, Pow can help.  If the tmp/always_restart.txt file is present in your application\'s root, Pow will automatically reload the application before each request.  Note: tmp/always_restart.txt will only reload the application, not its environment scripts. To reload .powrc, .powenv, or .rvmrc, you must touch tmp/restart.txt first.  2.6 Viewing Log Files Pow stores log files in the ~/Library/Logs/Pow directory so they can be viewed easily with OS X\'s Console application. Each incoming request URL is logged, along with its hostname and HTTP method, in the access.log file. The stdout and stderr streams for each worker process are captured and logged to the apps directory in a file matching the name of the application.  Note: Rails logger output does not appear in Pow\'s logs. You\'ll want to tail -f log/development.log to see those entries.  3 Configuring Pow  Pow is designed so that most people will never need to configure it. Sometimes, though, you can\'t avoid having to adjust a setting or two.  When Pow boots, it executes the .powconfig script in your home directory if it\'s present. You can use this script to export environment variables that will override Pow\'s default settings.  For example, this ~/.powconfig file tells Pow to kill idle applications after 5 minutes (300 seconds) and spawn 3 workers per app:  export POW_TIMEOUT=300 export POW_WORKERS=3 See the Configuration class documentation for a full list of settings that you can change.  Note: After modifying a setting in ~/.powconfig, you\'ll need to restart Pow for the change to take effect. See the Restarting Pow section below.  3.1 Configuring Top-Level Domains The POW_DOMAINS environment variable specifies a comma-separated list of top-level domains for which Pow will serve DNS queries and HTTP requests. The default value for this list is a single domain, dev, meaning Pow will configure your system to resolve *.dev to 127.0.0.1 and serve apps in ~/.pow under the .dev domain.  You can add additional domains to POW_DOMAINS:  export POW_DOMAINS=dev,test If you want Pow to serve apps under additional top-level domains, but not serve DNS queries for those domains, use the POW_EXT_DOMAINS variable. Entries in POW_EXT_DOMAINS will not be configured with the system resolver, so you must make sure they point to your computer by other means.  Note: If you change the value of POW_DOMAINS, you must reinstall Pow using curl get.pow.cx | sh. This is because the relevant files in /etc/resolver/ are created at install time.  WARNING: Adding top-level domains like \".com\" to POW_DOMAINS can be hazardous to your health! In the (likely) event that at some point you lock yourself out of these domains, you will be unable to reach important remote addresses like github.com (where you can find the source code) and S3 (where Pow\'s installation and uninstallation scripts are hosted). Do not panic! Delete the files Pow has created in /etc/resolver/ and DNS activity will return to normal. (You can safely use POW_EXT_DOMAINS for these domains instead.)  3.2 Reading the Current Configuration If you are writing software that interfaces with Pow, you can inspect the running server\'s status and configuration via HTTP. To access this information, open a connection to localhost and issue a GET request with the header Host: pow. The available endponts are:  /status.json: A JSON-encoded object containing the current Pow server\'s process ID, version string, and the number of requests it\'s handled since it started. /env.json: A JSON-encoded object representing the running server\'s environment, which is inherited by each application worker. /config.json: A JSON-encoded object representing the running server\'s configuration. Example of requesting an endpoint with curl:  $ curl -H host:pow localhost/status.json Alternatively, if you know the path to the Pow binary, you can generate an eval-safe version of the local configuration by invoking Pow with the --print-config option (useful for shell scripts):  $ eval $(~/Library/Application\\ Support/Pow/Current/bin/pow \\     --print-config) $ echo $POW_TIMEOUT 900 3.3 Restarting Pow Pow runs as a Mac OS X Launch Agent. If the Pow server process terminates, the OS will restart it automatically.  You may need to manually restart Pow if you make configuration changes to ~/.powconfig or modify your login environment. To tell Pow to quit and restart, touch the global restart.txt file:  $ touch ~/.pow/restart.txt Alternatively, you can use the Activity Monitor application. Find the pow process in the process listing, select it, and click the Quit Process button.  4 Third-Party Tools  Powder is \"syntactic sugar for Pow.\" Install the gem (gem install powder) and you\'ll get a powder command-line utility that makes it easier to add applications, tail your log files, and restart Pow. See the Powder readme for more examples of what it can do.  Powify is \"an easy-to-use wrapper for 37signals\' Pow.\" Install the gem (gem install powify) to get a powify command for installing, updating, and managing Pow and your virtual hosts. See the Powify readme for the full list of commands.  Showoff is \"the easiest way to share localhost over the web.\" It creates a tunnel between your computer and the Showoff server, then gives you a publicly accessible URL so others can see the app or site you\'re working on. Showoff supports Pow\'s virtual hosts — install the gem via gem install showoff-io, then run show dev. (with the trailing dot). Your Pow apps will be accessible at http://yourappname.yourname.showoff.io/.  5 Contributing  Pow is written in Node.js with CoffeeScript. You can read the annotated source code to learn about how it works internally. Please report bugs on the GitHub issue tracker.  If you\'re interested in contributing to Pow, first start by installing Pow from source.  Make your changes and use cake to run the test suite:  $ cake test Then submit a pull request on GitHub. Your patch is more likely to be merged if it\'s well-documented and well-tested. Read through the closed issues to get a feel for what\'s already been proposed and what a good patch looks like.  6 Version History  0.4.0 (June 7, 2012):  Pow\'s port proxying feature lets you proxy virtual hosts to other ports on your computer. Just create a file in ~/.pow with the virtual host as the filename and the port number as its contents, e.g. echo 8080 > ~/.pow/myapp. Built-in support for xip.io wildcard DNS lets you access your Pow virtual hosts from other computers on your local network — perfect for testing your apps in Windows or on mobile devices. Just visit e.g. http://myapp.10.0.0.1.xip.io/ (where 10.0.0.1 is your LAN IP address) instead of http://myapp.dev/. You can now restart Pow itself by touching the ~/.pow/restart.txt file. If you use a shell other than Bash, Pow now properly loads your login environment, including $PATH. An infinite loop bug that could cause Pow to lock up and consume 99% CPU under certain circumstances has been fixed by replacing the bundled ndns library with an alternative. The bundled nack library has been upgraded to version 0.13.2. Due to the large number of issues it causes, support for automatically loading project .rvmrc files has been deprecated and will be removed in the next major release. See the \"Specifying Ruby Versions with RVM\" section of the manual for instructions on how to continue using RVM with Pow. 0.3.2 (August 13, 2011):  The bundled nack library has been upgraded to version 0.12.3 for improved streaming response body support. The bundled Node binary has been upgraded to version 0.4.10. If an .rvmrc file is present but rvm is not installed, Pow will fall back to whichever Ruby is in $PATH rather than displaying an error message. This means you can migrate from rvm to rbenv without needing to remove .rvmrc from your application. A few changes have been made to the (now unmaintained) ndns library bundled with Pow in an attempt to avoid the infinite loop bug described in issue #99. 0.3.1 (May 11, 2011):  The POW_EXT_DOMAINS option should actually work now. Apologies. 0.3.0 (May 10, 2011):  The installation script now performs a self-test and attempts to reload the system network configuration if DNS resolution fails. Configuration files are installed as mode 0644, and launchctl load is invoked with the -Fw flags. The uninstallation script now works with older versions of iTerm and removes installed files from /etc/resolver. Pow can be configured to serve requests for unknown virtual hosts by creating a special catch-all symlink named default in ~/.pow. If the tmp/always_restart.txt file is present in an application, Pow will restart it before every request (useful with bare Rack apps or frameworks like Sinatra that don\'t manage code reloading). POW_TIMEOUT is now specified in seconds instead of milliseconds, and a new POW_EXT_DOMAINS option defines a list of top-level domains that Pow will handle (but not serve DNS requests for). Requests without a Host: header no longer raise an exception, and URLs with .. are now properly passed through to the Rack application. Error messages have been redesigned to include links to the manual and wiki. A more helpful error message has been added for Rails 2.3 apps without a config.ru file. You can print the full Pow configuration in shell format with pow --print-config, and third-party apps can request information about the running Pow server via the http://pow/config.json and http://pow/status.json endpoints. 0.2.2 (April 7, 2011): Initial public release.  7 License  (The MIT License)  Copyright © 2012 Sam Stephenson, 37signals  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.','2013-03-13 12:27:23','2013-03-13 13:51:30',1,1,NULL,NULL,NULL,NULL),(16,'image','image test','2013-03-13 13:32:54','2013-03-13 13:32:54',1,1,'Bullets.png','image/png',44504,'2013-03-13 13:32:53');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130312133323'),('20130312133347'),('20130312141927'),('20130313054935'),('20130313063736'),('20130313072606'),('20130313103629'),('20130313131425'),('20130313134940');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jhezjkp@163.com','$2a$10$SVxVl2ZQTyIGWamBHytN5OZvqUTf.2ZOapoWPpKGM9s7yol1exLaK',NULL,NULL,NULL,4,'2013-03-13 12:21:32','2013-03-13 08:33:51','127.0.0.1','140.207.0.214','2013-03-13 06:04:30','2013-03-13 12:21:32',1),(2,'jkp3389@qq.com','$2a$10$bwLgbM5pxgxtMgz9jEs7q.1w1/umFqLj/nkfA/xXsTXyFT6f/f5zC',NULL,NULL,NULL,1,'2013-03-13 08:25:24','2013-03-13 08:25:24','140.207.0.214','140.207.0.214','2013-03-13 08:25:24','2013-03-13 08:25:24',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-13 22:07:40
