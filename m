Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8356E1A75B6
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Apr 2020 10:20:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jOGo4-0002Z4-CC; Tue, 14 Apr 2020 08:20:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jOGo0-0002Yn-92
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 08:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YL+hfIIvGJGESmrE0e8FcJZMQUpLpapsN6kFfIjOd0w=; b=hL6T5OyIOEJWy67SEdYKDCQqD8
 8feF7nWzYmyc9CBe+EHKWWfkGRRzF5WINYR275/7CWRhi+yiAv8Lmz3RIiS+e+zxTIFEu95TfgXg4
 wvCcsbtEEVHFK9GFDIVwTdwrm/Gmlf+tJPTOSuDIso8B6WoPc8UxatQEHhJqoTtr8lrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YL+hfIIvGJGESmrE0e8FcJZMQUpLpapsN6kFfIjOd0w=; b=ibUHqUWBklIgYlN1zzRm488+mN
 bji4sXx8/m602/1yo5w1kbscOqyYHmOZee4HILPxsf4ywIECpQhpvWAsHHL0m4L1jVu6KYKqlMlvk
 V/jIpVXUVIHUNF5yD+gs05V7OKkQtaGs1bbF7Mdd+/8jWNizZ7Yym4/lguYIQ/XSc8t0=;
Received: from mail-eopbgr10110.outbound.protection.outlook.com
 ([40.107.1.110] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOGnv-00FY1V-OJ
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Apr 2020 08:20:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KXhJxMbd1Ra0xk9tWtPjw+HN9tnDkhMdVNLtTqN0TU+OUnW29UafMnUsgqRokRlwewVroQkNZmnNYlRcLnQsqNtJJ7/7WR1CESy54Z1h4jgHhlEQ1676i+K6yPXh2PaEedYcK7p+5yX1ysTfmJ++mXh3kTsOPkbMzZsfCAVe+94tTv8QKhk8sLgc/cBZlTTBbvteBkJtwGLNbFhmIkfqvBQbjs+l6hZd4ZfyEc4OQihiNEpmXrZX/ZDq2D36ub3P+y21ne8njZS3AeaK3TAn9WsmU5hayAzQ4nc6OoR6ZxSkKtM7RJJV5k7Q1BKbmJQK7KVLiTvwZ++VqVCPy9HEBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YL+hfIIvGJGESmrE0e8FcJZMQUpLpapsN6kFfIjOd0w=;
 b=QgdyLt6F9UuJPWcVmKQJWlii+3RET12pVpYkzumFD6j8NY/z6XITmXBDNGy0Qlp9ddlSc+7neHzoq0E7gw/CJnkeJZPaiYB95cGiGdzVuG3cLp5D1FvoQHRjHkpF6tVnUQkpV7+lzTHMINNI9ikhDaPNisk2S6uX7Yv0RaHmrQ8K5NoVeRpykSbQyaGC5zAmHVD/FMK2wCR1NBdoDBB+N4Ko4gyefHJQUUlIJDhCH8TL9/TXN71HpY1e+lzJ6cb6j3+urhhJHox7YzVAqrj/vIXhZ7tZ9NhqFcJLGBDKxF/7/jpIPm1F7I6R1JxEijR52ssugqAYInojZds+o0LKZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YL+hfIIvGJGESmrE0e8FcJZMQUpLpapsN6kFfIjOd0w=;
 b=cbgGBPqRvEqdhuaUEF5tDL2gaXjEoAOXnfewEW8r4SK1oBOiAIl+a/8mI4wZYiWusfqLD+0BTH9GxHU7r0wNO+pnYbGOUoRWsr3jlHecyDqwORYEuRkcSkuXTasKN3IpMxM+R49MWzMMEFsYR2j3wWIchWnwr0KDp2iy6fvQmLs=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3765.eurprd05.prod.outlook.com (2603:10a6:209:c::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 08:20:14 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 08:20:14 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC] tipc: make peer node cleanup timer configurable
Thread-Index: AQHWEi6N6QjA9sM7PkOXY96qHkYZMah4P26AgAACLoA=
Date: Tue, 14 Apr 2020 08:20:14 +0000
Message-ID: <AM6PR0502MB3925AA356D125CE1C5FEABD6E2DA0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200414073011.18322-1-tuong.t.lien@dektech.com.au>
 <VI1PR05MB4605B70151F8D024B8F76D7AF1DA0@VI1PR05MB4605.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB4605B70151F8D024B8F76D7AF1DA0@VI1PR05MB4605.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
x-originating-ip: [113.22.229.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca3bb836-d97a-465a-1f64-08d7e04ca887
x-ms-traffictypediagnostic: AM6PR0502MB3765:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB37655059928C71A37A1E8CFCE2DA0@AM6PR0502MB3765.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(396003)(376002)(39840400004)(346002)(366004)(136003)(6506007)(33656002)(66476007)(7696005)(53546011)(316002)(110136005)(52536014)(8936002)(71200400001)(66446008)(8676002)(107886003)(5660300002)(478600001)(55016002)(26005)(76116006)(66946007)(66556008)(64756008)(9686003)(186003)(2906002)(4326008)(86362001)(81156014);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ln6QV7PPgmvY3U5tuIYdkhJ2flVO7pByeW1XXGKbAckPdS+N53IbXHSbcx35h8JuDB6znhJ+D8WJiT6rFh94bmFlXMsBpwppPw3K5NLt7aPTeBM5l3KYg+4Xmz8IsaCBEpULGur6TOqu+PVN9w1ha1D8J3ZKZXdahOTHlkxJnG9cpCNfpl13zdVTJGrApghxdYCFSpOeGZXiNk76XWLVRCbBfFD4h/B6Y2fLJznPj99b3YrBXMy19kLZqozYecFPx5uURm4ySzSiCSwNheDQkOMeSrLID4Szqy7HnpGHiLjg2zjGSkhxYWDUESG3/MKz/JxDVA9mpruPMBQ1j5gE1e8rwwjzTQof/Ch7M+K0N1Nr49gWyk221IF2OI4R0dXlcBsDp543qT/9NWBg4pfVYC+CiB2aXQaj3BEE2OOC5SRWvFefUm9y1gnsSoONyCkn
x-ms-exchange-antispam-messagedata: OQ6pF3eGrtQALgxWG3H1gcX87z09lkj3DmYkw0pl/gHOL+gOT6cIFdgtasH1dNkyE6DCCqU9vgAjX8ImA6kS3X0K6VK8vfwE2FYPAsg8uJl+98A6f9J/6GZLRA8xpsI+Mb11psg6+xjK2vf1QWqN5Q==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: ca3bb836-d97a-465a-1f64-08d7e04ca887
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 08:20:14.4998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R7/z8ATXenH6nMfrPoxpIbsyJVLAMHH26obW7iFBPtygymAxO9uwLt6XWwgUugVcfuH7UGRyBgQ/9+XWCMJXD8A2oziTZJ5lWLOwXfsgnuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3765
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.1.110 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOGnv-00FY1V-OJ
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

Hi a.Hoang,

I have really tried to make it as "short" as possible because of the "80-character" rule. Moreover, the value is not only a time value but also playing as a "switch" to turn off/on the auto removal feature (see the commit message). Anyway, it is just a name so we can change it to whatever. I will wait for other opinions...

Regarding its unit, yes I thought about that (coding would be even one step less) but 'milliseconds' does not seem to make sense, especially from a user perspective, that a node can just need to be removed in minutes, like 5 or 10 minutes. So, I'd prefer to keep it in 'seconds' which is scalable enough.

BR/Tuong

-----Original Message-----
From: Hoang Huu Le <hoang.h.le@dektech.com.au> 
Sent: Tuesday, April 14, 2020 2:54 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: RE: [PATCH RFC] tipc: make peer node cleanup timer configurable

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
