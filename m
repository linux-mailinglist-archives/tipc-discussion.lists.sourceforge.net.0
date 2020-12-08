Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFC62D3264
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Dec 2020 19:51:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kmi4z-0003D9-48; Tue, 08 Dec 2020 18:51:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kmi4r-0003Bi-VF
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U6GvDs2ooFUPwjezrKEyyJ+madcFATL3a+HMq2I6ms4=; b=OpOd5mrtC9Rv81ZlK/ClIGHkRP
 GyftNvLhYMoMruYCNxPn7VrQqDMQdNXBSG1FfMHd710OwctMpDCSG27VlNKjzq8deZhTJeiQE9MAF
 O1VPYgz89dPv0ooyHpHCWOE/yQGmWUGM/nTIR7w0Y89H/q2LeB05qQURbAc7KM8/5oHs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U6GvDs2ooFUPwjezrKEyyJ+madcFATL3a+HMq2I6ms4=; b=LUhMebUlvprIcovp0dhpPvdnMO
 wSqvHsrwcCNF6IoTehdB/cfMHIa8u0j1ikM24X+R97MjijKWmlxNYzi/NFi2pJ9q4xkz3+Ids+JLX
 Pr1/dhm7Mx88td0VejSAAc5bK8U60CMlmN7GxrtWoyM/+84nDIDZCsk5kf0BV3SSiJxE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kmi4b-006uyd-T8
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Dec 2020 18:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607453446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U6GvDs2ooFUPwjezrKEyyJ+madcFATL3a+HMq2I6ms4=;
 b=S5Obw5z8I679g9paWPeoAiWh85lXgwSjrGhfReLRx/XIAMDZmf1OKni5gXjl4Rs3PoiTEv
 Vg7aZiBDiMu0TlRrn+waqlmlpnPpSB0fgX69jpNFI4lq161+IXrC3qP84qKV3EmfFCSKTm
 Zkg8p4qb4/vVven9BfeFVJPjgkoVy8A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-eYWFX-X6PXGgtxD5WdLZ-g-1; Tue, 08 Dec 2020 13:50:44 -0500
X-MC-Unique: eYWFX-X6PXGgtxD5WdLZ-g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6A4DA0C2D;
 Tue,  8 Dec 2020 18:50:34 +0000 (UTC)
Received: from f31.redhat.com (ovpn-116-129.rdu2.redhat.com [10.10.116.129])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B84FF60877;
 Tue,  8 Dec 2020 18:50:32 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Tue,  8 Dec 2020 13:50:05 -0500
Message-Id: <20201208185012.265508-10-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-1-jmaloy@redhat.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kmi4b-006uyd-T8
Subject: [tipc-discussion] [net-next 09/16] tipc: simplify signature of
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
---
 net/tipc/name_table.c | 10 +++++-----
 net/tipc/name_table.h |  5 ++---
 net/tipc/socket.c     | 22 +++++++++++-----------
 3 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ed68db36bab9..ea4356dfb47d 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -671,21 +671,21 @@ bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
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
index f5e37f90a2ba..368a76f73892 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -113,9 +113,8 @@ struct name_table {
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
index 913b1a7be25b..68d457c41c89 100644
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
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
