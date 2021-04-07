Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEE35766A
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Apr 2021 22:59:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lUFGi-0002BD-ID; Wed, 07 Apr 2021 20:59:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lUFGW-0002Ah-Ar
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4wIokgAzJHZ4LpwhKXr0jMLskWcuLfhB799UehEshZ8=; b=jqoO2i9WWaIFP2ERWMVWv+Pafs
 FlmYGwWIEpsBl1cVCpbOaoIvQsxdwj83QBzc4xfANeGPy/3oFftGEiEaN9LgABLa/gqjkPr4dBZ83
 Ajo3DJQzqCjbDPNXduceYIWqc3RnJv1a57uaX7rJCRqdEJfFWnBBoGqAyT1BM+1xYmF8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4wIokgAzJHZ4LpwhKXr0jMLskWcuLfhB799UehEshZ8=; b=Bwez/2izjy4sEPmJF4eCe7B/39
 sAYQDXGOkwXnGQS+yAgeDIqDCzVAc8Fj7Slul5K1W25Xr1KJhXsJ/qCShTlT0w4+1p1Cmua890xrd
 ZNvwSIwVVp59KGsC+neIeu9SFMfHkzlC/mCx1floqsbv/JSkLr5taMjlzOfDGSVEg90E=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUFGR-000220-NY
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617829137;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4wIokgAzJHZ4LpwhKXr0jMLskWcuLfhB799UehEshZ8=;
 b=MdWib/CNNKf2kqG8xSe8DQaymxcVc+2NjBMIFPAp8Mp860m8d+1IDmt8x4iVb26ftM9erL
 1NZ7pCxQrKe0huodUCdlFy5bQy44txOxAO4W72ZTgDWQuTWhkUc0SQ9fCVwIFl2MFbXXWL
 TlbdcXkgyE6+oCr/r1UmMmLnZ/REbug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-gJbGMn2oO5is-gV7QbFM6Q-1; Wed, 07 Apr 2021 16:58:56 -0400
X-MC-Unique: gJbGMn2oO5is-gV7QbFM6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D0DE800D53;
 Wed,  7 Apr 2021 20:58:54 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2C3F95D9D0;
 Wed,  7 Apr 2021 20:58:53 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed,  7 Apr 2021 16:58:36 -0400
Message-Id: <20210407205836.3187340-4-jmaloy@redhat.com>
In-Reply-To: <20210407205836.3187340-1-jmaloy@redhat.com>
References: <20210407205836.3187340-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUFGR-000220-NY
Subject: [tipc-discussion] [net-next v2 3/3] tipc: simplify handling of
 lookup scope during multicast message reception
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
Cc: lxin@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We introduce a new macro TIPC_ANY_SCOPE to make the handling of the
lookup scope value more comprehensible during multicast reception.

The (unchanged) rules go as follows:

1) Multicast messages sent from own node are delivered to all matching
   sockets on the own node, irrespective of their binding scope.

2) Multicast messages sent from other nodes arrive here because they
   have found TIPC_CLUSTER_SCOPE bindings coming from this node. Those
   messages should be delivered to exactly those sockets, but not to
   local sockets bound with TIPC_NODE_SCOPE, since the latter obviously
   were not meant to be visible for those senders.

3) Group multicast/broadcast messages are delivered to the sockets with
   a binding scope matching exactly the lookup scope indicated in the
   message header, and nobodey else.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c |  6 +++---
 net/tipc/name_table.h |  4 +++-
 net/tipc/socket.c     | 19 +++++++------------
 3 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index 6db9f9e7c0ac..86007bcaf47c 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -671,12 +671,12 @@ bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
  * Returns a list of local sockets
  */
 void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
-				       bool exact, struct list_head *dports)
+				       struct list_head *dports)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
-	u32 scope = ua->scope;
+	u8 scope = ua->scope;
 
 	rcu_read_lock();
 	sc = tipc_service_find(net, ua);
@@ -686,7 +686,7 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
 	spin_lock_bh(&sc->lock);
 	service_range_foreach_match(sr, sc, ua->sr.lower, ua->sr.upper) {
 		list_for_each_entry(p, &sr->local_publ, local_publ) {
-			if (p->scope == scope || (!exact && p->scope < scope))
+			if (scope == p->scope || scope == TIPC_ANY_SCOPE)
 				tipc_dest_push(dports, 0, p->sk.ref);
 		}
 	}
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index c7c9a3ddd420..148b0f640959 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -51,6 +51,8 @@ struct tipc_uaddr;
 #define TIPC_PUBL_SCOPE_NUM	(TIPC_NODE_SCOPE + 1)
 #define TIPC_NAMETBL_SIZE	1024	/* must be a power of 2 */
 
+#define TIPC_ANY_SCOPE 255
+
 /**
  * struct publication - info about a published service address or range
  * @sr: service range represented by this publication
@@ -113,7 +115,7 @@ int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
 bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
 				 struct tipc_socket_addr *sk);
 void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
-				       bool exact, struct list_head *dports);
+				       struct list_head *dports);
 void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
 				     struct tipc_nlist *nodes);
 bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 61aefb9f6fd8..c85859b73adf 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1200,7 +1200,6 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 	struct tipc_msg *hdr;
 	struct tipc_uaddr ua;
 	int user, mtyp, hlen;
-	bool exact;
 
 	__skb_queue_head_init(&tmpq);
 	INIT_LIST_HEAD(&dports);
@@ -1214,6 +1213,12 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		hlen = skb_headroom(skb) + msg_hdr_sz(hdr);
 		onode = msg_orignode(hdr);
 		ua.sr.type = msg_nametype(hdr);
+		ua.sr.lower = msg_namelower(hdr);
+		ua.sr.upper = msg_nameupper(hdr);
+		if (onode == self)
+			ua.scope = TIPC_ANY_SCOPE;
+		else
+			ua.scope = TIPC_CLUSTER_SCOPE;
 
 		if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
 			spin_lock_bh(&inputq->lock);
@@ -1231,20 +1236,10 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 			ua.sr.lower = 0;
 			ua.sr.upper = ~0;
 			ua.scope = msg_lookup_scope(hdr);
-			exact = true;
-		} else {
-			/* TIPC_NODE_SCOPE means "any scope" in this context */
-			if (onode == self)
-				ua.scope = TIPC_NODE_SCOPE;
-			else
-				ua.scope = TIPC_CLUSTER_SCOPE;
-			exact = false;
-			ua.sr.lower = msg_namelower(hdr);
-			ua.sr.upper = msg_nameupper(hdr);
 		}
 
 		/* Create destination port list: */
-		tipc_nametbl_lookup_mcast_sockets(net, &ua, exact, &dports);
+		tipc_nametbl_lookup_mcast_sockets(net, &ua, &dports);
 
 		/* Clone message per destination */
 		while (tipc_dest_pop(&dports, NULL, &portid)) {
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
