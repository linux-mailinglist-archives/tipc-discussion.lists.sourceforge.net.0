Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 571BCFB07D
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 13:32:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUrp2-0008Lh-9s; Wed, 13 Nov 2019 12:32:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iUrp0-0008La-SP
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 12:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VWBe4vZJA8dRV+wHdCiCYz7JuaeD85VFuHvXyE02XxU=; b=C6mlioybhtVmqkIjVsKtHceCij
 8tutnyD9CUZfgaGtI9NxgHIsyM2vLz98+ikHTg6c8OA9KJ7+8u4nBT6haRrFm8xLl+VLXX8YsaOhr
 JMJIJNPnrLG+EeVIyZN9szek7HYYGPvk1aT3IXqmBkXw2kH2mcwqmHaEFOLJi9iwZk7Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VWBe4vZJA8dRV+wHdCiCYz7JuaeD85VFuHvXyE02XxU=; b=j8FBlylKGbVYZVW8ffPlvZYLry
 9mooCnJLLSStjSTM5Z1unhsK/S97f5c0uQqYifDk6TnPgj7PS1zIPki84oacT3ZN57twbKQu3iz/r
 XFPQL85QoE/8N0AIaQ/YnIKOXMkoNQpsMtAUObYXZWOg/eQ6Ib1J7QlEjRqC5US5x0xk=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUrox-00F1gx-6W
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 12:32:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 45D314ACFA;
 Wed, 13 Nov 2019 23:32:16 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573648336; bh=JRMf7
 VEKzSujKmkqtHlatWrv1AzTxZE7BJQVAqPzeTU=; b=cCH7f044fdIshe8IrsDSG
 6VPdpq46dst6gvU7WbP4LRwJEFb+5PnVLVO8KmT5DSDIovKpj3UZsbpNE3OTIO79
 nI42ASUsUFdX8o827jhwG/LP+RC9rjz8aTz6wW3G3KF/9+74LWr13W7MphVhdGNs
 OOJuWFb/1grWeTSgva+GXQ=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OR5TutYOK5uj; Wed, 13 Nov 2019 23:32:16 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 020F44ACFB;
 Wed, 13 Nov 2019 23:32:15 +1100 (AEDT)
Received: from tung-VirtualBox.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 1A3114ACFA;
 Wed, 13 Nov 2019 23:32:14 +1100 (AEDT)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Wed, 13 Nov 2019 19:32:09 +0700
Message-Id: <20191113123209.22553-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
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
X-Headers-End: 1iUrox-00F1gx-6W
Subject: [tipc-discussion] [net v1 1/1] tipc: fix duplicate SYN messages
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
if the client socket state is not ESTABLISHED.

Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/socket.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 5d7859a..61f9da4 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1246,13 +1246,18 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 static void tipc_sk_push_backlog(struct tipc_sock *tsk)
 {
 	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
-	struct net *net = sock_net(&tsk->sk);
+	struct sock *sk = &tsk->sk;
+	struct net *net = sock_net(sk);
 	u32 dnode = tsk_peer_node(tsk);
 	int rc;
 
 	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
 		return;
 
+	/* Do not send SYN again after congestion */
+	if (sk->sk_state != TIPC_ESTABLISHED)
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
