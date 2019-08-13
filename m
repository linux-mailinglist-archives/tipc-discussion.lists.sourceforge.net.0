Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E39618B4D8
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Aug 2019 12:01:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxTcq-0002YS-K2; Tue, 13 Aug 2019 10:01:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1hxTcm-0002Xy-4v
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Aug 2019 10:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n2+V6Ur/w8bQstOQ0FkDxAb9M2x84E312Jhv4ULDMhU=; b=RWA+wo1Eyvp31mdGeNbDbTcoqs
 fSBvLBvanAYk8MU9m53rbl16Xk1QJYKESffQz/cTc5rJtTAVPQDp3+R6M5HaloGTdWzkAm0O43S6O
 WZaRV5WV2A0dzIG1/CNQs7K/+Fu4QszBkYt1eMW3W6xml/CvQ/sRBYHLCMKgdIdahT2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n2+V6Ur/w8bQstOQ0FkDxAb9M2x84E312Jhv4ULDMhU=; b=PlZe+KmGmJOUh/APEnbF5UosE0
 kj6FQcbBdo3fxlPtwe3ESsfyNjhJOOyLex6qPpJH7+2pKFNHZLiQGUABFXf6BzoFNhVIzh+kqza4g
 9n6LJrNzK6179GGiy8PLm36w/D1tYdD9K5W1/AKt7ETM9gepez+KsAe4G8+6PJ4qCYU0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxTck-0026NJ-TL
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Aug 2019 10:01:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 609C348A96;
 Tue, 13 Aug 2019 20:01:44 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1565690504; bh=alxUKed3fmh1cHSDe6Jfm5TQfQk3GQEjLWDLaFyC9Wc=; b=J
 zESSSQxt6EniesHyJ9sNw59tr+gTkYysLAHtMJ16xzp8A07J+oFnzpaTxSBX33Ll
 ToArhf+FK2S/LS9wAaH5ahKPhTUo3vm5bBwVNO9/0IJO8FBXoQm/yHLlgZecQ6xL
 n6xB6B+E9O9LFw6YvVoB9EqknMduq4iTYNuYV5TuZA=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5DX-5wyP5bIY; Tue, 13 Aug 2019 20:01:44 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 4933048A97;
 Tue, 13 Aug 2019 20:01:44 +1000 (AEST)
Received: from tung-VirtualBox.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id DF62648A96;
 Tue, 13 Aug 2019 20:01:42 +1000 (AEST)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue, 13 Aug 2019 17:01:31 +0700
Message-Id: <20190813100131.5987-4-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
References: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hxTck-0026NJ-TL
Subject: [tipc-discussion] [net v1 3/3] tipc: fix connection failure under
 link congestion
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

When initiating a connection message under link congestion,
function __tipc_sendmsg() is used to send the connection message to
a listening socket. Function tipc_wait_for_cond() is called to wait
until the link is not congested. However, it calls tipc_sk_sock_err()
for sanity check and this function returns -ENOTCONN immediately
because the socket state is not ESTABLISHED.

This commit fixes this issue by moving the sanity check for
connection-oriented socket from tipc_sk_sock_err() to
__tipc_sendstream().

Fixes: 8c44e1af16b2 ("tipc: unify tipc_wait_for_sndpkt() and tipc_wait_for_sndmsg() functions)
Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
---
 net/tipc/socket.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 9fd9a5727786..0ce441fd126c 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -363,12 +363,9 @@ static int tipc_sk_sock_err(struct socket *sock, long *timeout)
 
 	if (err)
 		return err;
-	if (typ == SOCK_STREAM || typ == SOCK_SEQPACKET) {
-		if (sk->sk_state == TIPC_DISCONNECTING)
-			return -EPIPE;
-		else if (!tipc_sk_connected(sk))
-			return -ENOTCONN;
-	}
+	if ((typ == SOCK_STREAM || typ == SOCK_SEQPACKET) &&
+	    (sk->sk_state == TIPC_DISCONNECTING))
+		return -EPIPE;
 	if (!*timeout)
 		return -EAGAIN;
 	if (signal_pending(current))
@@ -1462,6 +1459,13 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
 		return rc;
 	}
 
+	if (!tipc_sk_connected(sk)) {
+		if (sk->sk_state == TIPC_DISCONNECTING)
+			return -EPIPE;
+		else
+			return -ENOTCONN;
+	}
+
 	do {
 		rc = tipc_wait_for_cond(sock, &timeout,
 					(!tsk->cong_link_cnt &&
-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
