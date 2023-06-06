Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5015D723DBE
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Jun 2023 11:35:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q6T6K-0005CG-8g;
	Tue, 06 Jun 2023 09:35:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1q6T6J-0005CA-KC
 for tipc-discussion@lists.sourceforge.net;
 Tue, 06 Jun 2023 09:35:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Gl6GL28dVN+ExbdXXi1rU9ZPEX46q30BFQ7Pqo6DrE=; b=i6GetF8ROMYSF2UtWaV8DFCmyY
 1alfsIp0uoSqcZVzsLo/UVAIexYNUydUXA9YgDdp4VGrJQn6mwrrWFg/PAk55NI9GfZip1/SAbSD7
 R+AOtGTK7CIV9Ob/ACBOvlIGNBX2buhs6tmBKhmsVdKZAzkoofPvxfjc5XHPqR9hJzrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Gl6GL28dVN+ExbdXXi1rU9ZPEX46q30BFQ7Pqo6DrE=; b=JWMbd3d4vLQfYE1Ebgmdh8ox/C
 4Sw3daNN2qo3yo2K6Ses+9frW/mj2s4VY/Aibp6tnQT2p/EYoKLemZhXH5bPmXR9Sx1SflFi7rD4h
 lYJ+qygb9ZsbJ3tAZWUqz/3oK/rD9U5sNEoFZFVcwPffNT5o134xwiUs5na7qynHha3c=;
Received: from mail-dbaeur03on2105.outbound.protection.outlook.com
 ([40.107.104.105] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q6T6G-00CbW5-Ry for tipc-discussion@lists.sourceforge.net;
 Tue, 06 Jun 2023 09:35:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OW9ztsE0/HErPR6BUIRTvncaceK5rwOVT74YPPe/mx6IwKTtlzIDtD3c9btBD2VAtX3pTQCc9JXuAh+u1FkWtHdb1pcVTBOT4XgCo+MMaq+DkjEnsJj60PWbRfRxWNgUkZPOj/PyojFPyLQ4CHww3JcEcVo7ADSi0hezy88X9OWYxhSIQ0KCs58tQZmXmQlVsiZBf702u2Oxoj+9ergMedXYdXe0YUdEpDVbE8rKNG4PE6EupNOOfsFrAx5vYLfOUjE2ZV64qD2mRv7W1xT0di0KHU613uSr+CQuH21HXnwMx8eE8IohWB/keJb5cAcT25MS1N6CtDpSc54Z6GYbTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Gl6GL28dVN+ExbdXXi1rU9ZPEX46q30BFQ7Pqo6DrE=;
 b=oe6iLRZVPPmNg34vgjqdmHElE1SAGiU9/T3GQjpy+JgPyuT60GACpt6rYnJ7dSvHeTVpGRtBLM0DRaaT6kMO83yyD/8+ZLVSM7UUNRw3UqCaZ6rJs5H+rJHCqjsNdV5B6Cr57ktBtrkGWds8ZIbG9lJUwdi2EJocisPwVzQZMn8gkQteLZrc2Cm/jJGW8EapH0h4iwkHOf1DFNwa4lE/i4iexqUUpvAj2YW3Vc6g6jAe7s5gTYZ/zXCBTcBjmzjex0h+NcxHOCtGhH+DXk4n+2B5VX5VumgpEbIgFg23T/HjrhB7qbG9ww7QdqMoFAtYCynnBRgMJV4moNorqUpbSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Gl6GL28dVN+ExbdXXi1rU9ZPEX46q30BFQ7Pqo6DrE=;
 b=O0YjjPWqsTOTRiRKFTJEgHIJ9N02+zIQuJp/F77fTFSzmIrLYe2URXz5x9MvZf1sTB1Ay1kVCAC1PZ4Aal+LgQqGfxhxbX+7Gw67it8HpmmQWUbjuKyu0o8y/HnFOK1EMFwAA05xJYuBsTeqOoRWo4DwLAXcYrfsfWcdbE4pkFY=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by VE1PR05MB7488.eurprd05.prod.outlook.com (2603:10a6:800:1aa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 09:35:27 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25%6]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 09:35:27 +0000
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH net-next] tipc: replace open-code bearer rcu_dereference
 access in bearer.c
Thread-Index: AQHZl7u5E1FWjZeUk0qr3XUaqpEC5a99hLfA
Date: Tue, 6 Jun 2023 09:35:27 +0000
Message-ID: <DB9PR05MB9078509738F92193703C464E8852A@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <1072588a8691f970bda950c7e2834d1f2983f58e.1685976044.git.lucien.xin@gmail.com>
In-Reply-To: <1072588a8691f970bda950c7e2834d1f2983f58e.1685976044.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|VE1PR05MB7488:EE_
x-ms-office365-filtering-correlation-id: 1604b385-334f-4794-d3ff-08db66715cb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4hxQJa8vVfNJQ5HvYUXH0hnGImljnyyPw9Ral4CWtb3e9aQudM4eeq6QzTXmbVZUumj/C+foo0yBxm3bHMHr4LHB/4di/kWhcvSdm7FhFtYnkPLQyi3ijXhGga2qkmrg+IgyjKhnS6ivUiR/ku4CDNPZik3rtEJYkGg3K3LjTUG16umcWQLhLXkwJ+mF9W/5eFCGuYoOVFMtVf0+WUE8ooSjYqRKm4sQsgVuNHPj8r1tvec5Isny9t3Z52qQHuFxbhNlaPhYNaHGUoDArFn/o8XdXZmlbQdXPLs/1EftavnQvpa9r3vtKSYDtnCZ+aNeOD3UgtjuXPqKQnOOLvX5+plQK7PBz1WGfYqusFISezCVarN43Og1kIMhkC6eION7ITBa2eqbSeWuzyI7MGXn8Og8JLL0Gs/ibmfB5CBQxvP+BCEsoAvvs3O/HdVehv6AtsFY9nUVPrxRUj4k4YSMCfB+oZp6wiRabcXPtSadnn2jQjDMn1RaYQekE8zdKN2dO4oPYFR4Om7kGxR8CYIxXtp61TNrx2Zl9APbBxmB28o9ax1kIU0a5KS9pTpyTZLfm/EGw6/BWrh9MrL5cw9yyH4OHSbDru+65r3Lx0Qcs3Qe3/6FLpF13acJmcc6K6O5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(39840400004)(366004)(376002)(396003)(451199021)(8676002)(8936002)(7696005)(478600001)(110136005)(54906003)(55016003)(41300700001)(52536014)(6506007)(5660300002)(316002)(66446008)(26005)(4326008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(9686003)(186003)(83380400001)(2906002)(122000001)(38100700002)(86362001)(33656002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pvdIAGK59uxertXFx4D6iTvTHjm40TrMHqcLFvpUWHPONyG6auLZ+GGZ0vV+?=
 =?us-ascii?Q?rat01SKy1b+6SlxfcA/JyHj/xkyVKSkyAK4zNPPfTkFJmBps1vpBT9V93bF1?=
 =?us-ascii?Q?5fH/x6r9STd1kuRy+uQOkivlBVTo1R1Rel1bWKI2SOPcm5fFPhcnmTu1w95y?=
 =?us-ascii?Q?DQ8rFQrQpgNm6Y0J02k3m8jw7XBpRjrjYHtA2JpfkW0Y3taiTQeNpEy8aJtw?=
 =?us-ascii?Q?S27Y8rRWc13bmQm4olbmUAolMo9VUp4sJsRTtJiCm446Rzl66qDonMFbWV+y?=
 =?us-ascii?Q?J1ZEK5JIHTYuf80Sc936154XIwYiBIwo5seRPbeGaParNR7WQ0Cc83n+/4QL?=
 =?us-ascii?Q?KAagw5pWY7FSlQ8I+UsxGhCTxuYTxXgzZZvEbBUdp4ZVyexDCMrBlMux17R+?=
 =?us-ascii?Q?e4e/L1pw+Mh+NGu6pb+iS+mYKjVfm5yRQwF7TplYFnZ6rHBy2yROocxry5S9?=
 =?us-ascii?Q?fQAUexDJKz12sylqGBoGOwdS3GR0bosi3we1riXi52DFBYmaQaTb5lKhnYce?=
 =?us-ascii?Q?VH6dIRjq6s/P2lkjwunbCh8SEqSEPqO7/RGDQnm4oQxbapLjNd6ODT+fCMrl?=
 =?us-ascii?Q?SZlY693ZqfBFMwZ2p4ZMCJu5/bUW/8Omq7yJlLh7BvkUhYJcl5YTbcr2pjW6?=
 =?us-ascii?Q?rmkucuiMCZhPxBd5sRiQe2VEEjd7QEonkuK72zmGxKIioI996vAG1QObBOf7?=
 =?us-ascii?Q?LgA2PSZD73/CuCDF967E27jldklcompKcdxopgyHxn540DdXmjuU6KGD1/PV?=
 =?us-ascii?Q?CRn6YihkW3MX2kQEI3O29Xh+kMwHyflKmF4dpIm7lsONK7xMOWrLf0vZWgi+?=
 =?us-ascii?Q?GRyFhbB21+jtn5FtGTdL23PtMrBbZ0B5HA4XTKUmoqYKjhuLpuObEPoUPE/+?=
 =?us-ascii?Q?T07MXSpXEsCCqUHundo24WJx4ZO3L3wUnpRdiY86M1W8+CRzoGvljLyWL/aZ?=
 =?us-ascii?Q?LAj1edueSRZ0dhlANNq4G9zK+Aufj177Npcys7WJVkKfEtuEYv2I1+RZiaDF?=
 =?us-ascii?Q?rPdr39QCR0G1RcrbAi7gExE8HRiVutFhr9ShH9BbkjeLPpt+F26NACb1l2ZK?=
 =?us-ascii?Q?f5Nv7RD1YvRa5QfMocszj9qn7dUv+hXxL0Rvf53POj1oIcnL4iNhBt8dO4eU?=
 =?us-ascii?Q?JilImiOumE69nnA/rlUWsWfucwrZpQDSra9gt9HGaa86VKkHggRftuRmeKGq?=
 =?us-ascii?Q?W0Fh8/1tJy3brphwlDqnfNFKXSIqVlLV7s7SqQJo2ut7+0wap7/2+fBaFqio?=
 =?us-ascii?Q?Zh9NVjfgnxb1EFPZR5nezJi8bhCs5DIDPTcUD9HEyJ02FF0PGG76qtIgV6ur?=
 =?us-ascii?Q?1QyNHRT2kUgobZ5OgG+ppVhle+yt60LSvAmqN7RHPIdK1wB/a3f2Y8IJ+il8?=
 =?us-ascii?Q?tPXZquPeVM0dgxl1cKOOd+mEsp5dGBM5Kg3BIkpx64DRrbolexethf16ETnL?=
 =?us-ascii?Q?Emb7eTOXHAV2GGv/vq9NUDCTlFGTV1cIw6LP/Hd6d1Nbf4cjdoWF9h4co1J5?=
 =?us-ascii?Q?DXX6ca6D500rOZO7/yatbo0AMtM37RWBMx8AlrS2oYIl2S0UGCGjQ8fFtrki?=
 =?us-ascii?Q?e6Lsk165C5OZRe3Q15WFnikK1i4fKzvnhmSIw1bV?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1604b385-334f-4794-d3ff-08db66715cb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 09:35:27.5759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7+yJNzMszWxopgKOiGPlD/VBpqGVO4QZ1ZyZuZu9gg4jAcu8fS1RfNv7tT3CQA6owqFHSWV6d0qVzqmF4r1J/5HW5I1awCcaodqK05gdEWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR05MB7488
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  >Subject: [PATCH net-next] tipc: replace open-code bearer
 rcu_dereference access in bearer.c > >Replace these open-code bearer
 rcu_dereference
 access with bearer_get(), >like other places in bearer.c. [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.104.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.104.105 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q6T6G-00CbW5-Ry
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: replace open-code
 bearer rcu_dereference access in bearer.c
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Cc: "kuba@kernel.org" <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

>Subject: [PATCH net-next] tipc: replace open-code bearer rcu_dereference access in bearer.c
>
>Replace these open-code bearer rcu_dereference access with bearer_get(),
>like other places in bearer.c. While at it, also use tipc_net() instead
>of net_generic(net, tipc_net_id) to get "tn" in bearer.c.
>
>Signed-off-by: Xin Long <lucien.xin@gmail.com>
>---
Reviewed-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>

> net/tipc/bearer.c | 14 ++++++--------
> 1 file changed, 6 insertions(+), 8 deletions(-)
>
>diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
>index 114140c49108..1d5d3677bdaf 100644
>--- a/net/tipc/bearer.c
>+++ b/net/tipc/bearer.c
>@@ -176,7 +176,7 @@ static int bearer_name_validate(const char *name,
>  */
> struct tipc_bearer *tipc_bearer_find(struct net *net, const char *name)
> {
>-	struct tipc_net *tn = net_generic(net, tipc_net_id);
>+	struct tipc_net *tn = tipc_net(net);
> 	struct tipc_bearer *b;
> 	u32 i;
>
>@@ -211,11 +211,10 @@ int tipc_bearer_get_name(struct net *net, char *name, u32 bearer_id)
>
> void tipc_bearer_add_dest(struct net *net, u32 bearer_id, u32 dest)
> {
>-	struct tipc_net *tn = net_generic(net, tipc_net_id);
> 	struct tipc_bearer *b;
>
> 	rcu_read_lock();
>-	b = rcu_dereference(tn->bearer_list[bearer_id]);
>+	b = bearer_get(net, bearer_id);
> 	if (b)
> 		tipc_disc_add_dest(b->disc);
> 	rcu_read_unlock();
>@@ -223,11 +222,10 @@ void tipc_bearer_add_dest(struct net *net, u32 bearer_id, u32 dest)
>
> void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
> {
>-	struct tipc_net *tn = net_generic(net, tipc_net_id);
> 	struct tipc_bearer *b;
>
> 	rcu_read_lock();
>-	b = rcu_dereference(tn->bearer_list[bearer_id]);
>+	b = bearer_get(net, bearer_id);
> 	if (b)
> 		tipc_disc_remove_dest(b->disc);
> 	rcu_read_unlock();
>@@ -534,7 +532,7 @@ int tipc_bearer_mtu(struct net *net, u32 bearer_id)
> 	struct tipc_bearer *b;
>
> 	rcu_read_lock();
>-	b = rcu_dereference(tipc_net(net)->bearer_list[bearer_id]);
>+	b = bearer_get(net, bearer_id);
> 	if (b)
> 		mtu = b->mtu;
> 	rcu_read_unlock();
>@@ -745,7 +743,7 @@ void tipc_bearer_cleanup(void)
>
> void tipc_bearer_stop(struct net *net)
> {
>-	struct tipc_net *tn = net_generic(net, tipc_net_id);
>+	struct tipc_net *tn = tipc_net(net);
> 	struct tipc_bearer *b;
> 	u32 i;
>
>@@ -881,7 +879,7 @@ int tipc_nl_bearer_dump(struct sk_buff *skb, struct netlink_callback *cb)
> 	struct tipc_bearer *bearer;
> 	struct tipc_nl_msg msg;
> 	struct net *net = sock_net(skb->sk);
>-	struct tipc_net *tn = net_generic(net, tipc_net_id);
>+	struct tipc_net *tn = tipc_net(net);
>
> 	if (i == MAX_BEARERS)
> 		return 0;
>--
>2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
