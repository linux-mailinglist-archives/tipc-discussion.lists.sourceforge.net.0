Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A7BF4440
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 11:12:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iT1Fl-0003Vo-En; Fri, 08 Nov 2019 10:12:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iT1Fj-0003VK-MS
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 10:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Uh0KLNKmC/KXXGDhpFwfWhdu2z35nWovw4bX88QtKCQ=; b=WfCwjbN9aKlfGx3Ispkcpco4uL
 PPw467YJciiHrjjATTVflTeweFVUVXPcVZxU1wYVjsf0tUdnL2EJVgHUZGwLyj7Az3AAMFDGhQnog
 vibKaObcP1BwSwBLREkHpyAJiMG3XvdYrQHdhSWtjD0pvD5J+v10YyQZboClDeCY0q4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Uh0KLNKmC/KXXGDhpFwfWhdu2z35nWovw4bX88QtKCQ=; b=kZMqZME2bSDwEt9i7dNCWvA2h4
 7GfjLdeYFt7GcTQR2AwwsQjreKVsC8brqMEDG9ByCLR7NbInUkIOTUqwPzdGSo2qwcI93IS8UJlmr
 Onmzu+mdllhP/htO7Kn4495l8gB/p6pHsow9zSct5nvwbTuh2KcqUSm8KN2pmdueG+5Y=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iT1Ff-004tP9-S7
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 10:12:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 738AA4AB3F;
 Fri,  8 Nov 2019 21:12:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1573207933; bh=S4jstmYdDjvDoP
 kzI0pPWcXDyEYnaI5mv5Jg9+uPLCw=; b=HpNfGZ/EbbhM5OGPyvNwKh2pRFusi/
 AuAJ8RDd+2p0Y/DHrdl3v7yPKslcz+Vi+JX9YUjzbT7k6aSCXfqMyCmCsznZO/Q4
 V8Ww7UlCNvG+e5gGr94HEJZLK+gVx0WBHiw4WPevCrS7wuNTrHh00pw/3E8t7LZA
 Aun4bfMqGf1Ds=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kMEMQDqKvxzS; Fri,  8 Nov 2019 21:12:13 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id D4FEA4AB49;
 Fri,  8 Nov 2019 21:12:12 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 653114AB3F;
 Fri,  8 Nov 2019 21:12:11 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, "'Jon Maloy'" <maloy@donjonn.com>
References: <1572892770-15527-1-git-send-email-jon.maloy@ericsson.com>
 <1572892770-15527-2-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1572892770-15527-2-git-send-email-jon.maloy@ericsson.com>
Date: Fri, 8 Nov 2019 17:12:09 +0700
Message-ID: <1efb01d5961c$fd0dd310$f7297930$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGCmiBkBYCWurFtZ9j0ZIW4SXO7XAIrlcOPqBWgvfA=
Content-Language: en-us
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iT1Ff-004tP9-S7
Subject: Re: [tipc-discussion] [net-next 1/3] tipc: introduce variable
 window congestion control
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
Cc: tipc-discussion@lists.sourceforge.net,
 mohan.krishna.ghanta.krishnamurthy@ericsson.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

I just had a look into the patch, a few concerns:
1) Do we apply the algorithm to the broadcast sender link as well? If so, I
guess we will have to decrease the link window at the bc_retrans()...?
2) Why don't we try to increase the link window just prior to the backlog
advancing (its criteria might need to change a bit...)? Then, we can just go
ahead at the link_xmit() (i.e. no worry about a gap between the two
queues...), so even xmit more packets somehow (i.e. no need to put into the
backlogq and wait for next chances...)?

BR/Tuong

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Tuesday, November 5, 2019 1:39 AM
To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com;
parthasarathy.bhuvaragan@gmail.com; tung.q.nguyen@dektech.com.au;
hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au;
gordan.mihaljevic@dektech.com.au; ying.xue@windriver.com;
tipc-discussion@lists.sourceforge.net
Subject: [net-next 1/3] tipc: introduce variable window congestion control

We introduce a simple variable window congestion control for links.
The algorithm is inspired by the Reno algorithm, and can best be
descibed as working in permanent "congestion avoidance" mode, within
strict limits.

- We introduce hard lower and upper window limits per link, still
  different and configurable per bearer type.

- Next, we let a link start at the minimum window, and then slowly
  increment it for each 32 received non-duplicate ACK. This goes on
  until it either reaches the upper limit, or until it receives a
  NACK message.

- For each non-duplicate NACK received, we let the window decrease by
  intervals of 1/2 of the current window, but not below the minimum
  window.

The change does in reality have effect only on unicast ethernet
transport, as we have seen that there is no room whatsoever for
increasing the window size for the UDP bearer.

This algorithm seems to give a ~25% throughput improvement for large
messages, while it has no effect on small message throughput.

Suggested-by: Xin Long <lucien.xin@gmail.com>
Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/bcast.c     | 11 +++++----
 net/tipc/bearer.c    | 11 +++++----
 net/tipc/bearer.h    |  6 +++--
 net/tipc/eth_media.c |  6 ++++-
 net/tipc/ib_media.c  |  5 +++-
 net/tipc/link.c      | 70
++++++++++++++++++++++++++++++++++------------------
 net/tipc/link.h      |  9 ++++---
 net/tipc/node.c      | 13 ++++++----
 net/tipc/udp_media.c |  3 ++-
 9 files changed, 86 insertions(+), 48 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 6ef1abd..12fde9a 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -562,18 +562,18 @@ int tipc_bclink_reset_stats(struct net *net)
 	return 0;
 }
 
-static int tipc_bc_link_set_queue_limits(struct net *net, u32 limit)
+static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
 {
 	struct tipc_link *l = tipc_bc_sndlink(net);
 
 	if (!l)
 		return -ENOPROTOOPT;
-	if (limit < BCLINK_WIN_MIN)
-		limit = BCLINK_WIN_MIN;
-	if (limit > TIPC_MAX_LINK_WIN)
+	if (max_win < BCLINK_WIN_MIN)
+		max_win = BCLINK_WIN_MIN;
+	if (max_win > TIPC_MAX_LINK_WIN)
 		return -EINVAL;
 	tipc_bcast_lock(net);
-	tipc_link_set_queue_limits(l, limit);
+	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
 	tipc_bcast_unlock(net);
 	return 0;
 }
@@ -683,6 +683,7 @@ int tipc_bcast_init(struct net *net)
 	if (!tipc_link_bc_create(net, 0, 0,
 				 FB_MTU,
 				 BCLINK_WIN_DEFAULT,
+				 BCLINK_WIN_DEFAULT,
 				 0,
 				 &bb->inputq,
 				 NULL,
diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 0214aa1..f994961 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -310,7 +310,8 @@ static int tipc_enable_bearer(struct net *net, const
char *name,
 
 	b->identity = bearer_id;
 	b->tolerance = m->tolerance;
-	b->window = m->window;
+	b->min_win = m->min_win;
+	b->max_win = m->max_win;
 	b->domain = disc_domain;
 	b->net_plane = bearer_id + 'A';
 	b->priority = prio;
@@ -765,7 +766,7 @@ static int __tipc_nl_add_bearer(struct tipc_nl_msg *msg,
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, bearer->tolerance))
 		goto prop_msg_full;
-	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->window))
+	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->max_win))
 		goto prop_msg_full;
 	if (bearer->media->type_id == TIPC_MEDIA_TYPE_UDP)
 		if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, bearer->mtu))
@@ -1057,7 +1058,7 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct
genl_info *info)
 		if (props[TIPC_NLA_PROP_PRIO])
 			b->priority =
nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
 		if (props[TIPC_NLA_PROP_WIN])
-			b->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+			b->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
 		if (props[TIPC_NLA_PROP_MTU]) {
 			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
 				return -EINVAL;
@@ -1111,7 +1112,7 @@ static int __tipc_nl_add_media(struct tipc_nl_msg
*msg,
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, media->tolerance))
 		goto prop_msg_full;
-	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, media->window))
+	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, media->max_win))
 		goto prop_msg_full;
 	if (media->type_id == TIPC_MEDIA_TYPE_UDP)
 		if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, media->mtu))
@@ -1244,7 +1245,7 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct
genl_info *info)
 		if (props[TIPC_NLA_PROP_PRIO])
 			m->priority =
nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
 		if (props[TIPC_NLA_PROP_WIN])
-			m->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+			m->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
 		if (props[TIPC_NLA_PROP_MTU]) {
 			if (m->type_id != TIPC_MEDIA_TYPE_UDP)
 				return -EINVAL;
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index ea0f3c4..58a23b9 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -119,7 +119,8 @@ struct tipc_media {
 			char *raw);
 	u32 priority;
 	u32 tolerance;
-	u32 window;
+	u32 min_win;
+	u32 max_win;
 	u32 mtu;
 	u32 type_id;
 	u32 hwaddr_len;
@@ -158,7 +159,8 @@ struct tipc_bearer {
 	struct packet_type pt;
 	struct rcu_head rcu;
 	u32 priority;
-	u32 window;
+	u32 min_win;
+	u32 max_win;
 	u32 tolerance;
 	u32 domain;
 	u32 identity;
diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
index f69a2fd..38cdcab 100644
--- a/net/tipc/eth_media.c
+++ b/net/tipc/eth_media.c
@@ -37,6 +37,9 @@
 #include "core.h"
 #include "bearer.h"
 
+#define TIPC_MIN_ETH_LINK_WIN 50
+#define TIPC_MAX_ETH_LINK_WIN 500
+
 /* Convert Ethernet address (media address format) to string */
 static int tipc_eth_addr2str(struct tipc_media_addr *addr,
 			     char *strbuf, int bufsz)
@@ -92,7 +95,8 @@ struct tipc_media eth_media_info = {
 	.raw2addr	= tipc_eth_raw2addr,
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
-	.window		= TIPC_DEF_LINK_WIN,
+	.min_win	= TIPC_MIN_ETH_LINK_WIN,
+	.max_win	= TIPC_MAX_ETH_LINK_WIN,
 	.type_id	= TIPC_MEDIA_TYPE_ETH,
 	.hwaddr_len	= ETH_ALEN,
 	.name		= "eth"
diff --git a/net/tipc/ib_media.c b/net/tipc/ib_media.c
index e8c1671..7aa9ff8 100644
--- a/net/tipc/ib_media.c
+++ b/net/tipc/ib_media.c
@@ -42,6 +42,8 @@
 #include "core.h"
 #include "bearer.h"
 
+#define TIPC_MAX_IB_LINK_WIN 500
+
 /* convert InfiniBand address (media address format) media address to
string */
 static int tipc_ib_addr2str(struct tipc_media_addr *a, char *str_buf,
 			    int str_size)
@@ -94,7 +96,8 @@ struct tipc_media ib_media_info = {
 	.raw2addr	= tipc_ib_raw2addr,
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
-	.window		= TIPC_DEF_LINK_WIN,
+	.min_win	= TIPC_DEF_LINK_WIN,
+	.max_win	= TIPC_MAX_IB_LINK_WIN,
 	.type_id	= TIPC_MEDIA_TYPE_IB,
 	.hwaddr_len	= INFINIBAND_ALEN,
 	.name		= "ib"
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 038861ba..24ea942 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -163,7 +163,6 @@ struct tipc_link {
 		struct sk_buff *target_bskb;
 	} backlog[5];
 	u16 snd_nxt;
-	u16 window;
 
 	/* Reception */
 	u16 rcv_nxt;
@@ -174,6 +173,10 @@ struct tipc_link {
 
 	/* Congestion handling */
 	struct sk_buff_head wakeupq;
+	u16 window;
+	u16 min_win;
+	u16 max_win;
+	u16 cong_acks;
 
 	/* Fragmentation/reassembly */
 	struct sk_buff *reasm_buf;
@@ -307,9 +310,14 @@ u32 tipc_link_id(struct tipc_link *l)
 	return l->peer_bearer_id << 16 | l->bearer_id;
 }
 
-int tipc_link_window(struct tipc_link *l)
+int tipc_link_min_win(struct tipc_link *l)
+{
+	return l->min_win;
+}
+
+int tipc_link_max_win(struct tipc_link *l)
 {
-	return l->window;
+	return l->max_win;
 }
 
 int tipc_link_prio(struct tipc_link *l)
@@ -426,7 +434,8 @@ u32 tipc_link_state(struct tipc_link *l)
  * @net_plane: network plane (A,B,c..) this link belongs to
  * @mtu: mtu to be advertised by link
  * @priority: priority to be used by link
- * @window: send window to be used by link
+ * @min_win: minimal send window to be used by link
+ * @max_win: maximal send window to be used by link
  * @session: session to be used by link
  * @ownnode: identity of own node
  * @peer: node id of peer node
@@ -441,7 +450,7 @@ u32 tipc_link_state(struct tipc_link *l)
  */
 bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      int tolerance, char net_plane, u32 mtu, int priority,
-		      int window, u32 session, u32 self,
+		      u32 min_win, u32 max_win, u32 session, u32 self,
 		      u32 peer, u8 *peer_id, u16 peer_caps,
 		      struct tipc_link *bc_sndlink,
 		      struct tipc_link *bc_rcvlink,
@@ -485,7 +494,7 @@ bool tipc_link_create(struct net *net, char *if_name,
int bearer_id,
 	l->advertised_mtu = mtu;
 	l->mtu = mtu;
 	l->priority = priority;
-	tipc_link_set_queue_limits(l, window);
+	tipc_link_set_queue_limits(l, min_win, max_win);
 	l->ackers = 1;
 	l->bc_sndlink = bc_sndlink;
 	l->bc_rcvlink = bc_rcvlink;
@@ -513,7 +522,7 @@ bool tipc_link_create(struct net *net, char *if_name,
int bearer_id,
  * Returns true if link was created, otherwise false
  */
 bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
-			 int mtu, int window, u16 peer_caps,
+			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
 			 struct tipc_link *bc_sndlink,
@@ -521,9 +530,9 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode,
u32 peer,
 {
 	struct tipc_link *l;
 
-	if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, window,
-			      0, ownnode, peer, NULL, peer_caps, bc_sndlink,
-			      NULL, inputq, namedq, link))
+	if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, min_win,
+			      max_win, 0, ownnode, peer, NULL, peer_caps,
+			      bc_sndlink, NULL, inputq, namedq, link))
 		return false;
 
 	l = *link;
@@ -977,7 +986,8 @@ int tipc_link_xmit(struct tipc_link *l, struct
sk_buff_head *list,
 
 	/* Prepare each packet for sending, and add to relevant queue: */
 	while ((skb = __skb_dequeue(list))) {
-		if (likely(skb_queue_len(transmq) < maxwin)) {
+		if (likely(skb_queue_empty(backlogq) &&
+			   skb_queue_len(transmq) < maxwin)) {
 			hdr = buf_msg(skb);
 			msg_set_seqno(hdr, seqno);
 			msg_set_ack(hdr, ack);
@@ -1028,6 +1038,8 @@ int tipc_link_xmit(struct tipc_link *l, struct
sk_buff_head *list,
 static void tipc_link_advance_backlog(struct tipc_link *l,
 				      struct sk_buff_head *xmitq)
 {
+	struct sk_buff_head *txq = &l->transmq;
+	u16 qlen, add, cwin = l->window;
 	struct sk_buff *skb, *_skb;
 	struct tipc_msg *hdr;
 	u16 seqno = l->snd_nxt;
@@ -1035,7 +1047,7 @@ static void tipc_link_advance_backlog(struct tipc_link
*l,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u32 imp;
 
-	while (skb_queue_len(&l->transmq) < l->window) {
+	while (skb_queue_len(txq) < cwin) {
 		skb = skb_peek(&l->backlogq);
 		if (!skb)
 			break;
@@ -1063,6 +1075,11 @@ static void tipc_link_advance_backlog(struct
tipc_link *l,
 		seqno++;
 	}
 	l->snd_nxt = seqno;
+	qlen = skb_queue_len(txq);
+	if (qlen >= cwin && (l->snd_nxt - buf_seqno(skb_peek(txq)) == qlen))
{
+		add = l->cong_acks++ % 32 ? 0 : 1;
+		l->window = min_t(u16, cwin + add, l->max_win);
+	}
 }
 
 /**
@@ -1407,7 +1424,9 @@ static int tipc_link_advance_transmq(struct tipc_link
*l, u16 acked, u16 gap,
 	struct sk_buff *skb, *_skb, *tmp;
 	struct tipc_msg *hdr;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
+	bool retransmitted = false;
 	u16 ack = l->rcv_nxt - 1;
+	u16 cwin = l->window;
 	bool passed = false;
 	u16 seqno, n = 0;
 	int rc = 0;
@@ -1440,7 +1459,7 @@ static int tipc_link_advance_transmq(struct tipc_link
*l, u16 acked, u16 gap,
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
 			l->stats.retransmitted++;
-
+			retransmitted = true;
 			/* Increase actual retrans counter & mark first time
*/
 			if (!TIPC_SKB_CB(skb)->retr_cnt++)
 				TIPC_SKB_CB(skb)->retr_stamp = jiffies;
@@ -1454,7 +1473,8 @@ static int tipc_link_advance_transmq(struct tipc_link
*l, u16 acked, u16 gap,
 			goto next_gap_ack;
 		}
 	}
-
+	if (retransmitted)
+		l->window = TIPC_DEF_LINK_WIN + (cwin - l->min_win) / 2;
 	return 0;
 }
 
@@ -2297,15 +2317,17 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l,
struct sk_buff *skb,
 	return 0;
 }
 
-void tipc_link_set_queue_limits(struct tipc_link *l, u32 win)
+void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32
max_win)
 {
 	int max_bulk = TIPC_MAX_PUBL / (l->mtu / ITEM_SIZE);
 
-	l->window = win;
-	l->backlog[TIPC_LOW_IMPORTANCE].limit      = max_t(u16, 50, win);
-	l->backlog[TIPC_MEDIUM_IMPORTANCE].limit   = max_t(u16, 100, win *
2);
-	l->backlog[TIPC_HIGH_IMPORTANCE].limit     = max_t(u16, 150, win *
3);
-	l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = max_t(u16, 200, win *
4);
+	l->window = min_win;
+	l->min_win = min_win;
+	l->max_win = max_win;
+	l->backlog[TIPC_LOW_IMPORTANCE].limit      = min_win * 2;
+	l->backlog[TIPC_MEDIUM_IMPORTANCE].limit   = min_win * 4;
+	l->backlog[TIPC_HIGH_IMPORTANCE].limit     = min_win * 6;
+	l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = min_win * 8;
 	l->backlog[TIPC_SYSTEM_IMPORTANCE].limit   = max_bulk;
 }
 
@@ -2358,10 +2380,10 @@ int tipc_nl_parse_link_prop(struct nlattr *prop,
struct nlattr *props[])
 	}
 
 	if (props[TIPC_NLA_PROP_WIN]) {
-		u32 win;
+		u32 max_win;
 
-		win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
-		if ((win < TIPC_MIN_LINK_WIN) || (win > TIPC_MAX_LINK_WIN))
+		max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+		if (max_win < TIPC_MIN_LINK_WIN || max_win >
TIPC_MAX_LINK_WIN)
 			return -EINVAL;
 	}
 
@@ -2597,7 +2619,7 @@ int tipc_nl_add_bc_link(struct net *net, struct
tipc_nl_msg *msg)
 	prop = nla_nest_start_noflag(msg->skb, TIPC_NLA_LINK_PROP);
 	if (!prop)
 		goto attr_msg_full;
-	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bcl->window))
+	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bcl->max_win))
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_BROADCAST, bc_mode))
 		goto prop_msg_full;
diff --git a/net/tipc/link.h b/net/tipc/link.h
index adcad65..caed071 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -73,7 +73,7 @@ enum {
 
 bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      int tolerance, char net_plane, u32 mtu, int priority,
-		      int window, u32 session, u32 ownnode,
+		      u32 min_win, u32 max_win, u32 session, u32 ownnode,
 		      u32 peer, u8 *peer_id, u16 peer_caps,
 		      struct tipc_link *bc_sndlink,
 		      struct tipc_link *bc_rcvlink,
@@ -81,7 +81,7 @@ bool tipc_link_create(struct net *net, char *if_name, int
bearer_id,
 		      struct sk_buff_head *namedq,
 		      struct tipc_link **link);
 bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
-			 int mtu, int window, u16 peer_caps,
+			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
 			 struct tipc_link *bc_sndlink,
@@ -115,7 +115,8 @@ char *tipc_link_name_ext(struct tipc_link *l, char
*buf);
 u32 tipc_link_state(struct tipc_link *l);
 char tipc_link_plane(struct tipc_link *l);
 int tipc_link_prio(struct tipc_link *l);
-int tipc_link_window(struct tipc_link *l);
+int tipc_link_min_win(struct tipc_link *l);
+int tipc_link_max_win(struct tipc_link *l);
 void tipc_link_update_caps(struct tipc_link *l, u16 capabilities);
 bool tipc_link_validate_msg(struct tipc_link *l, struct tipc_msg *hdr);
 unsigned long tipc_link_tolerance(struct tipc_link *l);
@@ -124,7 +125,7 @@ void tipc_link_set_tolerance(struct tipc_link *l, u32
tol,
 void tipc_link_set_prio(struct tipc_link *l, u32 prio,
 			struct sk_buff_head *xmitq);
 void tipc_link_set_abort_limit(struct tipc_link *l, u32 limit);
-void tipc_link_set_queue_limits(struct tipc_link *l, u32 window);
+void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32
max_win);
 int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
 		       struct tipc_link *link, int nlflags);
 int tipc_nl_parse_link_prop(struct nlattr *prop, struct nlattr *props[]);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 4b60928..6e361a7 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -465,7 +465,8 @@ static struct tipc_node *tipc_node_create(struct net
*net, u32 addr,
 	n->active_links[1] = INVALID_BEARER_ID;
 	if (!tipc_link_bc_create(net, tipc_own_addr(net),
 				 addr, U16_MAX,
-				 tipc_link_window(tipc_bc_sndlink(net)),
+				 tipc_link_min_win(tipc_bc_sndlink(net)),
+				 tipc_link_max_win(tipc_bc_sndlink(net)),
 				 n->capabilities,
 				 &n->bc_entry.inputq1,
 				 &n->bc_entry.namedq,
@@ -1134,7 +1135,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 		get_random_bytes(&session, sizeof(u16));
 		if (!tipc_link_create(net, if_name, b->identity,
b->tolerance,
 				      b->net_plane, b->mtu, b->priority,
-				      b->window, session,
+				      b->min_win, b->max_win, session,
 				      tipc_own_addr(net), addr, peer_id,
 				      n->capabilities,
 				      tipc_bc_sndlink(n->net),
n->bc_entry.link,
@@ -2258,10 +2259,12 @@ int tipc_nl_node_set_link(struct sk_buff *skb,
struct genl_info *info)
 			tipc_link_set_prio(link, prio, &xmitq);
 		}
 		if (props[TIPC_NLA_PROP_WIN]) {
-			u32 win;
+			u32 max_win;
 
-			win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
-			tipc_link_set_queue_limits(link, win);
+			max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+			tipc_link_set_queue_limits(link,
+						   tipc_link_min_win(link),
+						   max_win);
 		}
 	}
 
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 43ca5fd..7bcc79a 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -824,7 +824,8 @@ struct tipc_media udp_media_info = {
 	.msg2addr	= tipc_udp_msg2addr,
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
-	.window		= TIPC_DEF_LINK_WIN,
+	.min_win	= TIPC_DEF_LINK_WIN,
+	.max_win	= TIPC_DEF_LINK_WIN,
 	.mtu		= TIPC_DEF_LINK_UDP_MTU,
 	.type_id	= TIPC_MEDIA_TYPE_UDP,
 	.hwaddr_len	= 0,
-- 
2.1.4




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
