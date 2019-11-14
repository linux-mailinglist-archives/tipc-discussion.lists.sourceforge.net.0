Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFB8FC18C
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 09:28:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVAUW-0001AZ-Ue; Thu, 14 Nov 2019 08:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iVAUV-0001AK-J4
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 08:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vZzzfRSa/i9aeZblXXMy0sZMPo5e95thVRSes/YkKj0=; b=InH3ATq6t+nYdOBIesAu2ZWMqo
 731iTlyMElL+74v54sq8C7dXqwSfJqqcAaTwHr3uyjFSJpAc1jBYuMasu/HY0n7J/vReqWZc1Ve5I
 FC1zmUTkjQjjYXYYEBTZqeC0TuxWIXtM3f2GBv85BGLzX7haw1xshZ8ouol2At3i8r+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vZzzfRSa/i9aeZblXXMy0sZMPo5e95thVRSes/YkKj0=; b=fSNTWvoJsJQql5R7JE5MXoVXhY
 l0BxlPqTNOuSXVYPhU3MXr2XuNkCMH/tTZzistkeBY0wPV1ZRfQ0QOL6yV79QT86QaZ6uwjqdrTJM
 JCk/DFooE6MsCR4maW5awArhzhMRIqqwxiNZlY9o6sTgMTCFuNwa5ctc4keyp+IsA9LE=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVAUS-002oq1-RE
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 08:28:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 364AC4AD16;
 Thu, 14 Nov 2019 19:28:26 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573720106; bh=mzvWl
 lcQR+8Ty+CNuFnOj4kOoRzujXEspD3RJ7MPtN4=; b=BZq0KAl4sBHNN6CJXuLIC
 b3ELqAMszCrq1z5VEsPDV9lEhPs2tFpkaYb6Jln0Y9b/liONVPqG+mYbm2E1TwIj
 Y26hWHQtOEElW7VSBAxDKJyC4wD+7c6GbvQkIaJyAN4Yp2jDtvonmr6nihWoPwe8
 4MNbG/YW+k2eeV/sDN6+vQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cPh4CgBWNTFq; Thu, 14 Nov 2019 19:28:26 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 155364AD15;
 Thu, 14 Nov 2019 19:28:26 +1100 (AEDT)
Received: from ubuntu.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 632114AD11;
 Thu, 14 Nov 2019 19:28:25 +1100 (AEDT)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu, 14 Nov 2019 15:28:23 +0700
Message-Id: <20191114082823.2800-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
X-Headers-End: 1iVAUS-002oq1-RE
Subject: [tipc-discussion] [net v2 1/1] tipc: fix duplicate SYN messages
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
refuse error when reading from the server socket in user space.

Solution: return from function tipc_sk_push_backlog() immediately
if there is pending SYN message in the socket write queue.

v2: use Jon's suggestion.

Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/socket.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 5d7859a..7a402ee 100644
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
@@ -1248,11 +1246,17 @@ static void tipc_sk_push_backlog(struct tipc_sock *tsk)
 	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
 	struct net *net = sock_net(&tsk->sk);
 	u32 dnode = tsk_peer_node(tsk);
+	struct sk_buff *skb;
 	int rc;
 
 	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
 		return;
 
+	skb = skb_peek(txq);
+	/* Do not send SYN again after congestion */
+	if (msg_is_syn(buf_msg(skb)))
+		return;
+
 	tsk->snt_unacked += tsk->snd_backlog;
 	tsk->snd_backlog = 0;
 	tsk->expect_ack = true;
-- 
2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
