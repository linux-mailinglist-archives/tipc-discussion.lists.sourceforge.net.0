Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1FA100EC3
	for <lists+tipc-discussion@lfdr.de>; Mon, 18 Nov 2019 23:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yNknqtJW0aB0lXWlekjrNlkmvt88nmiTfDMFtgXS8GY=; b=ZI4Ehq61RHuiIqvWET2jre6n9
	Q7yq1RjyOaVaeMexG993jz6H/Q2u8s/SYS+vXHSItCWWCH+eULWCCi/0CKLxsGpE+34oaYzW1dcPE
	HH+9rh/GtO44vSzy/HLFmoVH7hNsbGtaqvasvdSLK5ToYT/Q9Z5NlFLC2poyaey9bQDcM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iWpWA-0007jg-4H; Mon, 18 Nov 2019 22:29:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iWpW8-0007jY-9L
 for tipc-discussion@lists.sourceforge.net; Mon, 18 Nov 2019 22:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YN31gLdQr9/loMBr9RzictUiGEwDh5hVLl0zZkK2a0A=; b=M561N5BrpEWKBRdZpAPMBeu01j
 UngNFfkQj7Vo6Ul2Pme+NOLdAwzbw+ADecSp5JS39J+ObwhXldzSEOnG2oqYEX2Cch9fK5DQzZu9q
 SW1v9kv+Tlz4FXftfx0CN0+33KBhhwoJJ4yw587shT3MLQSBfakKtvTMWSpcafLNIaPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YN31gLdQr9/loMBr9RzictUiGEwDh5hVLl0zZkK2a0A=; b=KUlmD4cLsz4wNlZHre0K56BLyB
 uCBccS6qltqQoIFSRKzK4NBCWGFmcoE8hKWK+YCAibdq/sM9u+9QQuaczhrqEQOmX3FAurRizm97j
 Prd6alfxBQMZreD24F2VhXz1pxzm3Yw73TPETL11l5stUhzhpPWZxl4cyZ3C3GsXa5a4=;
Received: from mail-eopbgr690050.outbound.protection.outlook.com
 ([40.107.69.50] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iWpVx-0057bC-Kd
 for tipc-discussion@lists.sourceforge.net; Mon, 18 Nov 2019 22:29:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NmrDDQZNViFhPySEjAwJnZHY19SmfqtVMHWE8DOQOWbqZmf/WHnXP4/AT0lsecFHvoYc8Vm3FDn/4+kKe5Ybx+0aGrJikwVGNjagFFngnkr8RbtxUWtBhYr39sA1LQrJKr4eYs6/2knqGg9fTSycFCjgAjmJoOTYwpIvAtFr6gYqYTF6EhmC8X1t8sDv0F95wjumAIKIsiW9IzpehhHY/LhQ20iStvJlY2JBr4sL1MneYuZvTzfEelUKCC9uz8Qse4aOKGqQELHYDjxVNkGI3Nwf8PDco74dJcNY0TgzngEdcaMKAGfJ+ISaIEowIPMGH76y3RmywnoHwHb88R5W+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YN31gLdQr9/loMBr9RzictUiGEwDh5hVLl0zZkK2a0A=;
 b=jQSuo24x+gOrOci8Ttz/yVKy9/I6actU+ce9mGYYZAk0KHswgTz059WydsfYrMSBXPkGyWOiMa5JUYENZQ9QUBk+S0mwz3MykHee02SAI7i1d2tbe3dDBikaf2Z3Ud8QqlUcVMxk9Vr3cokaOeDCESXmdrBtdS6iTeWdfimhDMp2Nn9+uK4A2rxUPKYwhV0hhBF//a0Ww6lW5txiEjxnSGqEd0D8bu6g7Xentmu5DqyuLGUCc1fnDSbwgnX4TnnszovYfi1tudb4PxZtjkKkOaeE3UMTXAbB+9RVgWgWoromqvn/soBx++luTOtrwX0DrG/X9mtFLViHYjzCHgXn8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YN31gLdQr9/loMBr9RzictUiGEwDh5hVLl0zZkK2a0A=;
 b=TRiNzslQ7RMHJWXSorjuvOxPKpP3kFt8HtFZCBjU0Nv3QXqHIgbfwwLfuuXbYPJH1fhKwC8dzHDBrDKSq49Eio8LVw8uK9lcUPy3ti6ldhaSdEgWKzbuU/dN8YB/D4L1zf3N/m4sAc42XWyurVXpxI+4z5DF1dZH1e+vadc4GO8=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3703.namprd15.prod.outlook.com (52.132.231.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Mon, 18 Nov 2019 22:28:50 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.029; Mon, 18 Nov 2019
 22:28:50 +0000
To: 'Ying Xue' <ying.xue@windriver.com>, Tuong Tong Lien
 <tuong.t.lien@dektech.com.au>
Thread-Topic: [net-next v2 1/1] tipc: introduce variable window congestion
 control
Thread-Index: AQHVllsNhhT3T3LoIUWEURlAiUhX8qeRkNzA
Date: Mon, 18 Nov 2019 22:28:49 +0000
Message-ID: <CH2PR15MB357535794ADB10B79468D06E9A4D0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1573234585-6742-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1573234585-6742-1-git-send-email-jon.maloy@ericsson.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa58966b-0059-4236-0f05-08d76c76af66
x-ms-traffictypediagnostic: CH2PR15MB3703:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB370313730FD440A64CA43FFB9A4D0@CH2PR15MB3703.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(13464003)(51234002)(189003)(199004)(186003)(446003)(71190400001)(52536014)(66066001)(3846002)(110136005)(8936002)(71200400001)(66446008)(256004)(14444005)(478600001)(66946007)(7736002)(305945005)(76116006)(64756008)(66476007)(74316002)(99286004)(33656002)(102836004)(2906002)(44832011)(486006)(476003)(66556008)(6506007)(14454004)(11346002)(5660300002)(25786009)(8676002)(81156014)(81166006)(53546011)(7696005)(55016002)(6436002)(76176011)(4326008)(9686003)(86362001)(2473003)(316002)(6116002)(30864003)(229853002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3703;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l8AqEU2+dLtm1dz5xQAE5n3xwP0q1NWN7A5CHCq45XFoj+986LldSXeuE2XyNRDHRYuNy6GRhOH/gvlahwjnf3kffOxfyQgrExKJJJxCEFvbsldLEbCatuzlaMH7q3DfKZKk/BGptucZ8R83YlmHzdxegBSxpseE2fqjTOut25w/ZsNHO2v9gYxdGjLUc52yc4mMeNPW4xDvmS5W1m4qwQvUNRhISuhE8ClZw5nj/AGV/Y2JsxOED940Qr8RJrF176sK0IscGKKp0Ors1sdJBihz/Y5HC0R2XXrnb5RXsdKmhEQySai8+TsL9V9yYQXhHU+b89ZIb0b/G2pUCcB/2F7Cz/9KUkLAjGqyiQPPuZZjcsJ54Jz4RX7rdAU1f5lDqy7ixmICaYek4UWFEhmjudeUMFWYfTsWCyWbmGfoWuVgXifR+nBcyw9wdmOsqmFT/ue3CbkJgVjaU5QCBzNBiw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa58966b-0059-4236-0f05-08d76c76af66
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 22:28:49.8837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qgAEQwbj6BpSZCx8VNDZtYCJfIwLmDtwsgQL8r5mo60dQ2Nk7o3NhCAtlsqwmuBqifAFJ5BMUI9rvokTvuUbdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3703
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.50 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iWpVx-0057bC-Kd
Subject: [tipc-discussion] FW: [net-next v2 1/1] tipc: introduce variable
 window congestion control
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Ying, Tuong and others,
I would like to get this in before net-next 5.4 closes, and we are at rc7 now.
Please review and ack if you are ok with this. 
There is probably some room for improvements here, but we can do that later. This is still good step forward.

BR
///jon


-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: 8-Nov-19 12:36
To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
Cc: Mohan Krishna Ghanta Krishnamurthy <mohan.krishna.ghanta.krishnamurthy@ericsson.com>; parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Subject: [net-next v2 1/1] tipc: introduce variable window congestion control

We introduce a simple variable window congestion control for links.
The algorithm is inspired by the Reno algorithm, and can best be
descibed as working in permanent "congestion avoidance" mode, within
strict limits.

- We introduce hard lower and upper window limits per link, still
  different and configurable per bearer type.

- Next, we let a link start at the minimum window, and then slowly
  increment it for each 32 received non-duplicate ACK. This goes on
  until it either reaches the upper limit, or until it receives a
  NACK message.

- For each non-duplicate NACK received, we let the window decrease by
  intervals of 1/2 of the current window, but not below the minimum
  window.

The change does in reality have effect only on unicast ethernet
transport, as we have seen that there is no room whatsoever for
increasing the window max size for the UDP bearer.
For now, we also choose to keep the limits for the broadcast link
unchanged and equal.

This algorithm seems to give a ~25% throughput improvement for large
messages, while it has no effect on small message throughput.

Suggested-by: Xin Long <lucien.xin@gmail.com>
Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

---
v2:
    - Moved window increment in tipc_advance_backlogq() to before
      the transfer loop, as suggested Tuong.
    - Introduced logic for incrementing the window even for the
      broadcast send link, also suggested by Tuong.
---
 net/tipc/bcast.c     | 11 ++++----
 net/tipc/bearer.c    | 11 ++++----
 net/tipc/bearer.h    |  6 +++--
 net/tipc/eth_media.c |  6 ++++-
 net/tipc/ib_media.c  |  5 +++-
 net/tipc/link.c      | 76 ++++++++++++++++++++++++++++++++++------------------
 net/tipc/link.h      |  9 ++++---
 net/tipc/node.c      | 13 +++++----
 net/tipc/udp_media.c |  3 ++-
 9 files changed, 90 insertions(+), 50 deletions(-)

diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
index 6ef1abd..12fde9a 100644
--- a/net/tipc/bcast.c
+++ b/net/tipc/bcast.c
@@ -562,18 +562,18 @@ int tipc_bclink_reset_stats(struct net *net)
 	return 0;
 }
 
-static int tipc_bc_link_set_queue_limits(struct net *net, u32 limit)
+static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
 {
 	struct tipc_link *l = tipc_bc_sndlink(net);
 
 	if (!l)
 		return -ENOPROTOOPT;
-	if (limit < BCLINK_WIN_MIN)
-		limit = BCLINK_WIN_MIN;
-	if (limit > TIPC_MAX_LINK_WIN)
+	if (max_win < BCLINK_WIN_MIN)
+		max_win = BCLINK_WIN_MIN;
+	if (max_win > TIPC_MAX_LINK_WIN)
 		return -EINVAL;
 	tipc_bcast_lock(net);
-	tipc_link_set_queue_limits(l, limit);
+	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
 	tipc_bcast_unlock(net);
 	return 0;
 }
@@ -683,6 +683,7 @@ int tipc_bcast_init(struct net *net)
 	if (!tipc_link_bc_create(net, 0, 0,
 				 FB_MTU,
 				 BCLINK_WIN_DEFAULT,
+				 BCLINK_WIN_DEFAULT,
 				 0,
 				 &bb->inputq,
 				 NULL,
diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
index 0214aa1..f994961 100644
--- a/net/tipc/bearer.c
+++ b/net/tipc/bearer.c
@@ -310,7 +310,8 @@ static int tipc_enable_bearer(struct net *net, const char *name,
 
 	b->identity = bearer_id;
 	b->tolerance = m->tolerance;
-	b->window = m->window;
+	b->min_win = m->min_win;
+	b->max_win = m->max_win;
 	b->domain = disc_domain;
 	b->net_plane = bearer_id + 'A';
 	b->priority = prio;
@@ -765,7 +766,7 @@ static int __tipc_nl_add_bearer(struct tipc_nl_msg *msg,
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, bearer->tolerance))
 		goto prop_msg_full;
-	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->window))
+	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->max_win))
 		goto prop_msg_full;
 	if (bearer->media->type_id == TIPC_MEDIA_TYPE_UDP)
 		if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, bearer->mtu))
@@ -1057,7 +1058,7 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
 		if (props[TIPC_NLA_PROP_PRIO])
 			b->priority = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
 		if (props[TIPC_NLA_PROP_WIN])
-			b->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+			b->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
 		if (props[TIPC_NLA_PROP_MTU]) {
 			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
 				return -EINVAL;
@@ -1111,7 +1112,7 @@ static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, media->tolerance))
 		goto prop_msg_full;
-	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, media->window))
+	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, media->max_win))
 		goto prop_msg_full;
 	if (media->type_id == TIPC_MEDIA_TYPE_UDP)
 		if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, media->mtu))
@@ -1244,7 +1245,7 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
 		if (props[TIPC_NLA_PROP_PRIO])
 			m->priority = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
 		if (props[TIPC_NLA_PROP_WIN])
-			m->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+			m->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
 		if (props[TIPC_NLA_PROP_MTU]) {
 			if (m->type_id != TIPC_MEDIA_TYPE_UDP)
 				return -EINVAL;
diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
index ea0f3c4..58a23b9 100644
--- a/net/tipc/bearer.h
+++ b/net/tipc/bearer.h
@@ -119,7 +119,8 @@ struct tipc_media {
 			char *raw);
 	u32 priority;
 	u32 tolerance;
-	u32 window;
+	u32 min_win;
+	u32 max_win;
 	u32 mtu;
 	u32 type_id;
 	u32 hwaddr_len;
@@ -158,7 +159,8 @@ struct tipc_bearer {
 	struct packet_type pt;
 	struct rcu_head rcu;
 	u32 priority;
-	u32 window;
+	u32 min_win;
+	u32 max_win;
 	u32 tolerance;
 	u32 domain;
 	u32 identity;
diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
index f69a2fd..38cdcab 100644
--- a/net/tipc/eth_media.c
+++ b/net/tipc/eth_media.c
@@ -37,6 +37,9 @@
 #include "core.h"
 #include "bearer.h"
 
+#define TIPC_MIN_ETH_LINK_WIN 50
+#define TIPC_MAX_ETH_LINK_WIN 500
+
 /* Convert Ethernet address (media address format) to string */
 static int tipc_eth_addr2str(struct tipc_media_addr *addr,
 			     char *strbuf, int bufsz)
@@ -92,7 +95,8 @@ struct tipc_media eth_media_info = {
 	.raw2addr	= tipc_eth_raw2addr,
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
-	.window		= TIPC_DEF_LINK_WIN,
+	.min_win	= TIPC_MIN_ETH_LINK_WIN,
+	.max_win	= TIPC_MAX_ETH_LINK_WIN,
 	.type_id	= TIPC_MEDIA_TYPE_ETH,
 	.hwaddr_len	= ETH_ALEN,
 	.name		= "eth"
diff --git a/net/tipc/ib_media.c b/net/tipc/ib_media.c
index e8c1671..7aa9ff8 100644
--- a/net/tipc/ib_media.c
+++ b/net/tipc/ib_media.c
@@ -42,6 +42,8 @@
 #include "core.h"
 #include "bearer.h"
 
+#define TIPC_MAX_IB_LINK_WIN 500
+
 /* convert InfiniBand address (media address format) media address to string */
 static int tipc_ib_addr2str(struct tipc_media_addr *a, char *str_buf,
 			    int str_size)
@@ -94,7 +96,8 @@ struct tipc_media ib_media_info = {
 	.raw2addr	= tipc_ib_raw2addr,
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
-	.window		= TIPC_DEF_LINK_WIN,
+	.min_win	= TIPC_DEF_LINK_WIN,
+	.max_win	= TIPC_MAX_IB_LINK_WIN,
 	.type_id	= TIPC_MEDIA_TYPE_IB,
 	.hwaddr_len	= INFINIBAND_ALEN,
 	.name		= "ib"
diff --git a/net/tipc/link.c b/net/tipc/link.c
index 038861ba..7f657a6 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -163,7 +163,6 @@ struct tipc_link {
 		struct sk_buff *target_bskb;
 	} backlog[5];
 	u16 snd_nxt;
-	u16 window;
 
 	/* Reception */
 	u16 rcv_nxt;
@@ -174,6 +173,10 @@ struct tipc_link {
 
 	/* Congestion handling */
 	struct sk_buff_head wakeupq;
+	u16 window;
+	u16 min_win;
+	u16 max_win;
+	u16 cong_acks;
 
 	/* Fragmentation/reassembly */
 	struct sk_buff *reasm_buf;
@@ -307,9 +310,14 @@ u32 tipc_link_id(struct tipc_link *l)
 	return l->peer_bearer_id << 16 | l->bearer_id;
 }
 
-int tipc_link_window(struct tipc_link *l)
+int tipc_link_min_win(struct tipc_link *l)
+{
+	return l->min_win;
+}
+
+int tipc_link_max_win(struct tipc_link *l)
 {
-	return l->window;
+	return l->max_win;
 }
 
 int tipc_link_prio(struct tipc_link *l)
@@ -426,7 +434,8 @@ u32 tipc_link_state(struct tipc_link *l)
  * @net_plane: network plane (A,B,c..) this link belongs to
  * @mtu: mtu to be advertised by link
  * @priority: priority to be used by link
- * @window: send window to be used by link
+ * @min_win: minimal send window to be used by link
+ * @max_win: maximal send window to be used by link
  * @session: session to be used by link
  * @ownnode: identity of own node
  * @peer: node id of peer node
@@ -441,7 +450,7 @@ u32 tipc_link_state(struct tipc_link *l)
  */
 bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      int tolerance, char net_plane, u32 mtu, int priority,
-		      int window, u32 session, u32 self,
+		      u32 min_win, u32 max_win, u32 session, u32 self,
 		      u32 peer, u8 *peer_id, u16 peer_caps,
 		      struct tipc_link *bc_sndlink,
 		      struct tipc_link *bc_rcvlink,
@@ -485,7 +494,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 	l->advertised_mtu = mtu;
 	l->mtu = mtu;
 	l->priority = priority;
-	tipc_link_set_queue_limits(l, window);
+	tipc_link_set_queue_limits(l, min_win, max_win);
 	l->ackers = 1;
 	l->bc_sndlink = bc_sndlink;
 	l->bc_rcvlink = bc_rcvlink;
@@ -513,7 +522,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
  * Returns true if link was created, otherwise false
  */
 bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
-			 int mtu, int window, u16 peer_caps,
+			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
 			 struct tipc_link *bc_sndlink,
@@ -521,9 +530,9 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
 {
 	struct tipc_link *l;
 
-	if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, window,
-			      0, ownnode, peer, NULL, peer_caps, bc_sndlink,
-			      NULL, inputq, namedq, link))
+	if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, min_win,
+			      max_win, 0, ownnode, peer, NULL, peer_caps,
+			      bc_sndlink, NULL, inputq, namedq, link))
 		return false;
 
 	l = *link;
@@ -948,7 +957,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	u16 seqno = l->snd_nxt;
 	int pkt_cnt = skb_queue_len(list);
 	int imp = msg_importance(hdr);
-	unsigned int maxwin = l->window;
+	unsigned int cwin = l->window;
 	unsigned int mtu = l->mtu;
 	bool new_bundle;
 	int rc = 0;
@@ -977,7 +986,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 
 	/* Prepare each packet for sending, and add to relevant queue: */
 	while ((skb = __skb_dequeue(list))) {
-		if (likely(skb_queue_len(transmq) < maxwin)) {
+		if (likely(skb_queue_len(transmq) < cwin)) {
 			hdr = buf_msg(skb);
 			msg_set_seqno(hdr, seqno);
 			msg_set_ack(hdr, ack);
@@ -1028,6 +1037,8 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 static void tipc_link_advance_backlog(struct tipc_link *l,
 				      struct sk_buff_head *xmitq)
 {
+	struct sk_buff_head *txq = &l->transmq;
+	u16 qlen, add, cwin = l->window;
 	struct sk_buff *skb, *_skb;
 	struct tipc_msg *hdr;
 	u16 seqno = l->snd_nxt;
@@ -1035,7 +1046,13 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
 	u32 imp;
 
-	while (skb_queue_len(&l->transmq) < l->window) {
+	qlen = skb_queue_len(txq);
+	if (qlen >= cwin && (l->snd_nxt - buf_seqno(skb_peek(txq)) == qlen)) {
+		add = l->cong_acks++ % 32 ? 0 : 1;
+		cwin = min_t(u16, cwin + add, l->max_win);
+		l->window = cwin;
+	}
+	while (skb_queue_len(txq) < cwin) {
 		skb = skb_peek(&l->backlogq);
 		if (!skb)
 			break;
@@ -1130,6 +1147,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 {
 	struct sk_buff *_skb, *skb = skb_peek(&l->transmq);
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
+	bool retransmitted = false;
 	u16 ack = l->rcv_nxt - 1;
 	struct tipc_msg *hdr;
 	int rc = 0;
@@ -1163,11 +1181,13 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
 		_skb->priority = TC_PRIO_CONTROL;
 		__skb_queue_tail(xmitq, _skb);
 		l->stats.retransmitted++;
-
+		retransmitted = true;
 		/* Increase actual retrans counter & mark first time */
 		if (!TIPC_SKB_CB(skb)->retr_cnt++)
 			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
 	}
+	if (retransmitted)
+		l->window = l->min_win + (l->window - l->min_win) / 2;
 	return 0;
 }
 
@@ -1407,6 +1427,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 	struct sk_buff *skb, *_skb, *tmp;
 	struct tipc_msg *hdr;
 	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
+	bool retransmitted = false;
 	u16 ack = l->rcv_nxt - 1;
 	bool passed = false;
 	u16 seqno, n = 0;
@@ -1440,7 +1461,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			_skb->priority = TC_PRIO_CONTROL;
 			__skb_queue_tail(xmitq, _skb);
 			l->stats.retransmitted++;
-
+			retransmitted = true;
 			/* Increase actual retrans counter & mark first time */
 			if (!TIPC_SKB_CB(skb)->retr_cnt++)
 				TIPC_SKB_CB(skb)->retr_stamp = jiffies;
@@ -1454,7 +1475,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
 			goto next_gap_ack;
 		}
 	}
-
+	if (retransmitted)
+		l->window = l->min_win + (l->window - l->min_win) / 2;
 	return 0;
 }
 
@@ -2297,15 +2319,17 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
 	return 0;
 }
 
-void tipc_link_set_queue_limits(struct tipc_link *l, u32 win)
+void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32 max_win)
 {
 	int max_bulk = TIPC_MAX_PUBL / (l->mtu / ITEM_SIZE);
 
-	l->window = win;
-	l->backlog[TIPC_LOW_IMPORTANCE].limit      = max_t(u16, 50, win);
-	l->backlog[TIPC_MEDIUM_IMPORTANCE].limit   = max_t(u16, 100, win * 2);
-	l->backlog[TIPC_HIGH_IMPORTANCE].limit     = max_t(u16, 150, win * 3);
-	l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = max_t(u16, 200, win * 4);
+	l->window = min_win;
+	l->min_win = min_win;
+	l->max_win = max_win;
+	l->backlog[TIPC_LOW_IMPORTANCE].limit      = min_win * 2;
+	l->backlog[TIPC_MEDIUM_IMPORTANCE].limit   = min_win * 4;
+	l->backlog[TIPC_HIGH_IMPORTANCE].limit     = min_win * 6;
+	l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = min_win * 8;
 	l->backlog[TIPC_SYSTEM_IMPORTANCE].limit   = max_bulk;
 }
 
@@ -2358,10 +2382,10 @@ int tipc_nl_parse_link_prop(struct nlattr *prop, struct nlattr *props[])
 	}
 
 	if (props[TIPC_NLA_PROP_WIN]) {
-		u32 win;
+		u32 max_win;
 
-		win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
-		if ((win < TIPC_MIN_LINK_WIN) || (win > TIPC_MAX_LINK_WIN))
+		max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+		if (max_win < TIPC_MIN_LINK_WIN || max_win > TIPC_MAX_LINK_WIN)
 			return -EINVAL;
 	}
 
@@ -2597,7 +2621,7 @@ int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg)
 	prop = nla_nest_start_noflag(msg->skb, TIPC_NLA_LINK_PROP);
 	if (!prop)
 		goto attr_msg_full;
-	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bcl->window))
+	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bcl->max_win))
 		goto prop_msg_full;
 	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_BROADCAST, bc_mode))
 		goto prop_msg_full;
diff --git a/net/tipc/link.h b/net/tipc/link.h
index adcad65..caed071 100644
--- a/net/tipc/link.h
+++ b/net/tipc/link.h
@@ -73,7 +73,7 @@ enum {
 
 bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      int tolerance, char net_plane, u32 mtu, int priority,
-		      int window, u32 session, u32 ownnode,
+		      u32 min_win, u32 max_win, u32 session, u32 ownnode,
 		      u32 peer, u8 *peer_id, u16 peer_caps,
 		      struct tipc_link *bc_sndlink,
 		      struct tipc_link *bc_rcvlink,
@@ -81,7 +81,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
 		      struct sk_buff_head *namedq,
 		      struct tipc_link **link);
 bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
-			 int mtu, int window, u16 peer_caps,
+			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
 			 struct sk_buff_head *inputq,
 			 struct sk_buff_head *namedq,
 			 struct tipc_link *bc_sndlink,
@@ -115,7 +115,8 @@ char *tipc_link_name_ext(struct tipc_link *l, char *buf);
 u32 tipc_link_state(struct tipc_link *l);
 char tipc_link_plane(struct tipc_link *l);
 int tipc_link_prio(struct tipc_link *l);
-int tipc_link_window(struct tipc_link *l);
+int tipc_link_min_win(struct tipc_link *l);
+int tipc_link_max_win(struct tipc_link *l);
 void tipc_link_update_caps(struct tipc_link *l, u16 capabilities);
 bool tipc_link_validate_msg(struct tipc_link *l, struct tipc_msg *hdr);
 unsigned long tipc_link_tolerance(struct tipc_link *l);
@@ -124,7 +125,7 @@ void tipc_link_set_tolerance(struct tipc_link *l, u32 tol,
 void tipc_link_set_prio(struct tipc_link *l, u32 prio,
 			struct sk_buff_head *xmitq);
 void tipc_link_set_abort_limit(struct tipc_link *l, u32 limit);
-void tipc_link_set_queue_limits(struct tipc_link *l, u32 window);
+void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32 max_win);
 int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
 		       struct tipc_link *link, int nlflags);
 int tipc_nl_parse_link_prop(struct nlattr *prop, struct nlattr *props[]);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 742c047..9a56348 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -465,7 +465,8 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
 	n->active_links[1] = INVALID_BEARER_ID;
 	if (!tipc_link_bc_create(net, tipc_own_addr(net),
 				 addr, U16_MAX,
-				 tipc_link_window(tipc_bc_sndlink(net)),
+				 tipc_link_min_win(tipc_bc_sndlink(net)),
+				 tipc_link_max_win(tipc_bc_sndlink(net)),
 				 n->capabilities,
 				 &n->bc_entry.inputq1,
 				 &n->bc_entry.namedq,
@@ -1135,7 +1136,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
 		get_random_bytes(&session, sizeof(u16));
 		if (!tipc_link_create(net, if_name, b->identity, b->tolerance,
 				      b->net_plane, b->mtu, b->priority,
-				      b->window, session,
+				      b->min_win, b->max_win, session,
 				      tipc_own_addr(net), addr, peer_id,
 				      n->capabilities,
 				      tipc_bc_sndlink(n->net), n->bc_entry.link,
@@ -2256,10 +2257,12 @@ int tipc_nl_node_set_link(struct sk_buff *skb, struct genl_info *info)
 			tipc_link_set_prio(link, prio, &xmitq);
 		}
 		if (props[TIPC_NLA_PROP_WIN]) {
-			u32 win;
+			u32 max_win;
 
-			win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
-			tipc_link_set_queue_limits(link, win);
+			max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
+			tipc_link_set_queue_limits(link,
+						   tipc_link_min_win(link),
+						   max_win);
 		}
 	}
 
diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
index 43ca5fd..7bcc79a 100644
--- a/net/tipc/udp_media.c
+++ b/net/tipc/udp_media.c
@@ -824,7 +824,8 @@ struct tipc_media udp_media_info = {
 	.msg2addr	= tipc_udp_msg2addr,
 	.priority	= TIPC_DEF_LINK_PRI,
 	.tolerance	= TIPC_DEF_LINK_TOL,
-	.window		= TIPC_DEF_LINK_WIN,
+	.min_win	= TIPC_DEF_LINK_WIN,
+	.max_win	= TIPC_DEF_LINK_WIN,
 	.mtu		= TIPC_DEF_LINK_UDP_MTU,
 	.type_id	= TIPC_MEDIA_TYPE_UDP,
 	.hwaddr_len	= 0,
-- 
2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
