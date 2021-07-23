Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E53B83D3DBA
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 18:40:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6yDW-0007f5-VN; Fri, 23 Jul 2021 16:40:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m6yDR-0007e3-Jm
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 16:40:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QUv3Xn1AUBOmOU3KDSBBjJwWZT0cKlH+JfDvvOFio6s=; b=QKFyKPhWMiEE7cbMwrmvQW8jAf
 YxXlWZG+uzSRRUe7q/ES2JFeFvn4cD94ZyJ2eK8xMdvooYVQOvUJOrUiBjPsMtIJnRd+HSnPpiyA/
 vmFq6kQALEPjUov82KWrmn+7DGgOqaJYNo4v5KJl3vaEa3eJ1QqGMrf7DmgXZbXjgDRw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QUv3Xn1AUBOmOU3KDSBBjJwWZT0cKlH+JfDvvOFio6s=; b=L
 xlAf+HG4ruCePqFZcjzBg3r5rB3+QFq0vFuVKkECuz3/418olnhx/LKOQP62ej/XF9QlA+GeDE4a0
 PKNZkyBE7EbcG2mSBKHhYmozUtLfgwryy5vSVwSaIPflsNkROA2WFOEUpD1Ldukcy1viFs3DyxyLt
 vWe4ZwRPl7i+z6lo=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6yDO-000TEe-29
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 16:40:01 +0000
Received: by mail-qv1-f45.google.com with SMTP id hu11so1609027qvb.7
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 23 Jul 2021 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QUv3Xn1AUBOmOU3KDSBBjJwWZT0cKlH+JfDvvOFio6s=;
 b=H5EltaKRM02LXTBLpVIe8E3+tD0wjN7Jh+WfvLJaIooC/kJcG8qpuZPqxgyvwgrCXA
 zddplrrs6wieKn/VtEUWOO2dormYwmOUT56aXlU75GZdy/euAQbvr9GCZ8zBJDsRYIwP
 +NNWE4uhyKs1GjTDkZRevcuP8Gpv3XPkLsaVPtH3Y6f5Avvh5bXLFISG9l2sgGUlHSlk
 F7/HcrkTAa/Mq1dWVbe/wKJGcWvl9QQk53yZFAmnQDOZuNATQ+36lM2ZKU01Vua7beCk
 NduLQLhXBqZvoD2xxVO7qop/Eyj+wG5EL+U5awwW/uNt2lAdczaFZOXLy1btb+ndYpny
 fldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QUv3Xn1AUBOmOU3KDSBBjJwWZT0cKlH+JfDvvOFio6s=;
 b=MRJTaVUvVWFKAbKhEu1Zm2GoVP9zQKu8glZp3uoOPqj/pEdqlBX2pKqAbFj1UebKco
 89wSrrAE6xpMPwO9jGRhyNwBA9PIxGbWbsjoXGjygai89i7d2LeLJbBcP6D13vEYjLV+
 uFDW6YlkvwBD09FCj3/LohdTFn6ym25XfgdAF3XPPKRT9lU7mnYy6dR4RHuGHxStK9c8
 X6yXS94gCIZ7+YmDGr9LJvqGqpuCwKnbiqrOJKHhty9yzxZP/JxDYfOIAGjALWpvgVrq
 9DMcqLxnwv4KcaK8jID0Sf2TwQnlSCiHwOgdCw39+C/QbDO95vtA+JUWvV4Zbvhf3Ffe
 1d5Q==
X-Gm-Message-State: AOAM533YoGundaCLvVva/BbvT7v/oFwWdfkHQ7Gq4siJv/yX3JYQqtUu
 xSPFkhHPJNg2S8AFp98Kam8=
X-Google-Smtp-Source: ABdhPJyghZGPdrUHgbSbHk7aovm/2AaNrLnU0Y6Wlfbm1MNO7nigIwxIXeRlSCH/wzwPuWbSuEdXpA==
X-Received: by 2002:a05:6214:1362:: with SMTP id
 c2mr1061338qvw.9.1627058392040; 
 Fri, 23 Jul 2021 09:39:52 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id n188sm12640194qke.54.2021.07.23.09.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 09:39:51 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Fri, 23 Jul 2021 12:39:50 -0400
Message-Id: <2d9a27d5d8b984ceb9725715437630b01132f49b.1627058390.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m6yDO-000TEe-29
Subject: [tipc-discussion] [PATCH net-next] tipc: fix an use-after-free
 issue in tipc_recvmsg
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

syzbot reported an use-after-free crash:

  BUG: KASAN: use-after-free in tipc_recvmsg+0xf77/0xf90 net/tipc/socket.c:1979
  Call Trace:
   tipc_recvmsg+0xf77/0xf90 net/tipc/socket.c:1979
   sock_recvmsg_nosec net/socket.c:943 [inline]
   sock_recvmsg net/socket.c:961 [inline]
   sock_recvmsg+0xca/0x110 net/socket.c:957
   tipc_conn_rcv_from_sock+0x162/0x2f0 net/tipc/topsrv.c:398
   tipc_conn_recv_work+0xeb/0x190 net/tipc/topsrv.c:421
   process_one_work+0x98d/0x1630 kernel/workqueue.c:2276
   worker_thread+0x658/0x11f0 kernel/workqueue.c:2422

As Hoang pointed out, it was caused by skb_cb->bytes_read still accessed
after calling tsk_advance_rx_queue() to free the skb in tipc_recvmsg().

This patch is to fix it by accessing skb_cb->bytes_read earlier than
calling tsk_advance_rx_queue().

Fixes: f4919ff59c28 ("tipc: keep the skb in rcv queue until the whole data is read")
Reported-by: syzbot+e6741b97d5552f97c24d@syzkaller.appspotmail.com
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/socket.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 9b0b311c7ec1..b0dd183a4dbc 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1973,10 +1973,12 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
 		tipc_node_distr_xmit(sock_net(sk), &xmitq);
 	}
 
-	if (!skb_cb->bytes_read)
-		tsk_advance_rx_queue(sk);
+	if (skb_cb->bytes_read)
+		goto exit;
+
+	tsk_advance_rx_queue(sk);
 
-	if (likely(!connected) || skb_cb->bytes_read)
+	if (likely(!connected))
 		goto exit;
 
 	/* Send connection flow control advertisement when applicable */
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
