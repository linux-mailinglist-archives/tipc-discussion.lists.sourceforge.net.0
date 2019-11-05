Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D76FAEFA5B
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 11:01:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRvee-0003kH-8h; Tue, 05 Nov 2019 10:01:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iRvec-0003jh-HQ
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 10:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h20r6Q9PrKnEtH77GU+rrLdTFUZhmMMX6KgXUJe0SBI=; b=Hm4TewNvbOXaerb7EMaSOcIW1G
 T7fe7Tzza+skIuodnIWk4QEJ9iQ53s6vbwaiarY6naqTnQ86ZlZs5JUOfdwJ1LrX/ta81pRP1clFU
 dfPTxsB/2LqQsUUFfSMCIV3E85gxLHFYKCGAXo8plDFTVgQIDURUf7iVRUsYqGs08ES8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h20r6Q9PrKnEtH77GU+rrLdTFUZhmMMX6KgXUJe0SBI=; b=lah7TtIuK4NDxt2uiUJ6mWl0WV
 3Ygpm77g5oVSAX8vmPQa7b3xua1aGMwCFIa/7G9NqI2QXMaqjoNg5w/saLttUFgpWWRZUTVPfGnHr
 P8gSLpo0g+mjSODgPLJAM5P/uDaapIhwd+gh+LXccI91YtHHqUaxZTqccpsjwyrrXPcI=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRveY-0010TS-Fd
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 10:01:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 5AEA64AA2A;
 Tue,  5 Nov 2019 21:01:27 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1572948087; bh=PVkny
 28vmrCJU5dykXDNXUxUu3oP8q/tY4OSlj16oxs=; b=UQa8MWXoUCg8+R3NV4dQD
 9HIPKo18vVXDCvVFgEapsRx9ORYRn7dC2LxWfZgJw8HlpgR/v57iHbbm7V/SWvSN
 k1xgz1lTBuj5iImcK5BPaVt3ybvfZT7B/AvZUU1cBmyudCB8Wyd2ZYh7xbPzZsPX
 Sa+g3JmdDuA/pe7GpA1XQc=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5TKawqsiD3Qe; Tue,  5 Nov 2019 21:01:27 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 330914AA05;
 Tue,  5 Nov 2019 21:01:27 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 99B5D4AA1E;
 Tue,  5 Nov 2019 21:01:26 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com
Date: Tue,  5 Nov 2019 17:01:19 +0700
Message-Id: <20191105100119.11755-2-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105100119.11755-1-hoang.h.le@dektech.com.au>
References: <20191105100119.11755-1-hoang.h.le@dektech.com.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iRveY-0010TS-Fd
Subject: [tipc-discussion] [iproute2-next 2/2] tipc: add column to indicate
 netns-local
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Example:
Node Identity                    Hash     Is container? State
1001002                          01001002 no            up
1001010                          31000101 no            up
1001011                          31010101 no            up
1001012                          31020101 no            up
1001003                          31030001 yes           up
1001013                          31030101 no            up
1001004                          31040001 yes           up
1001014                          31040101 no            up
1001015                          31050101 no            up
1001006                          31060001 yes           up
1001016                          31060101 no            up
1001007                          31070001 yes           up
1001008                          31080001 yes           up
1001009                          31090001 yes           up
100100a                          31510001 yes           up
100100b                          31520001 yes           up
100100c                          31530001 yes           up
100100d                          31540001 no            up
100100e                          31550001 no            up
100100f                          31560001 no            up

Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 include/uapi/linux/tipc_netlink.h | 1 +
 tipc/node.c                       | 7 ++++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/tipc_netlink.h b/include/uapi/linux/tipc_netlink.h
index efb958fd167d..1a071268bf5d 100644
--- a/include/uapi/linux/tipc_netlink.h
+++ b/include/uapi/linux/tipc_netlink.h
@@ -160,6 +160,7 @@ enum {
 	TIPC_NLA_NODE_UNSPEC,
 	TIPC_NLA_NODE_ADDR,		/* u32 */
 	TIPC_NLA_NODE_UP,		/* flag */
+	TIPC_NLA_NODE_LOCAL,		/* flag */
 
 	__TIPC_NLA_NODE_MAX,
 	TIPC_NLA_NODE_MAX = __TIPC_NLA_NODE_MAX - 1
diff --git a/tipc/node.c b/tipc/node.c
index 2fec6753c974..b4203af014d3 100644
--- a/tipc/node.c
+++ b/tipc/node.c
@@ -42,6 +42,11 @@ static int node_list_cb(const struct nlmsghdr *nlh, void *data)
 	addr = mnl_attr_get_u32(attrs[TIPC_NLA_NODE_ADDR]);
 	hash2nodestr(addr, str);
 	printf("%-32s %08x ", str, addr);
+	if (attrs[TIPC_NLA_NODE_LOCAL])
+		printf("%-12s  ", "yes");
+	else
+		printf("%-12s  ", "no");
+
 	if (attrs[TIPC_NLA_NODE_UP])
 		printf("up\n");
 	else
@@ -63,7 +68,7 @@ static int cmd_node_list(struct nlmsghdr *nlh, const struct cmd *cmd,
 		fprintf(stderr, "error, message initialisation failed\n");
 		return -1;
 	}
-	printf("Node Identity                    Hash     State\n");
+	printf("Node Identity                    Hash     Is container? State\n");
 	return msg_dumpit(nlh, node_list_cb, NULL);
 }
 
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
