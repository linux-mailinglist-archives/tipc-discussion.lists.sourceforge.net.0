Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C7619F00F
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Apr 2020 07:16:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLK7G-0001se-Bv; Mon, 06 Apr 2020 05:16:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jLK7E-0001sW-Pl
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 05:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uT/e58+0lA2WUkhy5VEo7GMoY1v34k3njzL6p1dSzHs=; b=QkVGsC8ypHQ/fVh4vzSkxt/DUq
 nwA/Sl8erFQ5ImftRi21Ln7CnkabGpnqSWTXzFZosHU1ofh+f7wu04tW/2XGLlYjbIgMQQVVAfIOT
 7VQV3arJQAo/1VjceMqk5gWF0kJKzrqyx3eoetQx8eg3NFDZ4i/EcrhiWExHo/rOOwSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uT/e58+0lA2WUkhy5VEo7GMoY1v34k3njzL6p1dSzHs=; b=LYbMNbDw2vI8S45Jfm2I6zuQgm
 sZvhnPO1NiCkRFJZIZ+P0xtjTQJxxLi9/BTxKMMA+QYzLU2ic1+w2lw7REsdqTUjtm/0YxBZOl3U2
 Xr8SdnL5pAsAxNF/X76tZu8okCD1KtN2XgQPYTs4oamSMN8+4Wo3N6v/Z46Fu6PT7HSE=;
Received: from mail-eopbgr80093.outbound.protection.outlook.com ([40.107.8.93]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLJkg-005HsV-Ky
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 04:53:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TUgCMXlf8HM32POZZusNSpAb3ukFWfw67hN5G/boakJ6grWjA7CME6Tht++dGmoKuV7+kZVRLuqQecZMA8rHQ3Vn+mnn7pB0OCZ7ZIU+p2dJo3CbgZCP1syRuNdBoE6TiAL/npzP38psk1rkIHmB8BAYD5Vml8m2DYFQpgzOCG8X14zejDS+2dGw8UvVieT5iuvv4HElnQpVbMXtiA0RxGYcQPlz0rP4k/LRgVWDtNP+kV/yECHe+2G0y7EJ8WP0SN5tjJWtZ1ig8KQTMxXwfdeJPffKqFUrZ7k4hEoZVXF0xAnEdWZI7vWBYxj9X/kCGuRvCE/rmNgzbMzt8uujog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uT/e58+0lA2WUkhy5VEo7GMoY1v34k3njzL6p1dSzHs=;
 b=TmULpY0cZXLUdOYqioc1XkrDTc0s2FpDfM1aDIR2zDi4/3sfFkbF1HBwjlEcqPzTmCIbYIZ6i30syDz/7Xn73uwW6J1fAMSd+daKecxJMWfObEcpovnRC28A3sPEkMYVD3espjbo0fnFUffDe/NZzw0oeIrGTECmxT1tDw5Lx9P/vD0T/I9DwhNxqIQUAh+aHegGwIoPpMcI+uP8q6IaRgg2jf3xsktba3HIVG/TL/JjgWe0gWuHw99Res3+NWz67v53QUtUNkODiUBFHPIbStXpSYt0t/I6SpTqY3a3Xqgj0YGKskSy3W9IVdjoy7ulb+zSe4/nT4tQjypJ3VN7LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uT/e58+0lA2WUkhy5VEo7GMoY1v34k3njzL6p1dSzHs=;
 b=AdOysp/lD9P5H2Gizwt7TNo3fCPBz6/EhQrShTnnS+2impDu77xDjj9trzk7mwCWX4D/hxyacZJm0HiIdvZC/14UePFLTHto4Hiw6raX+/i1m2voIrhBd2UYhwKTUsJjWVKo6MtUUH/WCQws3wuTV1PYrZxhKhjkuOA8uWpXgE0=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3733.eurprd05.prod.outlook.com (2603:10a6:209:9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Mon, 6 Apr
 2020 04:52:41 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 04:52:41 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: "Xue, Ying" <Ying.Xue@windriver.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 1/4] tipc: introduce Gap ACK blocks for broadcast link
Thread-Index: AQHWBLXYq7r2SAWviEmKWsozxkR0y6hrgkGAgAAE1GA=
Date: Mon, 6 Apr 2020 04:52:41 +0000
Message-ID: <AM6PR0502MB3925EEEF5D3C44E56EEFA1D1E2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-2-tuong.t.lien@dektech.com.au>
 <BY5PR11MB38949615D0738F94993B2C5984C20@BY5PR11MB3894.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB38949615D0738F94993B2C5984C20@BY5PR11MB3894.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tuong.t.lien@dektech.com.au; 
x-originating-ip: [2405:4800:58bf:a12:6858:39a5:b32f:bd10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a2aa1eb-d5e7-48ba-4d54-08d7d9e656c0
x-ms-traffictypediagnostic: AM6PR0502MB3733:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB37330BEF722470514AC39F9CE2C20@AM6PR0502MB3733.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(346002)(396003)(376002)(39840400004)(136003)(186003)(316002)(66446008)(81166006)(81156014)(71200400001)(110136005)(8676002)(53546011)(4326008)(508600001)(66476007)(64756008)(9686003)(2906002)(8936002)(107886003)(5660300002)(6506007)(66556008)(66946007)(7696005)(76116006)(55016002)(30864003)(33656002)(86362001)(52536014)(579004)(559001);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SwSReyLLnuPMPUhU4RWz+IQAbXomnIR9CluX59N+vRywUILCn37TEu6166Z0mVE4BiKtk/VsThcAgPw6Epnc6HhkZobvfxM7zhSqQXRhU32EqOZbSBQVMqqHqCLsRK9fDk4Grn2MyJxTTFteSfS0dgF3FLxrn+hYLe72dAP4yHDTTE3rnNoBUFeAtSv9H73ds/FPnMkAhv1wkg2xDXosjVd0DWO6ruNQRcD1HzYEPsvwaoW+I/ZE4Htfp0X2NIKFaUCCfpKrHGONB59rNVLE8UrDjDgocTyZ2IMdRch1xBWm5Zbz70TpWwb/HlkSk0sRPu7RFKj7pBDZwxOk33TM2cx+pIl2/6T3CsWq2OYQMRAe0BWsfde0ZVZyD2eIGYbQV76auvH9vdUQWU167NMvUzYcBnSqrODaaE9hIOTT3nf6Q7iS+QKzZTyUKYlR9J5H
x-ms-exchange-antispam-messagedata: Phq9QtevYtCYvq5YFnBbuUUEBFzmqY+kZlNsEOhmnOIq8Z+JmoSAV8cJq8klHucheR6AkkT6pb7zYFoK7JA3Saz7DA4UnqWabxr3Mdc5nwrh35xEzUzFm/hiC5N15IdKjfbLt+9jaCwho1iw+W+p312lcTekC9nAyJRfUFYgAAdTZrmI5398qWXnsaQZ2bzEMDpXKHfjAH0F4Lqq8BjZIQ==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a2aa1eb-d5e7-48ba-4d54-08d7d9e656c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 04:52:41.5167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MlXJrpVhltHFWDpUkqf3vMgyIaHgBkJNJe4ApVqhJqCQRqMZAhl5o7vB/c4tynjmMZPac6uZZMdPcoh8+/TLlkal0wX1mewNcipwCRvu8QM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3733
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.93 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLJkg-005HsV-Ky
Subject: Re: [tipc-discussion] [PATCH RFC 1/4] tipc: introduce Gap ACK
 blocks for broadcast link
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

Hi Ying,

Thanks for your comments, please see my feedback below.

BR/Tuong

-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Monday, April 6, 2020 10:46 AM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: RE: [PATCH RFC 1/4] tipc: introduce Gap ACK blocks for broadcast link

Hi Tuong,

Please see my comments inline:

As achieved through commit 9195948fbf34 ("tipc: improve TIPC throughput
by Gap ACK blocks"), we apply the same mechanism for the broadcast link
as well. The 'Gap ACK blocks' data field in a 'PROTOCOL/STATE_MSG' will
consist of two parts built for both the broadcast and unicast types:

 31                       16 15                        0
+-------------+-------------+-------------+-------------+
|  bgack_cnt  |  ugack_cnt  |            len            |
+-------------+-------------+-------------+-------------+  -
|            gap            |            ack            |   |
+-------------+-------------+-------------+-------------+    > bc gacks
:                           :                           :   |
+-------------+-------------+-------------+-------------+  -
|            gap            |            ack            |   |
+-------------+-------------+-------------+-------------+    > uc gacks
:                           :                           :   |
+-------------+-------------+-------------+-------------+  -

which is "automatically" backward-compatible.

===
[Ying] In my opinion,  this patch will cause the backward-compatible issue below:

1) On the TIPC node with the patch:
When sending a 'PROTOCOL/STATE_MSG' message , its 'Gap ACK blocks' data field only contains bcl gap ack blocks, but no any unicast link gap ack block.
2) On the TIPC node without the patch:
Upon receiving the message sent by the node of case 1), this node will suppose its 'Gap ACK blocks' data field are unicast link gap ack blocks rather than broadcast link gap ack blocks.

[Tuong]: As you can see in the figure above, we have two different "b/ugack_cnt" fields which determine the number of broadcast/unicast gap ack blocks in the message. The "ugack_cnt" is fully identical to the "gack_cnt" in the old version (- without the patch) i.e. indicating the number of unicast gap ack blocks anyway, whereas the "bgack_cnt" was a reserved field.
So, in your situation, the sending side will send the message with the "ugack_cnt" = 0 and this is completely compatible to the old version that the receiving side will see no unicast gap ack blocks and just ignore the broadcast gap ack blocks (- it doesn't really know). Actually, there is also a sanity check on the length in the old code that will shortly ignore such the gap ack block report... So, we have no problem at all. That is why I've declared it backward compatible automatically.

So I wonder no backward-compatible issue will exist and everything will become pretty easy if we use LINK_PROTOCOL to only contain unicast gap ack blocks and use BCAST_PROTOCOL to convey broadcast gap ack blocks.
In other words, we don't need to enlarge current gap ack block space, and we don't need to change the current code related unicast gap ack blocks. Instead, we just need to add the support for broadcast gap ack blocks through BCAST_PROTOCOL rather than LINK_PROTOCOL. 

[Tuong]: The BCAST_PROTOCOL is currently only used for broadcast initializing or synching when a new peer joins, the old mechanism as broadcast NACKs is deprecated... I suppose that using the LINK_PROTOCOL is much more convenient since the traditional ack/gap reports for broadcast link is also made via the message, so we don't need to create a new code flow to handle the gap/ack blocks.
Actually, the change in the current code related unicast gap ack blocks is just to optimize the code e.g. removing an old functions, etc., there is no impact in its functionality.

===

Thanks,
Ying

We also increase the max number of Gap ACK blocks to 128, allowing upto
64 blocks per type (total buffer size = 516 bytes).

Besides, the 'tipc_link_advance_transmq()' function is refactored which
is applicable for both the unicast and broadcast cases now, so some old
functions can be removed and the code is optimized.

With the patch, TIPC broadcast is more robust regardless of packet loss
or disorder, latency, ... in the underlying network. Its performance is
boost up significantly.
For example, experiment with a 5% packet loss rate results:

$ time tipc-pipe --mc --rdm --data_size 123 --data_num 1500000
real    0m 42.46s
user    0m 1.16s
sys     0m 17.67s

Without the patch:

$ time tipc-pipe --mc --rdm --data_size 123 --data_num 1500000
real    8m 27.94s
user    0m 0.55s
sys     0m 2.38s

Acked-by: Jon Maloy <jmaloy@redhat.com>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bcast.c |   9 +-
 net/tipc/link.c  | 438 +++++++++++++++++++++++++++++++++----------------------
 net/tipc/link.h  |   7 +-
 net/tipc/msg.h   |  14 +-
 net/tipc/node.c  |  10 +-
 5 files changed, 293 insertions(+), 185 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 4c20be08b9c4..3ce690a96ee9 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -474,7 +474,7 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 	__skb_queue_head_init(&xmitq);
 
 	tipc_bcast_lock(net);
-	tipc_link_bc_ack_rcv(l, acked, &xmitq);
+	tipc_link_bc_ack_rcv(l, acked, 0, NULL, &xmitq);
 	tipc_bcast_unlock(net);
 
 	tipc_bcbase_xmit(net, &xmitq);
@@ -492,6 +492,7 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 			struct tipc_msg *hdr)
 {
 	struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
+	struct tipc_gap_ack_blks *ga;
 	struct sk_buff_head xmitq;
 	int rc = 0;
 
@@ -501,8 +502,10 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 	if (msg_type(hdr) != STATE_MSG) {
 		tipc_link_bc_init_rcv(l, hdr);
 	} else if (!msg_bc_ack_invalid(hdr)) {
-		tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr), &xmitq);
-		rc = tipc_link_bc_sync_rcv(l, hdr, &xmitq);
+		tipc_get_gap_ack_blks(&ga, l, hdr, false);
+		rc = tipc_link_bc_ack_rcv(l, msg_bcast_ack(hdr),
+					  msg_bc_gap(hdr), ga, &xmitq);
+		rc |= tipc_link_bc_sync_rcv(l, hdr, &xmitq);
 	}
 	tipc_bcast_unlock(net);
 
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 467c53a1fb5c..1b60ba665504 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -188,6 +188,8 @@ struct tipc_link {
 	/* Broadcast */
 	u16 ackers;
 	u16 acked;
+	u16 last_gap;
+	struct tipc_gap_ack_blks *last_ga;
 	struct tipc_link *bc_rcvlink;
 	struct tipc_link *bc_sndlink;
 	u8 nack_state;
@@ -249,11 +251,14 @@ static int tipc_link_build_nack_msg(struct tipc_link *l,
 				    struct sk_buff_head *xmitq);
 static void tipc_link_build_bc_init_msg(struct tipc_link *l,
 					struct sk_buff_head *xmitq);
-static int tipc_link_release_pkts(struct tipc_link *l, u16 to);
-static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data, u16 gap);
-static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
+static u8 __tipc_build_gap_ack_blks(struct tipc_gap_ack_blks *ga,
+				    struct tipc_link *l, u8 start_index);
+static u16 tipc_build_gap_ack_blks(struct tipc_link *l, struct tipc_msg *hdr);
+static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
+				     u16 acked, u16 gap,
 				     struct tipc_gap_ack_blks *ga,
-				     struct sk_buff_head *xmitq);
+				     struct sk_buff_head *xmitq,
+				     bool *retransmitted, int *rc);
 static void tipc_link_update_cwin(struct tipc_link *l, int released,
 				  bool retransmitted);
 /*
@@ -370,7 +375,7 @@ void tipc_link_remove_bc_peer(struct tipc_link *snd_l,
 	snd_l->ackers--;
 	rcv_l->bc_peer_is_up = true;
 	rcv_l->state = LINK_ESTABLISHED;
-	tipc_link_bc_ack_rcv(rcv_l, ack, xmitq);
+	tipc_link_bc_ack_rcv(rcv_l, ack, 0, NULL, xmitq);
 	trace_tipc_link_reset(rcv_l, TIPC_DUMP_ALL, "bclink removed!");
 	tipc_link_reset(rcv_l);
 	rcv_l->state = LINK_RESET;
@@ -784,8 +789,6 @@ bool tipc_link_too_silent(struct tipc_link *l)
 	return (l->silent_intv_cnt + 2 > l->abort_limit);
 }
 
-static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
-				u16 from, u16 to, struct sk_buff_head *xmitq);
 /* tipc_link_timeout - perform periodic task as instructed from node timeout
  */
 int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmitq)
@@ -948,6 +951,9 @@ void tipc_link_reset(struct tipc_link *l)
 	l->snd_nxt_state = 1;
 	l->rcv_nxt_state = 1;
 	l->acked = 0;
+	l->last_gap = 0;
+	kfree(l->last_ga);
+	l->last_ga = NULL;
 	l->silent_intv_cnt = 0;
 	l->rst_cnt = 0;
 	l->bc_peer_is_up = false;
@@ -1183,68 +1189,14 @@ static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
 
 	if (link_is_bc_sndlink(l)) {
 		r->state = LINK_RESET;
-		*rc = TIPC_LINK_DOWN_EVT;
+		*rc |= TIPC_LINK_DOWN_EVT;
 	} else {
-		*rc = tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
+		*rc |= tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
 	}
 
 	return true;
 }
 
-/* tipc_link_bc_retrans() - retransmit zero or more packets
- * @l: the link to transmit on
- * @r: the receiving link ordering the retransmit. Same as l if unicast
- * @from: retransmit from (inclusive) this sequence number
- * @to: retransmit to (inclusive) this sequence number
- * xmitq: queue for accumulating the retransmitted packets
- */
-static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
-				u16 from, u16 to, struct sk_buff_head *xmitq)
-{
-	struct sk_buff *_skb, *skb = skb_peek(&l->transmq);
-	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
-	u16 ack = l->rcv_nxt - 1;
-	int retransmitted = 0;
-	struct tipc_msg *hdr;
-	int rc = 0;
-
-	if (!skb)
-		return 0;
-	if (less(to, from))
-		return 0;
-
-	trace_tipc_link_retrans(r, from, to, &l->transmq);
-
-	if (link_retransmit_failure(l, r, &rc))
-		return rc;
-
-	skb_queue_walk(&l->transmq, skb) {
-		hdr = buf_msg(skb);
-		if (less(msg_seqno(hdr), from))
-			continue;
-		if (more(msg_seqno(hdr), to))
-			break;
-		if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
-			continue;
-		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
-		_skb = pskb_copy(skb, GFP_ATOMIC);
-		if (!_skb)
-			return 0;
-		hdr = buf_msg(_skb);
-		msg_set_ack(hdr, ack);
-		msg_set_bcast_ack(hdr, bc_ack);
-		_skb->priority = TC_PRIO_CONTROL;
-		__skb_queue_tail(xmitq, _skb);
-		l->stats.retransmitted++;
-		retransmitted++;
-		/* Increase actual retrans counter & mark first time */
-		if (!TIPC_SKB_CB(skb)->retr_cnt++)
-			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
-	}
-	tipc_link_update_cwin(l, 0, retransmitted);
-	return 0;
-}
-
 /* tipc_data_input - deliver data and name distr msgs to upper layer
  *
  * Consumes buffer if message is of right type
@@ -1402,46 +1354,71 @@ static int tipc_link_tnl_rcv(struct tipc_link *l, struct sk_buff *skb,
 	return rc;
 }
 
-static int tipc_link_release_pkts(struct tipc_link *l, u16 acked)
-{
-	int released = 0;
-	struct sk_buff *skb, *tmp;
-
-	skb_queue_walk_safe(&l->transmq, skb, tmp) {
-		if (more(buf_seqno(skb), acked))
-			break;
-		__skb_unlink(skb, &l->transmq);
-		kfree_skb(skb);
-		released++;
+/**
+ * tipc_get_gap_ack_blks - get Gap ACK blocks from PROTOCOL/STATE_MSG
+ * @ga: returned pointer to the Gap ACK blocks if any
+ * @l: the tipc link
+ * @hdr: the PROTOCOL/STATE_MSG header
+ * @uc: desired Gap ACK blocks type, i.e. unicast (= 1) or broadcast (= 0)
+ *
+ * Return: the total Gap ACK blocks size
+ */
+u16 tipc_get_gap_ack_blks(struct tipc_gap_ack_blks **ga, struct tipc_link *l,
+			  struct tipc_msg *hdr, bool uc)
+{
+	struct tipc_gap_ack_blks *p;
+	u16 sz = 0;
+
+	/* Does peer support the Gap ACK blocks feature? */
+	if (l->peer_caps & TIPC_GAP_ACK_BLOCK) {
+		p = (struct tipc_gap_ack_blks *)msg_data(hdr);
+		sz = ntohs(p->len);
+		/* Sanity check */
+		if (sz == tipc_gap_ack_blks_sz(p->ugack_cnt + p->bgack_cnt)) {
+			/* Good, check if the desired type exists */
+			if ((uc && p->ugack_cnt) || (!uc && p->bgack_cnt))
+				goto ok;
+		/* Backward compatible: peer might not support bc, but uc? */
+		} else if (uc && sz == tipc_gap_ack_blks_sz(p->ugack_cnt)) {
+			if (p->ugack_cnt) {
+				p->bgack_cnt = 0;
+				goto ok;
+			}
+		}
 	}
-	return released;
+	/* Other cases: ignore! */
+	p = NULL;
+
+ok:
+	*ga = p;
+	return sz;
 }
 
-/* tipc_build_gap_ack_blks - build Gap ACK blocks
- * @l: tipc link that data have come with gaps in sequence if any
- * @data: data buffer to store the Gap ACK blocks after built
- *
- * returns the actual allocated memory size
- */
-static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data, u16 gap)
+static u8 __tipc_build_gap_ack_blks(struct tipc_gap_ack_blks *ga,
+				    struct tipc_link *l, u8 start_index)
 {
+	struct tipc_gap_ack *gacks = &ga->gacks[start_index];
 	struct sk_buff *skb = skb_peek(&l->deferdq);
-	struct tipc_gap_ack_blks *ga = data;
-	u16 len, expect, seqno = 0;
+	u16 expect, seqno = 0;
 	u8 n = 0;
 
-	if (!skb || !gap)
-		goto exit;
+	if (!skb)
+		return 0;
 
 	expect = buf_seqno(skb);
 	skb_queue_walk(&l->deferdq, skb) {
 		seqno = buf_seqno(skb);
 		if (unlikely(more(seqno, expect))) {
-			ga->gacks[n].ack = htons(expect - 1);
-			ga->gacks[n].gap = htons(seqno - expect);
-			if (++n >= MAX_GAP_ACK_BLKS) {
-				pr_info_ratelimited("Too few Gap ACK blocks!\n");
-				goto exit;
+			gacks[n].ack = htons(expect - 1);
+			gacks[n].gap = htons(seqno - expect);
+			if (++n >= MAX_GAP_ACK_BLKS / 2) {
+				char buf[TIPC_MAX_LINK_NAME];
+
+				pr_info_ratelimited("Gacks on %s: %d, ql: %d!\n",
+						    tipc_link_name_ext(l, buf),
+						    n,
+						    skb_queue_len(&l->deferdq));
+				return n;
 			}
 		} else if (unlikely(less(seqno, expect))) {
 			pr_warn("Unexpected skb in deferdq!\n");
@@ -1451,14 +1428,57 @@ static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data, u16 gap)
 	}
 
 	/* last block */
-	ga->gacks[n].ack = htons(seqno);
-	ga->gacks[n].gap = 0;
+	gacks[n].ack = htons(seqno);
+	gacks[n].gap = 0;
 	n++;
+	return n;
+}
 
-exit:
-	len = tipc_gap_ack_blks_sz(n);
+/* tipc_build_gap_ack_blks - build Gap ACK blocks
+ * @l: tipc unicast link
+ * @hdr: the tipc message buffer to store the Gap ACK blocks after built
+ *
+ * The function builds Gap ACK blocks for both the unicast & broadcast receiver
+ * links of a certain peer, the buffer after built has the network data format
+ * as follows:
+ *  31                       16 15                        0
+ * +-------------+-------------+-------------+-------------+
+ * |  bgack_cnt  |  ugack_cnt  |            len            |
+ * +-------------+-------------+-------------+-------------+  -
+ * |            gap            |            ack            |   |
+ * +-------------+-------------+-------------+-------------+    > bc gacks
+ * :                           :                           :   |
+ * +-------------+-------------+-------------+-------------+  -
+ * |            gap            |            ack            |   |
+ * +-------------+-------------+-------------+-------------+    > uc gacks
+ * :                           :                           :   |
+ * +-------------+-------------+-------------+-------------+  -
+ * (See struct tipc_gap_ack_blks)
+ *
+ * returns the actual allocated memory size
+ */
+static u16 tipc_build_gap_ack_blks(struct tipc_link *l, struct tipc_msg *hdr)
+{
+	struct tipc_link *bcl = l->bc_rcvlink;
+	struct tipc_gap_ack_blks *ga;
+	u16 len;
+
+	ga = (struct tipc_gap_ack_blks *)msg_data(hdr);
+
+	/* Start with broadcast link first */
+	tipc_bcast_lock(bcl->net);
+	msg_set_bcast_ack(hdr, bcl->rcv_nxt - 1);
+	msg_set_bc_gap(hdr, link_bc_rcv_gap(bcl));
+	ga->bgack_cnt = __tipc_build_gap_ack_blks(ga, bcl, 0);
+	tipc_bcast_unlock(bcl->net);
+
+	/* Now for unicast link, but an explicit NACK only (???) */
+	ga->ugack_cnt = (msg_seq_gap(hdr)) ?
+			__tipc_build_gap_ack_blks(ga, l, ga->bgack_cnt) : 0;
+
+	/* Total len */
+	len = tipc_gap_ack_blks_sz(ga->bgack_cnt + ga->ugack_cnt);
 	ga->len = htons(len);
-	ga->gack_cnt = n;
 	return len;
 }
 
@@ -1466,47 +1486,109 @@ static u16 tipc_build_gap_ack_blks(struct tipc_link *l, void *data, u16 gap)
  *			       acked packets, also doing retransmissions if
  *			       gaps found
  * @l: tipc link with transmq queue to be advanced
+ * @r: tipc link "receiver" i.e. in case of broadcast (= "l" if unicast)
  * @acked: seqno of last packet acked by peer without any gaps before
  * @gap: # of gap packets
  * @ga: buffer pointer to Gap ACK blocks from peer
  * @xmitq: queue for accumulating the retransmitted packets if any
+ * @retransmitted: returned boolean value if a retransmission is really issued
+ * @rc: returned code e.g. TIPC_LINK_DOWN_EVT if a repeated retransmit failures
+ *      happens (- unlikely case)
  *
- * In case of a repeated retransmit failures, the call will return shortly
- * with a returned code (e.g. TIPC_LINK_DOWN_EVT)
+ * Return: the number of packets released from the link transmq
  */
-static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
+static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
+				     u16 acked, u16 gap,
 				     struct tipc_gap_ack_blks *ga,
-				     struct sk_buff_head *xmitq)
+				     struct sk_buff_head *xmitq,
+				     bool *retransmitted, int *rc)
 {
+	struct tipc_gap_ack_blks *last_ga = r->last_ga, *this_ga = NULL;
+	struct tipc_gap_ack *gacks = NULL;
 	struct sk_buff *skb, *_skb, *tmp;
 	struct tipc_msg *hdr;
+	u32 qlen = skb_queue_len(&l->transmq);
+	u16 nacked = acked, ngap = gap, gack_cnt = 0;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
-	bool retransmitted = false;
 	u16 ack = l->rcv_nxt - 1;
-	bool passed = false;
-	u16 released = 0;
 	u16 seqno, n = 0;
-	int rc = 0;
+	u16 end = r->acked, start = end, offset = r->last_gap;
+	u16 si = (last_ga) ? last_ga->start_index : 0;
+	bool is_uc = !link_is_bc_sndlink(l);
+	bool bc_has_acked = false;
+
+	/* Determine Gap ACK blocks if any for the particular link */
+	if (ga && is_uc) {
+		/* Get the Gap ACKs, uc part */
+		gack_cnt = ga->ugack_cnt;
+		gacks = &ga->gacks[ga->bgack_cnt];
+	} else if (ga) {
+		/* Copy the Gap ACKs, bc part, for later renewal if needed */
+		this_ga = kmemdup(ga, tipc_gap_ack_blks_sz(ga->bgack_cnt),
+				  GFP_ATOMIC);
+		if (likely(this_ga)) {
+			this_ga->start_index = 0;
+			/* Start with the bc Gap ACKs */
+			gack_cnt = this_ga->bgack_cnt;
+			gacks = &this_ga->gacks[0];
+		} else {
+			/* Hmm, we can get in trouble..., simply ignore it */
+			pr_warn_ratelimited("Ignoring bc Gap ACKs, no memory\n");
+		}
+	}
 
+	/* Advance the link transmq */
 	skb_queue_walk_safe(&l->transmq, skb, tmp) {
 		seqno = buf_seqno(skb);
 
 next_gap_ack:
-		if (less_eq(seqno, acked)) {
+		if (less_eq(seqno, nacked)) {
+			if (is_uc)
+				goto release;
+			/* Skip packets peer has already acked */
+			if (!more(seqno, r->acked))
+				continue;
+			/* Get the next of last Gap ACK blocks */
+			while (more(seqno, end)) {
+				if (!last_ga || si >= last_ga->bgack_cnt)
+					break;
+				start = end + offset + 1;
+				end = ntohs(last_ga->gacks[si].ack);
+				offset = ntohs(last_ga->gacks[si].gap);
+				si++;
+				WARN_ONCE(more(start, end) ||
+					  (!offset &&
+					   si < last_ga->bgack_cnt) ||
+					  si > MAX_GAP_ACK_BLKS,
+					  "Corrupted Gap ACK: %d %d %d %d %d\n",
+					  start, end, offset, si,
+					  last_ga->bgack_cnt);
+			}
+			/* Check against the last Gap ACK block */
+			if (in_range(seqno, start, end))
+				continue;
+			/* Update/release the packet peer is acking */
+			bc_has_acked = true;
+			if (--TIPC_SKB_CB(skb)->ackers)
+				continue;
+release:
 			/* release skb */
 			__skb_unlink(skb, &l->transmq);
 			kfree_skb(skb);
-			released++;
-		} else if (less_eq(seqno, acked + gap)) {
-			/* First, check if repeated retrans failures occurs? */
-			if (!passed && link_retransmit_failure(l, l, &rc))
-				return rc;
-			passed = true;
-
+		} else if (less_eq(seqno, nacked + ngap)) {
+			/* First gap: check if repeated retrans failures? */
+			if (unlikely(seqno == acked + 1 &&
+				     link_retransmit_failure(l, r, rc))) {
+				/* Ignore this bc Gap ACKs if any */
+				kfree(this_ga);
+				this_ga = NULL;
+				break;
+			}
 			/* retransmit skb if unrestricted*/
 			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
 				continue;
-			TIPC_SKB_CB(skb)->nxt_retr = TIPC_UC_RETR_TIME;
+			TIPC_SKB_CB(skb)->nxt_retr = (is_uc) ?
+					TIPC_UC_RETR_TIME : TIPC_BC_RETR_LIM;
 			_skb = pskb_copy(skb, GFP_ATOMIC);
 			if (!_skb)
 				continue;
@@ -1516,25 +1598,51 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
 			l->stats.retransmitted++;
-			retransmitted = true;
+			*retransmitted = true;
 			/* Increase actual retrans counter & mark first time */
 			if (!TIPC_SKB_CB(skb)->retr_cnt++)
 				TIPC_SKB_CB(skb)->retr_stamp = jiffies;
 		} else {
 			/* retry with Gap ACK blocks if any */
-			if (!ga || n >= ga->gack_cnt)
+			if (n >= gack_cnt)
 				break;
-			acked = ntohs(ga->gacks[n].ack);
-			gap = ntohs(ga->gacks[n].gap);
+			nacked = ntohs(gacks[n].ack);
+			ngap = ntohs(gacks[n].gap);
 			n++;
 			goto next_gap_ack;
 		}
 	}
-	if (released || retransmitted)
-		tipc_link_update_cwin(l, released, retransmitted);
-	if (released)
-		tipc_link_advance_backlog(l, xmitq);
-	return 0;
+
+	/* Renew last Gap ACK blocks for bc if needed */
+	if (bc_has_acked) {
+		if (this_ga) {
+			kfree(last_ga);
+			r->last_ga = this_ga;
+			r->last_gap = gap;
+		} else if (last_ga) {
+			if (less(acked, start)) {
+				si--;
+				offset = start - acked - 1;
+			} else if (less(acked, end)) {
+				acked = end;
+			}
+			if (si < last_ga->bgack_cnt) {
+				last_ga->start_index = si;
+				r->last_gap = offset;
+			} else {
+				kfree(last_ga);
+				r->last_ga = NULL;
+				r->last_gap = 0;
+			}
+		} else {
+			r->last_gap = 0;
+		}
+		r->acked = acked;
+	} else {
+		kfree(this_ga);
+	}
+
+	return qlen - skb_queue_len(&l->transmq);
 }
 
 /* tipc_link_build_state_msg: prepare link state message for transmission
@@ -1651,7 +1759,8 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 			kfree_skb(skb);
 			break;
 		}
-		released += tipc_link_release_pkts(l, msg_ack(hdr));
+		released += tipc_link_advance_transmq(l, l, msg_ack(hdr), 0,
+						      NULL, NULL, NULL, NULL);
 
 		/* Defer delivery if sequence gap */
 		if (unlikely(seqno != rcv_nxt)) {
@@ -1739,7 +1848,7 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		msg_set_probe(hdr, probe);
 		msg_set_is_keepalive(hdr, probe || probe_reply);
 		if (l->peer_caps & TIPC_GAP_ACK_BLOCK)
-			glen = tipc_build_gap_ack_blks(l, data, rcvgap);
+			glen = tipc_build_gap_ack_blks(l, hdr);
 		tipc_mon_prep(l->net, data + glen, &dlen, mstate, l->bearer_id);
 		msg_set_size(hdr, INT_H_SIZE + glen + dlen);
 		skb_trim(skb, INT_H_SIZE + glen + dlen);
@@ -2027,20 +2136,19 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 {
 	struct tipc_msg *hdr = buf_msg(skb);
 	struct tipc_gap_ack_blks *ga = NULL;
-	u16 rcvgap = 0;
-	u16 ack = msg_ack(hdr);
-	u16 gap = msg_seq_gap(hdr);
+	bool reply = msg_probe(hdr), retransmitted = false;
+	u16 dlen = msg_data_sz(hdr), glen = 0;
 	u16 peers_snd_nxt =  msg_next_sent(hdr);
 	u16 peers_tol = msg_link_tolerance(hdr);
 	u16 peers_prio = msg_linkprio(hdr);
+	u16 gap = msg_seq_gap(hdr);
+	u16 ack = msg_ack(hdr);
 	u16 rcv_nxt = l->rcv_nxt;
-	u16 dlen = msg_data_sz(hdr);
+	u16 rcvgap = 0;
 	int mtyp = msg_type(hdr);
-	bool reply = msg_probe(hdr);
-	u16 glen = 0;
-	void *data;
+	int rc = 0, released;
 	char *if_name;
-	int rc = 0;
+	void *data;
 
 	trace_tipc_proto_rcv(skb, false, l->name);
 	if (tipc_link_is_blocked(l) || !xmitq)
@@ -2137,13 +2245,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 		}
 
 		/* Receive Gap ACK blocks from peer if any */
-		if (l->peer_caps & TIPC_GAP_ACK_BLOCK) {
-			ga = (struct tipc_gap_ack_blks *)data;
-			glen = ntohs(ga->len);
-			/* sanity check: if failed, ignore Gap ACK blocks */
-			if (glen != tipc_gap_ack_blks_sz(ga->gack_cnt))
-				ga = NULL;
-		}
+		glen = tipc_get_gap_ack_blks(&ga, l, hdr, true);
 
 		tipc_mon_rcv(l->net, data + glen, dlen - glen, l->addr,
 			     &l->mon_state, l->bearer_id);
@@ -2158,9 +2260,14 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
 			tipc_link_build_proto_msg(l, STATE_MSG, 0, reply,
 						  rcvgap, 0, 0, xmitq);
 
-		rc |= tipc_link_advance_transmq(l, ack, gap, ga, xmitq);
+		released = tipc_link_advance_transmq(l, l, ack, gap, ga, xmitq,
+						     &retransmitted, &rc);
 		if (gap)
 			l->stats.recv_nacks++;
+		if (released || retransmitted)
+			tipc_link_update_cwin(l, released, retransmitted);
+		if (released)
+			tipc_link_advance_backlog(l, xmitq);
 		if (unlikely(!skb_queue_empty(&l->wakeupq)))
 			link_prepare_wakeup(l);
 	}
@@ -2246,10 +2353,7 @@ void tipc_link_bc_init_rcv(struct tipc_link *l, struct tipc_msg *hdr)
 int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 			  struct sk_buff_head *xmitq)
 {
-	struct tipc_link *snd_l = l->bc_sndlink;
 	u16 peers_snd_nxt = msg_bc_snd_nxt(hdr);
-	u16 from = msg_bcast_ack(hdr) + 1;
-	u16 to = from + msg_bc_gap(hdr) - 1;
 	int rc = 0;
 
 	if (!link_is_up(l))
@@ -2271,8 +2375,6 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 	if (more(peers_snd_nxt, l->rcv_nxt + l->window))
 		return rc;
 
-	rc = tipc_link_bc_retrans(snd_l, l, from, to, xmitq);
-
 	l->snd_nxt = peers_snd_nxt;
 	if (link_bc_rcv_gap(l))
 		rc |= TIPC_LINK_SND_STATE;
@@ -2307,38 +2409,27 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 	return 0;
 }
 
-void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
-			  struct sk_buff_head *xmitq)
+int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
+			 struct tipc_gap_ack_blks *ga,
+			 struct sk_buff_head *xmitq)
 {
-	struct sk_buff *skb, *tmp;
-	struct tipc_link *snd_l = l->bc_sndlink;
+	struct tipc_link *l = r->bc_sndlink;
+	bool unused = false;
+	int rc = 0;
 
-	if (!link_is_up(l) || !l->bc_peer_is_up)
-		return;
+	if (!link_is_up(r) || !r->bc_peer_is_up)
+		return 0;
 
-	if (!more(acked, l->acked))
-		return;
+	if (less(acked, r->acked) || (acked == r->acked && !gap && !ga))
+		return 0;
 
-	trace_tipc_link_bc_ack(l, l->acked, acked, &snd_l->transmq);
-	/* Skip over packets peer has already acked */
-	skb_queue_walk(&snd_l->transmq, skb) {
-		if (more(buf_seqno(skb), l->acked))
-			break;
-	}
+	tipc_link_advance_transmq(l, r, acked, gap, ga, xmitq, &unused, &rc);
 
-	/* Update/release the packets peer is acking now */
-	skb_queue_walk_from_safe(&snd_l->transmq, skb, tmp) {
-		if (more(buf_seqno(skb), acked))
-			break;
-		if (!--TIPC_SKB_CB(skb)->ackers) {
-			__skb_unlink(skb, &snd_l->transmq);
-			kfree_skb(skb);
-		}
-	}
-	l->acked = acked;
-	tipc_link_advance_backlog(snd_l, xmitq);
-	if (unlikely(!skb_queue_empty(&snd_l->wakeupq)))
-		link_prepare_wakeup(snd_l);
+	tipc_link_advance_backlog(l, xmitq);
+	if (unlikely(!skb_queue_empty(&l->wakeupq)))
+		link_prepare_wakeup(l);
+
+	return rc;
 }
 
 /* tipc_link_bc_nack_rcv(): receive broadcast nack message
@@ -2366,8 +2457,7 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
 		return 0;
 
 	if (dnode == tipc_own_addr(l->net)) {
-		tipc_link_bc_ack_rcv(l, acked, xmitq);
-		rc = tipc_link_bc_retrans(l->bc_sndlink, l, from, to, xmitq);
+		rc = tipc_link_bc_ack_rcv(l, acked, to - acked, NULL, xmitq);
 		l->stats.recv_nacks++;
 		return rc;
 	}
diff --git a/net/tipc/link.h b/net/tipc/link.h
index d3c1c3fc1659..0a0fa7350722 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -143,8 +143,11 @@ int tipc_link_bc_peers(struct tipc_link *l);
 void tipc_link_set_mtu(struct tipc_link *l, int mtu);
 int tipc_link_mtu(struct tipc_link *l);
 int tipc_link_mss(struct tipc_link *l);
-void tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked,
-			  struct sk_buff_head *xmitq);
+u16 tipc_get_gap_ack_blks(struct tipc_gap_ack_blks **ga, struct tipc_link *l,
+			  struct tipc_msg *hdr, bool uc);
+int tipc_link_bc_ack_rcv(struct tipc_link *l, u16 acked, u16 gap,
+			 struct tipc_gap_ack_blks *ga,
+			 struct sk_buff_head *xmitq);
 void tipc_link_build_bc_sync_msg(struct tipc_link *l,
 				 struct sk_buff_head *xmitq);
 void tipc_link_bc_init_rcv(struct tipc_link *l, struct tipc_msg *hdr);
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 6d466ebdb64f..9a38f9c9d6eb 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -160,20 +160,26 @@ struct tipc_gap_ack {
 
 /* struct tipc_gap_ack_blks
  * @len: actual length of the record
- * @gack_cnt: number of Gap ACK blocks in the record
+ * @bgack_cnt: number of Gap ACK blocks for broadcast in the record

[Ying] "bgack_cnt" is defined after " ugack_cnt " in struct tipc_gap_ack_blks. Please reverse their order.

+ * @ugack_cnt: number of Gap ACK blocks for unicast (following the broadcast
+ *             ones)
+ * @start_index: starting index for "valid" broadcast Gap ACK blocks
  * @gacks: array of Gap ACK blocks
  */
 struct tipc_gap_ack_blks {
 	__be16 len;
-	u8 gack_cnt;
-	u8 reserved;
+	union {
+		u8 ugack_cnt;
+		u8 start_index;
+	};
+	u8 bgack_cnt;
 	struct tipc_gap_ack gacks[];
 };
 
 #define tipc_gap_ack_blks_sz(n) (sizeof(struct tipc_gap_ack_blks) + \
 				 sizeof(struct tipc_gap_ack) * (n))
 
-#define MAX_GAP_ACK_BLKS	32
+#define MAX_GAP_ACK_BLKS	128
 #define MAX_GAP_ACK_BLKS_SZ	tipc_gap_ack_blks_sz(MAX_GAP_ACK_BLKS)
 
 static inline struct tipc_msg *buf_msg(struct sk_buff *skb)
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 0c88778c88b5..eb6b62de81a7 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2069,10 +2069,16 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
 	le = &n->links[bearer_id];
 
 	/* Ensure broadcast reception is in synch with peer's send state */
-	if (unlikely(usr == LINK_PROTOCOL))
+	if (unlikely(usr == LINK_PROTOCOL)) {
+		if (unlikely(skb_linearize(skb))) {
+			tipc_node_put(n);
+			goto discard;
+		}
+		hdr = buf_msg(skb);
 		tipc_node_bc_sync_rcv(n, hdr, bearer_id, &xmitq);
-	else if (unlikely(tipc_link_acked(n->bc_entry.link) != bc_ack))
+	} else if (unlikely(tipc_link_acked(n->bc_entry.link) != bc_ack)) {
 		tipc_bcast_ack_rcv(net, n->bc_entry.link, hdr);
+	}
 
 	/* Receive packet directly if conditions permit */
 	tipc_node_read_lock(n);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
