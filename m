Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4555A4CC16
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 12:39:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hduTp-0003dq-0w; Thu, 20 Jun 2019 10:39:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hduTn-0003dX-Ts
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 10:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G56EJR4CDaOVipFaGpOmwgcg3yfaZR33njgvmNZYV7k=; b=ECoZLIoZnggfj0jo+wJchaiHwU
 dHLqVgUmde2AXodt2/iL7x8GlUeuteWZzdShhw8dEgqr0F6xLLQzTmHDNzZApt1ZvQtN7/BL5bq44
 EgyQLM+IS9dWTj95vIn7Yh16GE7b+OYdwpOkdRqJivW1gbK+lBJtDLJZrtgrFCjlb8CM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G56EJR4CDaOVipFaGpOmwgcg3yfaZR33njgvmNZYV7k=; b=KlzC7rbrnICzfYFg/23Ug1DvVz
 +0ke0JNNf4AgzfWjv98/kFKJxBY+B5jALkRHXs7wgG/rZPfNxeQu8elW6sHluK4Hrk/spPfK0Q7ug
 B9lavvSTV7JQhLoxOAT97xakESo3UH7pTtBdMGKtNJm25pelh6MGz7qdcAyiyMiiEUk0=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hduTl-001H3M-UZ
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 10:39:45 +0000
Received: by mail-pl1-f196.google.com with SMTP id t7so1214394plr.11
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Jun 2019 03:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=G56EJR4CDaOVipFaGpOmwgcg3yfaZR33njgvmNZYV7k=;
 b=F9myMm4Alh7g1D2pSmZChyGaOcXDuYyHJ9vr9xCmtEKS41LRFMxdEYaq3IRG+ViL5s
 7XKH74gsZGdn4u7RqJenR7rfjBFJgCbhoFCEU6NaNz1e3D0xW5fPO2tLcwLPdG9Cch7a
 OGxfrUmCRV2wUQhvRlmXUxBd80ZDkP2ny/6r7KgkxOyKt/Wte8q4sl7bLI44qaz2Hyf8
 e11E7PYk1jbqbcaJ8S8pLa0mxB19snPvJu8OKjxucDEEOhl274BRqbyto/Bk7bivvhK1
 3Yp8gltNgJwpu8hRV0ciry7zj7j6ClQrieQxqFw7vg+h05KiBEWOnuL0qP4Mm3i5xjLk
 ttnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G56EJR4CDaOVipFaGpOmwgcg3yfaZR33njgvmNZYV7k=;
 b=Pm5UiHBZMOPL2NnkNsDgSS072sjeyEsWIPyWWE1raEOtmqRcdquH3YPabdLK3g92/C
 V2Hba6HW5otc1CcvdITAGklTazkfas+Ee1krIG8Aj+kNZXM4u+GcxuWQidM5xfipMW+v
 u9rKpi2fGxwf6Wbk/dHnwT/FiPjovIH3887lDchTIBp/Y27WFOOsHu+pSisMx60tGNkb
 u5RkXfjpRyJ7JWwhsP+zazU2wiuBi5E/Ux7yqAI/Zj5Q552bjMVRIMESUuLySafFVQN4
 fxdNh/Y8I7kbE2iR+26W0gf0PNMgHL46XAzyQtmxNCm5mYOKoToyR2i3eClMh5vMEUpv
 OC6g==
X-Gm-Message-State: APjAAAVltyvHEo707oTfURHnResdCS1sCJURE5+Z74PLDpvojOrTWDoz
 qxry6WugmOLTYMxftYJ+kCI=
X-Google-Smtp-Source: APXvYqzTbfbFvY06aMG3VNEI+CCG/8vkmBEXkuPmkD/YRGYTnbWYxACbRhQ6+RZHjyVRarssLRI/0w==
X-Received: by 2002:a17:902:8205:: with SMTP id
 x5mr26029583pln.279.1561027176254; 
 Thu, 20 Jun 2019 03:39:36 -0700 (PDT)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s64sm21850566pfb.160.2019.06.20.03.39.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:39:35 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>
Date: Thu, 20 Jun 2019 18:39:28 +0800
Message-Id: <1a8f3ada3e0a65b6e9250c4580a7c420b4ddddac.1561027168.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hduTl-001H3M-UZ
Subject: [tipc-discussion] [PATCH net] tipc: change to use
 register_pernet_device
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

This patch is to fix a dst defcnt leak, which can be reproduced by doing:

  # ip net a c; ip net a s; modprobe tipc
  # ip net e s ip l a n eth1 type veth peer n eth1 netns c
  # ip net e c ip l s lo up; ip net e c ip l s eth1 up
  # ip net e s ip l s lo up; ip net e s ip l s eth1 up
  # ip net e c ip a a 1.1.1.2/8 dev eth1
  # ip net e s ip a a 1.1.1.1/8 dev eth1
  # ip net e c tipc b e m udp n u1 localip 1.1.1.2
  # ip net e s tipc b e m udp n u1 localip 1.1.1.1
  # ip net d c; ip net d s; rmmod tipc

and it will get stuck and keep logging the error:

  unregister_netdevice: waiting for lo to become free. Usage count = 1

The cause is that a dst is held by the udp sock's sk_rx_dst set on udp rx
path with udp_early_demux == 1, and this dst (eventually holding lo dev)
can't be released as bearer's removal in tipc pernet .exit happens after
lo dev's removal, default_device pernet .exit.

 "There are two distinct types of pernet_operations recognized: subsys and
  device.  At creation all subsys init functions are called before device
  init functions, and at destruction all device exit functions are called
  before subsys exit function."

So by calling register_pernet_device instead to register tipc_net_ops, the
pernet .exit() will be invoked earlier than loopback dev's removal when a
netns is being destroyed, as fou/gue does.

Note that vxlan and geneve udp tunnels don't have this issue, as the udp
sock is released in their device ndo_stop().

This fix is also necessary for tipc dst_cache, which will hold dsts on tx
path and I will introduce in my next patch.

Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/tipc/core.c b/net/tipc/core.c
index ed536c0..c837072 100644
--- a/net/tipc/core.c
+++ b/net/tipc/core.c
@@ -134,7 +134,7 @@ static int __init tipc_init(void)
 	if (err)
 		goto out_sysctl;
 
-	err = register_pernet_subsys(&tipc_net_ops);
+	err = register_pernet_device(&tipc_net_ops);
 	if (err)
 		goto out_pernet;
 
@@ -142,7 +142,7 @@ static int __init tipc_init(void)
 	if (err)
 		goto out_socket;
 
-	err = register_pernet_subsys(&tipc_topsrv_net_ops);
+	err = register_pernet_device(&tipc_topsrv_net_ops);
 	if (err)
 		goto out_pernet_topsrv;
 
@@ -153,11 +153,11 @@ static int __init tipc_init(void)
 	pr_info("Started in single node mode\n");
 	return 0;
 out_bearer:
-	unregister_pernet_subsys(&tipc_topsrv_net_ops);
+	unregister_pernet_device(&tipc_topsrv_net_ops);
 out_pernet_topsrv:
 	tipc_socket_stop();
 out_socket:
-	unregister_pernet_subsys(&tipc_net_ops);
+	unregister_pernet_device(&tipc_net_ops);
 out_pernet:
 	tipc_unregister_sysctl();
 out_sysctl:
@@ -172,9 +172,9 @@ static int __init tipc_init(void)
 static void __exit tipc_exit(void)
 {
 	tipc_bearer_cleanup();
-	unregister_pernet_subsys(&tipc_topsrv_net_ops);
+	unregister_pernet_device(&tipc_topsrv_net_ops);
 	tipc_socket_stop();
-	unregister_pernet_subsys(&tipc_net_ops);
+	unregister_pernet_device(&tipc_net_ops);
 	tipc_netlink_stop();
 	tipc_netlink_compat_stop();
 	tipc_unregister_sysctl();
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
