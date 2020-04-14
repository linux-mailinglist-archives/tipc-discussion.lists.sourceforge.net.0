Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B531A753D
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 09:54:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOGOu-0001Ro-Og; Tue, 14 Apr 2020 07:54:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jOGOt-0001Rc-Fn
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 07:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zqebJCzZ1OqkN32754FJuTYLYZsGSNRUxy5odhhGX6k=; b=Oh1AWAGlOlU7Y+6T0hbHFaDVER
 uvpGFoBNCsKrEz9WkCRVRn3er5JGA2Sog7TEfj1b3lfM7P1ku/PNBpTYCjlAldcMAI8g3tf7yFM14
 4KELDCeWtFJFO14TO4kvCiYaDNHzO16CiAX3oVTAB/K+Q1TTFp7kNssIhG79i7/lguwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zqebJCzZ1OqkN32754FJuTYLYZsGSNRUxy5odhhGX6k=; b=XD7S2qUqWpdBH2rUb7Cha2cVW1
 frtQWRl8qpbtQF79KfX2y+xfdOHqFQHNw9GTMFBl/W2Reb96A/IhI5zAVIJ399sH6EG3LFTnWypaS
 37T6P+FCDxbbXFFgdtkjb1Ng75Cnpp1HAuO8nMifHzSvHo4jEQ4C8WWRgb/F8U2U4Sro=;
Received: from mail-eopbgr50098.outbound.protection.outlook.com ([40.107.5.98]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOGOo-00FW8A-ET
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 07:54:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLtwgFvgpmCH6YIewj0K5KrMncx2Z/h9+WMiQ3vhh+0R32xIqtivma+E/hfx/Tc+8Y8zVOTv0+SOjpQbhlGmQrmw9xXgXuzna7Gigz9Agxej9aPTthtmOMKWzF/MZAUzWkzgdw7M76VkNhK3/F4907GbNL1icEIEYlDnBP8fB5RUOPjS5H4ytMSIDVcNqJnhEvzvuq9geySS1TiZdLJxdNIZtqgQJ+DlUI/oycZ6Q/JIj61eOt0sly80B4ncUJ3XSMrJDjbG+N03ejDdwUu28Okd4PsDdMBbVi4X/jbWPnbdkrh9vpuUfW5YSls+FbMIES9+bkI5EkI4kYSWjLY+mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zqebJCzZ1OqkN32754FJuTYLYZsGSNRUxy5odhhGX6k=;
 b=C4HLgeo1qTXDI90RGl+fwR7SrVjx7kXb8uaMIJn8XXEV0vEi5QFE6CbZpgzzRJmFV52pa7oJQluXuxI3XkbZRVLwwRmZlamy9LYbPAdsD9BuTPvlgf/PhkpPbxrIxNNSfuiRP6gE6NCaDLlnwDhT5ZuJHof4aTcZqhQCRSvmPyYM8M71UCwM7NRebyrMNpeQCpceopdosUsSs9zeYHJhbDLwcY4qlBURBXsGi/IC2eU+Yu2dxAVXk5CwfSWust5Q9fxU4MfDO8q5osmAV4lyERteoZfPMDZreVdPaaZAywEOtbcDu1hiQXigMs9SqdfllpJS3Cqn8uoDH+KnzOEzUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zqebJCzZ1OqkN32754FJuTYLYZsGSNRUxy5odhhGX6k=;
 b=Xlr/wDjq6/kEhtQg+JbT/YM806OzytPSFgHSdvrxhx5ni0uSS+g5hCEBbTAMcBt+rfYJKR5jL7jwcGQ6yFkQn92zEH6zSin5+Al/ospchecATfmMEfAXD7Hm9gvDNCdTfNFyovhfQZJps6vsmNzvMCwigNOfUQ8NTGhn9vPHtoc=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB3278.eurprd05.prod.outlook.com (2603:10a6:802:1f::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Tue, 14 Apr
 2020 07:54:17 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec%5]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 07:54:17 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC] tipc: make peer node cleanup timer configurable
Thread-Index: AQHWEi6Ne6y4y9QKEUaMNfvHpyhXAah4OkaA
Date: Tue, 14 Apr 2020 07:54:17 +0000
Message-ID: <VI1PR05MB4605B70151F8D024B8F76D7AF1DA0@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20200414073011.18322-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200414073011.18322-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoang.h.le@dektech.com.au; 
x-originating-ip: [115.77.48.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c1c128d-7100-4839-49c0-08d7e049089a
x-ms-traffictypediagnostic: VI1PR05MB3278:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB32783D6BCCD8199D58E015C7F1DA0@VI1PR05MB3278.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(396003)(376002)(39840400004)(136003)(346002)(366004)(66446008)(33656002)(5660300002)(64756008)(66556008)(66476007)(107886003)(110136005)(9686003)(316002)(478600001)(52536014)(76116006)(66946007)(4326008)(71200400001)(2906002)(86362001)(26005)(8676002)(55016002)(81156014)(8936002)(53546011)(7696005)(6506007)(186003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lvD9WUiujOxAiu/R/9IGocS0iaoU2fYiTLGWXLaDA7ABhu07Q8qur++6luWRnYh6x0OVEyyx5kbKsv1ezvJ9QRBEUAkdiNNbCNCtUUf31gx2IFhBmE5okBkxbuaGpunqYsWfMAc8IAca9pZrUfg8iVgBszX0Cta1eSV2uuioSrdAn7Bp5j98N4BgWJvjjbNt9QN4akugWvOzma/jkwuENksp0+/gBGEuKsdcqFYWCSbhgoWgadtqMEbgXG2J0idVUwX4Du5/FTSoCcrWZ0SczZEX9RNnZi/4IkPHupE2xLVfmEkb4GwryVV74jawe48pevGVW9YKxOtQ0iN04d0la13oGbtbHSAciJs9drHkMg5+fq7+6G6TxllGMTfNgLBznG4vh9+z9HM0f1oL0yfSNAXFCTpvGi4hKPlsDaSY3mbM1UxuclkQmv95VLDAzNzm
x-ms-exchange-antispam-messagedata: fOeMALheIICyLwd7QHWX/bBLYkj3InDLnd/3dNs6QOXdK8JQ1scexQnBMSqKM9g0sfsi5TbueOiKRDg0F26zI8DEzw0d/yjVlh5/xndEOrvAXTeR9B3CJWRVqpXAuwCuFdI6td8EPbR1RFZFQVA7WA==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c1c128d-7100-4839-49c0-08d7e049089a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 07:54:17.5959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cjBJNafYr9wH+JwE/OM3TpZ+KY9uUDnQ0ReiCC25e+Ytv/EWdA12oQIRzvSqahcm6pAV+VyukRTXLXe+rk10HiJq7PwgZ8gb+n9S3U9/qFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3278
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.5.98 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jOGOo-00FW8A-ET
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: make peer node cleanup
 timer configurable
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Tuong,

The  'node_cleanup' is not clear in meaning.  I'd prefer using 'node_cleanup_time_secs'.
I think we should use 'milliseconds' for more popular than 'seconds' in proc/sysctl.

Regards,
Hoang
-----Original Message-----
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au> 
Sent: Tuesday, April 14, 2020 2:30 PM
To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: [PATCH RFC] tipc: make peer node cleanup timer configurable

Since commit 6a939f365bdb ("tipc: Auto removal of peer down node
instance"), a peer node instance is automatically clean up after 5 mins
without contact. This changed behavior is not really expected from user
who would expect to see the node with the "down" state in the node list
as before instead.
Also, the timer value is said to be small that the peer node might just
be rebooting, so will come back soon. This is absolutely no problem but
one wants to extend it to 10 minutes.

This commit makes the timer configurable via the sysctl file:

/proc/sys/net/tipc/node_cleanup

which indicates in seconds how long a peer down node should be removed.
The default value is 300 i.e. 5 mins, while a value of '0' will disable
the auto removal feature.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/core.h   |  1 +
 net/tipc/node.c   | 15 +++++++++------
 net/tipc/sysctl.c |  8 ++++++++
 3 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/net/tipc/core.h b/net/tipc/core.h
index 631d83c9705f..7d07f9086936 100644
--- a/net/tipc/core.h
+++ b/net/tipc/core.h
@@ -89,6 +89,7 @@ struct tipc_crypto;
 extern unsigned int tipc_net_id __read_mostly;
 extern int sysctl_tipc_rmem[3] __read_mostly;
 extern int sysctl_tipc_named_timeout __read_mostly;
+extern int sysctl_tipc_node_cleanup __read_mostly;
 
 struct tipc_net {
 	u8  node_id[NODE_ID_LEN];
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 2373a66f3b59..5cf01e182730 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -46,8 +46,11 @@
 #include "trace.h"
 #include "crypto.h"
 
+int sysctl_tipc_node_cleanup __read_mostly = 300; /* in seconds */
+
 #define INVALID_NODE_SIG	0x10000
-#define NODE_CLEANUP_AFTER	300000
+#define NODE_CLEANUP_AFTER	\
+	msecs_to_jiffies(sysctl_tipc_node_cleanup * 1000)
 
 /* Flags used to take different actions according to flag type
  * TIPC_NOTIFY_NODE_DOWN: notify node is down
@@ -130,7 +133,7 @@ struct tipc_node {
 	unsigned long keepalive_intv;
 	struct timer_list timer;
 	struct rcu_head rcu;
-	unsigned long delete_at;
+	unsigned long checkpt;
 	struct net *peer_net;
 	u32 peer_hash_mix;
 #ifdef CONFIG_TIPC_CRYPTO
@@ -537,7 +540,7 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 	for (i = 0; i < MAX_BEARERS; i++)
 		spin_lock_init(&n->links[i].lock);
 	n->state = SELF_DOWN_PEER_LEAVING;
-	n->delete_at = jiffies + msecs_to_jiffies(NODE_CLEANUP_AFTER);
+	n->checkpt = jiffies;
 	n->signature = INVALID_NODE_SIG;
 	n->active_links[0] = INVALID_BEARER_ID;
 	n->active_links[1] = INVALID_BEARER_ID;
@@ -726,8 +729,8 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
 		return false;
 
 	tipc_node_write_lock(peer);
-
-	if (!node_is_up(peer) && time_after(jiffies, peer->delete_at)) {
+	if (!node_is_up(peer) && NODE_CLEANUP_AFTER &&
+	    time_after(jiffies, peer->checkpt + NODE_CLEANUP_AFTER)) {
 		tipc_node_clear_links(peer);
 		tipc_node_delete_from_list(peer);
 		deleted = true;
@@ -1478,7 +1481,7 @@ static void node_lost_contact(struct tipc_node *n,
 	uint i;
 
 	pr_debug("Lost contact with %x\n", n->addr);
-	n->delete_at = jiffies + msecs_to_jiffies(NODE_CLEANUP_AFTER);
+	n->checkpt = jiffies;
 	trace_tipc_node_lost_contact(n, true, " ");
 
 	/* Clean up broadcast state */
diff --git a/net/tipc/sysctl.c b/net/tipc/sysctl.c
index 58ab3d6dcdce..087a89b27b9a 100644
--- a/net/tipc/sysctl.c
+++ b/net/tipc/sysctl.c
@@ -75,6 +75,14 @@ static struct ctl_table tipc_table[] = {
 		.extra1         = SYSCTL_ONE,
 	},
 #endif
+	{
+		.procname	= "node_cleanup",
+		.data		= &sysctl_tipc_node_cleanup,
+		.maxlen		= sizeof(sysctl_tipc_node_cleanup),
+		.mode		= 0644,
+		.proc_handler	= proc_dointvec_minmax,
+		.extra1         = SYSCTL_ZERO,
+	},
 	{}
 };
 
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
