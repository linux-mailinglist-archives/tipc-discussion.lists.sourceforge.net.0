Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2563E129FF8
	for <lists+tipc-discussion@lfdr.de>; Tue, 24 Dec 2019 11:09:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ijh7b-00033S-Kv; Tue, 24 Dec 2019 10:08:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ijh7Z-00032Z-PT
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 10:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kFv6bKRNMadw7SLrcDgZM78KHaHaG0Vm4tbgRdv64rE=; b=f2W8KuloOUahS9UJj9DBMYsYhN
 lLZjWERvwVK1L5+Nn189lVB6BGh+RVP5TgdTfANgyEFYNB7HgnxSJdcn481s5rE+anc3ixVQobXFc
 NBgPaXm2ExzACwpvUITZQ+ZTXXfTbhlwNAsKqdXIigm+yovTFmQWrE385ZZ1M7bfQrzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kFv6bKRNMadw7SLrcDgZM78KHaHaG0Vm4tbgRdv64rE=; b=fDWAieawjFBNJJzh55mp+33geu
 leyxJz2xW9GEob/0Ka6XZTo+jED1A0hrqpVPwI2uiFrsHX4rZd2MSI/1NqUqKgQ1khRmgkyxSTLLx
 STs7SNZHvpe+IShULcCisBBIdi/AwNRhCNxxtc3LclxPTd4C4sUAwWBCxWpqwd/1ypLw=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ijh7V-00CPo7-Ip
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 10:08:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 4D28A4C32F;
 Tue, 24 Dec 2019 21:08:43 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1577182123; bh=EkWZ+
 9bbLTA8WD8Iqtrt/+m3/f7FDIeLMOy+pqR3nKc=; b=VyLBe5nRyeTv2OFK8gsuJ
 SC+Vexz6azO+StnFbvjfWTM5m/UOmbimbS2vHrCQbB9AcPySQ/rOAz438KUgMf7q
 qoRlR4m5PrJZwI+LcoByXS6QtqecMoGfMSMdVTOhaARTZ3P6rgW+t/0N9gM9m8Ox
 XZyUo4xL14FLJQZbeRAmls=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ciaVrM9_pIV8; Tue, 24 Dec 2019 21:08:43 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id A2C314C33C;
 Tue, 24 Dec 2019 21:08:42 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 5A7864C32F;
 Tue, 24 Dec 2019 21:08:41 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue, 24 Dec 2019 17:08:34 +0700
Message-Id: <20191224100834.30179-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ijh7V-00CPo7-Ip
Subject: [tipc-discussion] [net] tipc: fix link overflow issue at socket
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

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
