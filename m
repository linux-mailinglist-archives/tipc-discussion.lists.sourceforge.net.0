Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 529F05C188
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 Jul 2019 18:57:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hhzcM-0003Mr-9Z; Mon, 01 Jul 2019 16:57:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hhzcL-0003Mk-M4
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jul 2019 16:57:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m73zpQ3RUbZ++pUg/1sY1Yqn90IGmJDz42wSnQwxdv8=; b=jodbjDlHnVp1tRICOQr12N24Jc
 VizF95YlE7tKWzuzpjYGnTfANYIu7C0o+LvdfJ1C0u0S8wEKcT0KY/kpidkgjcxkzxpt08ZNoFNUI
 kB6nK3ZevnQMVm2/xsXUBCAiUP38KMhWxDlQexdWG8XpZxSgpHDCtf7GPaym+hL0T+88=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m73zpQ3RUbZ++pUg/1sY1Yqn90IGmJDz42wSnQwxdv8=; b=TlbVud1Y8VDi/hgdIfdTuEHLl+
 seJgE2BaiFDAXUxdySClh5vBAGaT3KTS72cT/PHg27cazNld8naVVqjEqbda1VAhCvLpE3IJKoIMl
 KRW030Uk4DDLD8IVXvj5nyLtQ1bpbdVvuqsRdR+dcU6/2se6WcCDa2IwlhwJKZZm/B30=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hhzcS-003Hkp-PV
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jul 2019 16:57:34 +0000
Received: by mail-pf1-f195.google.com with SMTP id y15so6874029pfn.5
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 01 Jul 2019 09:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=m73zpQ3RUbZ++pUg/1sY1Yqn90IGmJDz42wSnQwxdv8=;
 b=PW4FgFCAjY9nE5e+O3eeWWGWkDvBMDhgpd2UItHfNoV5l17o5TQZgacU57hCXfLb9N
 Ii+KhxeOFAK2FFkTmmh5W3OmKBepOTuBPL/qHQvjq0sYUfdflfVT3ITX1leNpfyxSTe2
 PnY8jApP/HaJZEjWoOxXkqm5aamvazJ36Ujt4sdo/Bwxue5JPa8j8pGYGVIxfGby2xn7
 /JBpPD/wX/zu5EUn3yXVdpFpesDbHG0j7tsBIYdJwV8sD81LjLoeX9g7UkTj1m2c/NQR
 xIUtRkLvu3/I9gkYIfu481+5EnfIcYM9EMiksnj/5OVwHArXjdkst+inERClxa01qx/z
 +Nbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=m73zpQ3RUbZ++pUg/1sY1Yqn90IGmJDz42wSnQwxdv8=;
 b=tz2Iwx5pv8L/qnJ6MsCh6/Y+iX57FKvcg0jLmQ2VCSWOdVtSAsfi45X9Pz8C+Te4vw
 ST12XIj7+9BuXVQ5ccEMRrDlh8K3a1ZtR3/vooYkCAlw86upsVHCkBNOCyKSQkFqk919
 dEsbIAEAQL7wSKFCCDOoZf5z2Y1dyhVkzjxGBPEqOdgImIBoecxJPDWmQtoR3RXTzlCe
 df2fC422YjFyVFqZ6sAyF+EOGfjnMWQdrumpjAmqsR1GoyOknjFbgI6ELgFi0MOgSMY7
 mRO22Ni3eJ+6o+OLW/umVi/Pdfh3Qlg2N5hJlaWZy1jh6CY0mc+6LHNIyPnchp7eym7q
 VJ0w==
X-Gm-Message-State: APjAAAVhpx7qukt1g04lAHc5UYn9jAKkqxz6mKyIc+Fm8NdT0AJOOfKa
 WNsVDqeaWFT0OmyL9W0SKmY=
X-Google-Smtp-Source: APXvYqxQ9DEwe9BHXFbYddhJvnscuAWHRWt4OSTk8T4Sp4bbndoorAg8bwejImgOVyo+h6k93TemBQ==
X-Received: by 2002:a63:fa57:: with SMTP id g23mr18181559pgk.75.1562000247075; 
 Mon, 01 Jul 2019 09:57:27 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id p65sm11624325pfp.58.2019.07.01.09.57.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 09:57:26 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Tue,  2 Jul 2019 00:57:19 +0800
Message-Id: <d59889f395b2c224131046c832fe1a8056209107.1562000239.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hhzcS-003Hkp-PV
Subject: [tipc-discussion] [PATCH net-next] tipc: remove ub->ubsock checks
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
Cc: tipc-discussion@lists.sourceforge.net, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Both tipc_udp_enable and tipc_udp_disable are called under rtnl_lock,
ub->ubsock could never be NULL in tipc_udp_disable and cleanup_bearer,
so remove the check.

Also remove the one in tipc_udp_enable by adding "free" label.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/udp_media.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 62b85db..287df687 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -759,7 +759,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 
 	err = dst_cache_init(&ub->rcast.dst_cache, GFP_ATOMIC);
 	if (err)
-		goto err;
+		goto free;
 
 	/**
 	 * The bcast media address port is used for all peers and the ip
@@ -771,13 +771,14 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 	else
 		err = tipc_udp_rcast_add(b, &remote);
 	if (err)
-		goto err;
+		goto free;
 
 	return 0;
-err:
+
+free:
 	dst_cache_destroy(&ub->rcast.dst_cache);
-	if (ub->ubsock)
-		udp_tunnel_sock_release(ub->ubsock);
+	udp_tunnel_sock_release(ub->ubsock);
+err:
 	kfree(ub);
 	return err;
 }
@@ -795,8 +796,7 @@ static void cleanup_bearer(struct work_struct *work)
 	}
 
 	dst_cache_destroy(&ub->rcast.dst_cache);
-	if (ub->ubsock)
-		udp_tunnel_sock_release(ub->ubsock);
+	udp_tunnel_sock_release(ub->ubsock);
 	synchronize_net();
 	kfree(ub);
 }
@@ -811,8 +811,7 @@ static void tipc_udp_disable(struct tipc_bearer *b)
 		pr_err("UDP bearer instance not found\n");
 		return;
 	}
-	if (ub->ubsock)
-		sock_set_flag(ub->ubsock->sk, SOCK_DEAD);
+	sock_set_flag(ub->ubsock->sk, SOCK_DEAD);
 	RCU_INIT_POINTER(ub->bearer, NULL);
 
 	/* sock_release need to be done outside of rtnl lock */
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
