Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F84433F5
	for <lists+tipc-discussion@lfdr.de>; Thu, 13 Jun 2019 10:07:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hbKlu-0006lW-UI; Thu, 13 Jun 2019 08:07:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1hbKlt-0006l0-Iv
 for tipc-discussion@lists.sourceforge.net; Thu, 13 Jun 2019 08:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b5tk07ZzjXhrNGdr+m4igM7MeVLbDPrv5B20fbbDZ2Y=; b=cr7RckF0ku3JA7nTvuJHjuOg7I
 r3W4L/YEegVCk3G/VcP2uAPg5/4HYKuaCDgzA+dZMJ2nTQRQStP6XSYfSUWqsM20ViYOGw/5gmD50
 OEyMdWnIPrhAe1c+4qqwmoMejTtlDGzbwEF7k0PrQxfvBVxj7BRYzqnsZ0ksPBWkkgLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b5tk07ZzjXhrNGdr+m4igM7MeVLbDPrv5B20fbbDZ2Y=; b=ZnS9NWEL3VF3L8NqIUiTkABCYa
 koVKOR9GHfYQNC/aNjWe40x5quXeZjVyDveBI2yA/XZseo66a/lVwNXzokZp9fpIMi7FRTUl3VgoG
 faQrqGCQuRMmBDl0B4nzWicdkqrRQgJ9ydA3w19C995tKaSAZmPplNKfqnUV/yz4n1fI=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hbKlp-004jTz-Gw
 for tipc-discussion@lists.sourceforge.net; Thu, 13 Jun 2019 08:07:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id E867DE49A4;
 Thu, 13 Jun 2019 18:07:31 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1560413251; bh=PG6Bg
 rw+6QUWi1LieFk9hLcFGDmDyZpBIV7MRFY7Ja0=; b=Fi5vPICtJHEq8SUX3WBfk
 R/TSDlUBoQ/qOvZF5DwugFYTE452Ev5YiHliIG0sH2dpnGAGrLzmRwCWt12YABgk
 JsHEWSLuPo0c6blr6WxIW9YE0n8nl+ohCsmXxdxaqoDXpiSRRWy1Kg69KvxlmzIJ
 1JY6iiycw3gzwAldu55ZnM=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id V6rKn6Nnrbwy; Thu, 13 Jun 2019 18:07:31 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id C9313E49C8;
 Thu, 13 Jun 2019 18:07:31 +1000 (AEST)
Received: from build.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 3C018E49A4;
 Thu, 13 Jun 2019 18:07:30 +1000 (AEST)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: dsahern@gmail.com, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 13 Jun 2019 15:07:19 +0700
Message-Id: <20190613080719.22081-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hbKlp-004jTz-Gw
Subject: [tipc-discussion] [iproute2-next v5] tipc: support interface name
 when activating UDP bearer
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Support for indicating interface name has an ip address in parallel
with specifying ip address when activating UDP bearer.
This liberates the user from keeping track of the current ip address
for each device.

Old command syntax:
$tipc bearer enable media udp name NAME localip IP

New command syntax:
$tipc bearer enable media udp name NAME [localip IP|dev DEVICE]

v2:
    - Removed initial value for fd
    - Fixed the returning value for cmd_bearer_validate_and_get_addr
      to make its consistent with using: zero or non-zero
v3: - Switch to use helper 'get_ifname' to retrieve interface name
v4: - Replace legacy SIOCGIFADDR by netlink
v5: - Fix leaky rtnl_handle

Acked-by: Ying Xue <ying.xue@windriver.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 tipc/bearer.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 87 insertions(+), 5 deletions(-)

diff --git a/tipc/bearer.c b/tipc/bearer.c
index 1f3a4d44441e..e17e2477c1ad 100644
--- a/tipc/bearer.c
+++ b/tipc/bearer.c
@@ -19,10 +19,12 @@
 #include <linux/tipc_netlink.h>
 #include <linux/tipc.h>
 #include <linux/genetlink.h>
+#include <linux/if.h>
 
 #include <libmnl/libmnl.h>
 #include <sys/socket.h>
 
+#include "utils.h"
 #include "cmdl.h"
 #include "msg.h"
 #include "bearer.h"
@@ -68,7 +70,7 @@ static void cmd_bearer_enable_l2_help(struct cmdl *cmdl, char *media)
 static void cmd_bearer_enable_udp_help(struct cmdl *cmdl, char *media)
 {
 	fprintf(stderr,
-		"Usage: %s bearer enable [OPTIONS] media %s name NAME localip IP [UDP OPTIONS]\n\n"
+		"Usage: %s bearer enable [OPTIONS] media %s name NAME [localip IP|device DEVICE] [UDP OPTIONS]\n\n"
 		"OPTIONS\n"
 		" domain DOMAIN		- Discovery domain\n"
 		" priority PRIORITY	- Bearer priority\n\n"
@@ -119,6 +121,74 @@ static int generate_multicast(short af, char *buf, int bufsize)
 	return 0;
 }
 
+static struct ifreq ifr = {};
+static int nl_dump_addr_filter(struct nlmsghdr *nlh, void *arg)
+{
+	struct ifaddrmsg *ifa = NLMSG_DATA(nlh);
+	char *r_addr = (char *)arg;
+	int len = nlh->nlmsg_len;
+	struct rtattr *addr_attr;
+
+	if (ifr.ifr_ifindex != ifa->ifa_index)
+		return 0;
+
+	if (strlen(r_addr) > 0)
+		return 1;
+
+	addr_attr = parse_rtattr_one(IFA_ADDRESS, IFA_RTA(ifa),
+				     len - NLMSG_LENGTH(sizeof(*ifa)));
+	if (!addr_attr)
+		return 0;
+
+	if (ifa->ifa_family == AF_INET) {
+		struct sockaddr_in ip4addr;
+		memcpy(&ip4addr.sin_addr, RTA_DATA(addr_attr),
+		       sizeof(struct in_addr));
+		if (inet_ntop(AF_INET, &ip4addr.sin_addr, r_addr,
+			      INET_ADDRSTRLEN) == NULL)
+			return 0;
+	} else if (ifa->ifa_family == AF_INET6) {
+		struct sockaddr_in6 ip6addr;
+		memcpy(&ip6addr.sin6_addr, RTA_DATA(addr_attr),
+		       sizeof(struct in6_addr));
+		if (inet_ntop(AF_INET6, &ip6addr.sin6_addr, r_addr,
+			      INET6_ADDRSTRLEN) == NULL)
+			return 0;
+	}
+	return 1;
+}
+
+static int cmd_bearer_validate_and_get_addr(const char *name, char *r_addr)
+{
+	struct rtnl_handle rth ={ .fd = -1 };
+
+	memset(&ifr, 0, sizeof(ifr));
+	if (!name || !r_addr || get_ifname(ifr.ifr_name, name))
+		return 0;
+
+	ifr.ifr_ifindex = ll_name_to_index(ifr.ifr_name);
+	if (!ifr.ifr_ifindex)
+		return 0;
+
+	/* remove from cache */
+	ll_drop_by_index(ifr.ifr_ifindex);
+
+	if (rtnl_open(&rth, 0) < 0)
+		return 0;
+
+	if (rtnl_addrdump_req(&rth, AF_UNSPEC, 0) < 0) {
+		rtnl_close(&rth);
+		return 0;
+	}
+
+	if (rtnl_dump_filter(&rth, nl_dump_addr_filter, r_addr) < 0) {
+		rtnl_close(&rth);
+		return 0;
+	}
+	rtnl_close(&rth);
+	return 1;
+}
+
 static int nl_add_udp_enable_opts(struct nlmsghdr *nlh, struct opt *opts,
 				  struct cmdl *cmdl)
 {
@@ -136,13 +206,25 @@ static int nl_add_udp_enable_opts(struct nlmsghdr *nlh, struct opt *opts,
 		.ai_family = AF_UNSPEC,
 		.ai_socktype = SOCK_DGRAM
 	};
+	char addr[INET6_ADDRSTRLEN] = {0};
 
-	if (!(opt = get_opt(opts, "localip"))) {
-		fprintf(stderr, "error, udp bearer localip missing\n");
-		cmd_bearer_enable_udp_help(cmdl, "udp");
+	opt = get_opt(opts, "device");
+	if (opt && !cmd_bearer_validate_and_get_addr(opt->val, addr)) {
+		fprintf(stderr, "error, no device name available\n");
 		return -EINVAL;
 	}
-	locip = opt->val;
+
+	if (strlen(addr) > 0) {
+		locip = addr;
+	} else {
+		opt = get_opt(opts, "localip");
+		if (!opt) {
+			fprintf(stderr, "error, udp bearer localip/device missing\n");
+			cmd_bearer_enable_udp_help(cmdl, "udp");
+			return -EINVAL;
+		}
+		locip = opt->val;
+	}
 
 	if ((opt = get_opt(opts, "remoteip")))
 		remip = opt->val;
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
