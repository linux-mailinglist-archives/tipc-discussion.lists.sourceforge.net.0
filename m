Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E6D326DFA
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2t4-0002CX-TC; Sat, 27 Feb 2021 16:56:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2t2-0002C9-Mx
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7HK6ZSIAWoiF8j96jz8tQ3Bquj1sBZ3oa2pkHPW8Kug=; b=T4l7KKzHEpcqErQvtoZik6eo12
 3yAOw/Jkj7BloBul6xQOYmvIg4dR6t4cvXEzibEB7Mc2kLjdNEeL1z60Ak3vijp1qfVCwdLMwcS5H
 Ym+e7blqexQjNnfTgOSVr5uaQ1x8uz2e6uBWwi9DTIzWrEXT3jaIuypC4LAzYoqXtvOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7HK6ZSIAWoiF8j96jz8tQ3Bquj1sBZ3oa2pkHPW8Kug=; b=jrVEkyuPuZ17e/7Ma9IamKrcHi
 csNk33GsWVq1htqYfpPYEibtutoRwje+2GL+EXiDZ0Ljlt+uuJzT1s8OQWCDxWz9WzAF9BWOps5OZ
 Pq1h2I+QiCeI5XGVVU94aNtbH2JpXndYM0ciHKVcXVXpuYuwFZJ08UdvCbA3A1uAj8iA=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lG2sy-0002Gv-BI
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7HK6ZSIAWoiF8j96jz8tQ3Bquj1sBZ3oa2pkHPW8Kug=;
 b=b2upFpt89UkLsjuLf8HfxZk/o4oGtZ/y6W603KSho0In80SfFtTxV2ZtO7ydoeb0nZlIX9
 rScdt/YHtPiP3OCB/wFatFgVM/Rtshm2HANXPmXj/XvG37LFVOcggWrxFmztzdkLIHY6j4
 FgrDNY6xf5ey03cS+kWXaJvvNSq2SCE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-406-G9WB_nQ1MZSZBgNv9C6lxA-1; Sat, 27 Feb 2021 11:56:00 -0500
X-MC-Unique: G9WB_nQ1MZSZBgNv9C6lxA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF44D107ACE4;
 Sat, 27 Feb 2021 16:55:58 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99B4B62A02;
 Sat, 27 Feb 2021 16:55:57 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:35 -0500
Message-Id: <20210227165542.3781624-10-jmaloy@redhat.com>
In-Reply-To: <20210227165542.3781624-1-jmaloy@redhat.com>
References: <20210227165542.3781624-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lG2sy-0002Gv-BI
Subject: [tipc-discussion] [net-next v2 09/16] tipc: simplify signature of
 tipc_namtbl_lookup_mcast_sockets()
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
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We reduce the signature of this function according to the same
principle as the preceding commits.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c | 10 +++++-----
 net/tipc/name_table.h |  5 ++---
 net/tipc/socket.c     | 22 +++++++++++-----------
 3 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 20beb04b2db0..ad021d8c02e7 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -668,21 +668,21 @@ bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
  * Used on nodes which have received a multicast/broadcast message
  * Returns a list of local sockets
  */
-void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
-				       u32 upper, u32 scope, bool exact,
-				       struct list_head *dports)
+void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
+				       bool exact, struct list_head *dports)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
+	u32 scope = ua->scope;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua->sr.type);
 	if (!sc)
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-	service_range_foreach_match(sr, sc, lower, upper) {
+	service_range_foreach_match(sr, sc, ua->sr.lower, ua->sr.upper) {
 		list_for_each_entry(p, &sr->local_publ, local_publ) {
 			if (p->scope == scope || (!exact && p->scope < scope))
 				tipc_dest_push(dports, 0, p->sk.ref);
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 9896205a5d66..26aa6acb4512 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -112,9 +112,8 @@ struct name_table {
 int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
 bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
 				 struct tipc_socket_addr *sk);
-void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
-				       u32 upper, u32 scope, bool exact,
-				   struct list_head *dports);
+void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
+				       bool exact, struct list_head *dports);
 void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
 				     u32 upper, struct tipc_nlist *nodes);
 bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 26e1ca6e4766..b952128537e1 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1205,17 +1205,18 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		       struct sk_buff_head *inputq)
 {
 	u32 self = tipc_own_addr(net);
-	u32 type, lower, upper, scope;
 	struct sk_buff *skb, *_skb;
 	u32 portid, onode;
 	struct sk_buff_head tmpq;
 	struct list_head dports;
 	struct tipc_msg *hdr;
+	struct tipc_uaddr ua;
 	int user, mtyp, hlen;
 	bool exact;
 
 	__skb_queue_head_init(&tmpq);
 	INIT_LIST_HEAD(&dports);
+	ua.addrtype = TIPC_SERVICE_RANGE;
 
 	skb = tipc_skb_peek(arrvq, &inputq->lock);
 	for (; skb; skb = tipc_skb_peek(arrvq, &inputq->lock)) {
@@ -1224,7 +1225,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		mtyp = msg_type(hdr);
 		hlen = skb_headroom(skb) + msg_hdr_sz(hdr);
 		onode = msg_orignode(hdr);
-		type = msg_nametype(hdr);
+		ua.sr.type = msg_nametype(hdr);
 
 		if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
 			spin_lock_bh(&inputq->lock);
@@ -1239,24 +1240,23 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 
 		/* Group messages require exact scope match */
 		if (msg_in_group(hdr)) {
-			lower = 0;
-			upper = ~0;
-			scope = msg_lookup_scope(hdr);
+			ua.sr.lower = 0;
+			ua.sr.upper = ~0;
+			ua.scope = msg_lookup_scope(hdr);
 			exact = true;
 		} else {
 			/* TIPC_NODE_SCOPE means "any scope" in this context */
 			if (onode == self)
-				scope = TIPC_NODE_SCOPE;
+				ua.scope = TIPC_NODE_SCOPE;
 			else
-				scope = TIPC_CLUSTER_SCOPE;
+				ua.scope = TIPC_CLUSTER_SCOPE;
 			exact = false;
-			lower = msg_namelower(hdr);
-			upper = msg_nameupper(hdr);
+			ua.sr.lower = msg_namelower(hdr);
+			ua.sr.upper = msg_nameupper(hdr);
 		}
 
 		/* Create destination port list: */
-		tipc_nametbl_lookup_mcast_sockets(net, type, lower, upper,
-						  scope, exact, &dports);
+		tipc_nametbl_lookup_mcast_sockets(net, &ua, exact, &dports);
 
 		/* Clone message per destination */
 		while (tipc_dest_pop(&dports, NULL, &portid)) {
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
