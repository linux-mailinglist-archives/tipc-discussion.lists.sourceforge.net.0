Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BC73BDD0A
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jul 2021 20:22:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m0piG-0001SL-SZ; Tue, 06 Jul 2021 18:22:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1m0piE-0001SD-Pl
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g2Br9kdtBO0tVivZKElh/QAGpUa3JqBOxOri9psao5E=; b=St0iebEw+7lYIkhikUPZftx0nU
 r0UbgOOOcQQJLQ27xz0dap2Ei35XT4vIlwyzHLuA8j9y/UBHhABn1ln4SWHRH5Vor9woiEd4XiJXr
 piINjUM1L9N6TS31j4bEyl/JMLMFXc2ATvc26x21+bn4+DShJ5fInANAIpVj5g1ICu1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g2Br9kdtBO0tVivZKElh/QAGpUa3JqBOxOri9psao5E=; b=hQWAJ2lhaLXpgAQmBieHzUBuDh
 W6WDxVuZKtikQBYpFbrvVtMGprNE3UxyAdjkVzc001d/R01ZxMIEYrv/dzBSKaBTZysMWbcmZNGG7
 AGLzhfjQUHIo6kmeAsSS3vJVYurGMOayKy8hG+kaUeZo93AZCNx5QcWf1fOzhKM+ICs4=;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m0piC-0006tZ-Nx
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Jul 2021 18:22:26 +0000
Received: by mail-wr1-f51.google.com with SMTP id u8so57678wrq.8
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 06 Jul 2021 11:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=g2Br9kdtBO0tVivZKElh/QAGpUa3JqBOxOri9psao5E=;
 b=R1m6D0JiYs2s1pU2+nY2HYR3YMAR8qoxKNz4OzKYLxTXLnX4jrcwmYSqy25GOGmxmS
 nqrOS43+XMqHJB6oHq3WC1PDyLgPlvR+JuBgz8Ij3RS0RI9JXJsCMG4MkBi9lVSwUUyx
 k3bXn4X+lBGSlkuOyqTotLAjKlUfk9HtoOOVYvNAdniz1pVX3BG1O/aJ5yMGnn51WId4
 a3x2DArmI57U5gDopSVdLQ2IRV8oYGADlNjSjGyntxwGy9Psup6tejHjzV3OVrMpDxZr
 HcoM/lRZXkeE3yLfTNZrEQqXJ7Te09k2aQvfkkUSNlOVx1lij8hRRPWUgKWIRLVmC+Tu
 mofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g2Br9kdtBO0tVivZKElh/QAGpUa3JqBOxOri9psao5E=;
 b=gSmTtrGk/sZDqeJPrP9y4/ML714oS7ANSCz2SjJ3q2AVy2ZZO3kmNio61ZaHrhyKUW
 jFZVNG0sEEJonXLGQic4kZULNsvdFE/a6QdaQiWtUkxwY8Lpl1Thg0k18ZIhHF0DI5p1
 oGd/9HpC84zANSmE+PesFZFmdBpt0ZbebfCSpkg3Cc4tyMFbRwwlWKdwsxNwCbnptxMZ
 DUQ2s4lbNMGN+zn87WDT+iGr6cVF0wD0cvVHs+ieQZw4CwqdbqWSbBjeH7oDXVlVrZUn
 DLrTEit4/xI8p5hxPEKT+5WWAIp0gDYFRvnfwOV4d9P5TnvXZ9m6RScFan0oTmcFdUMD
 PtPg==
X-Gm-Message-State: AOAM530VajMyzcSjaT5j207wGZFV9NiwsJrDjJfa3+82zqypeMcXj8SB
 90tdqOMsqNhaYuivF3uB517x5SXvPnrBAA==
X-Google-Smtp-Source: ABdhPJw+mutWo2T48bGXvVCjsfa+Kw/6y1kDZt0ti5tMlz3Io0r2RD/n5cYR8NFR/6XJYD4iPZkkvg==
X-Received: by 2002:adf:e983:: with SMTP id h3mr23164823wrm.366.1625595738422; 
 Tue, 06 Jul 2021 11:22:18 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f13sm17905342wrt.86.2021.07.06.11.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 11:22:18 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: Jon Maloy <jmaloy@redhat.com>,
	tipc-discussion@lists.sourceforge.net
Date: Tue,  6 Jul 2021 14:22:07 -0400
Message-Id: <dd2c4d67d7a19dee4048498eb74d136a097b208c.1625595705.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1625595705.git.lucien.xin@gmail.com>
References: <cover.1625595705.git.lucien.xin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.51 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m0piC-0006tZ-Nx
Subject: [tipc-discussion] [PATCH net-next 1/8] tipc: set the mtu for bearer
 properly for udp media
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

Instead of using 14000 for ipv4/udp mtu, and 1280 for ipv6/udp
mtu, this patch to set mtu according to the lower device's mtu
at the beginning. The pmtu will be determined by the PLPMTUD
probe in the following patches.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 include/uapi/linux/tipc_config.h | 6 ------
 net/tipc/udp_media.c             | 8 ++++----
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/include/uapi/linux/tipc_config.h b/include/uapi/linux/tipc_config.h
index 4dfc05651c98..7e23b7f438b4 100644
--- a/include/uapi/linux/tipc_config.h
+++ b/include/uapi/linux/tipc_config.h
@@ -185,12 +185,6 @@
 #define TIPC_DEF_LINK_WIN 50
 #define TIPC_MAX_LINK_WIN 8191
 
-/*
- * Default MTU for UDP media
- */
-
-#define TIPC_DEF_LINK_UDP_MTU 14000
-
 struct tipc_node_info {
 	__be32 addr;			/* network address of node */
 	__be32 up;			/* 0=down, 1= up */
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index c2bb818704c8..dc4bae965549 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -661,7 +661,7 @@ int tipc_udp_nl_bearer_add(struct tipc_bearer *b, struct nlattr *attr)
 static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 			   struct nlattr *attrs[])
 {
-	int err = -EINVAL;
+	int err = -EINVAL, hlen;
 	struct udp_bearer *ub;
 	struct udp_media_addr remote = {0};
 	struct udp_media_addr local = {0};
@@ -743,7 +743,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 			err = -EINVAL;
 			goto err;
 		}
-		b->mtu = b->media->mtu;
+		hlen = sizeof(struct iphdr);
 #if IS_ENABLED(CONFIG_IPV6)
 	} else if (local.proto == htons(ETH_P_IPV6)) {
 		dev = ub->ifindex ? __dev_get_by_index(net, ub->ifindex) : NULL;
@@ -760,12 +760,13 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 		else
 			udp_conf.local_ip6 = local.ipv6;
 		ub->ifindex = dev->ifindex;
-		b->mtu = 1280;
+		hlen = sizeof(struct ipv6hdr);
 #endif
 	} else {
 		err = -EAFNOSUPPORT;
 		goto err;
 	}
+	b->mtu = b->media->mtu ?: dev->mtu - hlen - sizeof(struct udphdr);
 	udp_conf.local_udp_port = local.port;
 	err = udp_sock_create(net, &udp_conf, &ub->ubsock);
 	if (err)
@@ -851,7 +852,6 @@ struct tipc_media udp_media_info = {
 	.tolerance	= TIPC_DEF_LINK_TOL,
 	.min_win	= TIPC_DEF_LINK_WIN,
 	.max_win	= TIPC_DEF_LINK_WIN,
-	.mtu		= TIPC_DEF_LINK_UDP_MTU,
 	.type_id	= TIPC_MEDIA_TYPE_UDP,
 	.hwaddr_len	= 0,
 	.name		= "udp"
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
