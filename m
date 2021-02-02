Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0979F30BA6D
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Feb 2021 09:58:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l6rVq-0000ao-Ip; Tue, 02 Feb 2021 08:58:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1l6rVo-0000aQ-Pl
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Feb 2021 08:58:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n+S1tPv5SY6Fl0GOETclX5eXW3vn4VJVbrkktjaFQPI=; b=aV0/JmOJ14lb3sgb4x2DbqxEJD
 q6z3z6sahx7/1arBuMlL6YWh0bE2WigM6gawaO3KPzzCsYIXS3C2llhfq19DdCKV5FLj+brKVvJ5c
 HUlrMhaVEEDndUAsurMgK3H1yJpBE9OhPua9hddUGJ3ZjHRrXv1r/d1O6kyv+AE1F4Uk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n+S1tPv5SY6Fl0GOETclX5eXW3vn4VJVbrkktjaFQPI=; b=Y9+8HtM1EdSRh++R5AvR8+XQ1V
 plil6qrgTxwKeAG586Mldk2yZZvtxRCCioOSlRf+w7ZjvMeH1FnGCx//n8v7/FbPFuDKXl4PNpK3n
 K1BOYS4WzPAkzmXmHfxOBXayineed7E0++futbyumduyG/WltOyqDHhoHeqcCfHEPJvU=;
Received: from mail-am6eur05on2100.outbound.protection.outlook.com
 ([40.107.22.100] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l6rVe-0005BJ-G4
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Feb 2021 08:58:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYpwblpke3fPfK1KDLVFlrbfYeWbJO7urpIiSaNT6b3lHOcVDlrgRWB+fkr966/uVYuQN+WJmg53/t6rZmJ8EmnfjDLHdJk0dQjXmH1yGrxKUh4WPZobfWww3VeGVxGghHU70nYFvbJw6ZCESIAbBZ8T0LigjUhzLXMVIjCbNaSbZBLKj7ncSctXNh+F7pxDS5PvYgDyLQqht/JEBjiA3MwBipAghlgdclCqvrz9kpA6iwlokDnwYFcHGwoJh9kSznz96GfKYyzNnaBD67dRBmkKsxtBj6nkwu337CA1cTFT3geNk/s4fmHbX6w4Y/C7hBlWwIpkT3stT0Ktcy+qLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n+S1tPv5SY6Fl0GOETclX5eXW3vn4VJVbrkktjaFQPI=;
 b=RFGe73qDldrLuDAoS8ZwzqdGsyoe3VTIwyAjlWgbwB57EU8Ed7ZpE4GP3Cj+eYl8122B++vtj3oQ9UVud2p5+CM7chwliGuu5f1D0mjq+XKf3pLtCeR22RgODbOq22r5pK9f74FnCh2ukDkiGsC1eSEv1kL5cpPKqZ1qAaF3ypK4fNiIgV6eRLTxMet1V0GV8EnxTCwoe1aSnQJmxRIwhSmNJCVsn9qMqd7yMKRNThHf27qc67hHgOxA1OgdQMh3vCaMgKJYOI1xSZd5LR2YCE/Pv+W3pgdpSGl5nnWTeG63TuOOctU0cIGthOeMj0haPaM8itloI95kyAdBvaSeaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n+S1tPv5SY6Fl0GOETclX5eXW3vn4VJVbrkktjaFQPI=;
 b=g+XVC8DX0+gOrEv1/trLQrtw3H603vGOfSHMXq/42r5tslnytTeiZJz5C/99dAw6wPXsdr3OueB6IXyrEBeP4Ku0Vb+JgA4mHrWgENttREQzpL0zrsaPRTzaSkSV8m5AEt5oSJC3qCnuiLNrOPfKOYAvDuM0vWpKznBo/P1u/DU=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR0501MB2485.eurprd05.prod.outlook.com (2603:10a6:4:5f::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.22; Tue, 2 Feb 2021 08:57:57 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::2dfc:12a1:2d2e:a056%6]) with mapi id 15.20.3805.025; Tue, 2 Feb 2021
 08:57:57 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 08/16] tipc: refactor tipc_sendmsg() and
 tipc_lookup_anycast()
Thread-Index: AQHWzZMR6PFBNS/QcEmuxTJxzunzq6pE4fUw
Date: Tue, 2 Feb 2021 08:57:57 +0000
Message-ID: <DB7PR05MB4315F54D02427BA34DD9298088B59@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-9-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-9-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b12e79b-c63b-4ea9-4d4f-08d8c758a2e6
x-ms-traffictypediagnostic: DB6PR0501MB2485:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0501MB2485F1DF0EF55F9D996F178988B59@DB6PR0501MB2485.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Rh2vHGd/gmduudAg4is8MiWwRzPiRbyZfNMSVUeojms7tuWNBXmppTfXNjbzG8GypkWrMpps7il8al+UxTJgVoc5KsUEdvd6qMH/hTSz/UzCvLy5Gx4qQmUMpt1tKgys7WfGhBA/M6AHtszJ0WBr0rnQUVf5QFICYZ1w6w5REiisULy0lUKFdxt5tbBM/bMpH3+A+OzRNcaUM3o0PzSU8H/vv7vJmvPJUy2Dewcq5XqGEHAts966QNSZES5IQbGO6MGdStrbxkk64TBFE5KV8d6ioZ9+goC3h01Rq7iJIOi90Vx2/V0Kv8SuaReuyVhQZ2sqknVOwckt9AeCiAlc1LgxPmA3TkVNAECjgQ2MRAduEEzJ8se6IzP0vunWuPo4Utk3vT2rT2eeRMBolqlbMOkb6AgowNQv7h2vDvLVtglJFOM424NF9+FaVDXfl7YDvDqpYpfO1wVhSnLrQKnZQwZEpOQgQJ8HXFbzsduCa2jW+cwB2H1weBQr/ikddNVR4tzUsh8spKrVqoyZWjHeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39840400004)(376002)(136003)(366004)(396003)(478600001)(54906003)(5660300002)(316002)(53546011)(4326008)(86362001)(52536014)(110136005)(8936002)(9686003)(30864003)(55016002)(33656002)(71200400001)(76116006)(64756008)(6506007)(83380400001)(7696005)(66446008)(66946007)(66556008)(66476007)(8676002)(26005)(186003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?6bjTiHcxizXS5RIaVoW6y5BYUQQ5T00FcCU+uXjzByPZpkYArTYtUO4jsw4U?=
 =?us-ascii?Q?EhdMVYmXNe9bKItMXV5vDwJwCN3Q+2oVVMAy4TmN8PbuhQNTbVU7mAU0dA9A?=
 =?us-ascii?Q?XDrRR5+Q2V3C5NVUqJ9zNozPO4XW+vBy8s17EyrZu2JOuiG6oTCWXmxR7pKu?=
 =?us-ascii?Q?gqneHZTtpKxpajRcxgAzdhKG8B3VJbmtLR7zcKqE0u440UDgfgW/xuTWL/nD?=
 =?us-ascii?Q?SBVbbPWLSAitP/OC7RnW7UYEn6mlF3cfNIvLGYA38+ISFIQFPNCGiPciXjjo?=
 =?us-ascii?Q?KDAJ3hfcGhIPzdMByc7NYvXGn8sB2sGAuiHw+DrEKzJnMIEOzqLaBMYErW0x?=
 =?us-ascii?Q?JGbyIrnRUVNahWsPDH25T3Mg6K1aGgi+Iqv2vC81oAWdPCGOpkssFnVTOUmG?=
 =?us-ascii?Q?0uAdQodJAh09N3Ne5kVS1s1xIIMw7AxWOOFOpDBfD62nJU0JHubeuCa4zjdN?=
 =?us-ascii?Q?pawzfE9FbC96LzAwDR9ayE3YLonDIv+1TDO1of6ED9oHB0LE/LJCTguFpGHD?=
 =?us-ascii?Q?VHGS2t3FRhGmTTwnHw5R32V4/dSKavgQ7eSYQvTiphLDemy2s1J0BvOL/Qsc?=
 =?us-ascii?Q?pxwGjV2oa1FOs3Uch0nY9U1lpU9v+ep8aCtCGhrojGuHaWh5huzCaZbB02w8?=
 =?us-ascii?Q?lKjN1aZ187kaotcv3In8YjS/mJJYL5InJGfrl+pDWka3KZyo7jZ+U2oJ7FIg?=
 =?us-ascii?Q?piuU6zcWGkcg8Xo37SQEBwhIxomR3KkIZAI76ej/wk9y9SbEpNqmHGl0Oiuc?=
 =?us-ascii?Q?5ywXEuRFbewVJ3MPok+cNN+ecvMQ4OkS7glKQ55HMFGGWCUUVyt4ofldlNSp?=
 =?us-ascii?Q?hJrc/isYagpDJ1DAEtOVPtBaERtPqrlc4m4vil0tTejTpST97sHKdWLWflTm?=
 =?us-ascii?Q?KKff1eluTS+TaslvQKnCWSMmmvPs9DrjYd6E8p0tJ/twnyP6VQHweMFqIieu?=
 =?us-ascii?Q?Me2fofiNqkj+f6VyNX9+O0ejMiTdIKTLv3O4WKypAdRlYH38Q0nm5hoxM8vJ?=
 =?us-ascii?Q?xPgb1AB848HnEbxTj9rx+WjWFCTt84vgkBAJHUFQpCLR9Bn0yAYMe7w/pXEX?=
 =?us-ascii?Q?j2/9ZCkz?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b12e79b-c63b-4ea9-4d4f-08d8c758a2e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 08:57:57.5717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f+O8qgmKRy1iBQeYdPfDzwauZi/JMmwVbPV34AF1BMyM14MOuKhTw7egDh7m9xmZuqw34j1U9VlK78hGfdocM6qK4Unt6xjbURcIKQ3k2jQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2485
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.22.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.100 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l6rVe-0005BJ-G4
Subject: Re: [tipc-discussion] [net-next 08/16] tipc: refactor
 tipc_sendmsg() and tipc_lookup_anycast()
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
Subject: [net-next 08/16] tipc: refactor tipc_sendmsg() and tipc_lookup_anycast()

From: Jon Maloy <jmaloy@redhat.com>

We simplify the signature if function tipc_nametbl_lookup_anycast(),
using address structures instead of dicrete integers.
[Tung]: typo. if / of, dicrete / discrete
This also makes it possible to make some improvements to the functions
__tipc_sendmsg() in socket.c and tipc_msg_lookup_dest() in msg.c.

Signed-off-by: Jon Maloy <jmaloy@redhat.com>
---
 net/tipc/msg.c        | 23 ++++++------
 net/tipc/name_table.c | 75 +++++++++++++++++++-------------------
 net/tipc/name_table.h |  5 ++-
 net/tipc/socket.c     | 83 +++++++++++++++++++++----------------------
 4 files changed, 91 insertions(+), 95 deletions(-)

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 9eddbddb2fec..931245e93830 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -711,8 +711,11 @@ bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy)
 bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 {
 	struct tipc_msg *msg = buf_msg(skb);
-	u32 dport, dnode;
-	u32 onode = tipc_own_addr(net);
+	u32 scope = msg_lookup_scope(msg);
+	u32 self = tipc_own_addr(net);
+	u32 inst = msg_nameinst(msg);
+	struct tipc_socket_addr sk;
+	struct tipc_uaddr ua;
 
 	if (!msg_isdata(msg))
 		return false;
@@ -726,16 +729,16 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
 	msg = buf_msg(skb);
 	if (msg_reroute_cnt(msg))
 		return false;
-	dnode = tipc_scope2node(net, msg_lookup_scope(msg));
-	dport = tipc_nametbl_lookup_anycast(net, msg_nametype(msg),
-					    msg_nameinst(msg), &dnode);
-	if (!dport)
+	tipc_uaddr(&ua, TIPC_SERVICE_RANGE, scope,
+		   msg_nametype(msg), inst, inst);
+	sk.node = tipc_scope2node(net, scope);
+	if (!tipc_nametbl_lookup_anycast(net, &ua, &sk))
 		return false;
 	msg_incr_reroute_cnt(msg);
-	if (dnode != onode)
-		msg_set_prevnode(msg, onode);
-	msg_set_destnode(msg, dnode);
-	msg_set_destport(msg, dport);
+	if (sk.node != self)
+		msg_set_prevnode(msg, self);
+	msg_set_destnode(msg, sk.node);
+	msg_set_destport(msg, sk.ref);
 	*err = TIPC_OK;
 
 	return true;
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index e6177ccf1140..ed68db36bab9 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -549,66 +549,64 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
 /**
  * tipc_nametbl_lookup_anycast - perform service instance to socket translation
  * @net: network namespace
- * @type: message type
- * @instance: message instance
- * @dnode: the search domain used during translation
- *
- * On entry, 'dnode' is the search domain used during the lookup
+ * @ua: service address to look ip
[Tung]: typo. ip / up
+ * @sk: address to socket we want to find
  *
+ * On entry, a non-zero 'sk->node' indicates the node where we want lookup to be
+ * performed, which may not be this one.
  * On exit:
- * - if lookup is deferred to another node, leave 'dnode' unchanged and return 0
- * - if lookup is attempted and succeeds, set 'dnode' to the publishing node and
- *   return the published (non-zero) port number
- * - if lookup is attempted and fails, set 'dnode' to 0 and return 0
+ * - If lookup is deferred to another node, leave 'sk->node' unchanged and
+ *   return 'true'.
+ * - If lookup is successful, set the 'sk->node' and 'sk->ref' (== portid) which
+ *   represent the bound socket and return 'true'.
+ * - If lookup fails, return 'false'
  *
  * Note that for legacy users (node configured with Z.C.N address format) the
- * 'closest-first' lookup algorithm must be maintained, i.e., if dnode is 0
+ * 'closest-first' lookup algorithm must be maintained, i.e., if sk.node is 0
  * we must look in the local binding list first
  */
-u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
-				u32 instance, u32 *dnode)
+bool tipc_nametbl_lookup_anycast(struct net *net,
+				 struct tipc_uaddr *ua,
+				 struct tipc_socket_addr *sk)
 {
 	struct tipc_net *tn = tipc_net(net);
 	bool legacy = tn->legacy_addr_format;
 	u32 self = tipc_own_addr(net);
-	struct service_range *sr;
+	u32 inst = ua->sa.instance;
+	struct service_range *r;
 	struct tipc_service *sc;
-	struct list_head *list;
 	struct publication *p;
-	u32 port = 0;
-	u32 node = 0;
+	struct list_head *l;
+	bool res = false;
 
-	if (!tipc_in_scope(legacy, *dnode, self))
-		return 0;
+	if (!tipc_in_scope(legacy, sk->node, self))
+		return true;
 
 	rcu_read_lock();
-	sc = tipc_service_find(net, type);
+	sc = tipc_service_find(net, ua->sr.type);
 	if (unlikely(!sc))
 		goto exit;
 
 	spin_lock_bh(&sc->lock);
-	service_range_foreach_match(sr, sc, instance, instance) {
+	service_range_foreach_match(r, sc, inst, inst) {
 		/* Select lookup algo: local, closest-first or round-robin */
-		if (*dnode == self) {
-			list = &sr->local_publ;
-			if (list_empty(list))
+		if (sk->node == self) {
+			l = &r->local_publ;
+			if (list_empty(l))
 				continue;
-			p = list_first_entry(list, struct publication,
-					     local_publ);
-			list_move_tail(&p->local_publ, &sr->local_publ);
-		} else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
-			list = &sr->local_publ;
-			p = list_first_entry(list, struct publication,
-					     local_publ);
-			list_move_tail(&p->local_publ, &sr->local_publ);
+			p = list_first_entry(l, struct publication, local_publ);
+			list_move_tail(&p->local_publ, &r->local_publ);
+		} else if (legacy && !sk->node && !list_empty(&r->local_publ)) {
+			l = &r->local_publ;
+			p = list_first_entry(l, struct publication, local_publ);
+			list_move_tail(&p->local_publ, &r->local_publ);
 		} else {
-			list = &sr->all_publ;
-			p = list_first_entry(list, struct publication,
-					     all_publ);
-			list_move_tail(&p->all_publ, &sr->all_publ);
+			l = &r->all_publ;
+			p = list_first_entry(l, struct publication, all_publ);
+			list_move_tail(&p->all_publ, &r->all_publ);
 		}
-		port = p->sk.ref;
-		node = p->sk.node;
+		*sk = p->sk;
+		res = true;
 		/* Todo: as for legacy, pick the first matching range only, a
 		 * "true" round-robin will be performed as needed.
 		 */
@@ -618,8 +616,7 @@ u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
 
 exit:
 	rcu_read_unlock();
-	*dnode = node;
-	return port;
+	return res;
 }
 
 /* tipc_nametbl_lookup_group(): lookup destinaton(s) in a communication group
diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
index 9f6e8efca00f..f5e37f90a2ba 100644
--- a/net/tipc/name_table.h
+++ b/net/tipc/name_table.h
@@ -111,9 +111,8 @@ struct name_table {
 };
 
 int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
-
-u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type, u32 instance,
-				u32 *node);
+bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
+				 struct tipc_socket_addr *sk);
 void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
 				       u32 upper, u32 scope, bool exact,
 				   struct list_head *dports);
diff --git a/net/tipc/socket.c b/net/tipc/socket.c
index 05cfe179458e..913b1a7be25b 100644
--- a/net/tipc/socket.c
+++ b/net/tipc/socket.c
@@ -1424,44 +1424,43 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 	struct sock *sk = sock->sk;
 	struct net *net = sock_net(sk);
 	struct tipc_sock *tsk = tipc_sk(sk);
-	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
+	struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
 	long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
 	struct list_head *clinks = &tsk->cong_links;
 	bool syn = !tipc_sk_type_connectionless(sk);
 	struct tipc_group *grp = tsk->group;
 	struct tipc_msg *hdr = &tsk->phdr;
-	struct tipc_service_range *seq;
+	struct tipc_socket_addr skaddr;
 	struct sk_buff_head pkts;
-	u32 dport = 0, dnode = 0;
-	u32 type = 0, inst = 0;
-	int mtu, rc;
+	int atype, mtu, rc;
 
 	if (unlikely(dlen > TIPC_MAX_USER_MSG_SIZE))
 		return -EMSGSIZE;
 
-	if (likely(dest)) {
-		if (unlikely(m->msg_namelen < sizeof(*dest)))
-			return -EINVAL;
-		if (unlikely(dest->family != AF_TIPC))
+	if (ua) {
+		if (!tipc_uaddr_valid(ua, m->msg_namelen))
 			return -EINVAL;
+		 atype = ua->addrtype;
 	}
 
+	/* If socket belongs to a communication group follow other paths */
 	if (grp) {
-		if (!dest)
+		if (!ua)
 			return tipc_send_group_bcast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_SERVICE_ADDR)
+		if (atype == TIPC_SERVICE_ADDR)
 			return tipc_send_group_anycast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_SOCKET_ADDR)
+		if (atype == TIPC_SOCKET_ADDR)
 			return tipc_send_group_unicast(sock, m, dlen, timeout);
-		if (dest->addrtype == TIPC_ADDR_MCAST)
+		if (atype == TIPC_SERVICE_RANGE)
 			return tipc_send_group_mcast(sock, m, dlen, timeout);
 		return -EINVAL;
 	}
 
-	if (unlikely(!dest)) {
-		dest = &tsk->peer;
-		if (!syn && dest->family != AF_TIPC)
+	if (!ua) {
+		ua = (struct tipc_uaddr *)&tsk->peer;
+		if (!syn && ua->family != AF_TIPC)
 			return -EDESTADDRREQ;
+		 atype = ua->addrtype;
 	}
 
 	if (unlikely(syn)) {
@@ -1471,54 +1470,51 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 			return -EISCONN;
 		if (tsk->published)
 			return -EOPNOTSUPP;
-		if (dest->addrtype == TIPC_SERVICE_ADDR) {
-			tsk->conn_type = dest->addr.name.name.type;
-			tsk->conn_instance = dest->addr.name.name.instance;
+		if (atype == TIPC_SERVICE_ADDR) {
+			tsk->conn_type = ua->sa.type;
+			tsk->conn_instance = ua->sa.instance;
 		}
 		msg_set_syn(hdr, 1);
 	}
 
-	seq = &dest->addr.nameseq;
-	if (dest->addrtype == TIPC_ADDR_MCAST)
-		return tipc_sendmcast(sock, seq, m, dlen, timeout);
-
-	if (dest->addrtype == TIPC_SERVICE_ADDR) {
-		type = dest->addr.name.name.type;
-		inst = dest->addr.name.name.instance;
-		dnode = dest->addr.name.domain;
-		dport = tipc_nametbl_lookup_anycast(net, type, inst, &dnode);
-		if (unlikely(!dport && !dnode))
+	/* Determine destination */
+	if (atype == TIPC_SERVICE_RANGE) {
+		return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
+	} else if (atype == TIPC_SERVICE_ADDR) {
+		skaddr.node = ua->lookup_node;
+		ua->scope = skaddr.node ? TIPC_NODE_SCOPE : TIPC_CLUSTER_SCOPE;
+		if (!tipc_nametbl_lookup_anycast(net, ua, &skaddr))
 			return -EHOSTUNREACH;
-	} else if (dest->addrtype == TIPC_SOCKET_ADDR) {
-		dnode = dest->addr.id.node;
+	} else if (atype == TIPC_SOCKET_ADDR) {
+		skaddr = ua->sk;
 	} else {
 		return -EINVAL;
 	}
 
 	/* Block or return if destination link is congested */
 	rc = tipc_wait_for_cond(sock, &timeout,
-				!tipc_dest_find(clinks, dnode, 0));
+				!tipc_dest_find(clinks, skaddr.node, 0));
 	if (unlikely(rc))
 		return rc;
 
-	if (dest->addrtype == TIPC_SERVICE_ADDR) {
+	/* Finally build message header */
+	msg_set_destnode(hdr, skaddr.node);
+	msg_set_destport(hdr, skaddr.ref);
+	if (atype == TIPC_SERVICE_ADDR) {
 		msg_set_type(hdr, TIPC_NAMED_MSG);
 		msg_set_hdr_sz(hdr, NAMED_H_SIZE);
-		msg_set_nametype(hdr, type);
-		msg_set_nameinst(hdr, inst);
-		msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
-		msg_set_destnode(hdr, dnode);
-		msg_set_destport(hdr, dport);
+		msg_set_nametype(hdr, ua->sa.type);
+		msg_set_nameinst(hdr, ua->sa.instance);
+		msg_set_lookup_scope(hdr, ua->scope);
 	} else { /* TIPC_SOCKET_ADDR */
 		msg_set_type(hdr, TIPC_DIRECT_MSG);
 		msg_set_lookup_scope(hdr, 0);
-		msg_set_destnode(hdr, dnode);
-		msg_set_destport(hdr, dest->addr.id.ref);
 		msg_set_hdr_sz(hdr, BASIC_H_SIZE);
 	}
 
+	/* Add message body */
 	__skb_queue_head_init(&pkts);
-	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, true);
+	mtu = tipc_node_get_mtu(net, skaddr.node, tsk->portid, true);
 	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 	if (unlikely(rc != dlen))
 		return rc;
@@ -1527,10 +1523,11 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
 		return -ENOMEM;
 	}
 
+	/* Send message */
 	trace_tipc_sk_sendmsg(sk, skb_peek(&pkts), TIPC_DUMP_SK_SNDQ, " ");
-	rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
+	rc = tipc_node_xmit(net, &pkts, skaddr.node, tsk->portid);
 	if (unlikely(rc == -ELINKCONG)) {
-		tipc_dest_push(clinks, dnode, 0);
+		tipc_dest_push(clinks, skaddr.node, 0);
 		tsk->cong_link_cnt++;
 		rc = 0;
 	}
-- 
2.28.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
