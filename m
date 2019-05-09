Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D93D184C1
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 May 2019 07:14:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hObNT-0005Kc-Rv; Thu, 09 May 2019 05:13:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <parthasarathy.bhuvaragan@gmail.com>)
 id 1hObNT-0005KU-74
 for tipc-discussion@lists.sourceforge.net; Thu, 09 May 2019 05:13:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ziFPAPis9UqEKW8aSnfoIiAF+SVzl0wIceTxI4Vz1n4=; b=dptt/eFhz0Y+02FBKBGNrqUSEx
 9lo/7DvvBWCQ6GPag5eR2V0+X+gTfDVYanr+LkNtcfN2//6QEV+lYtA93JZE9Ie6q+RIcBfYCgIuh
 hUvI1df6+rW5qDJLF1Z7qo/JT9wc3xXbVp7HOGZaVjr0w9fCKVVqLbO1YgKCD3TuP2yc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ziFPAPis9UqEKW8aSnfoIiAF+SVzl0wIceTxI4Vz1n4=; b=L
 gVzdO6S4T5Ir1ELis6A2uIeThKkSFiRHAQ+MyZUC+TAJd5EeLAFFoHjCKEEYs0aMxLq4ozP8bTWL0
 8EI+VEj6ybG0oFNV3cbXifF/Cjf/zDiyaty2SMKHGJHRg6Um5QdQEtr8a4lDI6RQLf+Sf6o2Q61Be
 qrYh3148JWQfIUms=;
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hObNR-00A7C6-TE
 for tipc-discussion@lists.sourceforge.net; Thu, 09 May 2019 05:13:55 +0000
Received: by mail-lj1-f193.google.com with SMTP id k8so838437lja.8
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 08 May 2019 22:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ziFPAPis9UqEKW8aSnfoIiAF+SVzl0wIceTxI4Vz1n4=;
 b=UTRqvsMzZAr/sI+sy91rspoTSWo1uLBhbiQc+0wo/iIchS4ur9+55jEI1fn2FUWKhH
 pkYsfk2jsQc1jv6sti73A9DRTU1ls+sBKbarvANSZGlfzq5+r1PiHTONXNe77QE/OMo1
 pNbYpDhU/UfnF+MSuNuq5/DE8dvOlYIWkzk1APAiOHvtArPOAA+kNoB+f1ECmECtJ2/5
 ja8zlyVd5KYMMke8me8YPVPhUpsX7iDWR+RzYtFS2dAmCFvB7tsZQK1wQOqqgd7I0H0M
 ePozo/9cMrr9Wirvz0I1cxE8eQZoIayulmIFL8gB2vjW1OXD4lFzEDu5sSsztWDCD+7C
 kUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ziFPAPis9UqEKW8aSnfoIiAF+SVzl0wIceTxI4Vz1n4=;
 b=O416jN2eStHC80XjWCClVngq+FUjwp1PYF5jlsR8wyEIrIRsjwXwiqU+9NyXY9dE13
 OV4UqVJbFjzYqPIvN7HqHZIj8vlz61FHV/CStFw8Fgww0K+YIQk5Z+p9QFczxEWQSVyx
 Td5KfzzGcVgJX+LrYFNObVUKMy6J1YNH8cWBJZTE1G3iyKYokgZamUMUi6XGvRKQNDA+
 azD/Ub9f6G4dx2s92Z103C/nbIEAIrf6iBG6DW3zPRNjqimaG4Dny3+LusBk614xl02P
 umrmm8j2Og21AzR2UXtvkW3fm8RhTgUa5+nrbF+aEMA9myzFuh7XKA95rmkulPnUbFxZ
 FdoA==
X-Gm-Message-State: APjAAAUQxuLE3eIb3EdFQ3xI5HJ8AkY8L36zEi0992mys3tkbq5r6aMH
 F77lgkY1XGNEoNpk8f4+9cg=
X-Google-Smtp-Source: APXvYqz+Ok450GFVVm5HeiWKCEeRbGAX69U18Qw4Ov7scTUJcUtII2Zvfmgw7ov7f5MexjyJYDwFYg==
X-Received: by 2002:a2e:2191:: with SMTP id h17mr939855lji.40.1557378827169;
 Wed, 08 May 2019 22:13:47 -0700 (PDT)
Received: from partha-pc.edgeware.tv (94.127.35.102.c.fiberdirekt.net.
 [94.127.35.102])
 by smtp.gmail.com with ESMTPSA id 17sm137623lji.2.2019.05.08.22.13.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 22:13:46 -0700 (PDT)
From: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
To: davem@davemloft.net,
	netdev@vger.kernel.org
Date: Thu,  9 May 2019 07:13:42 +0200
Message-Id: <20190509051342.6187-1-parthasarathy.bhuvaragan@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (parthasarathy.bhuvaragan[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.se]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hObNR-00A7C6-TE
Subject: [tipc-discussion] [PATCH net v1] tipc: fix hanging clients using
 poll with EPOLLOUT flag
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
Cc: tipc-discussion@lists.sourceforge.net, Jon Maloy <jon.maloy@ericsson.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

commit 517d7c79bdb398 ("tipc: fix hanging poll() for stream sockets")
introduced a regression for clients using non-blocking sockets.
After the commit, we send EPOLLOUT event to the client even in
TIPC_CONNECTING state. This causes the subsequent send() to fail
with ENOTCONN, as the socket is still not in TIPC_ESTABLISHED state.

In this commit, we:
- improve the fix for hanging poll() by replacing sk_data_ready()
  with sk_state_change() to wake up all clients.
- revert the faulty updates introduced by commit 517d7c79bdb398
  ("tipc: fix hanging poll() for stream sockets").

Fixes: 517d7c79bdb398 ("tipc: fix hanging poll() for stream sockets")
Signed-off-by: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
Acked-by: Jon Maloy <jon.maloy@ericsson.se>
---
 net/tipc/socket.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index b542f14ed444..2851937f6e32 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -734,11 +734,11 @@ static __poll_t tipc_poll(struct file *file, struct socket *sock,
 
 	switch (sk->sk_state) {
 	case TIPC_ESTABLISHED:
-	case TIPC_CONNECTING:
 		if (!tsk->cong_link_cnt && !tsk_conn_cong(tsk))
 			revents |= EPOLLOUT;
 		/* fall through */
 	case TIPC_LISTEN:
+	case TIPC_CONNECTING:
 		if (!skb_queue_empty(&sk->sk_receive_queue))
 			revents |= EPOLLIN | EPOLLRDNORM;
 		break;
@@ -2041,7 +2041,7 @@ static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
 			if (msg_data_sz(hdr))
 				return true;
 			/* Empty ACK-, - wake up sleeping connect() and drop */
-			sk->sk_data_ready(sk);
+			sk->sk_state_change(sk);
 			msg_set_dest_droppable(hdr, 1);
 			return false;
 		}
-- 
2.21.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
