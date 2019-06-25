Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4E052218
	for <lists+tipc-discussion@lfdr.de>; Tue, 25 Jun 2019 06:35:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfdAi-0004kb-22; Tue, 25 Jun 2019 04:35:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1hfdAg-0004kU-J9
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 04:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pAf+K1eFViUrvNHI1FrlHC/w1eNNTjyf2iKYJ8OpTFQ=; b=JY+HI5anAqalhBBBOIY/fBFkff
 10ZdXvIaJHPsFoPL4YSty01ukBcgAQh/TveVwOJ4EXn4Cf4hRVaVL9jEdHFqRkTWRAl3jHmyyHL85
 +r5ob7nsaIwKaRSqQeROSZpU9iYqj0nqXHt5HvGzt6Q6q9IrJGrpwQiVVqOg9f4y9kYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pAf+K1eFViUrvNHI1FrlHC/w1eNNTjyf2iKYJ8OpTFQ=; b=SMXaCNuJJgFKHEyDQRE697rEfu
 qowHlbOJdumQxXpaZ2fgYdFPSX/3NjHA/Jr03IRhe0Njf7AYpJE4nK2wQpcbyERt1I2fuEU/29Dju
 vOGgpBiwqGq/gkTVz4jV6YEWHLusPds/O6IS3gwuU06W+QBlQfx716Y9OPvjmjkIp53A=;
Received: from [210.10.221.142] (helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfdAe-008tfG-Si
 for tipc-discussion@lists.sourceforge.net; Tue, 25 Jun 2019 04:35:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 3D31F45844;
 Tue, 25 Jun 2019 14:34:48 +1000 (AEST)
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id k8JTnCriHM4g; Tue, 25 Jun 2019 14:34:48 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id CDEB745887;
 Tue, 25 Jun 2019 14:34:47 +1000 (AEST)
Received: from build.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 0717445844;
 Tue, 25 Jun 2019 14:34:45 +1000 (AEST)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: dsahern@gmail.com, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Tue, 25 Jun 2019 11:34:39 +0700
Message-Id: <20190625043439.6691-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1hfdAe-008tfG-Si
Subject: [tipc-discussion] [iproute2-next v6] tipc: support interface name
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
 tipc/bearer.c | 94 ++++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 89 insertions(+), 5 deletions(-)

diff --git a/tipc/bearer.c b/tipc/bearer.c
index 1f3a4d44441e..4470819e4a96 100644
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
@@ -119,6 +121,76 @@ static int generate_multicast(short af, char *buf, int bufsize)
 	return 0;
 }
 
+static struct ifreq ifr;
+static int nl_dump_req_filter(struct nlmsghdr *nlh, int reqlen)
+{
+	struct ifaddrmsg *ifa = NLMSG_DATA(nlh);
+
+	ifa->ifa_index = ifr.ifr_ifindex;
+
+	return 0;
+}
+
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
+		return 0;
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
+		inet_ntop(AF_INET, &ip4addr.sin_addr, r_addr,
+			  INET_ADDRSTRLEN);
+	} else if (ifa->ifa_family == AF_INET6) {
+		struct sockaddr_in6 ip6addr;
+		memcpy(&ip6addr.sin6_addr, RTA_DATA(addr_attr),
+		       sizeof(struct in6_addr));
+		inet_ntop(AF_INET6, &ip6addr.sin6_addr, r_addr,
+			  INET6_ADDRSTRLEN);
+	}
+	return 0;
+}
+
+static int cmd_bearer_validate_and_get_addr(const char *name, char *r_addr)
+{
+	struct rtnl_handle rth = { .fd = -1 };
+	int err = -1;
+
+	memset(&ifr, 0, sizeof(ifr));
+	if (!name || !r_addr || get_ifname(ifr.ifr_name, name))
+		return err;
+
+	ifr.ifr_ifindex = ll_name_to_index(ifr.ifr_name);
+	if (!ifr.ifr_ifindex)
+		return err;
+
+	/* remove from cache */
+	ll_drop_by_index(ifr.ifr_ifindex);
+
+	if ((err = rtnl_open(&rth, 0)) < 0)
+		return err;
+
+	if ((err = rtnl_addrdump_req(&rth, AF_UNSPEC, nl_dump_req_filter)) > 0)
+		err = rtnl_dump_filter(&rth, nl_dump_addr_filter, r_addr);
+
+	rtnl_close(&rth);
+	return err;
+}
+
 static int nl_add_udp_enable_opts(struct nlmsghdr *nlh, struct opt *opts,
 				  struct cmdl *cmdl)
 {
@@ -136,13 +208,25 @@ static int nl_add_udp_enable_opts(struct nlmsghdr *nlh, struct opt *opts,
 		.ai_family = AF_UNSPEC,
 		.ai_socktype = SOCK_DGRAM
 	};
+	char addr[INET6_ADDRSTRLEN] = {0};
 
-	if (!(opt = get_opt(opts, "localip"))) {
-		fprintf(stderr, "error, udp bearer localip missing\n");
-		cmd_bearer_enable_udp_help(cmdl, "udp");
+	opt = get_opt(opts, "device");
+	if (opt && cmd_bearer_validate_and_get_addr(opt->val, addr) < 0) {
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
