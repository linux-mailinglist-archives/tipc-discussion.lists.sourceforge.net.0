Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 756571743F
	for <lists+tipc-discussion@lfdr.de>; Wed,  8 May 2019 10:52:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hOIJF-00074r-JW; Wed, 08 May 2019 08:52:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <parthasarathy.bhuvaragan@gmail.com>)
 id 1hOIJE-00074U-Sk
 for tipc-discussion@lists.sourceforge.net; Wed, 08 May 2019 08:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rq5NzmbMr/qLeBw5xUy0jVhAKTJgp5dUgkIHpC2wTIE=; b=KrcN/D+3gxwcTHsL7hq+O3HQET
 38F4F9VSC9xFaarirayraU1Fwj6Ylx6Sw7OMjZmv4zuYa09zu7vx/Qn7jmSs8TiSGHZouu0+coRCR
 oHx2Sr4a2uVAHtDFY1N6gX/zpl3MVOmGex6dfZPbefiaExwTCS+gzCfI6Q564XG8TSow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rq5NzmbMr/qLeBw5xUy0jVhAKTJgp5dUgkIHpC2wTIE=; b=R
 OZDWBv/TZOWoJixSjjh4JdQrwZtli4OTx+RFVuXQpnx1VGmzQf0b+4+D+Nu7gXO3/Tgq0OLZdnlc8
 nrZfbm6horih1EuuSbJBpiwabDJAFNrEyRRAvrXMAhrpbA2jInIiDHS0Ejpq1lFLI+UNJEsbm/Ugh
 mQEZZEuXhMasUxgc=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hOIJC-009fmB-Mo
 for tipc-discussion@lists.sourceforge.net; Wed, 08 May 2019 08:52:16 +0000
Received: by mail-lj1-f194.google.com with SMTP id k8so16749808lja.8
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 08 May 2019 01:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rq5NzmbMr/qLeBw5xUy0jVhAKTJgp5dUgkIHpC2wTIE=;
 b=VaEsPDW4HZBUxSed9J/1GkBuUL233W6QJycsLFwc71KH9KrUyoJgPVBODfa22F6coJ
 V/HcEbgsMPSB9u5eIxHhf15qc6YiuWgwLL0ELAM+5JH5/W4EIc0XS5PZb0aT7DMi7twM
 srODjpjsosgw32XHvr831WybtQz7Fs+h/T6dmkWzwGjeQI1emBAZPRoO3TGS9LURiWfy
 6nC4tKZT+Q7OjnZUBMbVletnHtg619fo1aLMDta9KPd1QhBhQ2qulmjD814mnVS7qwIR
 Ww5XfJ/R1M9k9CeZC0FpeFNZUqJpApP5TkQsovPUWNjVKuiapzdrnT7i+FIqul0z9WS8
 jjKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rq5NzmbMr/qLeBw5xUy0jVhAKTJgp5dUgkIHpC2wTIE=;
 b=sXoDViVTlm8VU1nUZIr7CdfLu+GlYqjdzZSY4Zs6xDc4YOK9HdIJNsd0UTs1bwdiRg
 9zHZcJU4fX2vG7m0CLzLpUZMFuVnrh1ZWXhuDNsG8egpFlZYHh84IP6vrJm/ZjD9ot68
 Adl1jxCUqvqcQNC+3Pc4UkVaU2OxbNyDlZxkMTNkYXJzjiX0X0Qk4hQjokA855Zacgr8
 YNsg/5Z6upsdMuywJRVrWHS8moV6cBKAt4eT/DabuGjmpE17tF83quGX4OqvpE6xUMvu
 DapU2KHEstZO8atwMRwI/2hYac/qtVxerdrLUr1u272tbdNQ6xquwr8yX63jGQreSb0w
 rHEA==
X-Gm-Message-State: APjAAAUej5NlUl4oaw93a6f1FMKbh+0uspS2ekb5FHlPBIhmcUzk5UAB
 A6douoUJzRf968Pcq+Osrnw8xITg
X-Google-Smtp-Source: APXvYqyy4GpGUSN22H2tsZseK5wPfy4W9+VKhH6vRiTtUC1N73JwOKCirnZyosI8BPSKdZPfBwwSwg==
X-Received: by 2002:a2e:8141:: with SMTP id t1mr20389690ljg.122.1557305527557; 
 Wed, 08 May 2019 01:52:07 -0700 (PDT)
Received: from partha-pc.edgeware.tv (94.127.35.102.c.fiberdirekt.net.
 [94.127.35.102])
 by smtp.gmail.com with ESMTPSA id o17sm3819217lji.23.2019.05.08.01.52.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:52:06 -0700 (PDT)
From: Parthasarathy Bhuvaragan <parthasarathy.bhuvaragan@gmail.com>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 ying.xue@windriver.com
Date: Wed,  8 May 2019 10:52:04 +0200
Message-Id: <20190508085204.26241-1-parthasarathy.bhuvaragan@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (parthasarathy.bhuvaragan[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
X-Headers-End: 1hOIJC-009fmB-Mo
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
