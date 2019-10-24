Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB700E36A6
	for <lists+tipc-discussion@lfdr.de>; Thu, 24 Oct 2019 17:28:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iNf2Y-00061K-12; Thu, 24 Oct 2019 15:28:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iNf2W-00061D-Kp
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Oct 2019 15:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cGrbc6sMuA5Z/Iq+E+56VywRwpvkRirYBlhsJP+00bU=; b=XQ6ZYM0WCKWEIslNlP1W+Yxr0t
 6UtM5HJBkzndzMPBv1McRDYyL8VJZu/FZT5viqgG+3ydh7bl8p4Hnly+r7a8QZfl21bAwN6l95XtO
 yBWTrhTMcL+6miiynne7YWtGHagiJZjIBxr62/CqWSR57WkoMew5w4CvSOGeoV2Yqky4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cGrbc6sMuA5Z/Iq+E+56VywRwpvkRirYBlhsJP+00bU=; b=ZXVXGez7kPH3ELtUMpFY5We1MV
 8s4h08SwhGJ2y+pKUhsxlUN3JbyBfIorSH5PPFiaAkzaaEDB2luC8Bke9S5TdtqS9MZyYSYYzfAFN
 TSEThWg8KnuhP3ZvK2Py3UOwo9Rn1ePZrcKOWqMrzA3gC0bk7TXbVl0u62y/TaY7IPPw=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iNf2S-001mM8-T3
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Oct 2019 15:28:40 +0000
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
 [147.11.189.41])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9OFSCvh007992
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Thu, 24 Oct 2019 08:28:12 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.249]) by
 ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0468.000; Thu,
 24 Oct 2019 08:27:59 -0700
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Jon Maloy <jon.maloy@ericsson.com>, Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next v2 1/1] tipc: add smart nagle feature
Thread-Index: AQHViXbzLhUfFFZlPUGeWuydn3N2/6dp6oVw
Date: Thu, 24 Oct 2019 15:27:58 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CA51534@ALA-MBD.corp.ad.wrs.com>
References: <1571817191-20282-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1571817191-20282-1-git-send-email-jon.maloy@ericsson.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.16.88]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iNf2S-001mM8-T3
Subject: Re: [tipc-discussion] [net-next v2 1/1] tipc: add smart nagle
 feature
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "mohan.krishna.ghanta.krishnamurthy@ericsson.com"
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

We have the following comments:
- Please consider to add TIPC_NODELAY option of tipc_setsockopt() so that user has right to disable nagle algorithm.
-  I don't understand why we don't transmit the accumulated contents of the write queue when a CONN_PROBE message is received from the peer. Can you please explain it?
- I am just curious what impact the nagle feature has on latency for SOCK_STREAM socket. Did you ever measure latency after nagle feature is enabled?

Thanks,
Ying

-----Original Message-----
From: Jon Maloy [mailto:jon.maloy@ericsson.com] 
Sent: Wednesday, October 23, 2019 3:53 PM
To: Jon Maloy; Jon Maloy
Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com; parthasarathy.bhuvaragan@gmail.com; tung.q.nguyen@dektech.com.au; hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au; gordan.mihaljevic@dektech.com.au; Xue, Ying; tipc-discussion@lists.sourceforge.net
Subject: [net-next v2 1/1] tipc: add smart nagle feature

We introduce a Nagle-like algorithm for bundling small messages at the
socket level.

- A socket enters nagle mode when more than 4 messages have been sent
  out without receiving any data message from the peer.
- A socket leaves nagle mode whenever it receives a data message from
  the peer.

In nagle mode, small messages are accumulated in the socket write queue.
The last buffer in the queue is marked with a new 'ack_required' bit,
which forces the receiving peer to send a CONN_ACK message back to the
sender.

The accumulated contents of the write queue is transmitted when one of
the following events or conditions occur.

- A CONN_ACK message is received from the peer.
- A data message is received from the peer.
- A SOCK_WAKEUP pseudo message is received from the link level.
- The write queue contains more than 64 1k blocks of data.
- The connection is being shut down.
- There is no CONN_ACK message to expect. I.e., there is currently
  no outstanding message where the 'ack_required' bit was set. As a
  consequence, the first message added after we enter nagle mode
  is always sent directly with this bit set.

This new feature gives a 50-100% improvement of throughput for small
(i.e., less than MTU size) messages, while it might add up to one RTT
to latency time when the socket is in nagle mode.

Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

---
v2: Increased max nagle size for UDP to 14k. This improves
    throughput for messages 750-1500 bytes with ~50%.
---
 net/tipc/msg.c    | 53 ++++++++++++++++++++++++++++++++
 net/tipc/msg.h    | 12 ++++++++
 net/tipc/node.h   |  7 +++--
 net/tipc/socket.c | 91 +++++++++++++++++++++++++++++++++++++++++++++----------
 4 files changed, 145 insertions(+), 18 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 922d262..973795a 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -190,6 +190,59 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
 	return 0;
 }
 
+/**
+ * tipc_msg_append(): Append data to tail of an existing buffer queue
+ * @hdr: header to be used
+ * @m: the data to be appended
+ * @mss: max allowable size of buffer
+ * @dlen: size of data to be appended
+ * @txq: queue to appand to
+ * Returns the number og 1k blocks appended or errno value
+ */
+int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
+		    int mss, struct sk_buff_head *txq)
+{
+	struct sk_buff *skb, *prev;
+	int accounted, total, curr;
+	int mlen, cpy, rem = dlen;
+	struct tipc_msg *hdr;
+
+	skb = skb_peek_tail(txq);
+	accounted = skb ? msg_blocks(buf_msg(skb)) : 0;
+	total = accounted;
+
+	while (rem) {
+		if (!skb || skb->len >= mss) {
+			prev = skb;
+			skb = tipc_buf_acquire(mss, GFP_KERNEL);
+			if (unlikely(!skb))
+				return -ENOMEM;
+			skb_orphan(skb);
+			skb_trim(skb, MIN_H_SIZE);
+			hdr = buf_msg(skb);
+			skb_copy_to_linear_data(skb, _hdr, MIN_H_SIZE);
+			msg_set_hdr_sz(hdr, MIN_H_SIZE);
+			msg_set_size(hdr, MIN_H_SIZE);
+			__skb_queue_tail(txq, skb);
+			total += 1;
+			if (prev)
+				msg_set_ack_required(buf_msg(prev), 0);
+			msg_set_ack_required(hdr, 1);
+		}
+		hdr = buf_msg(skb);
+		curr = msg_blocks(hdr);
+		mlen = msg_size(hdr);
+		cpy = min_t(int, rem, mss - mlen);
+		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
+			return -EFAULT;
+		msg_set_size(hdr, mlen + cpy);
+		skb_put(skb, cpy);
+		rem -= cpy;
+		total += msg_blocks(hdr) - curr;
+	}
+	return total - accounted;
+}
+
 /* tipc_msg_validate - validate basic format of received message
  *
  * This routine ensures a TIPC message has an acceptable header, and at least
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 0daa6f0..b85b85a 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -290,6 +290,16 @@ static inline void msg_set_src_droppable(struct tipc_msg *m, u32 d)
 	msg_set_bits(m, 0, 18, 1, d);
 }
 
+static inline int msg_ack_required(struct tipc_msg *m)
+{
+	return msg_bits(m, 0, 18, 1);
+}
+
+static inline void msg_set_ack_required(struct tipc_msg *m, u32 d)
+{
+	msg_set_bits(m, 0, 18, 1, d);
+}
+
 static inline bool msg_is_rcast(struct tipc_msg *m)
 {
 	return msg_bits(m, 0, 18, 0x1);
@@ -1065,6 +1075,8 @@ int tipc_msg_fragment(struct sk_buff *skb, const struct tipc_msg *hdr,
 		      int pktmax, struct sk_buff_head *frags);
 int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m,
 		   int offset, int dsz, int mtu, struct sk_buff_head *list);
+int tipc_msg_append(struct tipc_msg *hdr, struct msghdr *m, int dlen,
+		    int mss, struct sk_buff_head *txq);
 bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err);
 bool tipc_msg_assemble(struct sk_buff_head *list);
 bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq);
diff --git a/net/tipc/node.h b/net/tipc/node.h
index 291d0ec..b9036f28 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -54,7 +54,8 @@ enum {
 	TIPC_LINK_PROTO_SEQNO = (1 << 6),
 	TIPC_MCAST_RBCTL      = (1 << 7),
 	TIPC_GAP_ACK_BLOCK    = (1 << 8),
-	TIPC_TUNNEL_ENHANCED  = (1 << 9)
+	TIPC_TUNNEL_ENHANCED  = (1 << 9),
+	TIPC_NAGLE            = (1 << 10)
 };
 
 #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
@@ -66,7 +67,9 @@ enum {
 				TIPC_LINK_PROTO_SEQNO  |   \
 				TIPC_MCAST_RBCTL       |   \
 				TIPC_GAP_ACK_BLOCK     |   \
-				TIPC_TUNNEL_ENHANCED)
+				TIPC_TUNNEL_ENHANCED   |   \
+				TIPC_NAGLE)
+
 #define INVALID_BEARER_ID -1
 
 void tipc_node_stop(struct net *net);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 35e32ff..1594a50 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -75,6 +75,7 @@ struct sockaddr_pair {
  * @conn_instance: TIPC instance used when connection was established
  * @published: non-zero if port has one or more associated names
  * @max_pkt: maximum packet size "hint" used when building messages sent by port
+ * @maxnagle: maximum size of mmsg subject to nagle
  * @portid: unique port identity in TIPC socket hash table
  * @phdr: preformatted message header used when sending messages
  * #cong_links: list of congested links
@@ -97,6 +98,7 @@ struct tipc_sock {
 	u32 conn_instance;
 	int published;
 	u32 max_pkt;
+	u32 maxnagle;
 	u32 portid;
 	struct tipc_msg phdr;
 	struct list_head cong_links;
@@ -116,6 +118,9 @@ struct tipc_sock {
 	struct tipc_mc_method mc_method;
 	struct rcu_head rcu;
 	struct tipc_group *group;
+	u32 oneway;
+	u16 snd_backlog;
+	bool expect_ack;
 	bool group_is_open;
 };
 
@@ -137,6 +142,7 @@ static int tipc_sk_insert(struct tipc_sock *tsk);
 static void tipc_sk_remove(struct tipc_sock *tsk);
 static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dsz);
 static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dsz);
+static void tipc_sk_push_backlog(struct tipc_sock *tsk);
 
 static const struct proto_ops packet_ops;
 static const struct proto_ops stream_ops;
@@ -446,6 +452,7 @@ static int tipc_sk_create(struct net *net, struct socket *sock,
 
 	tsk = tipc_sk(sk);
 	tsk->max_pkt = MAX_PKT_DEFAULT;
+	tsk->maxnagle = MAX_PKT_DEFAULT;
 	INIT_LIST_HEAD(&tsk->publications);
 	INIT_LIST_HEAD(&tsk->cong_links);
 	msg = &tsk->phdr;
@@ -512,8 +519,12 @@ static void __tipc_shutdown(struct socket *sock, int error)
 	tipc_wait_for_cond(sock, &timeout, (!tsk->cong_link_cnt &&
 					    !tsk_conn_cong(tsk)));
 
-	/* Remove any pending SYN message */
-	__skb_queue_purge(&sk->sk_write_queue);
+	/* Push out unsent messages or remove if pending SYN */
+	skb = skb_peek(&sk->sk_write_queue);
+	if (skb && !msg_is_syn(buf_msg(skb)))
+		tipc_sk_push_backlog(tsk);
+	else
+		__skb_queue_purge(&sk->sk_write_queue);
 
 	/* Reject all unreceived messages, except on an active connection
 	 * (which disconnects locally & sends a 'FIN+' to peer).
@@ -1208,6 +1219,27 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 	tipc_sk_rcv(net, inputq);
 }
 
+/* tipc_sk_push_backlog(): send accumulated buffers in socket write queue
+ *                         when socket is in Nagle mode
+ */
+static void tipc_sk_push_backlog(struct tipc_sock *tsk)
+{
+	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
+	struct net *net = sock_net(&tsk->sk);
+	u32 dnode = tsk_peer_node(tsk);
+	int rc;
+
+	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
+		return;
+
+	tsk->snt_unacked += tsk->snd_backlog;
+	tsk->snd_backlog = 0;
+	tsk->expect_ack = true;
+	rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
+	if (rc == -ELINKCONG)
+		tsk->cong_link_cnt = 1;
+}
+
 /**
  * tipc_sk_conn_proto_rcv - receive a connection mng protocol message
  * @tsk: receiving socket
@@ -1221,7 +1253,7 @@ static void tipc_sk_conn_proto_rcv(struct tipc_sock *tsk, struct sk_buff *skb,
 	u32 onode = tsk_own_node(tsk);
 	struct sock *sk = &tsk->sk;
 	int mtyp = msg_type(hdr);
-	bool conn_cong;
+	bool was_cong;
 
 	/* Ignore if connection cannot be validated: */
 	if (!tsk_peer_msg(tsk, hdr)) {
@@ -1254,11 +1286,13 @@ static void tipc_sk_conn_proto_rcv(struct tipc_sock *tsk, struct sk_buff *skb,
 			__skb_queue_tail(xmitq, skb);
 		return;
 	} else if (mtyp == CONN_ACK) {
-		conn_cong = tsk_conn_cong(tsk);
+		was_cong = tsk_conn_cong(tsk);
+		tsk->expect_ack = false;
+		tipc_sk_push_backlog(tsk);
 		tsk->snt_unacked -= msg_conn_ack(hdr);
 		if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
 			tsk->snd_win = msg_adv_win(hdr);
-		if (conn_cong)
+		if (was_cong && !tsk_conn_cong(tsk))
 			sk->sk_write_space(sk);
 	} else if (mtyp != CONN_PROBE_REPLY) {
 		pr_warn("Received unknown CONN_PROTO msg\n");
@@ -1437,16 +1471,17 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 	struct sock *sk = sock->sk;
 	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
 	long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
+	struct sk_buff_head *txq = &sk->sk_write_queue;
 	struct tipc_sock *tsk = tipc_sk(sk);
 	struct tipc_msg *hdr = &tsk->phdr;
 	struct net *net = sock_net(sk);
-	struct sk_buff_head pkts;
 	u32 dnode = tsk_peer_node(tsk);
+	int blocks = tsk->snd_backlog;
+	int maxnagle = tsk->maxnagle;
+	int maxpkt = tsk->max_pkt;
 	int send, sent = 0;
 	int rc = 0;
 
-	__skb_queue_head_init(&pkts);
-
 	if (unlikely(dlen > INT_MAX))
 		return -EMSGSIZE;
 
@@ -1467,21 +1502,38 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 					 tipc_sk_connected(sk)));
 		if (unlikely(rc))
 			break;
-
 		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
-		rc = tipc_msg_build(hdr, m, sent, send, tsk->max_pkt, &pkts);
-		if (unlikely(rc != send))
-			break;
 
-		trace_tipc_sk_sendstream(sk, skb_peek(&pkts),
+		if (tsk->oneway++ >= 4 &&
+		    send <= maxnagle &&
+		    tsk->peer_caps & TIPC_NAGLE &&
+		    sock->type == SOCK_STREAM) {
+			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
+			if (rc < 0)
+				break;
+			blocks += rc;
+			if (blocks <= 64 && tsk->expect_ack) {
+				tsk->snd_backlog = blocks;
+				sent += send;
+				break;
+			}
+			tsk->expect_ack = true;
+		} else {
+			rc = tipc_msg_build(hdr, m, sent, send, maxpkt, txq);
+			if (unlikely(rc != send))
+				break;
+			blocks += tsk_inc(tsk, send + MIN_H_SIZE);
+		}
+		trace_tipc_sk_sendstream(sk, skb_peek(txq),
 					 TIPC_DUMP_SK_SNDQ, " ");
-		rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
+		rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
 		if (unlikely(rc == -ELINKCONG)) {
 			tsk->cong_link_cnt = 1;
 			rc = 0;
 		}
 		if (likely(!rc)) {
-			tsk->snt_unacked += tsk_inc(tsk, send + MIN_H_SIZE);
+			tsk->snt_unacked += blocks;
+			tsk->snd_backlog = 0;
 			sent += send;
 		}
 	} while (sent < dlen && !rc);
@@ -1527,6 +1579,7 @@ static void tipc_sk_finish_conn(struct tipc_sock *tsk, u32 peer_port,
 	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
 	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
 	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
+	tsk->maxnagle = tsk->max_pkt == MAX_MSG_SIZE ? 1500 : tsk->max_pkt;
 	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
 	__skb_queue_purge(&sk->sk_write_queue);
 	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
@@ -1848,6 +1901,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 	bool peek = flags & MSG_PEEK;
 	int offset, required, copy, copied = 0;
 	int hlen, dlen, err, rc;
+	bool ack = false;
 	long timeout;
 
 	/* Catch invalid receive attempts */
@@ -1892,6 +1946,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 
 		/* Copy data if msg ok, otherwise return error/partial data */
 		if (likely(!err)) {
+			ack = msg_ack_required(hdr);
 			offset = skb_cb->bytes_read;
 			copy = min_t(int, dlen - offset, buflen - copied);
 			rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
@@ -1919,7 +1974,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 
 		/* Send connection flow control advertisement when applicable */
 		tsk->rcv_unacked += tsk_inc(tsk, hlen + dlen);
-		if (unlikely(tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE))
+		if (ack || tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
 			tipc_sk_send_ack(tsk);
 
 		/* Exit if all requested data or FIN/error received */
@@ -1990,6 +2045,7 @@ static void tipc_sk_proto_rcv(struct sock *sk,
 		smp_wmb();
 		tsk->cong_link_cnt--;
 		wakeup = true;
+		tipc_sk_push_backlog(tsk);
 		break;
 	case GROUP_PROTOCOL:
 		tipc_group_proto_rcv(grp, &wakeup, hdr, inputq, xmitq);
@@ -2029,6 +2085,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
 
 	if (unlikely(msg_mcast(hdr)))
 		return false;
+	tsk->oneway = 0;
 
 	switch (sk->sk_state) {
 	case TIPC_CONNECTING:
@@ -2074,6 +2131,8 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
 			return true;
 		return false;
 	case TIPC_ESTABLISHED:
+		if (!skb_queue_empty(&sk->sk_write_queue))
+			tipc_sk_push_backlog(tsk);
 		/* Accept only connection-based messages sent by peer */
 		if (likely(con_msg && !err && pport == oport && pnode == onode))
 			return true;
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
