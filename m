Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB5C36E346
	for <lists+tipc-discussion@lfdr.de>; Thu, 29 Apr 2021 04:33:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lbwUa-0002uz-Fq; Thu, 29 Apr 2021 02:33:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1lbwUY-0002up-KB
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Apr 2021 02:33:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Q6KixXSfFpq+caQykteIliEX/w8CPCO8Yu/EsrPjGE=; b=EP36UMmcgCgyz2YFcCM3PmXnoQ
 EEmVk9/yp/QzWpWiFQf8w/UrJr+nTmt04n5GK6DFWVgQkx8Yvln6vcxuLLzEGLlXZRRc4dmmEnn0B
 TWhhXa742qMmsgHwY8gLBBzH3C6rJQKjGrZubx7DFHwauoBmQ0hC9YpP6MUlFhzQA4B0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9Q6KixXSfFpq+caQykteIliEX/w8CPCO8Yu/EsrPjGE=; b=TWdBtnsG6KWOoCGtlMQYIFO/Lz
 8at6pP/d3rd7WTO1qNzwq0BBTOQYIT8At9TXcJRiitBH32ZmkhQXPNIrKbHQPoJRBRK3h6oRY2n8R
 4kkYIWyokj2dmidnYbHFBIe81W7HwsvrbOHks+L0WVThcViczLapoiBrM3HT8hOx/s+E=;
Received: from mail-vi1eur05on2128.outbound.protection.outlook.com
 ([40.107.21.128] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lbwUN-006nxm-NT
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Apr 2021 02:33:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlrQZGOQM8zU6l0RFVZAsoKPUeh2xLEgPndxQijj/dXDEUjJYpe1gAFvtnDjM/WxRtz3i9JxTN6kkBptHyyco5ssaxjBSel1FDu86MRI+YKbTa0mExIZz5niW7Gq96CaAAavr2zZWU4uF9sT47XfvIO5HDFZklzRKZRVbuybIexe4CP7ylto+gIpY+ns8hWjvSu5fYTadDgOqsd56w8iiY02pcqFIpiOpIMnk5I5SKT0pqAWPVPdC8hdwmWs3tMcNZlC7L1B9hCwSnPYlen5z9jB4O4NkH+DrgjU22V6ISWJB6l5C6rpkY/xhXc9vMShzioxLl5sb0xLPTwz1YAGAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Q6KixXSfFpq+caQykteIliEX/w8CPCO8Yu/EsrPjGE=;
 b=kw9lz3RHArKKem+IgLBLIn7+DtHbHxk3cOozZulRUt+ZPNd7Xyx+TAjraBH98i+VPzlI0DG8wxsdIUR00V940egRhG8kpqhEFzO6MY7q0r1PUMmxd7e9wlTNR+U6WW3rT25H63hie/DJcg8knXFQqONy2oJfWZN0ZZo9ihBdrtaB7CGwGgQZ70Rq/4m6BstDzR7vMlKUHZLmbchvmkPGlDsSDBaWx82vg1EMJh3w4vyhHru19y3YlRLdPRODwXIWzh9wclfvD5xdl8uUigu26Kd/c0yMAZe4oeEDqos7OoyS7dwcbxtcHuq/7ER7qr/1CDnWt7sISyNP5GXWhGIPsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Q6KixXSfFpq+caQykteIliEX/w8CPCO8Yu/EsrPjGE=;
 b=CqwFYoHISu6Qp5tw+qMIclgHW/Mzny5nz/LTuaOelmpUcaEXYqcc5fuAgC1GrCcQ4LTVl1criI6j5bgCyEslPQiA2lP1SozosDJM/ol7eRiWxdpyy2i36KEcFPUx2dvL+qxC762ZTg9NiwE6Qmczmc3urUKrEoQn8hQ66hUKhsY=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR0501MB2360.eurprd05.prod.outlook.com (2603:10a6:4:4e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.22; Thu, 29 Apr 2021 02:18:33 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c9f6:2765:5c14:3eb2]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c9f6:2765:5c14:3eb2%3]) with mapi id 15.20.4042.024; Thu, 29 Apr 2021
 02:18:33 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH net] tipc: fix a race in
 tipc_sk_mcast_rcv
Thread-Index: AQHXPGUN/Cie4/pq9ECaOnm//XkDzqrKwb6g
Date: Thu, 29 Apr 2021 02:18:32 +0000
Message-ID: <DB7PR05MB4315A353E6E73A97BD133EC9885F9@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <25c57c05b6f5cc81fd49b8f060ebf0961ea8af68.1619638230.git.lucien.xin@gmail.com>
In-Reply-To: <25c57c05b6f5cc81fd49b8f060ebf0961ea8af68.1619638230.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [113.20.114.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f30c207-ece8-4c8c-bf68-08d90ab5166a
x-ms-traffictypediagnostic: DB6PR0501MB2360:
x-microsoft-antispam-prvs: <DB6PR0501MB2360A22E4BA4F92216A1A22A885F9@DB6PR0501MB2360.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xmBSDc2Vvfz37+RmlYpK8l3nIVasekKkiK3p1HXw7dae474YrEJrbFbFRphAlKhACDDQPeBe8GwXDUWsVpmCB6uF5IGBMeOfy5gHM7DpQL4pnGJK3ouoOi2V0qhOaox5dfltxJ9K65EwJ8taZYwEd+ANGvfEXTD4/+r4r60aaj9+8TEZD78a2OdFq0SvJTGBPOvQaVWVRcdogJkuPPgek+5q6TpbwlFB0rn+IMDOwuQzsfuyAq1EdWVKks5UsvKEDASjZ8Rj4nRyPDmcpoC0Yb8MN/MfmX4WLm8q9ouHAk5p8rHU24P64wKYEr0RD9FCM8md/tgRBVntOFdC3VdoqqmteLU0R3dMW0oegQJXWqpEtFfnMQ8tWgaswmfUd9vA5vouj7G+9fYEc1VZsvU81VA9eNUahvyJBS/tuD9bcJMwEj9/r6aAC+2b7hoaJmvAzHpxGdEak1P3q5+EQunh1UTi1ykgQ/48ZRMS7NITterfjoNTLdlQL6f1Zueqq/UdtDoL2e7uj4AMsG6QKRj5EGT4PszrFM5mbu7882VcnVLSf71OfxYtplmXBOkIf/dY+SKq05jpulGgphNZU31D4BJLf4hio1yS60XXObQQzs1MWM31YhuzRIr1sRxRzhwR7CO76KibQaPoubMsf60GxdVqI2pEnozdG3jXL2MxWOKZanXGGx67snQVd7fOyAb0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(39840400004)(346002)(376002)(396003)(33656002)(9686003)(64756008)(966005)(53546011)(66556008)(52536014)(8676002)(8936002)(2906002)(76116006)(26005)(38100700002)(5660300002)(122000001)(478600001)(6506007)(66946007)(66446008)(55016002)(83380400001)(110136005)(7696005)(71200400001)(4326008)(54906003)(316002)(86362001)(66476007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?dPwxZc8Su1KdLfQXYppLITMjNBlkz5D+AaVgLWNQWYus115pxJP3Gv/NeFiK?=
 =?us-ascii?Q?R+0yBcmK7O8I49siwf8B0fpLSUdQas0sQqL0QLJpByQHtMk9j+7MzKbZXz0r?=
 =?us-ascii?Q?HQ0niVBo55Kin6yXUrYjTph9LXILwM8j68i5ZHxfrBL/8heO/zzqFYfZnJrK?=
 =?us-ascii?Q?rnUGAQxVp60HlmFzgoLUpxBCEmVZ7SoVNPAyKGJHOrj6U/BBxbGOuurkOa5e?=
 =?us-ascii?Q?jqMwIkR3gzuQG2RqA48NJANNJEWJ7MwNImqtNbtAncgHQGCcjbteeCFgABH8?=
 =?us-ascii?Q?mLWG7dXBi6woNRDDBAWVwVvJCQ4W0H/V11DIenYTKjguSaRiQlI4m19rHmAM?=
 =?us-ascii?Q?9xLLsFJUpM1+KgqLBVs7P5XBQOYt0w0BujyoMAHb2T9jfoRghlhAk4cF68Fg?=
 =?us-ascii?Q?Dc4KCFhZcZgU7tPFwHolqqHQK5kYT/AN5s2nEX3YOQNavyxb6BlzyhDIWmif?=
 =?us-ascii?Q?U3BL7B7Q/RIPm4wL3Et6UUdDSUJFWRy4Wnvi6tJHTCrDbftN/kn1GRY9P4Pt?=
 =?us-ascii?Q?nDezoED7ECtJm25SL8JaPcVi1NTP9tktlqzX+C3FtpCQViPutXNluDcNLOmq?=
 =?us-ascii?Q?EFBycLbkkhBXvNjje5XZTeaJa0PkHSPPKPYPjtyhhXyeoIwT/jIMcGls2fcs?=
 =?us-ascii?Q?VcLCuXXAyvoFqMGavdFb61WrLdIvqZ3mhv8HeGxe+KXBXH7M5qJMu3BjtePS?=
 =?us-ascii?Q?D1g4T8XBRMysHqU6gGJ+snXPB7zBesCv+GaVUsZuwshTKIjktnhT214lok6h?=
 =?us-ascii?Q?Odfrw8onELOmFxNpTnRhThYH4k8iZG5OQX704J9kknZsxkkpZjy9INcF2ZlA?=
 =?us-ascii?Q?ufkKk5vyBzGIsy6vRUHoBoF0nobrY8nqAgcoBtXlaGOOMsjroqE+7eh/2Uf6?=
 =?us-ascii?Q?MlpvUXKVNd8gWKTzE5oVmCwbu2bGm+1YJ36BdfHcZ1Bw6hcqzGR0tqJ0NOvd?=
 =?us-ascii?Q?EEE+uijVxIrp6fWg0UBlYPN6bvKnO6MOY1rRwMia+oAnxy/tobhtHsoITBZC?=
 =?us-ascii?Q?qLdosKo3hMxJtw65VpjO5VKvWVZneJPWYc/EUy8RKNXgvK9iHavJilTQKzvj?=
 =?us-ascii?Q?8ryxQTaoZMBGrdWAWAcFD5CmHF593WCpTY0M9dI3fspT+APjMuSTH551ViMG?=
 =?us-ascii?Q?6hzTpFRZZCl3Fx2yXE/7OU9sZtpZt2jzdCqvyXct3F7n6rj5Rs5zz/MQeR9a?=
 =?us-ascii?Q?ul54SJvvgH+A11WtmGg+Aw4zTUh+qbB0X6DJt4XVbVb2Xo2q8XWpXOMik6Wv?=
 =?us-ascii?Q?56qlQ8Az+4SSPQCjguUVE7PBxujwuwS09dZTHkpBsrQYoxETasNqK41CQy/C?=
 =?us-ascii?Q?pKXDCHZ730EZR2db8LxzHB/H?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f30c207-ece8-4c8c-bf68-08d90ab5166a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2021 02:18:33.0529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: USdQ07eKyhkH0BaO214HeE5y5O8A2Rvh4vfnUsX8QXPVSb/0u3zBqm508b+Z9iKfTDJBalXtgtRLrGipVMdVJySR6uaR4XtEWjXvt5aXr5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2360
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.128 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lbwUN-006nxm-NT
Subject: Re: [tipc-discussion] [PATCH net] tipc: fix a race in
 tipc_sk_mcast_rcv
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
Cc: "kuba@kernel.org" <kuba@kernel.org>,
 "lyl2019@mail.ustc.edu.cn" <lyl2019@mail.ustc.edu.cn>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Xin,

See my comments inline.

Best regards,
Tung Nguyen

-----Original Message-----
From: Xin Long <lucien.xin@gmail.com> 
Sent: Thursday, April 29, 2021 2:31 AM
To: network dev <netdev@vger.kernel.org>; tipc-discussion@lists.sourceforge.net
Cc: kuba@kernel.org; lyl2019@mail.ustc.edu.cn; davem@davemloft.net
Subject: [tipc-discussion] [PATCH net] tipc: fix a race in tipc_sk_mcast_rcv

After commit cb1b728096f5 ("tipc: eliminate race condition at multicast
reception"), when processing the multicast reception, the packets are
firstly moved from be->inputq1 to be->arrvq in tipc_node_broadcast(),
then process be->arrvq in tipc_sk_mcast_rcv().

In tipc_sk_mcast_rcv(), it gets the 1st skb by skb_peek(), then process
this skb without any lock. It means meanwhile another thread could also
call tipc_sk_mcast_rcv() and process be->arrvq and pick up the same skb,
then free it. A double free issue will be caused as Li Shuang reported:

  [] kernel BUG at mm/slub.c:305!
  []  kfree+0x3a7/0x3d0
  []  kfree_skb+0x32/0xa0
  []  skb_release_data+0xb4/0x170
  []  kfree_skb+0x32/0xa0
  []  skb_release_data+0xb4/0x170
  []  kfree_skb+0x32/0xa0
  []  tipc_sk_mcast_rcv+0x1fa/0x380 [tipc]
  []  tipc_rcv+0x411/0x1120 [tipc]
  []  tipc_udp_recv+0xc6/0x1e0 [tipc]
  []  udp_queue_rcv_one_skb+0x1a9/0x500
  []  udp_unicast_rcv_skb.isra.66+0x75/0x90
  []  __udp4_lib_rcv+0x537/0xc40
  []  ip_protocol_deliver_rcu+0xdf/0x1d0
  []  ip_local_deliver_finish+0x4a/0x50
  []  ip_local_deliver+0x6b/0xe0
  []  ip_rcv+0x27b/0x36a
  []  __netif_receive_skb_core+0xb47/0xc40
  []  process_backlog+0xae/0x160

Commit 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
tried to fix this double free by not releasing the skbs in be->arrvq,
which would definitely cause the skbs' leak.

The problem is we shouldn't process the skbs in be->arrvq without any
lock to protect the code from peeking to dequeuing them. The fix here
is to use a temp skb list instead of be->arrvq to make it "per thread
safe". While at it, remove the no-longer-used be->arrvq.

Fixes: cb1b728096f5 ("tipc: eliminate race condition at multicast reception")
Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
Reported-by: Li Shuang <shuali@redhat.com>
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/node.c   |  9 ++++-----
 net/tipc/socket.c | 16 +++-------------
 2 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/net/tipc/node.c b/net/tipc/node.c
index e0ee832..0c636fb 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -72,7 +72,6 @@ struct tipc_link_entry {
 struct tipc_bclink_entry {
 	struct tipc_link *link;
 	struct sk_buff_head inputq1;
-	struct sk_buff_head arrvq;
 	struct sk_buff_head inputq2;
 	struct sk_buff_head namedq;
 	u16 named_rcv_nxt;
@@ -552,7 +551,6 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
 	INIT_LIST_HEAD(&n->conn_sks);
 	skb_queue_head_init(&n->bc_entry.namedq);
 	skb_queue_head_init(&n->bc_entry.inputq1);
-	__skb_queue_head_init(&n->bc_entry.arrvq);
 	skb_queue_head_init(&n->bc_entry.inputq2);
 	for (i = 0; i < MAX_BEARERS; i++)
 		spin_lock_init(&n->links[i].lock);
@@ -1803,14 +1801,15 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
 static void tipc_node_mcast_rcv(struct tipc_node *n)
 {
 	struct tipc_bclink_entry *be = &n->bc_entry;
+	struct sk_buff_head tmpq;
 
-	/* 'arrvq' is under inputq2's lock protection */
+	__skb_queue_head_init(&tmpq);
 	spin_lock_bh(&be->inputq2.lock);
 	spin_lock_bh(&be->inputq1.lock);
-	skb_queue_splice_tail_init(&be->inputq1, &be->arrvq);
+	skb_queue_splice_tail_init(&be->inputq1, &tmpq);
 	spin_unlock_bh(&be->inputq1.lock);
 	spin_unlock_bh(&be->inputq2.lock);
-	tipc_sk_mcast_rcv(n->net, &be->arrvq, &be->inputq2);
+	tipc_sk_mcast_rcv(n->net, &tmpq, &be->inputq2);
 }
 
 static void tipc_node_bc_sync_rcv(struct tipc_node *n, struct tipc_msg *hdr,
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 022999e..2870798 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1210,8 +1210,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 	__skb_queue_head_init(&tmpq);
 	INIT_LIST_HEAD(&dports);
 
-	skb = tipc_skb_peek(arrvq, &inputq->lock);
-	for (; skb; skb = tipc_skb_peek(arrvq, &inputq->lock)) {
Please remove function tipc_skb_peek() because it is no longer used.

+	while ((skb = __skb_dequeue(arrvq)) != NULL) {
 		hdr = buf_msg(skb);
 		user = msg_user(hdr);
 		mtyp = msg_type(hdr);
@@ -1220,13 +1219,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		type = msg_nametype(hdr);
 
 		if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
-			spin_lock_bh(&inputq->lock);
-			if (skb_peek(arrvq) == skb) {
-				__skb_dequeue(arrvq);
-				__skb_queue_tail(inputq, skb);
-			}
-			kfree_skb(skb);
-			spin_unlock_bh(&inputq->lock);
+			skb_queue_tail(inputq, skb);
 			continue;
 		}
 
@@ -1263,10 +1256,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
 		}
 		/* Append to inputq if not already done by other thread */
Please remove above comment because the temporary queue is thread-safe
 		spin_lock_bh(&inputq->lock);
-		if (skb_peek(arrvq) == skb) {
-			skb_queue_splice_tail_init(&tmpq, inputq);
-			__skb_dequeue(arrvq);
-		}
+		skb_queue_splice_tail_init(&tmpq, inputq);
 		spin_unlock_bh(&inputq->lock);
 		__skb_queue_purge(&tmpq);
 		kfree_skb(skb);
-- 
2.1.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
