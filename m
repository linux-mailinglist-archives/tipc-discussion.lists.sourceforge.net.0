Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F154B305521
	for <lists+tipc-discussion@lfdr.de>; Wed, 27 Jan 2021 08:58:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l4fig-0000Zg-5k; Wed, 27 Jan 2021 07:58:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1l4fie-0000ZY-4o
 for tipc-discussion@lists.sourceforge.net; Wed, 27 Jan 2021 07:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2SDIgZPfh8+BAdncpQUq3SjPfjKECDuCPnRM7j5Rg+s=; b=WhvhCTqu+oqhoFBPFlRYx2JCKV
 7ehtuHTu5dxdizd00H9LWjZL7c+IU/lFtgra+K0yQM/Ju3PnFFUCBAZBPcLWvzXh3typ5nrFW+Vv4
 xwNWldlu1kOb2RG+hQ2wM2XuCFkWAvs4cqvBJLnaRyinIjKSrEd1sfFEoK56S8mav4SE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2SDIgZPfh8+BAdncpQUq3SjPfjKECDuCPnRM7j5Rg+s=; b=bqzBFkuT7r3j43ZKbod/btFZxp
 IZnOx8CFk3CLls/zdM0PY/LEHcvE1sZWEMsFnJ3W5/s+/NHpBaHlesuXRvLVYdk+a4OT68TRZfxq6
 j37kRGmQrlg2eckimL4EX08k3B+Ags8QZCliwBnDdsh3JOdVFSkuJ9R5RPl90XR6erFM=;
Received: from mail-eopbgr80135.outbound.protection.outlook.com
 ([40.107.8.135] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4fiH-009s7T-8C
 for tipc-discussion@lists.sourceforge.net; Wed, 27 Jan 2021 07:58:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YanmpAj60bhk2FWDI0bL//M6pobeupkrScQNFdRQW/DpxBZZB9vM6jT/Yr36udRtFP0o4h4rWMalMAhUKS4IpqNAQvUVn2uWW7ZGk66Midq9Nxybd5P8mnlIGIwI6jtZjarKac/FoCzawY0GQMMH0rLjpPqIn9eGCR9pybo2a55UJ9QykPUvcr9xk7yZYmV7wVtCdZ5BnSHnYZeZ/ee1z/7sim10xBhb2bi7hb7pLhohrpmW2lfd3NAAehjjczzOlrVXtJDGd2aSbozYpxTYTZ9qc0wduSFtUOvE+pEmCoehT6rBrGNNf1kPpZgBiPlgbvflucTf9m+8gzv1XEjNEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2SDIgZPfh8+BAdncpQUq3SjPfjKECDuCPnRM7j5Rg+s=;
 b=dZG7b1Dt6oo7sOEt2uf6iXyaw/lxm5FkWVSyunjHH1NK3c9U3ULrl9d3gRS5Z1mv4qrDkwwIH4kLPlPgbOHFmHNlSfbGm5CJf8DuFn+mhrS1jeVf23VFia+hEQecVBM6kXuuC6Z1v7U7glYz+A7KsmomT7/MLifpDsFam0ZkjN6b/AF9t+WMR3iXGLt+qMIucsR3D1FbuZuuYDShWZY9nWzfrAV4T6M//iHoQfHvm1P41a8XiA0aFbHBOlXgO+Dj0ml3jdsG44YrVK5ei5tLK87tUxSut6j4xyqatWWa6jEsk1xOhr5vT9TZ6rzTfLsVwW7mZpHMU6wXFQSQgzoKXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2SDIgZPfh8+BAdncpQUq3SjPfjKECDuCPnRM7j5Rg+s=;
 b=WM/28A4gCCuhyXOhoMYP+vjZatGhQKcAqNRi1BkJDFX2D5KvoLoLwo1c4yB4pWDWGwVoPPIw5BZg0VUmJRHm4MjN3QtLm3LhvL58vU0/fqHVTEHRnrgJWVvHPkQT7Io6Fr8g/Q52UB5cL4uF8sllK3hfQQm8VOZNuiNtXEL8Aew=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB7PR05MB4155.eurprd05.prod.outlook.com (2603:10a6:5:1a::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11; Wed, 27 Jan 2021 07:57:53 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056%6]) with mapi id 15.20.3805.016; Wed, 27 Jan 2021
 07:57:53 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 01/16] tipc: re-organize members of struct publication
Thread-Index: AQHWzZMQZOoUvqyxRUSl6xtx9oPye6o7Y3Qg
Date: Wed, 27 Jan 2021 07:57:53 +0000
Message-ID: <DB7PR05MB43154A026F560256D411873088BB0@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-2-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-2-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f2e25c7-56f0-4b4e-cd93-08d8c2994053
x-ms-traffictypediagnostic: DB7PR05MB4155:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR05MB41552A98E1EFCA5DA212D13A88BB0@DB7PR05MB4155.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:161;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rsLnVGwNtusuT/rvNRMPZH1ScAPvSlwOpJWPU2q/Us2rWrMdA0XAer9ektjRufTNgUsFidvLiLj4kg43Z2pU1fXxVx267yc3lL6qBc6YOq/J3Z2AzgYxsNQUxjYWuMM3g6fv3WxJBZVmatT4xy7dbCrFpM/Pa82ixLknm9VPYaN2M++fVmGXzb81TSc7Zj5gu75fUu+8hNFelQfCyHX079CTJvIRUyIiHVV45EeY7oKdliL4EELUW3upvljA2FM1Pwx2qDgOFyS0w/fgnW90ndy54STntKsmpAPKk8uGzluNEDQBDg5wwTD0cN8xdmRYjxIkLdbCavrthtfErMswQqicwErOa8MAkzchzSj6hOicCCORhZXnuAUsz52J454qcTSO1aIqpTIXIBzCW1R3jt0NASL5m1C7ZAxNTkQJ40pztnyeZpEs6AVZCNT1f8L6exTN8y37yTPzqWuazdbzwFQowD1pOvvz8+I1YjlGjTjwirfV6Hkcd2ZiGIICQ4Zq/hzqrjiE8T8sIt7AXrbe7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39840400004)(366004)(346002)(396003)(376002)(136003)(26005)(6506007)(33656002)(5660300002)(64756008)(54906003)(110136005)(478600001)(2906002)(76116006)(8676002)(55016002)(30864003)(52536014)(316002)(186003)(86362001)(66556008)(83380400001)(53546011)(7696005)(9686003)(8936002)(71200400001)(66446008)(66946007)(4326008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?UJm4w7mfaYqlFQ3cy3ApAGJ3WZMIAL0Z6tjwTJ4g1c3kwozkuW0YcKdCNNYR?=
 =?us-ascii?Q?2SvxEjUZd3uxjBuS6mc+18F4d/AZ8vN+8ehS8nkqE256gG7ECAJIRrRYRZtP?=
 =?us-ascii?Q?5yRr1RTELy/H8cqBOzNAt9xxqzUxvCVKDq1EtWWH1VBO3lKmRANRs9aG4IxC?=
 =?us-ascii?Q?8QOg+tRj6NmKc0a1bwF2+uqZpyaYveQDvmAhyc9IDHdJyNS93PdlE45zEnQa?=
 =?us-ascii?Q?sc6xHENHoGJSDh+uH4bshEqFC5TtI7tjrHK59/P/Z9zTwuG4C8C+mSdIAQRF?=
 =?us-ascii?Q?/gjBTR+OG8UNlobSObFir3cUkMpe4hq6zPQl+2kWjLk+Pc9pLtex0Dd0iNWO?=
 =?us-ascii?Q?5Tsd8cuYpneqHV0ft0KzwTdQfHT/7N6vgPetiCzvFQTPmvS1OBKbpBGapcmL?=
 =?us-ascii?Q?diqI91rkYUW565eUcLCkY3QQ4jDyU08T03iY+DypXDjouQRHvrgMvB29/aIy?=
 =?us-ascii?Q?mr2vJh6aKh8rvHP0cRNyI4pM05j+89QSLvVO5x12B24oFLtjez8s14lgTpL0?=
 =?us-ascii?Q?4o4ReFmO8rIG83UwYTmvzn8R1aABAqKnsnu5WqP2TWaCdAyF8J2y5Bna5YkK?=
 =?us-ascii?Q?fR5F1F9OrGfGGblk53m+bypQLRNqw3wsVM8ib/T6IqeQ/rwu12JNbWDdT3c9?=
 =?us-ascii?Q?rI4kCa5OjFO49VQNFFfoe7g9qU7CZogbaTXfdosoRAlrKSz7JqwPR06PrRV1?=
 =?us-ascii?Q?A68JF9Ip50HTcFJxq+wHpK8KBOGOsUD8TlNMiiACKysdUz2K9jeqG81lX7E4?=
 =?us-ascii?Q?6UDwD8FZMEeGncR4Sze9ONMeROkY0itrx3SxNG7abg7wYP5b20Na75LBIKmq?=
 =?us-ascii?Q?AAVy+IihPu069gax+HEyzKPt+5AkI1ufSZ9HTenLncAXO2gYYn0vEaaGXwFp?=
 =?us-ascii?Q?9yNZk1Hx6+Cu838z9Aep393UerV+2LnEyiLTOlD6lWfInpszXxNBh+DXbAE0?=
 =?us-ascii?Q?iKM/RpY3Ld6d0Ijd2EukJDNCjfIlFfIabLxC3yy2XNg6XOdNKK/REuk1UDeB?=
 =?us-ascii?Q?BsNdxZK7DNcSCiPgfH336P52heQsl6w1FgJcR6CQYbjLpOlg9h0Wr3OPwyQh?=
 =?us-ascii?Q?kVUGJ/fZ?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f2e25c7-56f0-4b4e-cd93-08d8c2994053
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 07:57:53.6065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pKNaVDyviDhLiseMErghb0KSCl0YzOj3Qy2M6TSg/nX5/fZXYeY1DxE8QZZTWlsWnW90P98mDmxe38R9ryiplVHdf/+NqINQs9engrQgb38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB4155
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.135 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l4fiH-009s7T-8C
Subject: Re: [tipc-discussion] [net-next 01/16] tipc: re-organize members of
 struct publication
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

Some minor comments for this patch (marked with "[Tung]").

Best regards,
Tung Nguyen

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Wednesday, December 9, 2020 1:50 AM
To: tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: [net-next 01/16] tipc: re-organize members of struct publication

From: Jon Maloy <jmaloy@redhat.com>

In a future commit we will introduce more members to struct publication.
In order to keep this structure comprehensible we now group some of
its current fields into the sub-structures where they really belong,
- A struct tipc_service_range for the functional address the publication
  is representing.
- A struct tipc_socket_addr for the socket bound to that service range.

We also rename the stack variable 'publ' to just 'p' in a couple of places.
This is just as easy to understand in the given context, and keeps the
number of wrapped code lines to a minimum.

There are no functional changes in this commit.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/name_distr.c | 62 +++++++++++++++++++++----------------------
 net/tipc/name_table.c | 44 +++++++++++++++---------------
 net/tipc/name_table.h | 17 +++++-------
 net/tipc/socket.c     | 32 +++++++++++-----------
 4 files changed, 75 insertions(+), 80 deletions(-)

diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
index 6cf57c3bfa27..721d2fca3d6f 100644
--- a/net/tipc/name_distr.c
+++ b/net/tipc/name_distr.c
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2000-2006, 2014, Ericsson AB
  * Copyright (c) 2005, 2010-2011, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -55,10 +56,10 @@ struct distr_queue_item {
  */
 static void publ_to_item(struct distr_item *i, struct publication *p)
 {
-	i->type = htonl(p->type);
-	i->lower = htonl(p->lower);
-	i->upper = htonl(p->upper);
-	i->port = htonl(p->port);
+	i->type = htonl(p->sr.type);
+	i->lower = htonl(p->sr.lower);
+	i->upper = htonl(p->sr.upper);
+	i->port = htonl(p->sk.ref);
 	i->key = htonl(p->key);
 }
 
@@ -90,20 +91,20 @@ static struct sk_buff *named_prepare_buf(struct net *net, u32 type, u32 size,
 /**
  * tipc_named_publish - tell other nodes about a new publication by this node
  * @net: the associated network namespace
- * @publ: the new publication
+ * @p: the new publication
  */
-struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ)
+struct sk_buff *tipc_named_publish(struct net *net, struct publication *p)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct distr_item *item;
 	struct sk_buff *skb;
 
-	if (publ->scope == TIPC_NODE_SCOPE) {
-		list_add_tail_rcu(&publ->binding_node, &nt->node_scope);
+	if (p->scope == TIPC_NODE_SCOPE) {
+		list_add_tail_rcu(&p->binding_node, &nt->node_scope);
 		return NULL;
 	}
 	write_lock_bh(&nt->cluster_scope_lock);
-	list_add_tail(&publ->binding_node, &nt->cluster_scope);
+	list_add_tail(&p->binding_node, &nt->cluster_scope);
 	write_unlock_bh(&nt->cluster_scope_lock);
 	skb = named_prepare_buf(net, PUBLICATION, ITEM_SIZE, 0);
 	if (!skb) {
@@ -113,25 +114,25 @@ struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ)
 	msg_set_named_seqno(buf_msg(skb), nt->snd_nxt++);
 	msg_set_non_legacy(buf_msg(skb));
 	item = (struct distr_item *)msg_data(buf_msg(skb));
-	publ_to_item(item, publ);
+	publ_to_item(item, p);
 	return skb;
 }
 
 /**
  * tipc_named_withdraw - tell other nodes about a withdrawn publication by this node
  * @net: the associated network namespace
- * @publ: the withdrawn publication
+ * @p: the withdrawn publication
  */
-struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ)
+struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *p)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct distr_item *item;
 	struct sk_buff *skb;
 
 	write_lock_bh(&nt->cluster_scope_lock);
-	list_del(&publ->binding_node);
+	list_del(&p->binding_node);
 	write_unlock_bh(&nt->cluster_scope_lock);
-	if (publ->scope == TIPC_NODE_SCOPE)
+	if (p->scope == TIPC_NODE_SCOPE)
 		return NULL;
 
 	skb = named_prepare_buf(net, WITHDRAWAL, ITEM_SIZE, 0);
@@ -142,7 +143,7 @@ struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ)
 	msg_set_named_seqno(buf_msg(skb), nt->snd_nxt++);
 	msg_set_non_legacy(buf_msg(skb));
 	item = (struct distr_item *)msg_data(buf_msg(skb));
-	publ_to_item(item, publ);
+	publ_to_item(item, p);
 	return skb;
 }
 
@@ -239,27 +240,26 @@ void tipc_named_node_up(struct net *net, u32 dnode, u16 capabilities)
  * Invoked for each publication issued by a newly failed node.
  * Removes publication structure from name table & deletes it.
  */
-static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
+static void tipc_publ_purge(struct net *net, struct publication *p, u32 addr)
 {
 	struct tipc_net *tn = tipc_net(net);
-	struct publication *p;
+	struct publication *_p;
 
 	spin_lock_bh(&tn->nametbl_lock);
-	p = tipc_nametbl_remove_publ(net, publ->type, publ->lower, publ->upper,
-				     publ->node, publ->key);
-	if (p)
-		tipc_node_unsubscribe(net, &p->binding_node, addr);
+	_p = tipc_nametbl_remove_publ(net, p->sr.type, p->sr.lower,
+				      p->sr.upper, p->sk.node, p->key);
+	if (_p)
+		tipc_node_unsubscribe(net, &_p->binding_node, addr);
 	spin_unlock_bh(&tn->nametbl_lock);
 
-	if (p != publ) {
+	if (_p != p) {
 		pr_err("Unable to remove publication from failed node\n"
 		       " (type=%u, lower=%u, node=0x%x, port=%u, key=%u)\n",
-		       publ->type, publ->lower, publ->node, publ->port,
-		       publ->key);
+		       p->sr.type, p->sr.lower, p->sk.node, p->sk.ref, p->key);
 	}
 
-	if (p)
-		kfree_rcu(p, rcu);
+	if (_p)
+		kfree_rcu(_p, rcu);
 }
 
 void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
@@ -410,15 +410,15 @@ void tipc_named_reinit(struct net *net)
 {
 	struct name_table *nt = tipc_name_table(net);
 	struct tipc_net *tn = tipc_net(net);
-	struct publication *publ;
+	struct publication *p;
 	u32 self = tipc_own_addr(net);
 
 	spin_lock_bh(&tn->nametbl_lock);
 
-	list_for_each_entry_rcu(publ, &nt->node_scope, binding_node)
-		publ->node = self;
-	list_for_each_entry_rcu(publ, &nt->cluster_scope, binding_node)
-		publ->node = self;
+	list_for_each_entry_rcu(p, &nt->node_scope, binding_node)
+		p->sk.node = self;
+	list_for_each_entry_rcu(p, &nt->cluster_scope, binding_node)
+		p->sk.node = self;
 	nt->rc_dests = 0;
 	spin_unlock_bh(&tn->nametbl_lock);
 }
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ee5ac40ea2b6..c37a4a9c87ca 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -239,12 +239,12 @@ static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
 	if (!publ)
 		return NULL;
 
-	publ->type = type;
-	publ->lower = lower;
-	publ->upper = upper;
+	publ->sr.type = type;
+	publ->sr.lower = lower;
+	publ->sr.upper = upper;
 	publ->scope = scope;
-	publ->node = node;
-	publ->port = port;
+	publ->sk.node = node;
+	publ->sk.ref = port;
 	publ->key = key;
 	INIT_LIST_HEAD(&publ->binding_sock);
 	INIT_LIST_HEAD(&publ->binding_node);
[Tung]: Should 'publ' be changed to 'p' ?
@@ -347,7 +347,7 @@ static struct publication *tipc_service_insert_publ(struct net *net,
 
 	/* Return if the publication already exists */
 	list_for_each_entry(p, &sr->all_publ, all_publ) {
-		if (p->key == key && (!p->node || p->node == node))
+		if (p->key == key && (!p->sk.node || p->sk.node == node))
 			return NULL;
 	}
 
@@ -363,8 +363,8 @@ static struct publication *tipc_service_insert_publ(struct net *net,
 
 	/* Any subscriptions waiting for notification?  */
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
-		tipc_sub_report_overlap(sub, p->lower, p->upper, TIPC_PUBLISHED,
-					p->port, p->node, p->scope, first);
+		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper, TIPC_PUBLISHED,
+					p->sk.ref, p->sk.node, p->scope, first);
 	}
 	return p;
 err:
@@ -384,7 +384,7 @@ static struct publication *tipc_service_remove_publ(struct service_range *sr,
 	struct publication *p;
 
 	list_for_each_entry(p, &sr->all_publ, all_publ) {
-		if (p->key != key || (node && node != p->node))
+		if (p->key != key || (node && node != p->sk.node))
 			continue;
 		list_del(&p->all_publ);
 		list_del(&p->local_publ);
@@ -452,8 +452,8 @@ static void tipc_service_subscribe(struct tipc_service *service,
 	/* Sort the publications before reporting */
 	list_sort(NULL, &publ_list, tipc_publ_sort);
 	list_for_each_entry_safe(p, tmp, &publ_list, list) {
-		tipc_sub_report_overlap(sub, p->lower, p->upper,
-					TIPC_PUBLISHED, p->port, p->node,
+		tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
+					TIPC_PUBLISHED, p->sk.ref, p->sk.node,
 					p->scope, true);
 		list_del_init(&p->list);
 	}
@@ -525,7 +525,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
 	last = list_empty(&sr->all_publ);
 	list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
 		tipc_sub_report_overlap(sub, lower, upper, TIPC_WITHDRAWN,
-					p->port, node, p->scope, last);
+					p->sk.ref, node, p->scope, last);
 	}
 
 	/* Remove service range item if this was its last publication */
@@ -603,8 +603,8 @@ u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32 *dnode)
 					     all_publ);
 			list_move_tail(&p->all_publ, &sr->all_publ);
 		}
-		port = p->port;
-		node = p->node;
+		port = p->sk.ref;
+		node = p->sk.node;
 		/* Todo: as for legacy, pick the first matching range only, a
 		 * "true" round-robin will be performed as needed.
 		 */
@@ -643,9 +643,9 @@ bool tipc_nametbl_lookup(struct net *net, u32 type, u32 instance, u32 scope,
 	list_for_each_entry(p, &sr->all_publ, all_publ) {
 		if (p->scope != scope)
 			continue;
-		if (p->port == exclude && p->node == self)
+		if (p->sk.ref == exclude && p->sk.node == self)
 			continue;
-		tipc_dest_push(dsts, p->node, p->port);
+		tipc_dest_push(dsts, p->sk.node, p->sk.ref);
 		(*dstcnt)++;
 		if (all)
 			continue;
@@ -675,7 +675,7 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
 	service_range_foreach_match(sr, sc, lower, upper) {
 		list_for_each_entry(p, &sr->local_publ, local_publ) {
 			if (p->scope == scope || (!exact && p->scope < scope))
-				tipc_dest_push(dports, 0, p->port);
+				tipc_dest_push(dports, 0, p->sk.ref);
 		}
 	}
 	spin_unlock_bh(&sc->lock);
@@ -702,7 +702,7 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
 	spin_lock_bh(&sc->lock);
 	service_range_foreach_match(sr, sc, lower, upper) {
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
-			tipc_nlist_add(nodes, p->node);
+			tipc_nlist_add(nodes, p->sk.node);
 		}
 	}
 	spin_unlock_bh(&sc->lock);
@@ -731,7 +731,7 @@ void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
 		list_for_each_entry(p, &sr->all_publ, all_publ) {
 			if (p->scope != scope)
 				continue;
-			tipc_group_add_member(grp, p->node, p->port, p->lower);
+			tipc_group_add_member(grp, p->sk.node, p->sk.ref, p->sr.lower);
 		}
 	}
 	spin_unlock_bh(&sc->lock);
@@ -909,7 +909,7 @@ static void tipc_service_delete(struct net *net, struct tipc_service *sc)
 	spin_lock_bh(&sc->lock);
 	rbtree_postorder_for_each_entry_safe(sr, tmpr, &sc->ranges, tree_node) {
 		list_for_each_entry_safe(p, tmp, &sr->all_publ, all_publ) {
-			tipc_service_remove_publ(sr, p->node, p->key);
+			tipc_service_remove_publ(sr, p->sk.node, p->key);
 			kfree_rcu(p, rcu);
 		}
 		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
@@ -993,9 +993,9 @@ static int __tipc_nl_add_nametable_publ(struct tipc_nl_msg *msg,
 			goto publ_msg_full;
 		if (nla_put_u32(msg->skb, TIPC_NLA_PUBL_SCOPE, p->scope))
 			goto publ_msg_full;
-		if (nla_put_u32(msg->skb, TIPC_NLA_PUBL_NODE, p->node))
+		if (nla_put_u32(msg->skb, TIPC_NLA_PUBL_NODE, p->sk.node))
 			goto publ_msg_full;
-		if (nla_put_u32(msg->skb, TIPC_NLA_PUBL_REF, p->port))
+		if (nla_put_u32(msg->skb, TIPC_NLA_PUBL_REF, p->sk.ref))
 			goto publ_msg_full;
 		if (nla_put_u32(msg->skb, TIPC_NLA_PUBL_KEY, p->key))
 			goto publ_msg_full;
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 5a82a01369d6..3fff00440e1a 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -3,6 +3,7 @@
  *
  * Copyright (c) 2000-2006, 2014-2018, Ericsson AB
  * Copyright (c) 2004-2005, 2010-2011, Wind River Systems
+ * Copyright (c) 2020, Red Hat Inc
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without
@@ -50,13 +51,10 @@ struct tipc_group;
 #define TIPC_NAMETBL_SIZE	1024	/* must be a power of 2 */
 
 /**
- * struct publication - info about a published (name or) name sequence
- * @type: name sequence type
- * @lower: name sequence lower bound
- * @upper: name sequence upper bound
+ * struct publication - info about a published service address or range
+ * @sr: service range represented by this publication
+ * @sk: address of socket bound to this publication
  * @scope: scope of publication, TIPC_NODE_SCOPE or TIPC_CLUSTER_SCOPE
- * @node: network address of publishing socket's node
- * @port: publishing port
  * @key: publication key, unique across the cluster
  * @id: publication id
  * @binding_node: all publications from the same node which bound this one
@@ -74,12 +72,9 @@ struct tipc_group;
  * @rcu: RCU callback head used for deferred freeing
  */
 struct publication {
-	u32 type;
-	u32 lower;
-	u32 upper;
+	struct tipc_service_range sr;
+	struct tipc_socket_addr sk;
 	u32 scope;
-	u32 node;
-	u32 port;
 	u32 key;
 	u32 id;
 	struct list_head binding_node;
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index cebcc104dc70..bff14df40bc9 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -2934,19 +2934,19 @@ static int tipc_sk_withdraw(struct tipc_sock *tsk, uint scope,
 		if (seq) {
 			if (publ->scope != scope)
 				continue;
-			if (publ->type != seq->type)
+			if (publ->sr.type != seq->type)
 				continue;
-			if (publ->lower != seq->lower)
+			if (publ->sr.lower != seq->lower)
 				continue;
-			if (publ->upper != seq->upper)
+			if (publ->sr.upper != seq->upper)
 				break;
-			tipc_nametbl_withdraw(net, publ->type, publ->lower,
-					      publ->upper, publ->key);
+			tipc_nametbl_withdraw(net, publ->sr.type, publ->sr.lower,
+					      publ->sr.upper, publ->key);
 			rc = 0;
 			break;
 		}
-		tipc_nametbl_withdraw(net, publ->type, publ->lower,
-				      publ->upper, publ->key);
+		tipc_nametbl_withdraw(net, publ->sr.type, publ->sr.lower,
+				      publ->sr.upper, publ->key);
 		rc = 0;
 	}
 	if (list_empty(&tsk->publications))
[Tung]: Should 'publ' be changed to 'p' ?
@@ -3711,11 +3711,11 @@ static int __tipc_nl_add_sk_publ(struct sk_buff *skb,
 
 	if (nla_put_u32(skb, TIPC_NLA_PUBL_KEY, publ->key))
 		goto attr_msg_cancel;
-	if (nla_put_u32(skb, TIPC_NLA_PUBL_TYPE, publ->type))
+	if (nla_put_u32(skb, TIPC_NLA_PUBL_TYPE, publ->sr.type))
 		goto attr_msg_cancel;
-	if (nla_put_u32(skb, TIPC_NLA_PUBL_LOWER, publ->lower))
+	if (nla_put_u32(skb, TIPC_NLA_PUBL_LOWER, publ->sr.lower))
 		goto attr_msg_cancel;
-	if (nla_put_u32(skb, TIPC_NLA_PUBL_UPPER, publ->upper))
+	if (nla_put_u32(skb, TIPC_NLA_PUBL_UPPER, publ->sr.upper))
 		goto attr_msg_cancel;
 
 	nla_nest_end(skb, attrs);
[Tung]: Should 'publ' be changed to 'p' ?
@@ -3863,9 +3863,9 @@ bool tipc_sk_filtering(struct sock *sk)
 		p = list_first_entry_or_null(&tsk->publications,
 					     struct publication, binding_sock);
 		if (p) {
-			type = p->type;
-			lower = p->lower;
-			upper = p->upper;
+			type = p->sr.type;
+			lower = p->sr.lower;
+			upper = p->sr.upper;
 		}
 	}
 
@@ -3964,9 +3964,9 @@ int tipc_sk_dump(struct sock *sk, u16 dqueues, char *buf)
 	if (tsk->published) {
 		p = list_first_entry_or_null(&tsk->publications,
 					     struct publication, binding_sock);
-		i += scnprintf(buf + i, sz - i, " %u", (p) ? p->type : 0);
-		i += scnprintf(buf + i, sz - i, " %u", (p) ? p->lower : 0);
-		i += scnprintf(buf + i, sz - i, " %u", (p) ? p->upper : 0);
+		i += scnprintf(buf + i, sz - i, " %u", (p) ? p->sr.type : 0);
+		i += scnprintf(buf + i, sz - i, " %u", (p) ? p->sr.lower : 0);
+		i += scnprintf(buf + i, sz - i, " %u", (p) ? p->sr.upper : 0);
 	}
 	i += scnprintf(buf + i, sz - i, " | %u", tsk->snd_win);
 	i += scnprintf(buf + i, sz - i, " %u", tsk->rcv_win);
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
