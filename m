Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F63326DF8
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 17:56:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG2t6-0000mj-5c; Sat, 27 Feb 2021 16:56:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG2t4-0000mN-Gv
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+N3eSFXiVjaI9pZtgwPFv/QffRb2DxSFbycDu1QRfRo=; b=ljtSj4hfeVMMLlHCMGMJ3/13qy
 1e4eS5VofMlmKwu+sTrab9TTe1zkrTwCBVycKZlSyh2pbnRdVdbRVey8ZbAMFAPSccaTPSgb6kwVC
 bCigyaN2bv1qxKyWgYfEu9hpgEXTU9aNYhVjJ9gSIUsBma65m0ICzHBBxCNARdlmglOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+N3eSFXiVjaI9pZtgwPFv/QffRb2DxSFbycDu1QRfRo=; b=WcQ3u3IqouIV4m+oxmHB019Y0W
 xJ+AvHYsTP60AqvM+P0QS858ltpH/fTctnSSipdra8/2QJCMV8r/5j/Bg5jYJr3ozpH9VVpAfxctY
 n4bG0tfDYsWQEdgG18CXy+PiITnyBdRk7C0yE5wPl1eamBkinQRy1bjuatfrSNIpNZPk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG2t0-007iBS-21
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 16:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614444964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+N3eSFXiVjaI9pZtgwPFv/QffRb2DxSFbycDu1QRfRo=;
 b=UaQomFjPOKkCzEeg7CRRNuHNNOMsQl/rmIlxfQe3gv6e5L6DK8UAd4DpCdcoEpJkMAS4DM
 x2UEHbeJ7+9ZOKmW/0jwnkLkY3J9Cu3ZgL+Lez7xoYQAdgVjoA87W0A0r2mPKVy5+qqs0E
 Ng9wiVpSscez4sSLskHex2hHFbSFhxI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-bQyfPys9N2Kj5Q2k-PDsZw-1; Sat, 27 Feb 2021 11:56:01 -0500
X-MC-Unique: bQyfPys9N2Kj5Q2k-PDsZw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68E647BA3;
 Sat, 27 Feb 2021 16:56:00 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1EA5962A02;
 Sat, 27 Feb 2021 16:55:59 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Sat, 27 Feb 2021 11:55:36 -0500
Message-Id: <20210227165542.3781624-11-jmaloy@redhat.com>
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
 for more information. [URIs: dektech.com.au]
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
X-Headers-End: 1lG2t0-007iBS-21
Subject: [tipc-discussion] [net-next v2 10/16] tipc: simplify signature of
 tipc_nametbl_lookup_mcast_nodes()
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

We follow up the preceding commits by reducing the signature of
the function tipc_nametbl_lookup_mcast_nodes().

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
Acked-by: Ying Xue <ying.xue@windriver.com>
Acked-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/name_table.c |  8 ++++----
 net/tipc/name_table.h |  4 ++--
 net/tipc/socket.c     | 18 ++++++++----------
 3 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ad021d8c02e7..33b79a5da8c9 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -698,20 +698,20 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
  * Used on nodes which are sending out a multicast/broadcast message
  * Returns a list of nodes, including own node if applicable
  */
-void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
-				     u32 upper, struct tipc_nlist *nodes)
+void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
+				     struct tipc_nlist *nodes)
 {
 	struct service_range *sr;
 	struct tipc_service *sc;
 	struct publication *p;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua->sr.type);
 	if (!sc)
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-	service_range_foreach_match(sr, sc, lower, upper) {
+	service_range_foreach_match(sr, sc, ua->sr.lower, ua->sr.upper) {
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			tipc_nlist_add(nodes, p->sk.node);
 		}
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 26aa6acb4512..c5aa45abbdc3 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -114,8 +114,8 @@ bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
 				 struct tipc_socket_addr *sk);
 void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
 				       bool exact, struct list_head *dports);
-void tipc_nametbl_lookup_mcast_nodes(struct net *net, u32 type, u32 lower,
-				     u32 upper, struct tipc_nlist *nodes);
+void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
+				     struct tipc_nlist *nodes);
 bool tipc_nametbl_lookup_group(struct net *net, u32 type, u32 instance,
 			       u32 domain, struct list_head *dsts,
 			       int *dstcnt, u32 exclude,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index b952128537e1..83d7c9c25c63 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -832,7 +832,7 @@ static __poll_t tipc_poll(struct file *file, struct socket *sock,
 /**
  * tipc_sendmcast - send multicast message
  * @sock: socket structure
- * @seq: destination address
+ * @ua: destination address struct
  * @msg: message to send
  * @dlen: length of data to send
  * @timeout: timeout to wait for wakeup
@@ -840,7 +840,7 @@ static __poll_t tipc_poll(struct file *file, struct socket *sock,
  * Called from function tipc_sendmsg(), which has done all sanity checks
  * Return: the number of bytes sent on success, or errno
  */
-static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
+static int tipc_sendmcast(struct  socket *sock, struct tipc_uaddr *ua,
 			  struct msghdr *msg, size_t dlen, long timeout)
 {
 	struct sock *sk = sock->sk;
@@ -848,7 +848,6 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 	struct tipc_msg *hdr = &tsk->phdr;
 	struct net *net = sock_net(sk);
 	int mtu = tipc_bcast_get_mtu(net);
-	struct tipc_mc_method *method = &tsk->mc_method;
 	struct sk_buff_head pkts;
 	struct tipc_nlist dsts;
 	int rc;
@@ -863,8 +862,7 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 
 	/* Lookup destination nodes */
 	tipc_nlist_init(&dsts, tipc_own_addr(net));
-	tipc_nametbl_lookup_mcast_nodes(net, seq->type, seq->lower,
-					seq->upper, &dsts);
+	tipc_nametbl_lookup_mcast_nodes(net, ua, &dsts);
 	if (!dsts.local && !dsts.remote)
 		return -EHOSTUNREACH;
 
@@ -874,9 +872,9 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 	msg_set_lookup_scope(hdr, TIPC_CLUSTER_SCOPE);
 	msg_set_destport(hdr, 0);
 	msg_set_destnode(hdr, 0);
-	msg_set_nametype(hdr, seq->type);
-	msg_set_namelower(hdr, seq->lower);
-	msg_set_nameupper(hdr, seq->upper);
+	msg_set_nametype(hdr, ua->sr.type);
+	msg_set_namelower(hdr, ua->sr.lower);
+	msg_set_nameupper(hdr, ua->sr.upper);
 
 	/* Build message as chain of buffers */
 	__skb_queue_head_init(&pkts);
@@ -886,7 +884,7 @@ static int tipc_sendmcast(struct  socket *sock, struct tipc_service_range *seq,
 	if (unlikely(rc == dlen)) {
 		trace_tipc_sk_sendmcast(sk, skb_peek(&pkts),
 					TIPC_DUMP_SK_SNDQ, " ");
-		rc = tipc_mcast_xmit(net, &pkts, method, &dsts,
+		rc = tipc_mcast_xmit(net, &pkts, &tsk->mc_method, &dsts,
 				     &tsk->cong_link_cnt);
 	}
 
@@ -1479,7 +1477,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 
 	/* Determine destination */
 	if (atype == TIPC_SERVICE_RANGE) {
-		return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
+		return tipc_sendmcast(sock, ua, m, dlen, timeout);
 	} else if (atype == TIPC_SERVICE_ADDR) {
 		skaddr.node = ua->lookup_node;
 		ua->scope = tipc_node2scope(skaddr.node);
-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
