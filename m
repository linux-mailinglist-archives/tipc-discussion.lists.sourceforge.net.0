Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C304612A7D8
	for <lists+tipc-discussion@lfdr.de>; Wed, 25 Dec 2019 13:50:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ik67U-0004XL-US; Wed, 25 Dec 2019 12:50:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ik67T-0004X9-6J
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Dec 2019 12:50:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7QxNwN0s0AFpAax8xPqVvb8LSy0ysz9ix15C0H3Mkns=; b=lrgXeFZCwEjpq+fN6oN0VuvtLp
 hRnKWlJFcXcdh1BnAy1Oq7D+FKsUjwF0fMgVQm7zMhDivtWmluaa+lePeti36BK7gFg1c6SM+mXK6
 xTSaTMqotT8idNgtxFnMR/bp1LbECgcvKF2y+oPv9pNnCewQs2PwFVnxvoOZY2vOUKZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7QxNwN0s0AFpAax8xPqVvb8LSy0ysz9ix15C0H3Mkns=; b=TkHrA29h9eNFg9TUFnrwBep2hL
 llydUmIu0xEYmifeJlQMuA81sPQ5YKxMjHp9VDN3jUDm6KP5Hr01J0m68XsjCG5B/U3lsMT+k7nVS
 L0OfDlwUvXWGyItel7Kg99WDexwPVHMsrEsRSgoDts/KYbWBlKQ3UZdrfEqFj2VqOJvg=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ik67P-00F5dr-Ey
 for tipc-discussion@lists.sourceforge.net; Wed, 25 Dec 2019 12:50:31 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBPCmsA7024043
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 25 Dec 2019 04:49:16 -0800
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.80]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Wed,
 25 Dec 2019 04:49:03 -0800
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "jon.maloy@ericsson.com"
 <jon.maloy@ericsson.com>, "maloy@donjonn.com" <maloy@donjonn.com>
Thread-Topic: [net] tipc: fix link overflow issue at socket shutdown
Thread-Index: AQHVukIqASzSpfQI3UGTivPRda3ZeafKzrYQ
Date: Wed, 25 Dec 2019 12:49:02 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CB14F51@ALA-MBD.corp.ad.wrs.com>
References: <20191224100834.30179-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191224100834.30179-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.17.159]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ik67P-00F5dr-Ey
Subject: Re: [tipc-discussion] [net] tipc: fix link overflow issue at socket
 shutdown
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

Acked-by Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Tuesday, December 24, 2019 6:09 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com; Xue, Ying
Subject: [net] tipc: fix link overflow issue at socket shutdown

When a socket is suddenly shutdown or released, it will reject all the
unreceived messages in its receive queue. This applies to a connected
socket too, whereas there is only one 'FIN' message required to be sent
back to its peer in this case.

In case there are many messages in the queue and/or some connections
with such messages are shutdown at the same time, the link layer will
easily get overflowed at the 'TIPC_SYSTEM_IMPORTANCE' backlog level
because of the message rejections. As a result, the link will be taken
down. Moreover, immediately when the link is re-established, the socket
layer can continue to reject the messages and the same issue happens...

The commit refactors the '__tipc_shutdown()' function to only send one
'FIN' in the situation mentioned above. For the connectionless case, it
is unavoidable but usually there is no rejections for such socket
messages because they are 'dest-droppable' by default.

In addition, the new code makes the other socket states clear
(e.g.'TIPC_LISTEN') and treats as a separate case to avoid misbehaving.

--------------
v2: completely refactor the function;
    cover the other socket states;
    fix a memleak issue (- reported by 'Hoang Huu Le').
--------------

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/socket.c | 53 ++++++++++++++++++++++++++++++++---------------------
 1 file changed, 32 insertions(+), 21 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 41688da233ab..aa0ffd0dba50 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -287,12 +287,12 @@ static void tipc_sk_respond(struct sock *sk, struct sk_buff *skb, int err)
  *
  * Caller must hold socket lock
  */
-static void tsk_rej_rx_queue(struct sock *sk)
+static void tsk_rej_rx_queue(struct sock *sk, int error)
 {
 	struct sk_buff *skb;
 
 	while ((skb = __skb_dequeue(&sk->sk_receive_queue)))
-		tipc_sk_respond(sk, skb, TIPC_ERR_NO_PORT);
+		tipc_sk_respond(sk, skb, error);
 }
 
 static bool tipc_sk_connected(struct sock *sk)
@@ -545,34 +545,45 @@ static void __tipc_shutdown(struct socket *sock, int error)
 	/* Remove pending SYN */
 	__skb_queue_purge(&sk->sk_write_queue);
 
-	/* Reject all unreceived messages, except on an active connection
-	 * (which disconnects locally & sends a 'FIN+' to peer).
-	 */
-	while ((skb = __skb_dequeue(&sk->sk_receive_queue)) != NULL) {
-		if (TIPC_SKB_CB(skb)->bytes_read) {
-			kfree_skb(skb);
-			continue;
-		}
-		if (!tipc_sk_type_connectionless(sk) &&
-		    sk->sk_state != TIPC_DISCONNECTING) {
-			tipc_set_sk_state(sk, TIPC_DISCONNECTING);
-			tipc_node_remove_conn(net, dnode, tsk->portid);
-		}
-		tipc_sk_respond(sk, skb, error);
+	/* Remove partial received buffer if any */
+	skb = skb_peek(&sk->sk_receive_queue);
+	if (skb && TIPC_SKB_CB(skb)->bytes_read) {
+		__skb_unlink(skb, &sk->sk_receive_queue);
+		kfree_skb(skb);
 	}
 
-	if (tipc_sk_type_connectionless(sk))
+	/* Reject all unreceived messages if connectionless */
+	if (tipc_sk_type_connectionless(sk)) {
+		tsk_rej_rx_queue(sk, error);
 		return;
+	}
 
-	if (sk->sk_state != TIPC_DISCONNECTING) {
+	switch (sk->sk_state) {
+	case TIPC_CONNECTING:
+	case TIPC_ESTABLISHED:
+		tipc_set_sk_state(sk, TIPC_DISCONNECTING);
+		tipc_node_remove_conn(net, dnode, tsk->portid);
+		/* Send a FIN+/- to its peer */
+		skb = __skb_dequeue(&sk->sk_receive_queue);
+		if (skb) {
+			__skb_queue_purge(&sk->sk_receive_queue);
+			tipc_sk_respond(sk, skb, error);
+			break;
+		}
 		skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE,
 				      TIPC_CONN_MSG, SHORT_H_SIZE, 0, dnode,
 				      tsk_own_node(tsk), tsk_peer_port(tsk),
 				      tsk->portid, error);
 		if (skb)
 			tipc_node_xmit_skb(net, skb, dnode, tsk->portid);
-		tipc_node_remove_conn(net, dnode, tsk->portid);
-		tipc_set_sk_state(sk, TIPC_DISCONNECTING);
+		break;
+	case TIPC_LISTEN:
+		/* Reject all SYN messages */
+		tsk_rej_rx_queue(sk, error);
+		break;
+	default:
+		__skb_queue_purge(&sk->sk_receive_queue);
+		break;
 	}
 }
 
@@ -2639,7 +2650,7 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 	 * Reject any stray messages received by new socket
 	 * before the socket lock was taken (very, very unlikely)
 	 */
-	tsk_rej_rx_queue(new_sk);
+	tsk_rej_rx_queue(new_sk, TIPC_ERR_NO_PORT);
 
 	/* Connect new socket to it's peer */
 	tipc_sk_finish_conn(new_tsock, msg_origport(msg), msg_orignode(msg));
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
