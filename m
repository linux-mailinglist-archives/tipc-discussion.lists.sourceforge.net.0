Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3BE714C87
	for <lists+tipc-discussion@lfdr.de>; Mon, 29 May 2023 16:52:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q3eEc-0005XP-It;
	Mon, 29 May 2023 14:52:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lucien.xin@gmail.com>) id 1q3eEa-0005X9-Sc
 for tipc-discussion@lists.sourceforge.net;
 Mon, 29 May 2023 14:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xBCgv7WbMymKJnkbMIchawS9T+PNFDhr0/gk+2wKVRo=; b=bPlNqFkSJLE1Cwk/Yt6TJ/gVx2
 tdcdJ5IiNiGolnH8LFPENdR1FRvGYyumpXua2ruHome9YTy1YSYxvHquWZbOupsKfbthwxCtY1Bb9
 pMTNklC/OokPMPs9jg0a+Ma/CAcbrVsK+O15Bz4DpjiyEFzrNY+uz0X1Qzq47nK58bGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xBCgv7WbMymKJnkbMIchawS9T+PNFDhr0/gk+2wKVRo=; b=E
 G8rzpk3k8PxBDRT5CcumStNhEbZs5KAqsBC0OXsQb0XjrUX3bbfa1BJZQ/rBoToBdtv6NNojerWoL
 nFAtKiSQ7NQP7aSDvAcjuqJiXfcafh3oycx7Zu4TJv+3ovm3iX8smLQHep78DukB3jRx+3PekxLYj
 zKKm/+kdBRzE7USk=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q3eEO-0005iR-US for tipc-discussion@lists.sourceforge.net;
 Mon, 29 May 2023 14:52:24 +0000
Received: by mail-qt1-f182.google.com with SMTP id
 d75a77b69052e-3f6aa6171a6so19029091cf.1
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 29 May 2023 07:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685371935; x=1687963935;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=xBCgv7WbMymKJnkbMIchawS9T+PNFDhr0/gk+2wKVRo=;
 b=i+KCjm5IaJQXMNNARuPfp14pJSZ9DWx3gdJ9JXGYShBpZKJDtpGosTPDjQgJav9scs
 MOC7qg5KdXER8mB70bgDp2cQU0RjVmP8sKBkfBt2dJQr0e78BdVjWoPKmKLsWilrKE33
 G4208AWPJGvALZDlEtuVMA5SaxF3ywTDQp8PjemTzvqzGP3y8hp4NqWflwhZtOzUWdLr
 kvv6QLV/NhS5vg/KquMX60jzd+Wq96j3qik0t5s6HDyx5tZcwBIrT90geOFrPVWsFspI
 imQGS20nFDEMbEb4LGe4LRZXTIPjQtnEHBMnybrG3kvs21tRVug6/7n7bsNyVOiIkYC/
 ne6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685371935; x=1687963935;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xBCgv7WbMymKJnkbMIchawS9T+PNFDhr0/gk+2wKVRo=;
 b=dEQ7iyz590suADR3raZNY6g93WGE5RoLiHHVWMHi3xg4gw6sdOyOKAl9k0JXj4KurU
 LB+LTeAuhYMmjgIwPsP4NSQwJppaRJFJh2QWcS/yaF0DSFFF9m17UkSKS1IXNEalOqbY
 XBPyTG3YWGVbcepi1rHkqkf2aPepfKuZdUC7dYBAWE3pHb5eU70cVfKZHZaXt5HHR2hY
 ZxggKkzCrOezIZrRol8A3kyfXco0ZoxOG5dzbvDA14FLFtH4UZDzFVJ6kN6qGI+XQkCa
 Smj5iaHJEA8ybI73W45TkHbCW+cSC2A9holgDE+6zdvxsV/rAZsR2spf2aihk8/hDgxi
 N32g==
X-Gm-Message-State: AC+VfDzj+2HjrKEjNBBkeItq3zLpea5DxdgkIVkMSZ4B7ZFoQEAhbMby
 IXhQzML4jep3/xuyVljmSdI=
X-Google-Smtp-Source: ACHHUZ6rr8bThFmx3E9F+9SwIPyp2OwUlsVkYY3J+P1ZIH7Ws17BCndcgvQV32Cq2JkOyg7vObt38w==
X-Received: by 2002:ac8:574a:0:b0:3f8:25c:c434 with SMTP id
 10-20020ac8574a000000b003f8025cc434mr7635413qtx.19.1685371935007; 
 Mon, 29 May 2023 07:52:15 -0700 (PDT)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 ey6-20020a05622a4c0600b003f6bdc221e6sm3916109qtb.53.2023.05.29.07.52.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 May 2023 07:52:14 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net
Date: Mon, 29 May 2023 10:52:13 -0400
Message-Id: <282f1f5cc40e6cad385aa1c60569e6c5b70e2fb3.1685371933.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Since commit a4dfa72d0acd ("tipc: set default MTU for UDP
 media"), it's been no longer using dev->mtu for b->mtu, and the issue described
 in commit 3de81b758853 ("tipc: check minimum bearer MTU") does [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3eEO-0005iR-US
Subject: [tipc-discussion] [PATCH net-next] tipc: delete tipc_mtu_bad from
 tipc_udp_enable
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
Cc: Eric Dumazet <edumazet@google.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Since commit a4dfa72d0acd ("tipc: set default MTU for UDP media"), it's
been no longer using dev->mtu for b->mtu, and the issue described in
commit 3de81b758853 ("tipc: check minimum bearer MTU") doesn't exist
in UDP bearer any more.

Besides, dev->mtu can still be changed to a too small mtu after the UDP
bearer is created even with tipc_mtu_bad() check in tipc_udp_enable().
Note that NETDEV_CHANGEMTU event processing in tipc_l2_device_event()
doesn't really work for UDP bearer.

So this patch deletes the unnecessary tipc_mtu_bad from tipc_udp_enable.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/bearer.c    | 4 ++--
 net/tipc/bearer.h    | 4 ++--
 net/tipc/udp_media.c | 4 ----
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 53881406e200..114140c49108 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -431,7 +431,7 @@ int tipc_enable_l2_media(struct net *net, struct tipc_bearer *b,
 	dev = dev_get_by_name(net, dev_name);
 	if (!dev)
 		return -ENODEV;
-	if (tipc_mtu_bad(dev, 0)) {
+	if (tipc_mtu_bad(dev)) {
 		dev_put(dev);
 		return -EINVAL;
 	}
@@ -708,7 +708,7 @@ static int tipc_l2_device_event(struct notifier_block *nb, unsigned long evt,
 		test_and_set_bit_lock(0, &b->up);
 		break;
 	case NETDEV_CHANGEMTU:
-		if (tipc_mtu_bad(dev, 0)) {
+		if (tipc_mtu_bad(dev)) {
 			bearer_disable(net, b);
 			break;
 		}
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index bd0cc5c287ef..1ee60649bd17 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -257,9 +257,9 @@ static inline void tipc_loopback_trace(struct net *net,
 }
 
 /* check if device MTU is too low for tipc headers */
-static inline bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve)
+static inline bool tipc_mtu_bad(struct net_device *dev)
 {
-	if (dev->mtu >= TIPC_MIN_BEARER_MTU + reserve)
+	if (dev->mtu >= TIPC_MIN_BEARER_MTU)
 		return false;
 	netdev_warn(dev, "MTU too low for tipc bearer\n");
 	return true;
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 0a85244fd618..926232557e77 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -739,10 +739,6 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 		udp_conf.use_udp_checksums = false;
 		ub->ifindex = dev->ifindex;
 		b->encap_hlen = sizeof(struct iphdr) + sizeof(struct udphdr);
-		if (tipc_mtu_bad(dev, b->encap_hlen)) {
-			err = -EINVAL;
-			goto err;
-		}
 		b->mtu = b->media->mtu;
 #if IS_ENABLED(CONFIG_IPV6)
 	} else if (local.proto == htons(ETH_P_IPV6)) {
-- 
2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
