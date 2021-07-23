Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A323D3E9D
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 19:26:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6yvr-0000ad-A3; Fri, 23 Jul 2021 17:25:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1m6yvp-0000aW-Nz
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 17:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PjeERi7upz0bSI36pGMn3mjTdet+nsuS/09bNkS+VnE=; b=LmLrYVxOLN1STjMKe67BjfUrpY
 hbrKyUElR9Zhg2glR2s/H23ct1YBqFJ2gJEVdHHSsqqCHPsDw3uMI9jvy0jw92DKLNfIE2RJo5Iiz
 GZPMPKAShD8JCMS1QN3tPx0tNxyzwW9KplhB4g7HL56i2Fs0RqVQiT0pzlGkIyts/DDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PjeERi7upz0bSI36pGMn3mjTdet+nsuS/09bNkS+VnE=; b=U
 ExdIh3zKrAi3KBV43Za/7f3VIsDRw4aUCAyAWHb0p1FQ+ZTMGTYHjoPUgmwTLHdbp+AZuYUrID1+q
 YSQN7EE0elb2DKTYgt3JNUnQJ8wpgly8Y713aaoNstn6qV86+60+rvhoO+zsMKkvtSYNcNSvgxhYc
 Rj2sDKbZhW3NMqN4=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6yvg-000Va2-TP
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 17:25:53 +0000
Received: by mail-wr1-f44.google.com with SMTP id t17so3187630wrq.2
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 23 Jul 2021 10:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PjeERi7upz0bSI36pGMn3mjTdet+nsuS/09bNkS+VnE=;
 b=nBqZsBSC8BS+wPgs5VmujkQq/FCzPj/JIbH7YdSf5kKMX98ooJnNs1mljh5diiEuWx
 UdHrrNkK1FU4XhpylPAABSPY6/324y6ZnO2q7YaAWCzAfO+4NZpc4H+4642kEwv2x9fk
 tfLSqGdjxobO8UcGaemI8dkVqsj555Vc9abvamty3D6yRA2Y1AIUfguTN+iS+kPvbrhx
 fWyVTqG0gnOdEmfgeXlDMuT/iinSegnv0K6nIsfiZLgLa/RlDmehmPbJ8egUZqovRdQb
 sjwO0xqODVGW1ET9oXzEjXG9ewWqYW/QSJTWhKWFwNmJxPDe5puEvgXdPHR9jutODwNL
 YH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PjeERi7upz0bSI36pGMn3mjTdet+nsuS/09bNkS+VnE=;
 b=E+anuLCi7yX4gxUHY70oSwzP9Zf9eYaa21xa68U4YIYbqdYo3lHliqp7P/ZaR2iq17
 7zuyDcSC24HKn+mtw9PSEkB3EyDsDxMQWiMLUXIUpy555zcuGqAgfNq9WxBFU35hR9sO
 kjE9JeBLGsNoWiUC83Gl3fTwv6HRy5iVjEdwNcj72Zs1Gk0k1b2XgnckWZ3mLnL21+l6
 QKm/JQgWoOgyyBryLrLkSE1wo3A2VACQF+WUoT3F21O490i+w0SvigcDP8/Q52pAr/dI
 wcWgV3u/03oyuY7lxKdK+Fp6c5nAPO/B4wAtNxQOK/wl7tRplbFAxokrhhxbIlta+YEH
 t4hw==
X-Gm-Message-State: AOAM533QWtgttYpkFgiutHBnhxfWh61t6WwAekB4fIEC/wbIHv/JnUrC
 fZzZrW233x3CzePoqwCAo8s=
X-Google-Smtp-Source: ABdhPJyPkhxq0lrs5SdrqngPDFkK8mSu7awcghjWyziR3fdQN6BfwmySLLeOG7UC+8bEXBevpx0onw==
X-Received: by 2002:adf:df12:: with SMTP id y18mr6598619wrl.189.1627061138522; 
 Fri, 23 Jul 2021 10:25:38 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f26sm27690440wmc.29.2021.07.23.10.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 10:25:38 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
Date: Fri, 23 Jul 2021 13:25:36 -0400
Message-Id: <a60f2c4e9eb8cce9da01c5bd561684011f7fa7da.1627061136.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m6yvg-000Va2-TP
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
Acked-by: Jon Maloy <jmaloy@redhat.com>
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
