Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF74D36ED50
	for <lists+tipc-discussion@lfdr.de>; Thu, 29 Apr 2021 17:24:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lc8X1-0006Q1-Ia; Thu, 29 Apr 2021 15:24:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1lc8X0-0006Pn-0Z
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Apr 2021 15:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uel3olZUGWUGB7fGgn2CRgNjmcZtFUxP2kJFlFiro0w=; b=JX5tMw94J2/4M0mh7FJpqmNKGh
 InIzCpyzUbDyxWIPyDHMCpLUpgTnayTwrIt9rIAyYN/IIS7n619dr5pKbRWf0jqtCcIXGk/AVz9Ly
 Ha8/mlwCsjAi+/QA2FCqLc3TsT8dgTaleA4FpoLaPtbbv17WPhEQvVxKBpVQnDuBx2lc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uel3olZUGWUGB7fGgn2CRgNjmcZtFUxP2kJFlFiro0w=; b=Qyqu0xS7SpIa/WeIBRDzroSsGc
 FTrHGc0VUAeEa+/uILih7zp7Vc7Kn4m1TWNX34WF9rNeIRfEmiWfZqlzw47lEDqKiUkl9X2vny6fT
 pUVg2TjRxbKlZ/vXarljJQzgCYulHT9PEkSVKJlBUZ7gkp7kaqMTziX6AILKm6MKyF3w=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lc8Wu-0000O8-JV
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Apr 2021 15:24:45 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 f6-20020a17090a6546b029015088cf4a1eso44178pjs.2
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 29 Apr 2021 08:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uel3olZUGWUGB7fGgn2CRgNjmcZtFUxP2kJFlFiro0w=;
 b=DdDWwfHFS/D9jSNOpapmxEHhve5KRk4QNp1nyc/nHaEkZUUKCbX9D61Y9gIE4nXQT1
 ynJ1Y4aoDInSFBH0m4i0BL68GHfP2YGrfHXx5HA+z2W2O+phw/VsG8sgtjnlRiGN0Pc5
 pYvXsiJYlnFMVsU8V8NtX91NMSH3qayVx+isz2xtG+/Fp7clmNv93m6dg7GDffyXpnbI
 oHDY3KJCbPWTY5JWkub0o499Ju5yIlLws89BTxZvAXDhZQOBL1uehEtBEUVzUSHTatJy
 WXZTMUvGr+eVtKUC5QAohId4xKHOJm3N1jhwanYS0oiSikLDiJCB7yawSStuoODBO0HZ
 j8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uel3olZUGWUGB7fGgn2CRgNjmcZtFUxP2kJFlFiro0w=;
 b=H3EIh8+5YlvFG5DXHCSp0SQXxcJcHCdn/lgYYlQUVhLNE6xt5pBQT1yv5a/AjbGlXS
 f0Os02HRDZF4LHW48AojIbtCFnC+4VBcKVTd4bTGH/YQ2pcbdq1QNASYyuUEd9eQIL/1
 kv0PRUQVSpxGwTdp5Ike2SZX1tg2if5sSUMvznV5SantlqGDwMt2KW5ul1nRaHshflou
 gk4EHetymLZP2oufiUo3luDhFBGtIrpq2SbFvSz0ovLXkw9HlW+Yxb5drn1syfvEfClA
 RpXndpOrWt4pDN2sJIpvgp6gSr9E/bWa1YuqLZwI+/ARw2o28Zjy4ovsuq6QPRH6cSPX
 SdIA==
X-Gm-Message-State: AOAM532Kgb5Sfwg+u3Cyc6T/p3wvyuNVXA43gcK9HuBb48t3w1QnZBfO
 MMg4xMU/v9uMLF1gj2CLNhI=
X-Google-Smtp-Source: ABdhPJwEwRPCRqbzBJRrWrmVg6gaZUVQQfxIGDfuDqUjM0M4pW4rrCkq2at3JealwpmZMKf1GZrvvw==
X-Received: by 2002:a17:90b:1e10:: with SMTP id
 pg16mr9921527pjb.30.1619709872979; 
 Thu, 29 Apr 2021 08:24:32 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id o127sm3035967pfd.147.2021.04.29.08.24.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Apr 2021 08:24:32 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Thu, 29 Apr 2021 23:24:24 +0800
Message-Id: <6cfd091a3067fed37b4361f3b083e2abcbb8763c.1619709864.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.49 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lc8Wu-0000O8-JV
Subject: [tipc-discussion] [PATCHv2 net] tipc: fix a race in
 tipc_sk_mcast_rcv
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
Cc: lyl2019@mail.ustc.edu.cn, kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

After commit cb1b728096f5 ("tipc: eliminate race condition at multicast
reception"), when processing the multicast reception, the packets are
firstly moved from be->inputq1 to be->arrvq in tipc_node_broadcast(),
then it processes be->arrvq in tipc_sk_mcast_rcv().

In tipc_sk_mcast_rcv(), it gets the 1st skb by skb_peek(), then handles
this skb without any lock. It means meanwhile another thread could also
call tipc_sk_mcast_rcv() and process be->arrvq and pick up the same skb,
then free it. A double free issue will be caused as Li Shuang reported:

  [] kernel BUG at mm/slub.c:305!
  []  kfree+0x3a7/0x3d0
  []  kfree_skb+0x32/0xa0
  []  skb_release_data+0xb4/0x170
  []  kfree_skb+0x32/0xa0
  []  skb_release_data+0xb4/0x170
  []  kfree_skb+0x32/0xa0
  []  tipc_sk_mcast_rcv+0x1fa/0x380 [tipc]
  []  tipc_rcv+0x411/0x1120 [tipc]
  []  tipc_udp_recv+0xc6/0x1e0 [tipc]
  []  udp_queue_rcv_one_skb+0x1a9/0x500
  []  udp_unicast_rcv_skb.isra.66+0x75/0x90
  []  __udp4_lib_rcv+0x537/0xc40
  []  ip_protocol_deliver_rcu+0xdf/0x1d0
  []  ip_local_deliver_finish+0x4a/0x50
  []  ip_local_deliver+0x6b/0xe0
  []  ip_rcv+0x27b/0x36a
  []  __netif_receive_skb_core+0xb47/0xc40
  []  process_backlog+0xae/0x160

Commit 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
tried to fix this double free by not releasing the skbs in be->arrvq,
which would definitely cause the skbs' leak.

The problem is we shouldn't process the skbs in be->arrvq without any
lock to protect the code from peeking to dequeuing them. The fix here
is to use a temp skb list instead of be->arrvq to make it "per thread
safe". While at it, remove the no-longer-used be->arrvq.

v1->v2:
  - remove the no-longer-used tipc_skb_peek() and some comments from
    tipc_sk_mcast_rcv() as Tung noticed.

Fixes: cb1b728096f5 ("tipc: eliminate race condition at multicast reception")
Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/msg.h    | 17 -----------------
 net/tipc/node.c   |  9 ++++-----
 net/tipc/socket.c | 17 +++--------------
 3 files changed, 7 insertions(+), 36 deletions(-)

diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 5d64596..7914358 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1213,23 +1213,6 @@ static inline int buf_roundup_len(struct sk_buff *skb)
 	return (skb->len / 1024 + 1) * 1024;
 }
 
-/* tipc_skb_peek(): peek and reserve first buffer in list
- * @list: list to be peeked in
- * Returns pointer to first buffer in list, if any
- */
-static inline struct sk_buff *tipc_skb_peek(struct sk_buff_head *list,
-					    spinlock_t *lock)
-{
-	struct sk_buff *skb;
-
-	spin_lock_bh(lock);
-	skb = skb_peek(list);
-	if (skb)
-		skb_get(skb);
-	spin_unlock_bh(lock);
-	return skb;
-}
-
 /* tipc_skb_peek_port(): find a destination port, ignoring all destinations
  *                       up to and including 'filter'.
  * Note: ignoring previously tried destinations minimizes the risk of
diff --git a/net/tipc/node.c b/net/tipc/node.c
index e0ee832..0c636fb 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -72,7 +72,6 @@ struct tipc_link_entry {
 struct tipc_bclink_entry {
 	struct tipc_link *link;
 	struct sk_buff_head inputq1;
-	struct sk_buff_head arrvq;
 	struct sk_buff_head inputq2;
 	struct sk_buff_head namedq;
 	u16 named_rcv_nxt;
@@ -552,7 +551,6 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 	INIT_LIST_HEAD(&n->conn_sks);
 	skb_queue_head_init(&n->bc_entry.namedq);
 	skb_queue_head_init(&n->bc_entry.inputq1);
-	__skb_queue_head_init(&n->bc_entry.arrvq);
 	skb_queue_head_init(&n->bc_entry.inputq2);
 	for (i = 0; i < MAX_BEARERS; i++)
 		spin_lock_init(&n->links[i].lock);
@@ -1803,14 +1801,15 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
 static void tipc_node_mcast_rcv(struct tipc_node *n)
 {
 	struct tipc_bclink_entry *be = &n->bc_entry;
+	struct sk_buff_head tmpq;
 
-	/* 'arrvq' is under inputq2's lock protection */
+	__skb_queue_head_init(&tmpq);
 	spin_lock_bh(&be->inputq2.lock);
 	spin_lock_bh(&be->inputq1.lock);
-	skb_queue_splice_tail_init(&be->inputq1, &be->arrvq);
+	skb_queue_splice_tail_init(&be->inputq1, &tmpq);
 	spin_unlock_bh(&be->inputq1.lock);
 	spin_unlock_bh(&be->inputq2.lock);
-	tipc_sk_mcast_rcv(n->net, &be->arrvq, &be->inputq2);
+	tipc_sk_mcast_rcv(n->net, &tmpq, &be->inputq2);
 }
 
 static void tipc_node_bc_sync_rcv(struct tipc_node *n, struct tipc_msg *hdr,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 022999e..cfd30fa 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1210,8 +1210,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 	__skb_queue_head_init(&tmpq);
 	INIT_LIST_HEAD(&dports);
 
-	skb = tipc_skb_peek(arrvq, &inputq->lock);
-	for (; skb; skb = tipc_skb_peek(arrvq, &inputq->lock)) {
+	while ((skb = __skb_dequeue(arrvq)) != NULL) {
 		hdr = buf_msg(skb);
 		user = msg_user(hdr);
 		mtyp = msg_type(hdr);
@@ -1220,13 +1219,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		type = msg_nametype(hdr);
 
 		if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
-			spin_lock_bh(&inputq->lock);
-			if (skb_peek(arrvq) == skb) {
-				__skb_dequeue(arrvq);
-				__skb_queue_tail(inputq, skb);
-			}
-			kfree_skb(skb);
-			spin_unlock_bh(&inputq->lock);
+			skb_queue_tail(inputq, skb);
 			continue;
 		}
 
@@ -1261,12 +1254,8 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 			}
 			pr_warn("Failed to clone mcast rcv buffer\n");
 		}
-		/* Append to inputq if not already done by other thread */
 		spin_lock_bh(&inputq->lock);
-		if (skb_peek(arrvq) == skb) {
-			skb_queue_splice_tail_init(&tmpq, inputq);
-			__skb_dequeue(arrvq);
-		}
+		skb_queue_splice_tail_init(&tmpq, inputq);
 		spin_unlock_bh(&inputq->lock);
 		__skb_queue_purge(&tmpq);
 		kfree_skb(skb);
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
