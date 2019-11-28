Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5210C2C4
	for <lists+tipc-discussion@lfdr.de>; Thu, 28 Nov 2019 04:10:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iaACI-0008GM-AE; Thu, 28 Nov 2019 03:10:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iaACH-0008GF-5X
 for tipc-discussion@lists.sourceforge.net; Thu, 28 Nov 2019 03:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KW27cSNZGsaiZyA6gI0e+9X/1WPv1C/Ffr5P+SkzdvE=; b=N149eVxugWBsuT9sPvt5YFpAJU
 hOQXm2beWauNG3wXbL03mg44QSmZ7jcXu8MINbwBe11TVscVGcSFISM4APEgCJPjch1WWMfm9jDCl
 h501s1gli/98wxvvHKFxZBeFTScs8BLJZDqujVVUyE0/9xSnHxSZq3Pmf8Ay8GOhPROw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KW27cSNZGsaiZyA6gI0e+9X/1WPv1C/Ffr5P+SkzdvE=; b=KEsd2rKPYUDrwILz7KRK3ltv2r
 OGEKwjjBUZtsm1yBAwWwb1IWitJl9eUo/T/qYa3hAdFS2nwsmezS5rV85s9rqvDNJIRAAcWfeZMGh
 8C3O/A96EGK3XDUsBPasiER4PwMH2AzknNA9TpsB1TX+OX3eJzanxkeSBF4X26BXfAmU=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iaACD-008lmU-Hh
 for tipc-discussion@lists.sourceforge.net; Thu, 28 Nov 2019 03:10:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id F27414B9D0;
 Thu, 28 Nov 2019 14:10:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1574910613; bh=ucB/mpLQr+FlKPjIb3X0L0kJML9o22R6k+C578E75g4=; b=Y
 0Yrd+9CVuPfFp7vdidRAVuz8NaFGe+cE8WZ18TrF+zJql7342lsT3BJBxQ7K1pzq
 Q3KW8PlwyQbFqgkHxEr/t02n9HbBVWxFMuQ3PS4yiBREGX7FDMQWFH99ew/YIgYU
 Z9CK4ajMhXBEAJ5aeK/JSeR61dh4cz76qfjG7taZqg=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id h6vQfWFuOPIY; Thu, 28 Nov 2019 14:10:13 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id CB35D4B9D1;
 Thu, 28 Nov 2019 14:10:13 +1100 (AEDT)
Received: from ubuntu.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 3A84C4B9D0;
 Thu, 28 Nov 2019 14:10:13 +1100 (AEDT)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 28 Nov 2019 10:10:08 +0700
Message-Id: <20191128031008.2045-5-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
References: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1iaACD-008lmU-Hh
Subject: [tipc-discussion] [net v1 4/4] tipc: fix duplicate SYN messages
 under link congestion
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

Scenario:
1. A client socket initiates a SYN message to a listening socket.
2. The send link is congested, the SYN message is put in the
send link and a wakeup message is put in wakeup queue.
3. The congestion situation is abated, the wakeup message is
pulled out of the wakeup queue. Function tipc_sk_push_backlog()
is called to send out delayed messages by Nagle. However,
the client socket is still in CONNECTING state. So, it sends
the SYN message in the socket write queue to the listening socket
again.
4. The listening socket receives the first SYN message and creates
first server socket. The client socket receives ACK- and establishes
a connection to the first server socket. The client socket closes
its connection with the first server socket.
5. The listening socket receives the second SYN message and creates
second server socket. The second server socket sends ACK- to the
client socket, but it has been closed. It results in connection
reset error when reading from the server socket in user space.

Solution: return from function tipc_sk_push_backlog() immediately
if there is pending SYN message in the socket write queue.

Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
---
 net/tipc/socket.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index da5fb84852a6..41688da233ab 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -540,12 +540,10 @@ static void __tipc_shutdown(struct socket *sock, int error)
 	tipc_wait_for_cond(sock, &timeout, (!tsk->cong_link_cnt &&
 					    !tsk_conn_cong(tsk)));
 
-	/* Push out unsent messages or remove if pending SYN */
-	skb = skb_peek(&sk->sk_write_queue);
-	if (skb && !msg_is_syn(buf_msg(skb)))
-		tipc_sk_push_backlog(tsk);
-	else
-		__skb_queue_purge(&sk->sk_write_queue);
+	/* Push out delayed messages if in Nagle mode */
+	tipc_sk_push_backlog(tsk);
+	/* Remove pending SYN */
+	__skb_queue_purge(&sk->sk_write_queue);
 
 	/* Reject all unreceived messages, except on an active connection
 	 * (which disconnects locally & sends a 'FIN+' to peer).
@@ -1248,9 +1246,14 @@ static void tipc_sk_push_backlog(struct tipc_sock *tsk)
 	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
 	struct net *net = sock_net(&tsk->sk);
 	u32 dnode = tsk_peer_node(tsk);
+	struct sk_buff *skb = skb_peek(txq);
 	int rc;
 
-	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
+	if (!skb || tsk->cong_link_cnt)
+		return;
+
+	/* Do not send SYN again after congestion */
+	if (msg_is_syn(buf_msg(skb)))
 		return;
 
 	tsk->snt_unacked += tsk->snd_backlog;
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
