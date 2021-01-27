Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFD83056F1
	for <lists+tipc-discussion@lfdr.de>; Wed, 27 Jan 2021 10:30:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l4h99-0007fD-Du; Wed, 27 Jan 2021 09:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1l4h97-0007eC-6u
 for tipc-discussion@lists.sourceforge.net; Wed, 27 Jan 2021 09:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aApTAKDPUoZasuxF3h2m4m750R70gUutMB346p3Kdso=; b=IZUH05ru4hcN1pHf8gyl3b3Q6e
 UDxhaY85lFfV4nDCNYmEU2cnF30zHf3lepkEmIIN1+JKEqRF8ljKv1nipxELeULAX2VFGfhQGysD9
 8R91/1rM5pqcBvyIUh+zivf/NmkmviafW45aAMKfKqMuJJU2sla/cAYmdDnGsYsxeSPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aApTAKDPUoZasuxF3h2m4m750R70gUutMB346p3Kdso=; b=gjgZP1+UydJ1l+nddlFU50nZMN
 0WyRDrJuj4u399KxdwdAaLT1s8fE61TXLsgGf+32EHalv36VaFwNi3Ex+SIHOwfxijoWs7/f9J6dE
 QkuLyz93647Qq+QxzMRJhuYXNz6OHwC1VoAxn5Lx96pl9iMWdwNDtNcfYLtTtzYS3M4M=;
Received: from mail-eopbgr60104.outbound.protection.outlook.com
 ([40.107.6.104] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4h8n-00DG9u-23
 for tipc-discussion@lists.sourceforge.net; Wed, 27 Jan 2021 09:29:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4LHw7A9WZaIZf1ISM94GDCvQ9lBrQxMYR/fz0ltmplD1usFelAIh5eWrVJdmhbvun0ZwmXxVFIcpRIOyXEcenK7ao5rI+5THYPj1wEJxrm6HN9YtS8I308ePv3h690ldDFbawfA5hKdC7nplW64ON28Uyh+dm4ljQky57HnAUfm4JaNvi/xxeNIkQaTasNJiEpn7GCeizZHqVVmGDCmf6L7aW0b8QhICgM2B7Eeki64L71jv0ACb3KPEFjnENSxdGqHWI4KHQivxuefe11liMjuBWqLcuDBHqLn+P9GfKMYuenKJFTBtu19UPI9+qWKcmCvLmEAz8DcTKvIUHvy4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aApTAKDPUoZasuxF3h2m4m750R70gUutMB346p3Kdso=;
 b=Ca+b4N8PEsdPMUmAhuPldcqx/q3pJTQGt46ZM07Hj2iw+Dw2ztDG7G2vwSYhaujcbvCU9iWM0wFQ8W23SPvQgS8fo9voo4xTvGYcz48+8TA5zsw65tAfSdA8fTihe8SJK21jxZoakp175kLAU0/tsIGXkuUvmGIDfnaUCfh5Bbc2d1GyHJsX946s2j6Ph1tl9t6PLvog+lOX2DajT8zggE17t/1fRPJA4yoECjHqUe9HOkQZlpe9m202o7fshXToU03Nc9/uzTXCShu6Cct8/UyJ9oLqza6pF9lfWBgBkzZGet48F+3QooDPStAlOwRSj+cAHbowJqspCTGg+dlfgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aApTAKDPUoZasuxF3h2m4m750R70gUutMB346p3Kdso=;
 b=a0xlWVvGVXbz2rl/iMDoHgpDOVi089J0NBPNrfdLdC1dXPjocIGm/NFxw8T5eYKSNidgW1qyZG01agQLzeE3iM3wOlxX/STK/9y+NGA5jE49Nxiocn7CzM3ueFFn24TXtrtzf+Q06FWGKPKDR2pNZM/+3OQR8a92sPXLz57BO5c=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR0501MB2854.eurprd05.prod.outlook.com (2603:10a6:4:83::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.12; Wed, 27 Jan 2021 08:56:23 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056%6]) with mapi id 15.20.3805.016; Wed, 27 Jan 2021
 08:56:23 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 02/16] tipc: move creation of publication item one
 level up in call chain
Thread-Index: AQHWzZMLst5vZ5hZW06aaknpk43yIqo7cAEw
Date: Wed, 27 Jan 2021 08:56:23 +0000
Message-ID: <DB7PR05MB4315114816D8B2CDCBB6E90688BB0@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-3-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-3-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90703afa-31d3-406f-a03a-08d8c2a16c2b
x-ms-traffictypediagnostic: DB6PR0501MB2854:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0501MB28541B98A51E43AB111699FF88BB0@DB6PR0501MB2854.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:393;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nINh6QB3BnDz3XeJ1ZLcSgtzBs/hJqH+0WKoAjgqlotgD9n3RicGX2A1ygZW7/flLZzP9OFvoMFVwez6/2IgvZwvXJxQpDqoLR3oWXhVIC9iT1xosg1+HG+QdsOH2zKM1QGp6H0YrTXNnM9Rd7zrzOuWxowoBdzQ7m67j6U9cjv0Tm2mHHF8E4x+DDEbGQIs2z4VEDW8sr9bDcA8mt8DNyFEdVZRnzFLK4vp2hI0p+IKUWN8e+cCs9O4CgvUsUvhveZrcAxh9VJW9ild6Lewc64nP2WpcLTJBu9Sa7qMjH81An60xgEw/PZta69a0dFpUBwdEP0yDenZtZbD32niChVKNQkt8R/0f9h7wUkqUUThcoxGT8IfEIBjFqOE8JkaO3BrJ/Id4zdyW/6Y/hZRaggAYj0rtJ13DzLTDw3X1gTj5WT6kteaxZxuJaRyaJvMGlRm0BeVlx8m1vuOkqyo0d6d0LaE9TBthmZXSVlKKB8GYm5+rEKVvtpOzBpyc1b/YOy0Z1cmc/os/NZkr+a3mQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39840400004)(396003)(136003)(376002)(33656002)(7696005)(66556008)(66946007)(54906003)(71200400001)(2906002)(6506007)(110136005)(8676002)(9686003)(52536014)(66446008)(316002)(4326008)(66476007)(76116006)(64756008)(55016002)(26005)(478600001)(5660300002)(8936002)(83380400001)(86362001)(186003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7MTJiJ1K9CW1OL5AT81jfMzLFj4QxjLY+49phZXN/PcK3kh6UhNe39tADikF?=
 =?us-ascii?Q?yqHkCPE0yvMcFTrYTzjmRnWiUGq6QVKeIcIKp4ScwlzYBtcLFUI6tPYVPJ8o?=
 =?us-ascii?Q?WKbaJ/tjSnNdivkvpbE1y8G5QBvNsuJFgDbH3VxxYN7AFm4SKyxDj+OBR4ZV?=
 =?us-ascii?Q?wHoR2A3ss2wBztEAhT5heP6FnAOjLcOeMYzcHzDa1krNP5W9GydSmypENW3P?=
 =?us-ascii?Q?1Ez+NOiw+1FAaspkzUGH6YW+YcT8tWEigd/Insnph+9UjN45mhcnF5q4qP3m?=
 =?us-ascii?Q?E9YJ0nYB4UwHHCYifjH0rk2ZzDTDeDWOsvZoKdc65eQ9XtlRca2+WcSv5xeO?=
 =?us-ascii?Q?vvQC3Axw1ospCvwzcAqBgYtdrLmRorNOiVXWRgOLNLMRAd5crRCCUbEXXVN1?=
 =?us-ascii?Q?UWiZsP6K82twIlqQe6kJGa4HueMo52t53+L3JyN0xNDhZCkECAkzJh03MJge?=
 =?us-ascii?Q?ey+9bYQUmMOPKqOT0ScLAoMP7pziXVo6mjHvxv5ovcHuI0zEPuOdISU5hAdt?=
 =?us-ascii?Q?ETHVOcYRboW7/JM93pFR5QR54qy0EGLHgyvK8XfWs5Grl+7pinrDRp58Km58?=
 =?us-ascii?Q?NpGDJjHO02awpqp1zmJBaL/MImfoFaWfNsDf5f0YSsMYFERZLvdZs8V9XI8H?=
 =?us-ascii?Q?e9ruks59FnWzpnj+p3KDDH7Kdu9Ll1Xvzv4Tp6S4l0GdLF+Xs+RuRN+W+UD2?=
 =?us-ascii?Q?GkmC6qIFFiqhJjGGA4ShMJ4jfbYLaG4+BjwPwklneU65tTci8h5/AIfMMWQp?=
 =?us-ascii?Q?hRLSGIJdLfDvhxpMnQxVOIE8ce8TXiZDWKfW2QLGcRi58xMKEi2EjkDE0+Az?=
 =?us-ascii?Q?wsgUIOePUa9Dvx1FuWX6IWN4IZ5utl5FrFtYWGacAQEmOTS8CVzZ+D93bglg?=
 =?us-ascii?Q?lfc925eBIEGHxOEY5eP0DohKZlAXaFy4b9zp8N/9QRL2mwNZDO26CoBLzX3A?=
 =?us-ascii?Q?H3CDOmnsktIWa9Jz21iZ0El6ctVuwO+aAX/RwGTUDisMu5mpys0+KnUmhBxQ?=
 =?us-ascii?Q?+KgrqGg7aeGq2AukRIgaOfthpjodGK0sNoSLFATEMltEaoBSS/o17zPryWFr?=
 =?us-ascii?Q?7tOS4jwK?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90703afa-31d3-406f-a03a-08d8c2a16c2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 08:56:23.1447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xrku1bIiD+YIj/GrCqhQTyVioiooWipRlHTxlngXf85JaB6hTyvCRUl8kjC3H3129ikfGlPWS2mOg0RzBGC1tX4Io88+SGyr2MXaMR8GoBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2854
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.104 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.104 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l4h8n-00DG9u-23
Subject: Re: [tipc-discussion] [net-next 02/16] tipc: move creation of
 publication item one level up in call chain
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

Just one minor comment for this patch (marked with [Tung]").

Best regards,
Tung Nguyen

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Wednesday, December 9, 2020 1:50 AM
To: tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: [net-next 02/16] tipc: move creation of publication item one level up in call chain

From: Jon Maloy <jmaloy@redhat.com>

We instantiante struct publication in tipc_nametbl_insert_publ()
[Tung]: typo. instantiante/Instantiate.
instead of as currently in tipc_service_insert_publ(). This has the
advantage that we can pass a pointer to the publication struct to
the next call levels, instead of the numerous individual parameters
we pass on now. It also gives us a location to keep the contents of
the additional fields we will introduce in a later commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_table.c | 63 ++++++++++++++++++++++---------------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index c37a4a9c87ca..68e269b49780 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -327,49 +327,44 @@ static struct service_range *tipc_service_create_range(struct tipc_service *sc,
 	return sr;
 }
 
-static struct publication *tipc_service_insert_publ(struct net *net,
-						    struct tipc_service *sc,
-						    u32 type, u32 lower,
-						    u32 upper, u32 scope,
-						    u32 node, u32 port,
-						    u32 key)
+static bool tipc_service_insert_publ(struct net *net,
+				     struct tipc_service *sc,
+				     struct publication *p)
 {
 	struct tipc_subscription *sub, *tmp;
 	struct service_range *sr;
-	struct publication *p;
+	struct publication *_p;
+	u32 node = p->sk.node;
 	bool first = false;
 
-	sr = tipc_service_create_range(sc, lower, upper);
+	sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
 	if (!sr)
 		goto  err;
 
 	first = list_empty(&sr->all_publ);
 
 	/* Return if the publication already exists */
-	list_for_each_entry(p, &sr->all_publ, all_publ) {
-		if (p->key == key && (!p->sk.node || p->sk.node == node))
-			return NULL;
+	list_for_each_entry(_p, &sr->all_publ, all_publ) {
+		if (_p->key == p->key && (!_p->sk.node || _p->sk.node == node))
+			return false;
 	}
 
-	/* Create and insert publication */
-	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
-	if (!p)
-		goto err;
-	/* Suppose there shouldn't be a huge gap btw publs i.e. >INT_MAX */
-	p->id = sc->publ_cnt++;
-	if (in_own_node(net, node))
+	if (in_own_node(net, p->sk.node))
 		list_add(&p->local_publ, &sr->local_publ);
 	list_add(&p->all_publ, &sr->all_publ);
+	p->id = sc->publ_cnt++;
 
 	/* Any subscriptions waiting for notification?  */
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper, TIPC_PUBLISHED,
-					p->sk.ref, p->sk.node, p->scope, first);
+		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
+					TIPC_PUBLISHED, p->sk.ref, p->sk.node,
+					p->scope, first);
 	}
-	return p;
+	return true;
 err:
-	pr_warn("Failed to bind to %u,%u,%u, no memory\n", type, lower, upper);
-	return NULL;
+	pr_warn("Failed to bind to %u,%u,%u, no memory\n",
+		p->sr.type, p->sr.lower, p->sr.upper);
+	return false;
 }
 
 /**
@@ -481,6 +476,11 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_service *sc;
 	struct publication *p;
+	bool res = false;
+
+	p = tipc_publ_create(type, lower, upper, scope, node, port, key);
+	if (!p)
+		return NULL;
 
 	if (scope > TIPC_NODE_SCOPE || lower > upper) {
 		pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
@@ -490,14 +490,15 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
 	sc = tipc_service_find(net, type);
 	if (!sc)
 		sc = tipc_service_create(type, &nt->services[hash(type)]);
-	if (!sc)
-		return NULL;
-
-	spin_lock_bh(&sc->lock);
-	p = tipc_service_insert_publ(net, sc, type, lower, upper,
-				     scope, node, port, key);
-	spin_unlock_bh(&sc->lock);
-	return p;
+	if (sc) {
+		spin_lock_bh(&sc->lock);
+		res = tipc_service_insert_publ(net, sc, p);
+		spin_unlock_bh(&sc->lock);
+	}
+	if (res)
+		return p;
+	kfree(p);
+	return NULL;
 }
 
 struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
