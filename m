Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5269199496
	for <lists+tipc-discussion@lfdr.de>; Tue, 31 Mar 2020 13:00:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jJEdT-0006cI-BZ; Tue, 31 Mar 2020 11:00:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jJEdS-0006cB-94
 for tipc-discussion@lists.sourceforge.net; Tue, 31 Mar 2020 11:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=freZGGkt2q6jcGszBz+3Hx6uyom44LbDuMa+JVqWxz0=; b=T8Ni13UTgr8PukzGLeV4E87p6i
 9rC8esfF3pOsE+D+7ozucKQHcvi6EnWibpn/gymS8X8cyGhJONCF3IxsD5ySfPOCLxb0qo0FDLpL4
 rBIih9cLXbhT65BzUjT4RmqOD3vqrR/zikN8fwLMqIjnNhkIZhjKJoBu09IiZYR6k5kI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=freZGGkt2q6jcGszBz+3Hx6uyom44LbDuMa+JVqWxz0=; b=XXPSo+k/1uvPGfj+Adhnlln89H
 5GsjsBHrdgmfrELD7sVB61+0vOc/mZoMTqMhPCrN+oJfZYurDij83AWGxn0r5zz1dcQSj1pNAY+tX
 THdSbviVbK4+7goQlRnimzdkkd+e47WpH+npJLNAVprwhFhzOspYurJq7VFDwrOowB+E=;
Received: from mail-co1nam11on2083.outbound.protection.outlook.com
 ([40.107.220.83] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jJEdK-002oXY-Ea
 for tipc-discussion@lists.sourceforge.net; Tue, 31 Mar 2020 11:00:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jNNaoh1VsOb1anDAqXROfll/VCoV7HHpuFWagOf8BIqQH7otRT3OEBiaeVYur6NdST9wIBQYhOsxpg87g3M4VdbazTxVJvlgLEHsMGqd8aKOhLzIOrhzgY8ZKEoWFinrY6tBFQMRVJkWvFcmafdPOzooXw2EtVbeWvbZ4gFu5xRlTxLGv4vCsfZOV1vSoFGF9PzWNr9m1Y9Q7kfzfnRvjkCLObZpsowzmNR/cpeTebepK3n5aBbEDEGQedBvGiNgPXrUJADXcW+eeQWNEKNuecXaP5eBjw2+Hw3GPoIlAZUWfHvJ2I6YO2toQjELfZ14Sxug/2FHA4a1zO9ZGN82KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=freZGGkt2q6jcGszBz+3Hx6uyom44LbDuMa+JVqWxz0=;
 b=G5yB0sRWVk+g0PButk6/2VZpI9VIV9sL4dKV+V1TuiY1EGBuqtbRguE1US2BJXTYAsglQrFWn72TWPVD8le2wFMJsD61quLbPTFEPApwxX5+QD8SFlgmHHa7QOZGUz4Dq3SpwnVHWOgUIpoJkOm+M9eXMSG+kkaDdM3mFYyLd2V4cYeGpsjGVNCrcYl8y6fxybOR47CrVPlPFF/mAT0Crv3eJZcV7pWgpPSswR4rV3RHqTqEglVAR4jDizvEunRDdzZ1zGrdFnS+J4QR7FblkBPfLnRBHB7WCfKAlnZNVjhqZh5vSijUfSBN11xfN8UQ0kb5zAOGWTcbchPTm73hDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=freZGGkt2q6jcGszBz+3Hx6uyom44LbDuMa+JVqWxz0=;
 b=MHeZexa2hmsqtNgH+HN97bW4XXCmUef41O+ZtsBEB/MKSNEMRLlkPPSrU0Q23D5WYUDw+eE/7XU98RBzXPiGn1a+oZC3N4zMahaE4oqzJS8KSNl4K0QrCjAt8JExjG2N+86F9QO6xioHF+HdC6yMIugT8zpkpMfEpwGJCjucCN0=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4484.namprd11.prod.outlook.com (2603:10b6:a03:1c3::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Tue, 31 Mar
 2020 09:28:58 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 09:28:58 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Hoang Le <hoang.h.le@dektech.com.au>, "tipc-dek@dektech.com.au"
 <tipc-dek@dektech.com.au>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net-next] tipc: Add a missing case of
 TIPC_DIRECT_MSG type
Thread-Index: AQHWAnlequAZWz7XX0GzsVQJxBcrS6hieG4g
Date: Tue, 31 Mar 2020 09:28:58 +0000
Message-ID: <BY5PR11MB38941CA6B448F749A2137E6184C80@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200325074326.11399-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20200325074326.11399-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [123.115.55.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5fec488-6b8a-4c07-3c01-08d7d555f0b2
x-ms-traffictypediagnostic: BY5PR11MB4484:
x-microsoft-antispam-prvs: <BY5PR11MB448461A3C41360B2FD6C732084C80@BY5PR11MB4484.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(966005)(498600001)(53546011)(8936002)(81156014)(76116006)(8676002)(7696005)(81166006)(52536014)(26005)(9686003)(86362001)(6506007)(55016002)(110136005)(5660300002)(66946007)(66446008)(2906002)(66476007)(64756008)(186003)(33656002)(71200400001)(66556008)(9126004);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VvXIwFz+6/pRLdooEL7saphBbdZJhF2vVxeng6M/A5ysTBlt6/Bh3VC5kVe4tEveLqgTBPo9vPdPEHUB+7Ew3lD1kRbMFWKHgck2r3i4lTpDJcYVP3Vb4p3eX6yR6GgI5ahNqpCMnE9taspy+iqvfty1zDTBrkx1yiDP4zpd+eKwdSD+Oo0MCa55ouwSp12FU17ZqMqci5PK2zyphkHkk4Fj1BzVtI2aeobA8DVBGIDDD8Fzlk4loS5BtjFt8rT3fHiIGpX+H048xCPuHK/HTg8+g0xFLf4QdwYbz3XC2QG+t2D6y8nFk+Qj+ZJ8Ma2TiyT34c5bqJzEh7Km3sdPTAkPBBVKup63Oinj4ZwTfBEjmn6oGCDazx5YrpbNloj3OSEOq80wKTV2rh1aDX+lklw/aeT4ylxqMCmGea1rG02fDFkGD54XeVAecA030WuwmUIsLn30Ch1dSr5tgzgJAdKkUwvKrdQ7P1uMICCICY3JHFjU649XZwrVZ4bBhSSalMSbRYQhqeLCBCEhlu2UlOswxL7/O4BTwvtkJU6qM24JyndMdhxTy5GUmMdIUvqD
x-ms-exchange-antispam-messagedata: aKqsA+o4R+qvpv1V8k/2kFbsIWzyNlPC+xOjRneFlu7enWPROUEQJ4RLQ2ZNikcPUhzd5MQ7dKZsYNANdWFq5+FOJ8UsuSbcjZxWvZ7CtuNTtDWAQY5Nk4HRIC6CcEs0JOzV5HTwN18+K7ZhCKWxYw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5fec488-6b8a-4c07-3c01-08d7d555f0b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 09:28:58.1664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UpowhRr14GA74aZCcxTiSTgK8Md/tHD6Ye+wondl054bsVHM4dZNVW4kYM/yu2Mg7hr2PSQE2AzHul34RjuNdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4484
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.83 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jJEdK-002oXY-Ea
Subject: Re: [tipc-discussion] [net-next] tipc: Add a missing case of
 TIPC_DIRECT_MSG type
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

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Hoang Le [mailto:hoang.h.le@dektech.com.au] 
Sent: Wednesday, March 25, 2020 3:43 PM
To: tipc-dek@dektech.com.au; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Subject: [tipc-discussion] [net-next] tipc: Add a missing case of TIPC_DIRECT_MSG type

In the commit f73b12812a3d
("tipc: improve throughput between nodes in netns"), we're missing a check
to handle TIPC_DIRECT_MSG type, it's still using old sending mechanism for
this message type. So, throughput improvement is not significant as
expected.

Besides that, when sending a large message with that type, we're also
handle wrong receiving queue, it should be enqueued in socket receiving
instead of multicast messages.

Fix this by adding the missing case for TIPC_DIRECT_MSG.

Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
Reported-by: Tuong Lien <tuong.t.lien@dektech.com.au>
Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
---
 net/tipc/msg.h    | 5 +++++
 net/tipc/node.c   | 3 ++-
 net/tipc/socket.c | 2 +-
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 6d466ebdb64f..871feadbbc19 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -394,6 +394,11 @@ static inline u32 msg_connected(struct tipc_msg *m)
 	return msg_type(m) == TIPC_CONN_MSG;
 }
 
+static inline u32 msg_direct(struct tipc_msg *m)
+{
+	return msg_type(m) == TIPC_DIRECT_MSG;
+}
+
 static inline u32 msg_errcode(struct tipc_msg *m)
 {
 	return msg_bits(m, 1, 25, 0xf);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 0c88778c88b5..10292c942384 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1586,7 +1586,8 @@ static void tipc_lxc_xmit(struct net *peer_net, struct sk_buff_head *list)
 	case TIPC_MEDIUM_IMPORTANCE:
 	case TIPC_HIGH_IMPORTANCE:
 	case TIPC_CRITICAL_IMPORTANCE:
-		if (msg_connected(hdr) || msg_named(hdr)) {
+		if (msg_connected(hdr) || msg_named(hdr) ||
+		    msg_direct(hdr)) {
 			tipc_loopback_trace(peer_net, list);
 			spin_lock_init(&list->lock);
 			tipc_sk_rcv(peer_net, list);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 693e8902161e..87466607097f 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1461,7 +1461,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	}
 
 	__skb_queue_head_init(&pkts);
-	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
+	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, true);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
-- 
2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
