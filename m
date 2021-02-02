Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C430B87C
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Feb 2021 08:17:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l6pvy-000202-Qv; Tue, 02 Feb 2021 07:17:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1l6pvw-0001zu-23
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Feb 2021 07:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2gaYRuiznuaAC4+inP7H7YILEp7RMffV4vTm/LM45BY=; b=OCOLq3HH7DF51UdQjL896Rrsz8
 y/0d+TQTF8NhyTj73CFRx1tx667v9M7AxeN+HNS2rF4jfWJpG6a4aWPpYCAdS43pCgRrx7SW0ikiE
 e9CGFXeHV4vN7pNsOtK2FJcu2QKLlijTKnh0LbK++RJBHImrm9STXPYZnCbBDDoQLeV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2gaYRuiznuaAC4+inP7H7YILEp7RMffV4vTm/LM45BY=; b=d/iuuew+JO38M+YGEphB+YFRJW
 wpk53l9kB6g5d/pzCtcgdiFD+QWXSM7YA9pojooH0aXLbCyUDF7WYXLdHqpi1mHsvrbvQi16q+yyF
 o6ovU6Dngo6H1aLzzNLeAe8Rud8rLtwKb7eycIC6xb0LzmxkRIAkWGCWBEMdAtqAo1Ps=;
Received: from mail-eopbgr60130.outbound.protection.outlook.com
 ([40.107.6.130] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l6pve-0000ht-0n
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Feb 2021 07:17:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cpCzvIvVlMXG7SDu4Je3Ty64QDFlBjKXy9NONn84b6ZzlLsQzFO7OUeVcCok25vIYpBu4qWuSWGkJNCtZSlctMERouPfDv7oqNU5G56eliG0PeGPEVhCnqM2gPIXqbj2CxTR7z8mxU1+STnNDpXwYQHq0sUO+/k/gYWROqaKfHWWDzNoLmQYmYL89wvTSADIDnPY+xjkwwVFpspW//BsRX7nKAgytFlDPRKPisI+mnex66ws7ND0xD5xEQ5LmJTO9i7oqzmE2Knk8rshLYdX3SofEt2/oHN6FqA8UZUVYd/I2OHleIXzCWieYPN7RHmwAqCkyzNh56Lg3HrHNMy42w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gaYRuiznuaAC4+inP7H7YILEp7RMffV4vTm/LM45BY=;
 b=TnGzxDIlWj3lgqVrJNHz778CE35i9WY//WuEELTM8rhUT71IOKR22RsDy2dFfl0/FOGW/1OL0PJGQ7tcQK+PHkF8YOIV9+7kq88d54OCsHAcZ9IYaRzAu1YMHLfWidPufo6q2Pq6pKjSDXWQhx7TYzKgshj74IDfiQHw+pqGUEVbMeLWsBolAh9BXTN5c6t6qP4NVOlQEDb6UxlaVj5NaXbCPn1rv9r9yQaFixAC88aySbIQaXMoqLW28stNpZ1JzkWafonhuenXPBiT9sYgFbTDZDeu/vXI2HFetfb7/BMHFEESEbZFMrMfHVf6AVEvPB2Gbk+dQmhOQPc7J0pL7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gaYRuiznuaAC4+inP7H7YILEp7RMffV4vTm/LM45BY=;
 b=WpNzHZ8rhRE8lq7x6o4IamB3X870NuaCWeKBz7ymhxez2Dni5tb55QRVlJXK/UQbCWDqHxyxhROcKwna5aqrfJymjW94KGsFchDn2LCb5lVMk4Je9ejSjtCEalkKhZj3DSUHNp+vOqbykYWB0IoWG2XMLSC6yfvsTbh9eQ2ZQqY=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB8PR05MB6796.eurprd05.prod.outlook.com (2603:10a6:10:13c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.19; Tue, 2 Feb 2021 06:43:25 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056%6]) with mapi id 15.20.3805.025; Tue, 2 Feb 2021
 06:43:25 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 05/16] tipc: simplify call signatures for publication
 creation
Thread-Index: AQHWzZMK9zF5PZJ+yEiVboNoWsuZSKpEwcHQ
Date: Tue, 2 Feb 2021 06:43:25 +0000
Message-ID: <DB7PR05MB431540DD7AB87085159FCC5088B59@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-6-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-6-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4eeafc87-5baf-4b13-ddec-08d8c745d778
x-ms-traffictypediagnostic: DB8PR05MB6796:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR05MB679610B6A7E85AC7E166805C88B59@DB8PR05MB6796.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:326;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /ijH4VM486l1hMGo4Bh3es2ooAHz2sIpAkn2gsHq4x8DlHuyVmuuZ5OEGbDouZVvjEDSD7elVOnWzBJ4ErVqr2tZM2yDfisQy6wU/MegAGsl+JU+2UdF+N+vLnspgcsFRuqetjTvtUlYczQ4hv1M6WG15yvaOGp2/7CiknTjA884fg5yKFvfPga5RhyrL1WdBghAfKex9qNO6jDM0npDoONkoECeKUuSBLyhihtb+YL3nU+0jTSc7FL09FokZBNwuD758z49qer0Vy7d4m3aJ96KiK8Ev6ZVo6WUFTHB89oPUNSZv8kI+suKOifGzqG+vmpQbdgYNN3tCfpMRoFYj+6WpWqZKG5txFYPSozAHHlTIGkeLZTHYLWQ7p3clXR30hc7XF/rGUjyA6BhG+sLF+/euXwF+uFbA/DVp06WZB+nYLtbe79Hr1/LS/TzEZ8tRmT+F2MTh0Lsdati/hqfjH7pXspgCAdBZMbqPMQScXo7Zwk+gVPgsVDsUDkbadcJdZHCeIgUGjMZOmhluhMfXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39840400004)(366004)(136003)(376002)(346002)(71200400001)(52536014)(66476007)(66556008)(478600001)(8676002)(7696005)(316002)(86362001)(66446008)(9686003)(66946007)(5660300002)(76116006)(64756008)(6506007)(2906002)(54906003)(110136005)(53546011)(186003)(55016002)(26005)(33656002)(4326008)(83380400001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?tJCJKI4m5lwLk7MYZzanvVm2VybEH+W7vEtu90e4Bvi4/cq4v98jJNxCpJEo?=
 =?us-ascii?Q?y1OjcR2gfY9wWoAg+OYfyG86Tujlw4kwJRjit8Rk49Gn+s2PngmxM0J4gxn2?=
 =?us-ascii?Q?nvoWG781rI63EfO6CZqFA/fHlGcJngTpurXpuz06OWUTGsy7bhZmN4IUSnT5?=
 =?us-ascii?Q?zHlUw1t0Dz05jY9cP+fc7RmEmLyB3FpJ6z0t9GSbMibYBHUQiplA3D2lTfAl?=
 =?us-ascii?Q?vKeibJjR/csook8/1PASx094abqXVjQHlh7/qki9IR9j7XYMyin+YUpHo/+V?=
 =?us-ascii?Q?szm1peRGLcfxNBcqs1jR+SuomOMVViZnau4sIf4+7E4K/vY9nz30xnfL3j5t?=
 =?us-ascii?Q?VY1lEWGSO2CecbKKYE0VmLmnI0+vSyyYv3rNkvhpesyUZJ5cWffoNZpn90B+?=
 =?us-ascii?Q?D8LCgdczaft8A5tDfG0hjL7P35hIznRlbrMm0+zqsCnzpEcTaSvuhL9IrmGX?=
 =?us-ascii?Q?fez6oSP7CKXpzwZxIOOU1bvz9VhHDU4QW6r7R23mon4orRo/Bg6GMNLVgBvG?=
 =?us-ascii?Q?olKyTt1nhorHQkEEpvT/KVYH31BAdA/hhVx5tPlW4P2GKaDo4mp4Xfgo94es?=
 =?us-ascii?Q?bYeIf76af36wI7+U0i5Dg/Tch2yFYJkgltx2gUeWvPPma6ljCq1UyTt6gMhY?=
 =?us-ascii?Q?GOQSI5pNWNwnkg1fTD0gzaJCSRftC1hqIvUbn1SowWNqkKMRbpwnCl+uCKHJ?=
 =?us-ascii?Q?v4/0VOOZ8FV0BJc7r6/5hyaoH/vCjqcRMLZRwJso8niura0EbPlf4iTdlhS/?=
 =?us-ascii?Q?msA7NDHj7PnrK3eHbvlJqgPJWHWJa/IMww/Ii1fsDYTiJxHaPNA9lMaU+oLa?=
 =?us-ascii?Q?8ORaRrKaQ4Iv8tNxHmiuEdDmMSiPt6D0/uTqq45q6eXTj6m39OJYE2BnikuP?=
 =?us-ascii?Q?tei9JL6AvOxkNB/OPHCW/JAiKDyOzGPJCymeY4z4EvlNgVKy6LPjdtAVeCl7?=
 =?us-ascii?Q?aE2n8PsPvfD6F9s23o7aCijhs23OQhoqoFjDFR52RxuI4lu5w7Sk3NRhfPTC?=
 =?us-ascii?Q?o4IoRUjuJNptTKOPEPvMlFeB3z4tTgFpXOVozgv71m0dlajAvnVnQRufuJvo?=
 =?us-ascii?Q?tmTfqMoz?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eeafc87-5baf-4b13-ddec-08d8c745d778
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 06:43:25.2859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TzpqvIheN1vvUPR4p0ZqUgcyob1vMcUTNgn1v2FHO5k5sB3CXXffDDWek7vmt1wZv5pChZJqVUxyeqdzd03J/4TauhZe654EiQ/ouhZdzFE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR05MB6796
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l6pve-0000ht-0n
Subject: Re: [tipc-discussion] [net-next 05/16] tipc: simplify call
 signatures for publication creation
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

A minor comment for this patch (Marked with [Tung]).

Best regards,
Tung Nguyen

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Wednesday, December 9, 2020 1:50 AM
To: tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: [net-next 05/16] tipc: simplify call signatures for publication creation

From: Jon Maloy <jmaloy@redhat.com>

We simplify the call signatures for tipc_nametbl_insert_publ() and
tipc_publ_create() so that fewer parameters are passed around.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_distr.c | 23 ++++++++--------
 net/tipc/name_table.c | 61 +++++++++++++++++++------------------------
 net/tipc/name_table.h | 10 ++++---
 net/tipc/socket.c     |  8 ++----
 4 files changed, 47 insertions(+), 55 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 721d2fca3d6f..df42fc2b4536 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -293,30 +293,31 @@ static bool tipc_update_nametbl(struct net *net, struct distr_item *i,
 				u32 node, u32 dtype)
 {
 	struct publication *p = NULL;
-	u32 lower = ntohl(i->lower);
-	u32 upper = ntohl(i->upper);
-	u32 type = ntohl(i->type);
-	u32 port = ntohl(i->port);
+	struct tipc_socket_addr sk;
+	struct tipc_uaddr ua;
 	u32 key = ntohl(i->key);
 
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_CLUSTER_SCOPE,
+		   ntohl(i->type), ntohl(i->lower), ntohl(i->upper));
+	sk.ref = ntohl(i->port);
+	sk.node = node;
+
 	if (dtype == PUBLICATION) {
-		p = tipc_nametbl_insert_publ(net, type, lower, upper,
-					     TIPC_CLUSTER_SCOPE, node,
-					     port, key);
+		p = tipc_nametbl_insert_publ(net, &ua, &sk, key);
 		if (p) {
 			tipc_node_subscribe(net, &p->binding_node, node);
 			return true;
 		}
 	} else if (dtype == WITHDRAWAL) {
-		p = tipc_nametbl_remove_publ(net, type, lower,
-					     upper, node, key);
+		p = tipc_nametbl_remove_publ(net, ua.sr.type, ua.sr.lower,
+					     ua.sr.upper, node, key);
 		if (p) {
 			tipc_node_unsubscribe(net, &p->binding_node, node);
 			kfree_rcu(p, rcu);
 			return true;
 		}
-		pr_warn_ratelimited("Failed to remove binding %u,%u from %x\n",
-				    type, lower, node);
+		pr_warn_ratelimited("Failed to remove binding %u,%u from %u\n",
+				    ua.sr.type, ua.sr.lower, node);
 	} else {
 		pr_warn("Unrecognized name table message received\n");
 	}
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index d951e9345122..ba96d5fc57f3 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -222,36 +222,30 @@ static int hash(int x)
 
 /**
  * tipc_publ_create - create a publication structure
- * @type: name sequence type
- * @lower: name sequence lower bound
- * @upper: name sequence upper bound
- * @scope: publication scope
- * @node: network address of publishing socket
- * @port: publishing port
+ * @ua: the service range the user is binding to
+ * @sk: the address of the socket thatis bound
[Tung]: typo. thatis/ that is
  * @key: publication key
  */
-static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
-					    u32 scope, u32 node, u32 port,
+static struct publication *tipc_publ_create(struct tipc_uaddr *ua,
+					    struct tipc_socket_addr *sk,
 					    u32 key)
 {
-	struct publication *publ = kzalloc(sizeof(*publ), GFP_ATOMIC);
+	struct publication *p = kzalloc(sizeof(*p), GFP_ATOMIC);
 
-	if (!publ)
+	if (!p)
 		return NULL;
 
-	publ->sr.type = type;
-	publ->sr.lower = lower;
-	publ->sr.upper = upper;
-	publ->scope = scope;
-	publ->sk.node = node;
-	publ->sk.ref = port;
-	publ->key = key;
-	INIT_LIST_HEAD(&publ->binding_sock);
-	INIT_LIST_HEAD(&publ->binding_node);
-	INIT_LIST_HEAD(&publ->local_publ);
-	INIT_LIST_HEAD(&publ->all_publ);
-	INIT_LIST_HEAD(&publ->list);
-	return publ;
+	p->sr = ua->sr;
+	p->sk = *sk;
+	p->addrtype = ua->addrtype;
+	p->scope = ua->scope;
+	p->key = key;
+	INIT_LIST_HEAD(&p->binding_sock);
+	INIT_LIST_HEAD(&p->binding_node);
+	INIT_LIST_HEAD(&p->local_publ);
+	INIT_LIST_HEAD(&p->all_publ);
+	INIT_LIST_HEAD(&p->list);
+	return p;
 }
 
 /**
@@ -468,23 +462,24 @@ static struct tipc_service *tipc_service_find(struct net *net, u32 type)
 	return NULL;
 };
 
-struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper,
-					     u32 scope, u32 node,
-					     u32 port, u32 key)
+struct publication *tipc_nametbl_insert_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_service *sc;
 	struct publication *p;
+	u32 type = ua->sr.type;
 	bool res = false;
 
-	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
+	p = tipc_publ_create(ua, sk, key);
 	if (!p)
 		return NULL;
 
-	if (scope > TIPC_NODE_SCOPE || lower > upper) {
-		pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
-			 type, lower, upper, scope);
+	if (ua->sr.lower > ua->sr.upper) {
+		pr_debug("Failed to bind illegal {%u,%u,%u} from node %u\n",
+			 type, ua->sr.lower, ua->sr.upper, sk->node);
 		return NULL;
 	}
 	sc = tipc_service_find(net, type);
@@ -758,9 +753,7 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 		goto exit;
 	}
 
-	p = tipc_nametbl_insert_publ(net, ua->sr.type, ua->sr.lower,
-				     ua->sr.upper, ua->scope,
-				     sk->node, sk->ref, key);
+	p = tipc_nametbl_insert_publ(net, ua, sk, key);
 	if (p) {
 		nt->local_publ_count++;
 		skb = tipc_named_publish(net, p);
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 5e969e060509..e12b9eb2c7f1 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -75,7 +75,8 @@ struct tipc_uaddr;
 struct publication {
 	struct tipc_service_range sr;
 	struct tipc_socket_addr sk;
-	u32 scope;
+	u16 addrtype;
+	u16 scope;
 	u32 key;
 	u32 id;
 	struct list_head binding_node;
@@ -125,9 +126,10 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 					 struct tipc_socket_addr *sk, u32 key);
 int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower, u32 upper,
 			  u32 key);
-struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper, u32 scope,
-					     u32 node, u32 ref, u32 key);
+struct publication *tipc_nametbl_insert_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key);
 struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
 					     u32 lower, u32 upper,
 					     u32 node, u32 key);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 598c8611b75f..0a92ebdd096d 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -3088,12 +3088,8 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
 	msg_set_nametype(hdr, mreq->type);
 	msg_set_dest_droppable(hdr, true);
 	tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
-
-	ua.sr.type = mreq->type;
-	ua.sr.lower = mreq->instance;
-	ua.sr.upper = ua.sr.lower;
-	ua.scope = mreq->scope;
-	ua.addrtype = TIPC_SERVICE_RANGE;
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, mreq->scope,
+		   mreq->type, mreq->instance, mreq->instance);
 	rc = tipc_sk_publish(tsk, &ua);
 	if (rc) {
 		tipc_group_delete(net, grp);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
