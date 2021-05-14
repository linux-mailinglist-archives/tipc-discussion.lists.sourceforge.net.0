Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08367381015
	for <lists+tipc-discussion@lfdr.de>; Fri, 14 May 2021 20:54:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhcxK-0002Bh-Pr; Fri, 14 May 2021 18:54:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1lhcxJ-0002BZ-BF
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 18:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i6FvJBzL4CejtegqQTAXn0VdpgYrtKwB+acaP8i0n9s=; b=kivYemdXscV2wrEkGXP9M7ly9I
 MA9YEkMNV2p5QkRQIqIOeAx571UZl6/W8PE6689H+qnk229IDo5fzVGECFH9S1KS8q4U3ULvYJcPv
 Qud+d4mH31z2kuqp7t0rXYOT5TEeC6y2jWJM/RY9x2+iZUTRLgtWqUnj5oOG1qdhBAPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i6FvJBzL4CejtegqQTAXn0VdpgYrtKwB+acaP8i0n9s=; b=EU9R5w9H9XJ8PpTq1CThYZS9AS
 PW6C6w920k/MLkX0uuVyf11vFD2bRfph7bqlGzK1MzKBk7vpX1QlnuCX/5tFb2a7sHiNLgnBYE2ZF
 XuNV5RBoNS4TjnaGNw/pZ3LcJYLt9aox1+D9RU/XbXu3jcAjPIp/Jog0p+Azr/3do2B8=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lhcx5-0003Lo-DC
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 18:54:37 +0000
Received: by mail-pg1-f178.google.com with SMTP id j12so18645748pgh.7
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 14 May 2021 11:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=i6FvJBzL4CejtegqQTAXn0VdpgYrtKwB+acaP8i0n9s=;
 b=g1uyakpVe4QPYUILX37D1e4SYfz0hNtgCcz3Dz9mbc/I7tWv5f6kkVf+6mjpB+x/GW
 FLGo+neYAbW2oO2HF5GGI8gPWHglUcidf1u9VOrid2td+I7TUM7k8uCj5e9IEdz0+ohJ
 Lm73k1nhe9w347vxb78jg2VlBlfNOxK5DuXTEM6+QlzzkylffJCpHjSaH2CnfUywKFmD
 8QV1ByF57/67OY9XOrCn3Wlwu/UU0M6L7KtekQtzbs5KCIWn7OeYoZVKxOncz8xa/bG5
 kBrHpr8bUkTOkGFpvz98/CoNAoQLcD0gPYHXSHFId0kNwTL+TUBypBstgI9yWiyy8Hlf
 Sd1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=i6FvJBzL4CejtegqQTAXn0VdpgYrtKwB+acaP8i0n9s=;
 b=jJ29JVWt5/pRRsGlilqy85d4/tfQ9/+szkHMzLgIo7TIabp2Rvnhcwkd/dcnTTlkzC
 oAsYD2zdD5Os2XNCEkrtZBPMVuyGeRRK3tZoC0dOJQcNaIJuRkpjDHHXM0gDDgkWo5dk
 +geOAQtYKOs6WLseWntSL4S2IiDbmYb4amX+1qhL9NoDi9lZ7iwFrM7RiGG9N1ogsfeo
 Z3IhdLJSNYqUG4NFQf+Z93HDcqRq1jr7ubZLMzT9YRGOY2cASISGhyKvg0Xb3MbV0Agb
 amhZHoKkwAQUMGwDdcwnk1K+xm0E/TWzkfn9XY4bZ4UGhx4b+73+tgf4LlsY4cW8JW8A
 J5sw==
X-Gm-Message-State: AOAM531SgakWwZRQIZMXjx9XLeZHCDR/IPaoBfKxJS89xOs5z4gB+IHJ
 QPEeIDP/q9gkjDk/nSBXqvnoYvg9Scglrg==
X-Google-Smtp-Source: ABdhPJw2lPnuV+NhjPsUIFlF1B5A0BN53jVHjRNMPPBwFub5H39XK+QiaNCe2cBQDe3/oEIQj5rNLQ==
X-Received: by 2002:aa7:9384:0:b029:2cc:5e38:933a with SMTP id
 t4-20020aa793840000b02902cc5e38933amr17710442pfe.81.1621018458241; 
 Fri, 14 May 2021 11:54:18 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id u15sm9955189pju.44.2021.05.14.11.54.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 May 2021 11:54:17 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 15 May 2021 02:54:10 +0800
Message-Id: <e197001eb38a4fbc8447459b72ad64ac65e44ada.1621018450.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.178 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: final_work.net]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lhcx5-0003Lo-DC
Subject: [tipc-discussion] [PATCH net] tipc: simplify the finalize work queue
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

This patch is to use "struct work_struct" for the finalize work queue
instead of "struct tipc_net_work", as it can get the "net" and "addr"
from tipc_net's other members and there is no need to add extra net
and addr in tipc_net by defining "struct tipc_net_work".

Note that it's safe to get net from tn->bcl as bcl is always released
after the finalize work queue is done.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/core.c     |  4 ++--
 net/tipc/core.h     |  8 +-------
 net/tipc/discover.c |  4 ++--
 net/tipc/link.c     |  5 +++++
 net/tipc/link.h     |  1 +
 net/tipc/net.c      | 15 +++------------
 6 files changed, 14 insertions(+), 23 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index 72f3ac7..3f4542e 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -60,7 +60,7 @@ static int __net_init tipc_init_net(struct net *net)
 	tn->trial_addr = 0;
 	tn->addr_trial_end = 0;
 	tn->capabilities = TIPC_NODE_CAPABILITIES;
-	INIT_WORK(&tn->final_work.work, tipc_net_finalize_work);
+	INIT_WORK(&tn->work, tipc_net_finalize_work);
 	memset(tn->node_id, 0, sizeof(tn->node_id));
 	memset(tn->node_id_string, 0, sizeof(tn->node_id_string));
 	tn->mon_threshold = TIPC_DEF_MON_THRESHOLD;
@@ -110,7 +110,7 @@ static void __net_exit tipc_exit_net(struct net *net)
 
 	tipc_detach_loopback(net);
 	/* Make sure the tipc_net_finalize_work() finished */
-	cancel_work_sync(&tn->final_work.work);
+	cancel_work_sync(&tn->work);
 	tipc_net_stop(net);
 
 	tipc_bcast_stop(net);
diff --git a/net/tipc/core.h b/net/tipc/core.h
index 5741ae4..0a3f7a7 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -91,12 +91,6 @@ extern unsigned int tipc_net_id __read_mostly;
 extern int sysctl_tipc_rmem[3] __read_mostly;
 extern int sysctl_tipc_named_timeout __read_mostly;
 
-struct tipc_net_work {
-	struct work_struct work;
-	struct net *net;
-	u32 addr;
-};
-
 struct tipc_net {
 	u8  node_id[NODE_ID_LEN];
 	u32 node_addr;
@@ -148,7 +142,7 @@ struct tipc_net {
 	struct tipc_crypto *crypto_tx;
 #endif
 	/* Work item for net finalize */
-	struct tipc_net_work final_work;
+	struct work_struct work;
 	/* The numbers of work queues in schedule */
 	atomic_t wq_count;
 };
diff --git a/net/tipc/discover.c b/net/tipc/discover.c
index 5380f60..da69e1a 100644
--- a/net/tipc/discover.c
+++ b/net/tipc/discover.c
@@ -168,7 +168,7 @@ static bool tipc_disc_addr_trial_msg(struct tipc_discoverer *d,
 
 	/* Apply trial address if we just left trial period */
 	if (!trial && !self) {
-		tipc_sched_net_finalize(net, tn->trial_addr);
+		schedule_work(&tn->work);
 		msg_set_prevnode(buf_msg(d->skb), tn->trial_addr);
 		msg_set_type(buf_msg(d->skb), DSC_REQ_MSG);
 	}
@@ -308,7 +308,7 @@ static void tipc_disc_timeout(struct timer_list *t)
 	if (!time_before(jiffies, tn->addr_trial_end) && !tipc_own_addr(net)) {
 		mod_timer(&d->timer, jiffies + TIPC_DISC_INIT);
 		spin_unlock_bh(&d->lock);
-		tipc_sched_net_finalize(net, tn->trial_addr);
+		schedule_work(&tn->work);
 		return;
 	}
 
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 1151092..c44b4bf 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -372,6 +372,11 @@ char tipc_link_plane(struct tipc_link *l)
 	return l->net_plane;
 }
 
+struct net *tipc_link_net(struct tipc_link *l)
+{
+	return l->net;
+}
+
 void tipc_link_update_caps(struct tipc_link *l, u16 capabilities)
 {
 	l->peer_caps = capabilities;
diff --git a/net/tipc/link.h b/net/tipc/link.h
index fc07232..a16f401 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -156,4 +156,5 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l,   struct tipc_msg *hdr,
 int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
 			  struct sk_buff_head *xmitq);
 bool tipc_link_too_silent(struct tipc_link *l);
+struct net *tipc_link_net(struct tipc_link *l);
 #endif
diff --git a/net/tipc/net.c b/net/tipc/net.c
index a130195..0e95572 100644
--- a/net/tipc/net.c
+++ b/net/tipc/net.c
@@ -41,6 +41,7 @@
 #include "socket.h"
 #include "node.h"
 #include "bcast.h"
+#include "link.h"
 #include "netlink.h"
 #include "monitor.h"
 
@@ -142,19 +143,9 @@ static void tipc_net_finalize(struct net *net, u32 addr)
 
 void tipc_net_finalize_work(struct work_struct *work)
 {
-	struct tipc_net_work *fwork;
+	struct tipc_net *tn = container_of(work, struct tipc_net, work);
 
-	fwork = container_of(work, struct tipc_net_work, work);
-	tipc_net_finalize(fwork->net, fwork->addr);
-}
-
-void tipc_sched_net_finalize(struct net *net, u32 addr)
-{
-	struct tipc_net *tn = tipc_net(net);
-
-	tn->final_work.net = net;
-	tn->final_work.addr = addr;
-	schedule_work(&tn->final_work.work);
+	tipc_net_finalize(tipc_link_net(tn->bcl), tn->trial_addr);
 }
 
 void tipc_net_stop(struct net *net)
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
