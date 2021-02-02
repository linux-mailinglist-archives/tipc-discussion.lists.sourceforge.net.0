Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F8830B960
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Feb 2021 09:17:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l6qsN-0004bw-Gy; Tue, 02 Feb 2021 08:17:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1l6qsK-0004bo-Vy
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Feb 2021 08:17:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rPpDvwYWMy3fDJ2uaPawoU4kcp9m5Ifaqa09W1uLZsk=; b=FO1LceatpTa5SHHAA53tLQalTl
 Wz7ciGv3j9DPF2ZX47K5ixhYkfldz9NDTONgPceiX7XIB8IUMQRB3zm9oZq83Ihj/OMwLTjpMOf+1
 EuzYXJKNEynjkLL29m+1/B+3BMSjXHKIls4IC8huh8/LzxZmZkrlW+uu37ruPWCWp5Bs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rPpDvwYWMy3fDJ2uaPawoU4kcp9m5Ifaqa09W1uLZsk=; b=J/ufoMaRsGC2ZMy0ooy+1cC7Yr
 m4M0GHjulDTUmfTDVNhtX+f6jmsQDM+Z/OUA5a2JS66Bf+k2eislkpGZsz8NdJbupXPkbXcEHabyw
 UvFgLOieG6Me6ufJW0Gm7Izqji4405kzw8C7C0g3u10U6svvl1bpU0MvzeO8BliHQkIo=;
Received: from mail-vi1eur05on2104.outbound.protection.outlook.com
 ([40.107.21.104] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l6qs3-00DvwB-Mo
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Feb 2021 08:17:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lk/Wd0AgZxCZC/giM7o/9Ob0AvxBl/rC8FZmE1jn4Fh3DpZtlkkXnnGYJwQ9Tgf08uN4oWwVYozijpfHV1kFqftFVRlDKDPh4NF+SG/5J7WdPw18T24q5qZJiN13cI1/ZC8oYpGN7YrPxRfxDJ7iKX1QGBxbwrdVKmcZyQXyFleb/XVy5LFByeoaN81Ez4r4TgdqI5+/ut3jsj92OPbHnNShsdxrfqRM3h6aEupk/jH4ucJhIrDlhFfht6jla1AEYWRi22fZyST/CbGyMbwgJ8GwJtTmGSKgAOEWIgr7J9WgfkEYD0zPBWUooRsGZPRIkwcE5NILn6K72R36d0EpdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPpDvwYWMy3fDJ2uaPawoU4kcp9m5Ifaqa09W1uLZsk=;
 b=NaAsjcKaLYe4LzYbvEz7LuRygBwYlPCf8NKzKk5r6ju4dyGHA06gCskl0ha4l7j/a/h3LQA4jU7EdsfxL3lQ3ZSWDa8DyZea76YJYCXuW6lAAgse6+Li49TZp2G+2wFJUD9S0ZzErmu+/jN6pGC+7M7II1Ktk7g1/YP6trNgyD1EvX+pgCKgeXM+nJxqslIB3o3fVyCtJQlavtyg2wjfCys2dQQsEsot7FSEeT1k435mIp96Kpvj8148dQLx6XnlS4YxoU+kPPKb29ha0LfM9ggDWqFeW/qaAJo3W/b9F4eoAj+DIIAIChh7CN4YOegLwq1VfF0SAWqOMq1Nngj4+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rPpDvwYWMy3fDJ2uaPawoU4kcp9m5Ifaqa09W1uLZsk=;
 b=TToADEWtGnghlyXnCQc30Ufb4NAj4zMsJ7/14WxUC4LfupzQI+Og2rFJNZdq9DZ9JrYy/HHZLik5NHP//SGgo/i0M/GGj45+Rgn80MFwUGl4npSTlQ9o/RO6yUNYiRdjALeHs+16So7qAHbw9ER2Y3Jxt6dKUa0ReWpn8zlJASI=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR05MB3270.eurprd05.prod.outlook.com (2603:10a6:6:1b::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.22; Tue, 2 Feb 2021 07:43:43 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056%6]) with mapi id 15.20.3805.025; Tue, 2 Feb 2021
 07:43:43 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 06/16] tipc: simplify signature of
 tipc_nametbl_withdraw() functions
Thread-Index: AQHWzZMT4JeZuJurN0Wr9V8GAGEPGqpE0CSg
Date: Tue, 2 Feb 2021 07:43:43 +0000
Message-ID: <DB7PR05MB431511DF41EE3D16ED537D1A88B59@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-7-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-7-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e7aa426-77ea-4587-a250-08d8c74e43f8
x-ms-traffictypediagnostic: DB6PR05MB3270:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR05MB327001FF35232DE9981E08EB88B59@DB6PR05MB3270.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:101;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m9Zuds02TGYm5rGNj9YbtlpaJ2KQMmwKcRSGapnWhbln/VN5uWwrLstzJdbYhavV64Jr106YT05eAStPr98toXtqGUgmOIEGULdCPi85x93K5vGQrrWqlL7pM5T8qYrqtOErHJ6SMHgpqgEdsh98y1yJnsUVT2sF+PEXbGgrXP1Ryu36Ohvznf2EbE7oXhosMy+UT3T/iY/049biqUM5K5PZ1P/7xEqbbwObKs+G3nF0GANJ9jYddXKbJkbAiPjoMtSK+meDZfU1Wp17QE1S3knEUiOMCL17V06v0klMZXtWDFtz/xWfM3NuiRJB7hmve4Q7PfShkbVr/MK+RAvwiSNi0kM/yheD2NfrzhS4D/ajG63VfnxUwCU1o6ywbu4suWVJroFxiWpcahMLC1qG/htSgBkoT2BAMW6UR3mtyzYAD/5IHCMauwjct1Gd+w2OwF6ginxuYYw1swkLtbOBo7sag7DRKuezyDUzwPo5F1veRO02L3Ghv3rDzfD8PuNmEviYXSgfu9lwh3oy1ro1bQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(396003)(39840400004)(366004)(346002)(66446008)(30864003)(110136005)(4326008)(64756008)(2906002)(76116006)(66556008)(478600001)(83380400001)(66476007)(53546011)(8676002)(26005)(9686003)(55016002)(86362001)(54906003)(7696005)(8936002)(5660300002)(66946007)(52536014)(6506007)(186003)(71200400001)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?XpOGkS6HXfa3EiW9gEuRt7qXcxyHX/5uQE7YIzWJwGy3iTrBke0RBNNqyFTW?=
 =?us-ascii?Q?C+k/tvz5g9Y9wWR4T2s9/OoNptM6ml8Sqd7pfBZC+51+S8WdRktC4/HCwRX0?=
 =?us-ascii?Q?cWPnaS+OHj108IpsUx5Qc2GZMrwtO7Mk4rOPeA+BtlzFfFDMwtMv95tgBcPL?=
 =?us-ascii?Q?97x7zVCHPKgDYYgeO0bxH9gX1w2bmsAZbh8QLptmZgyX/tT9gOtGcyflRQTN?=
 =?us-ascii?Q?z/rsYdUAmsfUUQGpLtnxPA49jbtn9SyhX5ml1LY53Yj5FlKxeKWcvnyiKWkZ?=
 =?us-ascii?Q?3uOXeFxN85xXFyo/4vA0bs+4/v4fZ8KktzowgEbm5xMF0+uFD8hiu2LsL1NG?=
 =?us-ascii?Q?91qbDvjcwjUoNu0XgAXUwO8ecZ/fu1XnP/UBC1ypdUhr4EJ+vM3jARV4zZeI?=
 =?us-ascii?Q?Mm5DbjXQOa6JYzc4syK2xp+lF/Ff2V3L7VuT08BBbJ2UbCtqJT1gNc6McLLE?=
 =?us-ascii?Q?caQhdD8ixWWcyzab5a3wyMTKzeGX5xbnpaSAmWlFXXAean8geIT8il6EZqqY?=
 =?us-ascii?Q?DS3Ii9+r9FPqKJvcT52j8dkE+Qgs/YbqvKX/vZfgmZyEgrHqAEx2WAYEszhu?=
 =?us-ascii?Q?J4oO6pOHnDa3loq81UIvCCxaL+zxOhHDaXml+AAuJxbRlzvwWEozpaOsQtA5?=
 =?us-ascii?Q?uBGxou+oPhuaMwlYnHcAjymKURFYBu6PNNYOZ4sK8RddoAFBcbF/4rsUguIS?=
 =?us-ascii?Q?u1wV7VZA1Iad6opLewx716dh2mtKfzz0jkXa6CZjgw3ILjOJ/rW6MKyuaLG5?=
 =?us-ascii?Q?6KXquV/93aU9z5GpcGf+sANeDqFXVVFRWkBEBRqvZh54lPkboOjb/PRAiNsn?=
 =?us-ascii?Q?kkXW+kNrogPmPEWTRPCYGJXL/jzoE58PMlX6pU5Lp3Nqz4NdTW8Ndg3PV3W5?=
 =?us-ascii?Q?P0+zbypNSNluHIP6BzHskXeMb5O7ORi7ylrYXv8BdopiNEfzc1nzEnvCbYiP?=
 =?us-ascii?Q?JRX5ti24SJeQPAW3zw8AcDLGheldyPJMSdBdH3OfRWouHFmG7M0Y/MybYAwB?=
 =?us-ascii?Q?8R+9ufV61S2rU+y26fuCuwiN9EsHLdnD0BzRRlzNE/S0b24a+yC6FfNpKcXt?=
 =?us-ascii?Q?CvqZmHmh?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e7aa426-77ea-4587-a250-08d8c74e43f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 07:43:43.3100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FXRVZ4Zrv7NxVeAfVMXnKuanEEAuwcZ0fmfBFtzcU+Atxa4pgR5moDD45DiGEceK8qTaqFlyT09TvuM9R3vr7pegeYAgYsQ/WFRy73JsAHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR05MB3270
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.104 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.104 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l6qs3-00DvwB-Mo
Subject: Re: [tipc-discussion] [net-next 06/16] tipc: simplify signature of
 tipc_nametbl_withdraw() functions
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

Some minor comments for this patch (Marked with [Tung]).

Best regards,
Tung Nguyen

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Wednesday, December 9, 2020 1:50 AM
To: tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: [net-next 06/16] tipc: simplify signature of tipc_nametbl_withdraw() functions

From: Jon Maloy <jmaloy@redhat.com>

Following the priniciples of the preceding commits, we reduce
[Tung]: typo. priniciples/principles
the number of parameters passed along in tipc_sk_withdraw(),
tipc_nametbl_withdraw() and associated functions.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_distr.c | 11 ++++----
 net/tipc/name_table.c | 54 +++++++++++++++++++-----------------
 net/tipc/name_table.h | 11 ++++----
 net/tipc/node.c       |  3 +-
 net/tipc/socket.c     | 64 +++++++++++++++++++++----------------------
 5 files changed, 74 insertions(+), 69 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index df42fc2b4536..fe5f39792323 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -244,17 +244,19 @@ static void tipc_publ_purge(struct net *net, struct publication *p, u32 addr)
 {
 	struct tipc_net *tn = tipc_net(net);
 	struct publication *_p;
+	struct tipc_uaddr ua;
 
+	tipc_uaddr(&ua, p->addrtype, p->scope, p->sr.type,
+		   p->sr.lower, p->sr.upper);
 	spin_lock_bh(&tn->nametbl_lock);
-	_p = tipc_nametbl_remove_publ(net, p->sr.type, p->sr.lower,
-				      p->sr.upper, p->sk.node, p->key);
+	_p = tipc_nametbl_remove_publ(net, &ua, &p->sk, p->key);
 	if (_p)
 		tipc_node_unsubscribe(net, &_p->binding_node, addr);
 	spin_unlock_bh(&tn->nametbl_lock);
 
 	if (_p != p) {
 		pr_err("Unable to remove publication from failed node\n"
-		       " (type=%u, lower=%u, node=0x%x, port=%u, key=%u)\n",
+		       " (type=%u, lower=%u, node=%u, port=%u, key=%u)\n",
 		       p->sr.type, p->sr.lower, p->sk.node, p->sk.ref, p->key);
 	}
 
@@ -309,8 +311,7 @@ static bool tipc_update_nametbl(struct net *net, struct distr_item *i,
 			return true;
 		}
 	} else if (dtype == WITHDRAWAL) {
-		p = tipc_nametbl_remove_publ(net, ua.sr.type, ua.sr.lower,
-					     ua.sr.upper, node, key);
+		p = tipc_nametbl_remove_publ(net, &ua, &sk, key);
 		if (p) {
 			tipc_node_unsubscribe(net, &p->binding_node, node);
 			kfree_rcu(p, rcu);
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ba96d5fc57f3..50562d086016 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -367,12 +367,15 @@ static bool tipc_service_insert_publ(struct net *net,
  * @node: target node
  * @key: target publication key
  */
-static struct publication *tipc_service_remove_publ(struct service_range *sr,
-						    u32 node, u32 key)
+static struct publication *tipc_service_remove_publ(struct service_range *r,
+						    struct tipc_uaddr *ua,
+						    struct tipc_socket_addr *sk,
+						    u32 key)
 {
 	struct publication *p;
+	u32 node = sk->node;
 
-	list_for_each_entry(p, &sr->all_publ, all_publ) {
+	list_for_each_entry(p, &r->all_publ, all_publ) {
 		if (p->key != key || (node && node != p->sk.node))
 			continue;
 		list_del(&p->all_publ);
@@ -496,32 +499,35 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
 	return NULL;
 }
 
-struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper,
-					     u32 node, u32 key)
+struct publication *tipc_nametbl_remove_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key)
 {
-	struct tipc_service *sc = tipc_service_find(net, type);
 	struct tipc_subscription *sub, *tmp;
-	struct service_range *sr = NULL;
 	struct publication *p = NULL;
+	struct service_range *sr;
+	struct tipc_service *sc;
 	bool last;
 
+	sc = tipc_service_find(net, ua->sr.type);
 	if (!sc)
 		return NULL;
 
 	spin_lock_bh(&sc->lock);
-	sr = tipc_service_find_range(sc, lower, upper);
+	sr = tipc_service_find_range(sc, ua->sr.lower, ua->sr.upper);
 	if (!sr)
 		goto exit;
-	p = tipc_service_remove_publ(sr, node, key);
+	p = tipc_service_remove_publ(sr, ua, sk, key);
 	if (!p)
 		goto exit;
 
 	/* Notify any waiting subscriptions */
 	last = list_empty(&sr->all_publ);
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, lower, upper, TIPC_WITHDRAWN,
-					p->sk.ref, node, p->scope, last);
+		tipc_sub_report_overlap(sub, ua->sr.lower, ua->sr.upper,
+					TIPC_WITHDRAWN, sk->ref, sk->node,
+					ua->scope, last);
 	}
 
 	/* Remove service range item if this was its last publication */
@@ -771,24 +777,22 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 /**
  * tipc_nametbl_withdraw - withdraw a service binding
  * @net: network namespace
- * @type: service type
- * @lower: service range lower bound
- * @upper: service range upper bound
+ * @ua: service address/range being unbound
+ * @sk: address of socket bveing unbound from
[Tung]: typo. bveing /being
  * @key: target publication key
  */
-int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
-			  u32 upper, u32 key)
+void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
+			   struct tipc_socket_addr *sk, u32 key)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_net *tn = tipc_net(net);
-	u32 self = tipc_own_addr(net);
 	struct sk_buff *skb = NULL;
 	struct publication *p;
 	u32 rc_dests;
 
 	spin_lock_bh(&tn->nametbl_lock);
 
-	p = tipc_nametbl_remove_publ(net, type, lower, upper, self, key);
+	p = tipc_nametbl_remove_publ(net, ua, sk, key);
 	if (p) {
 		nt->local_publ_count--;
 		skb = tipc_named_withdraw(net, p);
@@ -796,16 +800,13 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
 		kfree_rcu(p, rcu);
 	} else {
 		pr_err("Failed to remove local publication {%u,%u,%u}/%u\n",
-		       type, lower, upper, key);
+		       ua->sr.type, ua->sr.lower, ua->sr.upper, key);
 	}
 	rc_dests = nt->rc_dests;
 	spin_unlock_bh(&tn->nametbl_lock);
 
-	if (skb) {
+	if (skb)
 		tipc_node_broadcast(net, skb, rc_dests);
-		return 1;
-	}
-	return 0;
 }
 
 /**
@@ -899,11 +900,14 @@ static void tipc_service_delete(struct net *net, struct tipc_service *sc)
 {
 	struct service_range *sr, *tmpr;
 	struct publication *p, *tmp;
+	struct tipc_uaddr ua;
 
 	spin_lock_bh(&sc->lock);
 	rbtree_postorder_for_each_entry_safe(sr, tmpr, &sc->ranges, tree_node) {
 		list_for_each_entry_safe(p, tmp, &sr->all_publ, all_publ) {
-			tipc_service_remove_publ(sr, p->sk.node, p->key);
+			tipc_uaddr(&ua, p->addrtype, p->scope,
+				   p->sr.type, p->sr.lower, p->sr.upper);
+			tipc_service_remove_publ(sr, &ua, &p->sk, p->key);
 			kfree_rcu(p, rcu);
 		}
 		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index e12b9eb2c7f1..5f48f05b93be 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -124,15 +124,16 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 domain,
 			 bool all);
 struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
 					 struct tipc_socket_addr *sk, u32 key);
-int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower, u32 upper,
-			  u32 key);
+void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
+			   struct tipc_socket_addr *sk, u32 key);
 struct publication *tipc_nametbl_insert_publ(struct net *net,
 					     struct tipc_uaddr *ua,
 					     struct tipc_socket_addr *sk,
 					     u32 key);
-struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
-					     u32 lower, u32 upper,
-					     u32 node, u32 key);
+struct publication *tipc_nametbl_remove_publ(struct net *net,
+					     struct tipc_uaddr *ua,
+					     struct tipc_socket_addr *sk,
+					     u32 key);
 bool tipc_nametbl_subscribe(struct tipc_subscription *s);
 void tipc_nametbl_unsubscribe(struct tipc_subscription *s);
 int tipc_nametbl_init(struct net *net);
diff --git a/net/tipc/node.c b/net/tipc/node.c
index 3a71e26c9509..24f3f5ea968d 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -429,8 +429,7 @@ static void tipc_node_write_unlock(struct tipc_node *n)
 	}
 	if (flags & TIPC_NOTIFY_LINK_DOWN) {
 		tipc_mon_peer_down(net, n->addr, bearer_id);
-		tipc_nametbl_withdraw(net, TIPC_LINK_STATE, n->addr,
-				      n->addr, n->link_id);
+		tipc_nametbl_withdraw(net, &ua, &sk, n->link_id);
 	}
 }
 
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 0a92ebdd096d..5a017a34fb5f 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -152,8 +152,7 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
 		       bool kern);
 static void tipc_sk_timeout(struct timer_list *t);
 static int tipc_sk_publish(struct tipc_sock *tsk, struct tipc_uaddr *ua);
-static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
-			    struct tipc_service_range const *seq);
+static int tipc_sk_withdraw(struct tipc_sock *tsk, struct tipc_uaddr *ua);
 static int tipc_sk_leave(struct tipc_sock *tsk);
 static struct tipc_sock *tipc_sk_lookup(struct net *net, u32 portid);
 static int tipc_sk_insert(struct tipc_sock *tsk);
@@ -643,7 +642,7 @@ static int tipc_release(struct socket *sock)
 	__tipc_shutdown(sock, TIPC_ERR_NO_PORT);
 	sk->sk_shutdown = SHUTDOWN_MASK;
 	tipc_sk_leave(tsk);
-	tipc_sk_withdraw(tsk, 0, NULL);
+	tipc_sk_withdraw(tsk, NULL);
 	__skb_queue_purge(&tsk->mc_method.deferredq);
 	sk_stop_timer(sk, &sk->sk_timer);
 	tipc_sk_remove(tsk);
@@ -681,7 +680,7 @@ static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 	bool unbind = false;
 
 	if (unlikely(!alen))
-		return tipc_sk_withdraw(tsk, 0, NULL);
+		return tipc_sk_withdraw(tsk, NULL);
 
 	if (ua->addrtype == TIPC_SERVICE_ADDR) {
 		ua->addrtype = TIPC_SERVICE_RANGE;
@@ -699,7 +698,7 @@ static int __tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
 		return -EACCES;
 
 	if (unbind)
-		return tipc_sk_withdraw(tsk, ua->scope, &ua->sr);
+		return tipc_sk_withdraw(tsk, ua);
 	return tipc_sk_publish(tsk, ua);
 }
 
@@ -2923,38 +2922,37 @@ static int tipc_sk_publish(struct tipc_sock *tsk, struct tipc_uaddr *ua)
 	return 0;
 }
 
-static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
-			    struct tipc_service_range const *seq)
+static int tipc_sk_withdraw(struct tipc_sock *tsk, struct tipc_uaddr *ua)
 {
 	struct net *net = sock_net(&tsk->sk);
-	struct publication *publ;
-	struct publication *safe;
+	struct publication *safe, *p;
+	struct tipc_uaddr _ua;
 	int rc = -EINVAL;
 
-	if (scope != TIPC_NODE_SCOPE)
-		scope = TIPC_CLUSTER_SCOPE;
-
-	list_for_each_entry_safe(publ, safe, &tsk->publications, binding_sock) {
-		if (seq) {
-			if (publ->scope != scope)
-				continue;
-			if (publ->sr.type != seq->type)
-				continue;
-			if (publ->sr.lower != seq->lower)
-				continue;
-			if (publ->sr.upper != seq->upper)
-				break;
-			tipc_nametbl_withdraw(net, publ->sr.type, publ->sr.lower,
-					      publ->sr.upper, publ->key);
-			rc = 0;
-			break;
+	list_for_each_entry_safe(p, safe, &tsk->publications, binding_sock) {
+		if (!ua) {
+			tipc_uaddr(&_ua, p->addrtype, p->scope,
+				   p->sr.type, p->sr.lower, p->sr.upper);
+			tipc_nametbl_withdraw(net, &_ua, &p->sk, p->key);
+			continue;
 		}
-		tipc_nametbl_withdraw(net, publ->sr.type, publ->sr.lower,
-				      publ->sr.upper, publ->key);
+		/* Unbind specific publication */
+		if (p->scope != ua->scope)
+			continue;
+		if (p->sr.type != ua->sr.type)
+			continue;
+		if (p->sr.lower != ua->sr.lower)
+			continue;
+		if (p->sr.upper != ua->sr.upper)
+			break;
+		tipc_nametbl_withdraw(net, ua, &p->sk, p->key);
 		rc = 0;
+		break;
 	}
-	if (list_empty(&tsk->publications))
+	if (list_empty(&tsk->publications)) {
 		tsk->published = 0;
+		rc = 0;
+	}
 	return rc;
 }
 
@@ -3107,15 +3105,17 @@ static int tipc_sk_leave(struct tipc_sock *tsk)
 {
 	struct net *net = sock_net(&tsk->sk);
 	struct tipc_group *grp = tsk->group;
-	struct tipc_service_range seq;
+	struct tipc_uaddr ua;
 	int scope;
 
 	if (!grp)
 		return -EINVAL;
-	tipc_group_self(grp, &seq, &scope);
+	ua.addrtype = TIPC_SERVICE_RANGE;
+	tipc_group_self(grp, &ua.sr, &scope);
+	ua.scope = scope;
 	tipc_group_delete(net, grp);
 	tsk->group = NULL;
-	tipc_sk_withdraw(tsk, scope, &seq);
+	tipc_sk_withdraw(tsk, &ua);
 	return 0;
 }
 
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
