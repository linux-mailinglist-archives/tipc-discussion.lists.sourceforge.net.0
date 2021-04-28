Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C2236DF8B
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Apr 2021 21:31:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lbptk-00071O-2V; Wed, 28 Apr 2021 19:31:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lbpti-000710-83
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Apr 2021 19:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J1YZT4URIM4ahp55LiV7knAYAZevNptIKIXkoBkBuYo=; b=AhfIwmpbv85OFBx13L78Gtdctm
 dNpUo636QMz28KwBNlBwzICAv5pbDXwK33jUxH3wRbYUuoDaly7egbR/MDGgIH1tpHdca2C91ot4B
 79Zg/HFXd+JIpKpSb3AzYxmD1k7S8sWZCBfiRo3z+IgZ64FkMvi7565mhBQodwfNtJuc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J1YZT4URIM4ahp55LiV7knAYAZevNptIKIXkoBkBuYo=; b=aPaoxWr8ElZUZ2lRUx7Kb4kYMp
 9sY9vqqGeHCLoAtIb4wkLonecef0IfpMLCDFW94uPHZYXehFDGODhfV/VediLx8z50GpG/O80lGqK
 YUb2K4wRjnGZXOduDtwsYq++SbyhxpmKzyFWhPdu4151I4+PZculAbHq6qJwjN/GXRhg=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lbptU-005SR1-4f
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Apr 2021 19:30:58 +0000
Received: by mail-pj1-f51.google.com with SMTP id
 m6-20020a17090a8586b02901507e1acf0fso9673274pjn.3
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 28 Apr 2021 12:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=J1YZT4URIM4ahp55LiV7knAYAZevNptIKIXkoBkBuYo=;
 b=jLtamaowxc7fB7cN2Z426KZ4nyoJLJxZC7kSpd3ckKbnENartUfG5BSTiA0mGSkDeF
 fm3NIBmD4p70ST2BMsbEnuV+8L6guexcSJjQtrB82ODZdHh+x2ufp0Yu/Q4WQzw1gNY6
 rSnlV/htSAVkyKfEM4bwiH+PHyr37V9+gDTj/ROojG6O0LBmmzoAwUmghej/2Rq2B2Lq
 fEaLFVq19uVpRqwVgtIAY2BGiTje3uhBpbclAnFeVRCdYFFKagHywwHjid2LLr2yk/D+
 YhLS+9/9k/ltyY+DSzOXQygXO3TLkwTtlgan9SJbicm9DaDa6CYiBvPmOwxCB3269nzY
 KC7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=J1YZT4URIM4ahp55LiV7knAYAZevNptIKIXkoBkBuYo=;
 b=ie6eVo7wjHTZk4te/qwgTHpk7jz3IDR4F4PFOTwT4VHiZeonbJdhk2JL9AfnWc8MHX
 JxGnk8B0vxWVl35Cm7G8Mun7pvgGiPJpA02k65u+lcEs73qLFYDl9ocYVCLn8yWkRdwg
 LaeXOsS5yPJlHTSs3YarBYb6KaSPfa3L9QUDiE7yJ206QuTKijQDXtmsPUwM2jcPOxeW
 nEsONZHJm155rLscHswwwByNfEWg4vuKtSATNnOJEDGf4clpjdz9fHdKVfoiShCfbIqE
 w5jLcEEPexMZYAS1BtzNDwei4+Zu2Yw3UmC6t5G2+uvYXJi7Ad7TPbIYUxXx4ToVt/FT
 uuFA==
X-Gm-Message-State: AOAM533FscXnNrhMjSZszfptkwkKcwkxJ4Z7G2R3fNT84AwZ/Mv/Sy+Z
 pu+QwfJYMyY4K1sWzXiWwpgNlIfo7Kx7Xg==
X-Google-Smtp-Source: ABdhPJwGNgMQrkTX/6XT1Ktj5ovjSd5LqhbHZdb7xWpa+u67ebeSK2pQq7wMpPoM8Nwmx6mILCzTMg==
X-Received: by 2002:a17:902:d884:b029:ec:9fcd:2311 with SMTP id
 b4-20020a170902d884b02900ec9fcd2311mr31208019plz.80.1619638238518; 
 Wed, 28 Apr 2021 12:30:38 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id e5sm273836pjv.22.2021.04.28.12.30.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Apr 2021 12:30:37 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Thu, 29 Apr 2021 03:30:30 +0800
Message-Id: <25c57c05b6f5cc81fd49b8f060ebf0961ea8af68.1619638230.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lbptU-005SR1-4f
Subject: [tipc-discussion] [PATCH net] tipc: fix a race in tipc_sk_mcast_rcv
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
Cc: kuba@kernel.org, lyl2019@mail.ustc.edu.cn, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

After commit cb1b728096f5 ("tipc: eliminate race condition at multicast
reception"), when processing the multicast reception, the packets are
firstly moved from be->inputq1 to be->arrvq in tipc_node_broadcast(),
then process be->arrvq in tipc_sk_mcast_rcv().

In tipc_sk_mcast_rcv(), it gets the 1st skb by skb_peek(), then process
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

Fixes: cb1b728096f5 ("tipc: eliminate race condition at multicast reception")
Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/node.c   |  9 ++++-----
 net/tipc/socket.c | 16 +++-------------
 2 files changed, 7 insertions(+), 18 deletions(-)

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
index 022999e..2870798 100644
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
 
@@ -1263,10 +1256,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		}
 		/* Append to inputq if not already done by other thread */
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
