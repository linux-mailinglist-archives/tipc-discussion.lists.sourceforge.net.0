Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB63BF857C
	for <lists+tipc-discussion@lfdr.de>; Tue, 12 Nov 2019 01:40:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUKEN-00072m-NV; Tue, 12 Nov 2019 00:40:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iUKEM-00072f-23
 for tipc-discussion@lists.sourceforge.net; Tue, 12 Nov 2019 00:40:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EBhPrkUOb6ZlX0TwsyvRuq8f47XjMKctojU29hSIads=; b=J4NDqqrODEX6QcwLSSurIvm9s6
 RlFz3r6NUsaEeCxYun6nmALEnXXKjBqapcN5ts3+Ltw8hPgb34vsIwbHxkIiqVGSkM/ZwO56cNInP
 EnV2R4nWkBmi29fteSgJ9LZeMOyE53jY0o20Q2MSJivijzKfbbrRD+9rmwKN9uaN4t2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EBhPrkUOb6ZlX0TwsyvRuq8f47XjMKctojU29hSIads=; b=T
 eJUUyZweSYNy/cvHZcHC6ZRidvnba9DuvjWqLYhgkTr0E9UNPAYOYGXlr+do5nOY94NGpLdQzgRCc
 cY9750O0cYoZa1df9THNPV10J2fsFRUV+nd4ZDHVq2o1XlAt4O3w9Ds/Y2g8eiHrfUfVFgg/pzKvY
 ccdWqBrmipePqxKU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUKEG-00Cdwv-To
 for tipc-discussion@lists.sourceforge.net; Tue, 12 Nov 2019 00:40:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 38A3F4AC53;
 Tue, 12 Nov 2019 11:40:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-transfer-encoding:mime-version:x-mailer:message-id
 :date:date:subject:subject:from:from:received:received:received;
 s=mail_dkim; t=1573519213; bh=D6wSYolnnaGGUCfp42yd05Iow704javOn
 uwz29SwktM=; b=BV0Qu6b+z22uHJ/JFf1Wa/BOYYjLS172m+nORZ4x95aJPpCkk
 Oh9bru8nkj53+jDS9I7vBVgj98XRZfmFsPGLHs/7PrR0hBFk/bHjm6Rw93VjcFFn
 Wedn1BKVzkW7YpS3izDBpgTKBXqc7SVWnaEwafHlwG4loWpnpTHredtrBY=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id RYFcF8dyTdEi; Tue, 12 Nov 2019 11:40:13 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 0C3C54AC54;
 Tue, 12 Nov 2019 11:40:12 +1100 (AEDT)
Received: from dhost.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 2FE164AC53;
 Tue, 12 Nov 2019 11:40:12 +1100 (AEDT)
From: Hoang Le <hoang.h.le@dektech.com.au>
To: jon.maloy@ericsson.com, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, netdev@vger.kernel.org
Date: Tue, 12 Nov 2019 07:40:04 +0700
Message-Id: <20191112004004.3625-1-hoang.h.le@dektech.com.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUKEG-00Cdwv-To
Subject: [tipc-discussion] [net-next] tipc: update mon's self addr when node
 addr generated
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

In commit 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address
hash values"), the 32-bit node address only generated after one second
trial period expired. However the self's addr in struct tipc_monitor do
not update according to node address generated. This lead to it is
always zero as initial value. As result, sorting algorithm using this
value does not work as expected, neither neighbor monitoring framework.

In this commit, we add a fix to update self's addr when 32-bit node
address generated.

Fixes: 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address hash values")
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/monitor.c | 15 +++++++++++++++
 net/tipc/monitor.h |  1 +
 net/tipc/net.c     |  2 ++
 3 files changed, 18 insertions(+)

diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
index 6a6eae88442f..58708b4c7719 100644
--- a/net/tipc/monitor.c
+++ b/net/tipc/monitor.c
@@ -665,6 +665,21 @@ void tipc_mon_delete(struct net *net, int bearer_id)
 	kfree(mon);
 }
 
+void tipc_mon_reinit_self(struct net *net)
+{
+	struct tipc_monitor *mon;
+	int bearer_id;
+
+	for (bearer_id = 0; bearer_id < MAX_BEARERS; bearer_id++) {
+		mon = tipc_monitor(net, bearer_id);
+		if (!mon)
+			continue;
+		write_lock_bh(&mon->lock);
+		mon->self->addr = tipc_own_addr(net);
+		write_unlock_bh(&mon->lock);
+	}
+}
+
 int tipc_nl_monitor_set_threshold(struct net *net, u32 cluster_size)
 {
 	struct tipc_net *tn = tipc_net(net);
diff --git a/net/tipc/monitor.h b/net/tipc/monitor.h
index 2a21b93e0d04..ed63d2e650b0 100644
--- a/net/tipc/monitor.h
+++ b/net/tipc/monitor.h
@@ -77,6 +77,7 @@ int __tipc_nl_add_monitor(struct net *net, struct tipc_nl_msg *msg,
 			  u32 bearer_id);
 int tipc_nl_add_monitor_peer(struct net *net, struct tipc_nl_msg *msg,
 			     u32 bearer_id, u32 *prev_node);
+void tipc_mon_reinit_self(struct net *net);
 
 extern const int tipc_max_domain_size;
 #endif
diff --git a/net/tipc/net.c b/net/tipc/net.c
index 85707c185360..2de3cec9929d 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -42,6 +42,7 @@
 #include "node.h"
 #include "bcast.h"
 #include "netlink.h"
+#include "monitor.h"
 
 /*
  * The TIPC locking policy is designed to ensure a very fine locking
@@ -136,6 +137,7 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 	tipc_set_node_addr(net, addr);
 	tipc_named_reinit(net);
 	tipc_sk_reinit(net);
+	tipc_mon_reinit_self(net);
 	tipc_nametbl_publish(net, TIPC_CFG_SRV, addr, addr,
 			     TIPC_CLUSTER_SCOPE, 0, addr);
 }
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
