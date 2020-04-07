Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BF11A07A7
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Apr 2020 08:50:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLi47-00016q-Ao; Tue, 07 Apr 2020 06:50:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jLi45-00016d-UJ
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 06:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iGiGg5Ypr4UJ088HczzipBm6F19dD2RiLND1uLkg10M=; b=l83CtRrdn/VEno147Pu57VRHek
 mRgOoOdkY8wPA1GJ69jlds7ATD4f6UvRD/FteNcbnj2C4byDXokln/7z7scvkVYVjS3Pu/ESvWN4R
 w3QWBW4mtjVC1COwgi8vV0oXxizrscLNahnKSsjWjH8yfpK1/w5IBJmibxX+p8rzfl/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iGiGg5Ypr4UJ088HczzipBm6F19dD2RiLND1uLkg10M=; b=Iy3HS9yc+bZmIfeblG21ehFDam
 4OS/BsYKfw11xPEdqljJKkL7uZeFiyQD4Gv8PxxWN+3G+imJboIHKIXPSUabahVNil8niDEsaY0Fz
 OLl+w8Ema5gZ4sO5qsOwg9f0195569Dxh174iiB7ORz7WwQazPUGhsuUgXo51+VimLEQ=;
Received: from mail-eopbgr700056.outbound.protection.outlook.com
 ([40.107.70.56] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLi40-006BSH-Bh
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 06:50:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HI/ZKC1vks3uNWRbAvRaLyDdOdH9yF/wRScJ0gMbpaX2sO+BrO06BcYu9chvltD99AptbpqGSfWrAmeB/MzUKYkSxkUcRzIqFT86Tp53WMZ6dqWJOi5MxkqMJUGFNIE0SGWw3nJ2O7rxXO/Eg92JT6PIkhGB01DpiFrfFpIqxWQnoEvWzpdfIE2eTPSJw5ybs9kJkE3n8vFJ8+fJvnBD17Pl6HKG1pU+KzXs26a98Z7yF+/6FxdCDH0GDMu+/fPinCi8GMSz+/CzBA91bzUivvgwVDz02R5s5MUSxZ5EkBiMkHwJYBGkyy/5EC1Cnxw0dNLQzdu2CHiyb3GSQyyGQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iGiGg5Ypr4UJ088HczzipBm6F19dD2RiLND1uLkg10M=;
 b=n2ytOBIbrxoMBPYhHPxtwgv2sdnONWAxim6IzhHXw7Xu3GTOn0C4UeutJaafrncz/F4JOIdx3AWD1lPB7BYT6rT6lxUFFK8mbJFRw/A5Md4b//0/muUfP1YSKzT65DFb0wi9tw/C85Jg86wFamff2oTBo2Vzld+jRfIMGettc/cBowXtiqRlRzOrrSaUTVoiOGoJP9kqJwA9SyBRkYfsHuH0xaDY7/2jsK8G7yKFQa8Jgk8zdG/5Y0TCUNHa3qsu09lV20T52GYEh8Hfi0/2fFdEQPetY2YVm56Kl/lOeU5O9BO+eAdF1sGa+Gc02BMAOzqF+CJv6YRlaLSPvvTIPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iGiGg5Ypr4UJ088HczzipBm6F19dD2RiLND1uLkg10M=;
 b=Pgi0T3X/x39RDf+dJVVNeqkJwiR8e8z3ughHXlQsTjO1sNE43M51zovWfyufofHzxL/WzldFHexyQRioaNTZoAV/U+UIoQnk75EzYAUV6c+wwJGaTPPE73L4xMAyi6H1QRYedPZrPiClEpzDq1Yl4WkWrU5YJ99zon6Bl8COYU4=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4385.namprd11.prod.outlook.com (2603:10b6:a03:1c0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Tue, 7 Apr
 2020 06:50:16 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2878.017; Tue, 7 Apr 2020
 06:50:16 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 4/4] tipc: add support for broadcast rcv stats dumping
Thread-Index: AQHWBLXh0u7bdBnOUEqEx2o+IxiOLKhrs8GwgAAnIQCAAWxvUA==
Date: Tue, 7 Apr 2020 06:50:16 +0000
Message-ID: <BY5PR11MB3894DA323ED538AC012D1BC684C30@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
 <20200328040309.4656-5-tuong.t.lien@dektech.com.au>
 <BY5PR11MB389482C4F83896711077B64A84C20@BY5PR11MB3894.namprd11.prod.outlook.com>
 <AM6PR0502MB392563AA355DCB40C8C4DA6EE2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
In-Reply-To: <AM6PR0502MB392563AA355DCB40C8C4DA6EE2C20@AM6PR0502MB3925.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [114.240.85.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: efdeb5f1-24fb-4e08-7bfc-08d7dabfee2e
x-ms-traffictypediagnostic: BY5PR11MB4385:
x-microsoft-antispam-prvs: <BY5PR11MB4385E1559CA3B19FFAD5B93384C30@BY5PR11MB4385.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:119;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(376002)(39840400004)(396003)(366004)(136003)(4326008)(110136005)(478600001)(53546011)(66946007)(6506007)(316002)(52536014)(7696005)(81166006)(66476007)(64756008)(2906002)(66446008)(66556008)(76116006)(86362001)(186003)(26005)(71200400001)(81156014)(9686003)(5660300002)(55016002)(30864003)(8936002)(8676002)(33656002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 92w2bFEqS/ylYSmPAUg0Fm1jut6ENXsZlknLEXQdVF63OnJA0uCVeVIEW+cP4wW3hnHS5DK8bMJkD7o4r9qiJTl4gOiQ1Uitcu9e2IV+46N8HAML9xMQDSRjpwIG2u5/+TPjDjfdBGpw30cX7j11x75rkDq7azBrACULeMKG+Imi4zejtfNEyNjXIFB6tb1+0lZ5HO180Rv0+3KKSwE2CxNJPTAeji2D2PMrlVGnUOu6EmRJ5GCDwesaRXAV2ilGQCqQtTuU1Y7xEihe+DHu+9erYgfIua9lWOn6iwLWn5UClJ1AfSrKLLaHnatZcs4TuBhVPl6ZVcPrtEeF6VFbfcFDuupcVDA2cE4iZYTzHCttx2yBTgn254HYQi38j/u5hkG9VT70vkwFCbYwfzlRHDEXRFDzYb4BEKmSQvK7XYR9TX7keL+eSPBxASeGvwYp
x-ms-exchange-antispam-messagedata: k+xmbj4zeBHn+rDWClaNU/p+2LODUE9JbRvPqV0yXEC70QgAzA7WxpXFywkoulp8LtgJ1G2vlOFUtc0bjj9em0Jkd7hhFKv0sDFcoOsRJM/V71hJLV6jZ6thQaLhw8Ez0vF7kGu6jcCASosf36peIA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efdeb5f1-24fb-4e08-7bfc-08d7dabfee2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 06:50:16.4437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CVz5AYCb84AHD4wmGMqGO4wkyQDXQj4/mW7QFO5fm5Z4uKLfGHgMdKA6d+v//PKGfufgpC/QpvTrnTAA88JMgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4385
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.70.56 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLi40-006BSH-Bh
Subject: Re: [tipc-discussion] [PATCH RFC 4/4] tipc: add support for
 broadcast rcv stats dumping
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


Basically when it performs by the iproute2/tipc tool, it first asks the kernel to dump everything and then makes a filter on specific links according to the command options. Please see the other patch on iproute2/tipc for more details:

[iproute2-next] tipc: enable printing of broadcast rcv link stats

So, for this patch, we just introduce a flag for user to dump the broadcast-receiver links stats (in addition to the traditional links ones) when needed. That is the 'TIPC_NL_LINK_GET'/'TIPC_NLA_LINK_BROADCAST' flag as mentioned in the commit message. In the iproute2/tipc, it will be:

> +		/* Set the flag to dump all bc links */
> +		attrs = mnl_attr_nest_start(nlh, TIPC_NLA_LINK);
> +		mnl_attr_put(nlh, TIPC_NLA_LINK_BROADCAST, 0, NULL);
> +		mnl_attr_nest_end(nlh, attrs);

===
The reason why I asked the question is that "type" is still a hard code in the following function, which is difficult for us to understand what " type == 2" is meaning:
 
/* Caller should hold node lock  */
 static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
-				    struct tipc_node *node, u32 *prev_link)
+				    struct tipc_node *node, u32 *prev_link,
+				    u32 type)
 {
 	u32 i;
 	int err;
@@ -2536,6 +2553,14 @@ static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
 		if (err)
 			return err;
 	}
+
+	if (type == 2) {
+		*prev_link = 3;
+		err = tipc_nl_add_bc_link(net, msg, node->bc_entry.link);
+		if (err)
+			return err;
+	}
+
 	*prev_link = 0;
===

Thanks,
Ying

-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Monday, April 6, 2020 1:45 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: RE: [PATCH RFC 4/4] tipc: add support for broadcast rcv stats dumping

Just a minor comment:

Please define macros for the cases:
1. Dump broadcast-link & unicast links
2. Dump broadcast-receiver links

Thanks,
Ying

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Saturday, March 28, 2020 12:03 PM
To: jmaloy@redhat.com; maloy@donjonn.com; Xue, Ying; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek@dektech.com.au
Subject: [PATCH RFC 4/4] tipc: add support for broadcast rcv stats dumping

This commit enables dumping the statistics of a broadcast-receiver link
like the traditional 'broadcast-link' one (which is for broadcast-
sender). The link dumping can be triggered via netlink (e.g. the
iproute2/tipc tool) by the link flag - 'TIPC_NLA_LINK_BROADCAST' as the
indicator.

The name of a broadcast-receiver link of a specific peer will be in the
format: 'broadcast-link:<peer-id>'.

For example:

Link <broadcast-link:1001002>
  Window:50 packets
  RX packets:7841 fragments:2408/440 bundles:0/0
  TX packets:0 fragments:0/0 bundles:0/0
  RX naks:0 defs:124 dups:0
  TX naks:21 acks:0 retrans:0
  Congestion link:0  Send queue max:0 avg:0

In addition, the broadcast-receiver link statistics can be reset in the
usual way via netlink by specifying that link name in command.

Note: the 'tipc_link_name_ext()' is removed because the link name can
now be retrieved simply via the 'l->name'.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 net/tipc/bcast.c   |  6 ++---
 net/tipc/bcast.h   |  5 +++--
 net/tipc/link.c    | 65 +++++++++++++++++++++++++++---------------------------
 net/tipc/link.h    |  3 +--
 net/tipc/msg.c     |  9 ++++----
 net/tipc/msg.h     |  2 +-
 net/tipc/netlink.c |  2 +-
 net/tipc/node.c    | 63 +++++++++++++++++++++++++++++++++++++++++++++-------
 net/tipc/trace.h   |  4 ++--
 9 files changed, 103 insertions(+), 56 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 50a16f8bebd9..383f87bc1061 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -563,10 +563,8 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
 		tipc_sk_rcv(net, inputq);
 }
 
-int tipc_bclink_reset_stats(struct net *net)
+int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l)
 {
-	struct tipc_link *l = tipc_bc_sndlink(net);
-
 	if (!l)
 		return -ENOPROTOOPT;
 
@@ -694,7 +692,7 @@ int tipc_bcast_init(struct net *net)
 	tn->bcbase = bb;
 	spin_lock_init(&tipc_net(net)->bclock);
 
-	if (!tipc_link_bc_create(net, 0, 0,
+	if (!tipc_link_bc_create(net, 0, 0, NULL,
 				 FB_MTU,
 				 BCLINK_WIN_DEFAULT,
 				 BCLINK_WIN_DEFAULT,
diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
index 97d3cf9d3e4d..4240c95188b1 100644
--- a/net/tipc/bcast.h
+++ b/net/tipc/bcast.h
@@ -96,9 +96,10 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
 int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
 			struct tipc_msg *hdr,
 			struct sk_buff_head *retrq);
-int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg);
+int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg,
+			struct tipc_link *bcl);
 int tipc_nl_bc_link_set(struct net *net, struct nlattr *attrs[]);
-int tipc_bclink_reset_stats(struct net *net);
+int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l);
 
 u32 tipc_bcast_get_broadcast_mode(struct net *net);
 u32 tipc_bcast_get_broadcast_ratio(struct net *net);
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 3071e46f029a..808d3a76c27f 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -539,7 +539,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
  *
  * Returns true if link was created, otherwise false
  */
-bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
+bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer, u8 *peer_id,
 			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
@@ -554,7 +554,18 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
 		return false;
 
 	l = *link;
-	strcpy(l->name, tipc_bclink_name);
+	if (peer_id) {
+		char peer_str[NODE_ID_STR_LEN] = {0,};
+
+		tipc_nodeid2string(peer_str, peer_id);
+		if (strlen(peer_str) > 16)
+			sprintf(peer_str, "%x", peer);
+		/* Broadcast receiver link name: "broadcast-link:<peer>" */
+		snprintf(l->name, sizeof(l->name), "%s:%s", tipc_bclink_name,
+			 peer_str);
+	} else {
+		strcpy(l->name, tipc_bclink_name);
+	}
 	trace_tipc_link_reset(l, TIPC_DUMP_ALL, "bclink created!");
 	tipc_link_reset(l);
 	l->state = LINK_RESET;
@@ -1412,11 +1423,8 @@ static u8 __tipc_build_gap_ack_blks(struct tipc_gap_ack_blks *ga,
 			gacks[n].ack = htons(expect - 1);
 			gacks[n].gap = htons(seqno - expect);
 			if (++n >= MAX_GAP_ACK_BLKS / 2) {
-				char buf[TIPC_MAX_LINK_NAME];
-
 				pr_info_ratelimited("Gacks on %s: %d, ql: %d!\n",
-						    tipc_link_name_ext(l, buf),
-						    n,
+						    l->name, n,
 						    skb_queue_len(&l->deferdq));
 				return n;
 			}
@@ -1600,6 +1608,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
 			l->stats.retransmitted++;
+			if (!is_uc)
+				r->stats.retransmitted++;
 			*retransmitted = true;
 			/* Increase actual retrans counter & mark first time */
 			if (!TIPC_SKB_CB(skb)->retr_cnt++)
@@ -1766,7 +1776,8 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff *skb,
 
 		/* Defer delivery if sequence gap */
 		if (unlikely(seqno != rcv_nxt)) {
-			__tipc_skb_queue_sorted(defq, seqno, skb);
+			if (!__tipc_skb_queue_sorted(defq, seqno, skb))
+				l->stats.duplicates++;
 			rc |= tipc_link_build_nack_msg(l, xmitq);
 			break;
 		}
@@ -1800,15 +1811,15 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 				      int tolerance, int priority,
 				      struct sk_buff_head *xmitq)
 {
+	struct tipc_mon_state *mstate = &l->mon_state;
+	struct sk_buff_head *dfq = &l->deferdq;
 	struct tipc_link *bcl = l->bc_rcvlink;
-	struct sk_buff *skb;
 	struct tipc_msg *hdr;
-	struct sk_buff_head *dfq = &l->deferdq;
+	struct sk_buff *skb;
 	bool node_up = link_is_up(bcl);
-	struct tipc_mon_state *mstate = &l->mon_state;
+	u16 glen = 0, bc_rcvgap = 0;
 	int dlen = 0;
 	void *data;
-	u16 glen = 0;
 
 	/* Don't send protocol message during reset or link failover */
 	if (tipc_link_is_blocked(l))
@@ -1846,7 +1857,8 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		if (l->peer_caps & TIPC_LINK_PROTO_SEQNO)
 			msg_set_seqno(hdr, l->snd_nxt_state++);
 		msg_set_seq_gap(hdr, rcvgap);
-		msg_set_bc_gap(hdr, link_bc_rcv_gap(bcl));
+		bc_rcvgap = link_bc_rcv_gap(bcl);
+		msg_set_bc_gap(hdr, bc_rcvgap);
 		msg_set_probe(hdr, probe);
 		msg_set_is_keepalive(hdr, probe || probe_reply);
 		if (l->peer_caps & TIPC_GAP_ACK_BLOCK)
@@ -1871,6 +1883,8 @@ static void tipc_link_build_proto_msg(struct tipc_link *l, int mtyp, bool probe,
 		l->stats.sent_probes++;
 	if (rcvgap)
 		l->stats.sent_nacks++;
+	if (bc_rcvgap)
+		bcl->stats.sent_nacks++;
 	skb->priority = TC_PRIO_CONTROL;
 	__skb_queue_tail(xmitq, skb);
 	trace_tipc_proto_build(skb, false, l->name);
@@ -2371,8 +2385,6 @@ int tipc_link_bc_sync_rcv(struct tipc_link *l, struct tipc_msg *hdr,
 	if (!l->bc_peer_is_up)
 		return rc;
 
-	l->stats.recv_nacks++;
-
 	/* Ignore if peers_snd_nxt goes beyond receive window */
 	if (more(peers_snd_nxt, l->rcv_nxt + l->window))
 		return rc;
@@ -2423,6 +2435,11 @@ int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
 	if (!link_is_up(r) || !r->bc_peer_is_up)
 		return 0;
 
+	if (gap) {
+		l->stats.recv_nacks++;
+		r->stats.recv_nacks++;
+	}
+
 	if (less(acked, r->acked) || (acked == r->acked && !gap && !ga))
 		return 0;
 
@@ -2734,16 +2751,15 @@ static int __tipc_nl_add_bc_link_stat(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
-int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg)
+int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg,
+			struct tipc_link *bcl)
 {
 	int err;
 	void *hdr;
 	struct nlattr *attrs;
 	struct nlattr *prop;
-	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	u32 bc_mode = tipc_bcast_get_broadcast_mode(net);
 	u32 bc_ratio = tipc_bcast_get_broadcast_ratio(net);
-	struct tipc_link *bcl = tn->bcl;
 
 	if (!bcl)
 		return 0;
@@ -2830,21 +2846,6 @@ void tipc_link_set_abort_limit(struct tipc_link *l, u32 limit)
 	l->abort_limit = limit;
 }
 
-char *tipc_link_name_ext(struct tipc_link *l, char *buf)
-{
-	if (!l)
-		scnprintf(buf, TIPC_MAX_LINK_NAME, "null");
-	else if (link_is_bc_sndlink(l))
-		scnprintf(buf, TIPC_MAX_LINK_NAME, "broadcast-sender");
-	else if (link_is_bc_rcvlink(l))
-		scnprintf(buf, TIPC_MAX_LINK_NAME,
-			  "broadcast-receiver, peer %x", l->addr);
-	else
-		memcpy(buf, l->name, TIPC_MAX_LINK_NAME);
-
-	return buf;
-}
-
 /**
  * tipc_link_dump - dump TIPC link data
  * @l: tipc link to be dumped
diff --git a/net/tipc/link.h b/net/tipc/link.h
index 4d0768cf91d5..fc07232c9a12 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -80,7 +80,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      struct sk_buff_head *inputq,
 		      struct sk_buff_head *namedq,
 		      struct tipc_link **link);
-bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
+bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer, u8 *peer_id,
 			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
@@ -111,7 +111,6 @@ u16 tipc_link_rcv_nxt(struct tipc_link *l);
 u16 tipc_link_acked(struct tipc_link *l);
 u32 tipc_link_id(struct tipc_link *l);
 char *tipc_link_name(struct tipc_link *l);
-char *tipc_link_name_ext(struct tipc_link *l, char *buf);
 u32 tipc_link_state(struct tipc_link *l);
 char tipc_link_plane(struct tipc_link *l);
 int tipc_link_prio(struct tipc_link *l);
diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 0d515d20b056..69d68512300a 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -828,19 +828,19 @@ bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
  * @seqno: sequence number of buffer to add
  * @skb: buffer to add
  */
-void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
+bool __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 			     struct sk_buff *skb)
 {
 	struct sk_buff *_skb, *tmp;
 
 	if (skb_queue_empty(list) || less(seqno, buf_seqno(skb_peek(list)))) {
 		__skb_queue_head(list, skb);
-		return;
+		return true;
 	}
 
 	if (more(seqno, buf_seqno(skb_peek_tail(list)))) {
 		__skb_queue_tail(list, skb);
-		return;
+		return true;
 	}
 
 	skb_queue_walk_safe(list, _skb, tmp) {
@@ -849,9 +849,10 @@ void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 		if (seqno == buf_seqno(_skb))
 			break;
 		__skb_queue_before(list, _skb, skb);
-		return;
+		return true;
 	}
 	kfree_skb(skb);
+	return false;
 }
 
 void tipc_skb_reject(struct net *net, int err, struct sk_buff *skb,
diff --git a/net/tipc/msg.h b/net/tipc/msg.h
index 9a38f9c9d6eb..87e2d472f75f 100644
--- a/net/tipc/msg.h
+++ b/net/tipc/msg.h
@@ -1127,7 +1127,7 @@ bool tipc_msg_assemble(struct sk_buff_head *list);
 bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq);
 bool tipc_msg_pskb_copy(u32 dst, struct sk_buff_head *msg,
 			struct sk_buff_head *cpy);
-void __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
+bool __tipc_skb_queue_sorted(struct sk_buff_head *list, u16 seqno,
 			     struct sk_buff *skb);
 bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy);
 
diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index 7c35094c20b8..8dfad18330bc 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -187,7 +187,7 @@ static const struct genl_ops tipc_genl_v2_ops[] = {
 	},
 	{
 		.cmd	= TIPC_NL_LINK_GET,
-		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.validate = GENL_DONT_VALIDATE_STRICT,
 		.doit   = tipc_nl_node_get_link,
 		.dumpit	= tipc_nl_node_dump_link,
 	},
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 917ad3920fac..373d07ae6730 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -1138,7 +1138,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 	if (unlikely(!n->bc_entry.link)) {
 		snd_l = tipc_bc_sndlink(net);
 		if (!tipc_link_bc_create(net, tipc_own_addr(net),
-					 addr, U16_MAX,
+					 addr, peer_id, U16_MAX,
 					 tipc_link_min_win(snd_l),
 					 tipc_link_max_win(snd_l),
 					 n->capabilities,
@@ -2432,7 +2432,7 @@ int tipc_nl_node_get_link(struct sk_buff *skb, struct genl_info *info)
 		return -ENOMEM;
 
 	if (strcmp(name, tipc_bclink_name) == 0) {
-		err = tipc_nl_add_bc_link(net, &msg);
+		err = tipc_nl_add_bc_link(net, &msg, tipc_net(net)->bcl);
 		if (err)
 			goto err_free;
 	} else {
@@ -2476,6 +2476,7 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 	struct tipc_node *node;
 	struct nlattr *attrs[TIPC_NLA_LINK_MAX + 1];
 	struct net *net = sock_net(skb->sk);
+	struct tipc_net *tn = tipc_net(net);
 	struct tipc_link_entry *le;
 
 	if (!info->attrs[TIPC_NLA_LINK])
@@ -2492,11 +2493,26 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 
 	link_name = nla_data(attrs[TIPC_NLA_LINK_NAME]);
 
-	if (strcmp(link_name, tipc_bclink_name) == 0) {
-		err = tipc_bclink_reset_stats(net);
+	err = -EINVAL;
+	if (!strcmp(link_name, tipc_bclink_name)) {
+		err = tipc_bclink_reset_stats(net, tipc_bc_sndlink(net));
 		if (err)
 			return err;
 		return 0;
+	} else if (strstr(link_name, tipc_bclink_name)) {
+		rcu_read_lock();
+		list_for_each_entry_rcu(node, &tn->node_list, list) {
+			tipc_node_read_lock(node);
+			link = node->bc_entry.link;
+			if (link && !strcmp(link_name, tipc_link_name(link))) {
+				err = tipc_bclink_reset_stats(net, link);
+				tipc_node_read_unlock(node);
+				break;
+			}
+			tipc_node_read_unlock(node);
+		}
+		rcu_read_unlock();
+		return err;
 	}
 
 	node = tipc_node_find_by_name(net, link_name, &bearer_id);
@@ -2520,7 +2536,8 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
 
 /* Caller should hold node lock  */
 static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
-				    struct tipc_node *node, u32 *prev_link)
+				    struct tipc_node *node, u32 *prev_link,
+				    u32 type)
 {
 	u32 i;
 	int err;
@@ -2536,6 +2553,14 @@ static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
 		if (err)
 			return err;
 	}
+
+	if (type == 2) {
+		*prev_link = 3;
+		err = tipc_nl_add_bc_link(net, msg, node->bc_entry.link);
+		if (err)
+			return err;
+	}
+
 	*prev_link = 0;
 
 	return 0;
@@ -2544,17 +2569,38 @@ static int __tipc_nl_add_node_links(struct net *net, struct tipc_nl_msg *msg,
 int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 {
 	struct net *net = sock_net(skb->sk);
+	struct nlattr **attrs = genl_dumpit_info(cb)->attrs;
+	struct nlattr *link[TIPC_NLA_LINK_MAX + 1];
 	struct tipc_net *tn = net_generic(net, tipc_net_id);
 	struct tipc_node *node;
 	struct tipc_nl_msg msg;
 	u32 prev_node = cb->args[0];
 	u32 prev_link = cb->args[1];
 	int done = cb->args[2];
+	u32 type = cb->args[3];
 	int err;
 
 	if (done)
 		return 0;
 
+	if (!type) {
+		/* Dump broadcast-link & unicast links */
+		type = 1;
+		if (attrs && attrs[TIPC_NLA_LINK]) {
+			err = nla_parse_nested_deprecated(link,
+							  TIPC_NLA_LINK_MAX,
+							  attrs[TIPC_NLA_LINK],
+							  tipc_nl_link_policy,
+							  NULL);
+			if (unlikely(err))
+				return err;
+			if (unlikely(!link[TIPC_NLA_LINK_BROADCAST]))
+				return -EINVAL;
+			/* Dump broadcast-receiver links as well */
+			type = 2;
+		}
+	}
+
 	msg.skb = skb;
 	msg.portid = NETLINK_CB(cb->skb).portid;
 	msg.seq = cb->nlh->nlmsg_seq;
@@ -2578,7 +2624,7 @@ int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 						 list) {
 			tipc_node_read_lock(node);
 			err = __tipc_nl_add_node_links(net, &msg, node,
-						       &prev_link);
+						       &prev_link, type);
 			tipc_node_read_unlock(node);
 			if (err)
 				goto out;
@@ -2586,14 +2632,14 @@ int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 			prev_node = node->addr;
 		}
 	} else {
-		err = tipc_nl_add_bc_link(net, &msg);
+		err = tipc_nl_add_bc_link(net, &msg, tn->bcl);
 		if (err)
 			goto out;
 
 		list_for_each_entry_rcu(node, &tn->node_list, list) {
 			tipc_node_read_lock(node);
 			err = __tipc_nl_add_node_links(net, &msg, node,
-						       &prev_link);
+						       &prev_link, type);
 			tipc_node_read_unlock(node);
 			if (err)
 				goto out;
@@ -2608,6 +2654,7 @@ int tipc_nl_node_dump_link(struct sk_buff *skb, struct netlink_callback *cb)
 	cb->args[0] = prev_node;
 	cb->args[1] = prev_link;
 	cb->args[2] = done;
+	cb->args[3] = type;
 
 	return skb->len;
 }
diff --git a/net/tipc/trace.h b/net/tipc/trace.h
index e7535ab75255..04af83f0500c 100644
--- a/net/tipc/trace.h
+++ b/net/tipc/trace.h
@@ -255,7 +255,7 @@ DECLARE_EVENT_CLASS(tipc_link_class,
 
 	TP_fast_assign(
 		__assign_str(header, header);
-		tipc_link_name_ext(l, __entry->name);
+		memcpy(__entry->name, tipc_link_name(l), TIPC_MAX_LINK_NAME);
 		tipc_link_dump(l, dqueues, __get_str(buf));
 	),
 
@@ -295,7 +295,7 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
 	),
 
 	TP_fast_assign(
-		tipc_link_name_ext(r, __entry->name);
+		memcpy(__entry->name, tipc_link_name(r), TIPC_MAX_LINK_NAME);
 		__entry->from = f;
 		__entry->to = t;
 		__entry->len = skb_queue_len(tq);
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
