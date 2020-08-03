Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DB823A96C
	for <lists+tipc-discussion@lfdr.de>; Mon,  3 Aug 2020 17:35:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k2cUm-0004pE-Hs; Mon, 03 Aug 2020 15:35:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k2cUk-0004p7-P2
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 15:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ooDPWHI8SnAX3jgrhf4BmAyC17eA8Oj/wQo48kOxLSo=; b=Bst/M7Njcp4o53p3B6t8mp7TIn
 OobcJY9RdDdIx/J+1YdRr09Fn6ykiXkE8N7hzIqi6OvHfcTlJtiolnH0NqgOf3NDReLztm3CPkNy0
 mURADxJV/YxuGWhJcjIooIlkKrTCvUZ/zMuJwbsVIS3OxFtsB9ws/Oy2GYV9f/rrfCvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ooDPWHI8SnAX3jgrhf4BmAyC17eA8Oj/wQo48kOxLSo=; b=GMnS/PFS4Wn0fc/x4AvAW8soI0
 XWX5EL+59E1Dqs1XCKt040jw1E4iLphr34I18c4Q6ZKULwtOKcWh3pbdyUAJ9H0KQ+WZPCYjt/41S
 ISwSbX2JnzWCylBSSq4LbvgaD9vSOIhD0MwO6g/LTr8hnlP5HRu7vCJDFnjPhN3WU0Co=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k2cUj-007tkU-KL
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 15:35:22 +0000
Received: by mail-pg1-f194.google.com with SMTP id j19so20015282pgm.11
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 03 Aug 2020 08:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=ooDPWHI8SnAX3jgrhf4BmAyC17eA8Oj/wQo48kOxLSo=;
 b=V9pHvzbNGgqbgtrtbeuVLhCG+0yx2cEEa7YC+247+XufmJdjg6P7EKwWnui5yzQywz
 vbULA7d8sKNP21bpn8x3XBK9KhTguK8q4lt9/d3MGr8eUQahfULjhxwLNihHR12WC9u3
 ZRDqdDOKnKospNY9qqGm0cMIc3/op+ViKKlbIH6kMmRePqjIGMuVPRwtafpchCmMiMd2
 UpG1/SGSD8vnPQcDii0AIRq2iJ7FsnMiJ6Pm+gVi6EAIHV2r0JUMl2FicKizDuTbf9T9
 Ip4Pj76ybr2ekhpvXKWNsfYbQPqVgYtJUGZK6P44H22PFKBKGpoujyvUE07Z+6JYQmAw
 xXrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=ooDPWHI8SnAX3jgrhf4BmAyC17eA8Oj/wQo48kOxLSo=;
 b=gd6x4O4p/YXYmo34l9tJejGwttMWRvV+D/6o8wn1xT1+zX1X0aBt+atzdoiLdajFon
 GHJrrnHxPjjju8ZO/W+S5PHJR0LpPim73Taofzxo20qEEgEnFE/ij7aBoopIkMN9K2+M
 bylw3aOCXd1rxIuvLwW7AaoHMAJAHMGs4kDhqGh8sf2LXev5m5gMvLMkTLmxm6ZGJn3H
 pHZdlT9uGBOwJSwylXxQgFBjPHi52rz9Mext5JTeewDwmWRBy9QRiuoh3DZ52pypnpg/
 lUvFHshjPJD6KjzTvdY3xyJrwceB0wnM2oR8iysYHHwnPp2AqbqxzTrXBTN4OQ7f8Mq3
 viMw==
X-Gm-Message-State: AOAM533Gj9WkASxk8f9ZF6L2JISOU7/PDPNRInYyffjLfKjzHjSUqxd9
 19VM3R/8Em0xstS+MRojUuk=
X-Google-Smtp-Source: ABdhPJyPVqc7an0cVQv705pT1EKMcksIwZOOg1TMM5OTUS3Wt1ys8cLD5zOkKQqGWJnt37miImjwfg==
X-Received: by 2002:a63:a05f:: with SMTP id u31mr15063576pgn.4.1596468912922; 
 Mon, 03 Aug 2020 08:35:12 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id y1sm590033pfr.207.2020.08.03.08.35.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Aug 2020 08:35:12 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Mon,  3 Aug 2020 23:34:47 +0800
Message-Id: <1806063a61881feadcbf4372f2683114c61b526a.1596468610.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
In-Reply-To: <cover.1596468610.git.lucien.xin@gmail.com>
References: <cover.1596468610.git.lucien.xin@gmail.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2cUj-007tkU-KL
Subject: [tipc-discussion] [PATCH net 2/2] tipc: set ub->ifindex for local
 ipv6 address
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
Cc: Jon Maloy <jon.maloy@ericsson.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 tipc-discussion@lists.sourceforge.net, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Without ub->ifindex set for ipv6 address in tipc_udp_enable(),
ipv6_sock_mc_join() may make the wrong dev join the multicast
address in enable_mcast(). This causes that tipc links would
never be created.

So fix it by getting the right netdev and setting ub->ifindex,
as it does for ipv4 address.

Reported-by: Shuang Li <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/udp_media.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 28a283f..9dec596 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -738,6 +738,13 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 		b->mtu = b->media->mtu;
 #if IS_ENABLED(CONFIG_IPV6)
 	} else if (local.proto == htons(ETH_P_IPV6)) {
+		struct net_device *dev;
+
+		dev = ipv6_dev_find(net, &local.ipv6);
+		if (!dev) {
+			err = -ENODEV;
+			goto err;
+		}
 		udp_conf.family = AF_INET6;
 		udp_conf.use_udp6_tx_checksums = true;
 		udp_conf.use_udp6_rx_checksums = true;
@@ -745,6 +752,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
 			udp_conf.local_ip6 = in6addr_any;
 		else
 			udp_conf.local_ip6 = local.ipv6;
+		ub->ifindex = dev->ifindex;
 		b->mtu = 1280;
 #endif
 	} else {
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
