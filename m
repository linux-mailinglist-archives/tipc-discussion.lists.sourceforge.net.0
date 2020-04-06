Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2570A19F0A2
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Apr 2020 09:16:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLLzN-000447-Cf; Mon, 06 Apr 2020 07:16:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jLLzL-00043z-NI
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 07:16:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MPFFWgbKZaDFRyXzQw5kJAscwE6a6z9SWU5nSihT8vE=; b=YhGkuMeFQrmrAOKT/lEIJdEh6S
 Rewy7/0Kpql8sZXwfySnFvYuVAhKP2q2370BUpnaBkiwZ5L6hBpQMYauFgQsIa5cMtdOps5Q8QDgZ
 jPlK0zQSU7AODYGDpEhECg7t/rGxWU4D/F9pv+uxdKUCbADyE9ddTwE37UAGcu6UdBlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MPFFWgbKZaDFRyXzQw5kJAscwE6a6z9SWU5nSihT8vE=; b=I600Acd0YDIGMM6Xx37bmpciAC
 a6OiQZd/93qhfWLrigyexSNh6qd8ScCkpMyjKPSEiwJl6ff6j2+ERZAuMhAX2ew+udNjAh9vtNZ3f
 w/QYysdeZnTYoPI3FL/NNpxvhuxyV6p1Y3EqzEwF+zmswDPRoqP9rE6zkQjpPqSdZbWQ=;
Received: from mail-bn7nam10on2060.outbound.protection.outlook.com
 ([40.107.92.60] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLL6U-005Jr4-KB
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Apr 2020 06:19:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EfytDcdGSdbtT31w5EkJLQpeTvjbTUlk3zNt4H1REhcBTXiSU4cuyJLTBoufwfniovf0Fk5Q8wcjDq5C4O0Daa869yO4KEu8PPU2IXqzr6E+G7iSfn1C+E9X9+ZUqC/HzFnnfoiO7RKtRzLI/lgU5vQ5aOQxenOsDkAaZuwn/6tc2sknH2fMpH027eXwOV2g+h3HIFQ9qBewW6hYlZnxbjhaCUMD8PtUav9D1O9EJ4Uzokm4Z9QyrlTqehkF/8yTu+2GoVfPB5CL2w4wwnqx6Kjjh1pRJ1pT8bGJtKeXkqMP6Nzf6ORmwJFJdjHs8ryZ5pMnJALju7w36iSZDZeA1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPFFWgbKZaDFRyXzQw5kJAscwE6a6z9SWU5nSihT8vE=;
 b=gVRUrvg26nRrjdEFfoFdmuing2RvPCP9xNmamCf9oPE3B4Qd4fBKNIUGmFqjMK2Js78szS1CF7BRYmLGV678drEFaKcZ/aeYxfFsjtMH8CqEX8qXkmiYpx+oo1AKeCvrDCiY+V90rQTUnqCkLj4Lpm2SioNSrCCIrcPXT70VbbOI7WEFGYPPtdalaJgm+kmOZLT2g+gx0ggVnwjbTxvXseRSQ+Xp41HGcU2cxty/RG/d9uf7fAiXUOq59dSemgGnw/I6StMlY9mRBUBHR9kVtG6YqtmduhiMLW7PodufJxUj0D5mA/S394y+CMCm0k8OPCE2mZB1y//M8OWU2vluYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPFFWgbKZaDFRyXzQw5kJAscwE6a6z9SWU5nSihT8vE=;
 b=IBgfEjkS2j+rutsAVrgf6q+FYKb2Lv7MnZImrLyip/ZXZKmOS2cMbdn+p1QXmlusPQY+TNkDh/r0BOP8if1AotYSnpRQaMm/JNq0+/RfL+y1yyqH4aegM0k+0BCwJhGD3fgYwGknkshw0kIVXYzOrKyTb1nMktLTRNc5GBb9bHk=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4167.namprd11.prod.outlook.com (2603:10b6:a03:185::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.17; Mon, 6 Apr
 2020 03:45:40 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2878.017; Mon, 6 Apr 2020
 03:45:39 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 1/4] tipc: introduce Gap ACK blocks for broadcast link
Thread-Index: AQHWBLXf9pINPAhgc0uY6mlEFzldx6hqW+XQ
Date: Mon, 6 Apr 2020 03:45:39 +0000
Message-ID: <BY5PR11MB38949615D0738F94993B2C5984C20@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-2-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200328040309.4656-2-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [114.240.85.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7698a39b-de09-48c1-4c66-08d7d9dcf986
x-ms-traffictypediagnostic: BY5PR11MB4167:
x-microsoft-antispam-prvs: <BY5PR11MB416788F191E76E4860B4ED0E84C20@BY5PR11MB4167.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:398;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(396003)(376002)(346002)(39850400004)(136003)(5660300002)(478600001)(316002)(8936002)(55016002)(86362001)(2906002)(9686003)(4326008)(76116006)(33656002)(26005)(186003)(7696005)(66946007)(6506007)(66476007)(30864003)(66446008)(64756008)(81156014)(81166006)(71200400001)(52536014)(110136005)(66556008)(8676002)(559001)(579004);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FWSXeyFF/XOlseLmqOHhvqEk/VdSUAKnnQ0botqjJML4sXbz/NMPNbloLaxMaIebg7tnvTn3zZ0VJEFEhz2gTOUSsuq9UjKEhzx4b2GXK+0eC1bmV3oQGLqHaq4myoeVbxXOsxP1N0avI+9zx/AZ6r9BaPt192bq+ZQyVLNMh8R+eraeGuxmoPs74WJKOGQNJcbaHnEmC3zt5XQRIKXp/zr+kl66j9+HnNc8U4kxdTEBrGjoHYXcY5Kb8NG85QolWR18E6wngpNZsr1/BsW27BlejSVW/u+9cR8r5JLSYPvyilwTr2OJKpdyaUAUuaykPbAp0abKV9NVnV5t8+sNn58rNJY8aTohhTGN9Nsu9ZA159y1S1Y8zGdpvL58W10d5rFuBnIjyT1hUDgrL3h/S6gABqlQLmy2iNrFEGKcwIedISrKQJQ6syiGKK0wX5SC
x-ms-exchange-antispam-messagedata: yU5OTmqjpuOgRH5SKgWpguvL1rDjEZPJKQL6/s202MYCdolX0CGKJSAUQxECtPUEkwKBjWrGMsdKk1oLHSA+vti1AC9aCdIA4ZDAa6QLfl1YMm8UACR5Qle7coxXrGkODgBJD/JqW4BuQ/LElTFPHg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7698a39b-de09-48c1-4c66-08d7d9dcf986
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 03:45:39.7195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GIr8UjICWBYp1TWdBqlkpfSY9jbLiZjy5eYqPKXkPP9r9EgaYfYQ9rj2khNwSQoQ2PQleJN3/FMYfXzwpWtUTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4167
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.92.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLL6U-005Jr4-KB
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

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

So I wonder no backward-compatible issue will exist and everything will become pretty easy if we use LINK_PROTOCOL to only contain unicast gap ack blocks and use BCAST_PROTOCOL to convey broadcast gap ack blocks.
In other words, we don't need to enlarge current gap ack block space, and we don't need to change the current code related unicast gap ack blocks. Instead, we just need to add the support for broadcast gap ack blocks through BCAST_PROTOCOL rather than LINK_PROTOCOL. 
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
