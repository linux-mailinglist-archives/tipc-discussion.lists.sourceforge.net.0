Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4717F5991
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Nov 2023 08:48:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1r64RK-00017r-Bm;
	Thu, 23 Nov 2023 07:47:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1r64RF-00017g-RR
 for tipc-discussion@lists.sourceforge.net;
 Thu, 23 Nov 2023 07:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XAbgpj+sBT0s9x4667tfoo8J3MZxENgc7R0hbhR2UDQ=; b=kDpTrKbxeebF+uP7mqDC2r0KdT
 Elpiijq0utZFQauOkBESebHW+NfpLHnHtSWmCOZ1Fv9OO/6foiedSzjyDE6DTw9o7sISq20bOo5Bs
 JgBM9eCtvHaV0ynCb87glLvHlnvTHkKGu3MXk7ZBRFajGKy76creFXhIqqOg6pOnTSkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XAbgpj+sBT0s9x4667tfoo8J3MZxENgc7R0hbhR2UDQ=; b=mQR95CZR/GBOCMUq+0gNDLRWo6
 +n5JkshICFtK06Y2RYiLW0vd2yGK8n5x16QGWo9booN2NReaxc3YgbRDxTTBZxkXZn/zkJOSu8ksv
 bV13EwqFv7Z6Yr8W9TdG6/BCGn/P8O1vP/vw6slNeI8SG6XcmmvIMtl+0laAts0pkJE8=;
Received: from mail-am6eur05on2119.outbound.protection.outlook.com
 ([40.107.22.119] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r64R9-0007rN-IL for tipc-discussion@lists.sourceforge.net;
 Thu, 23 Nov 2023 07:47:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WA27gSF65QX8yTg/rCEVeH9ivQj2FcnHw6C+MKbw3Y05tsH212G9K2Zm9csk/NxAl0+7XBO0KgFAq7qqQK2JgDA/CkOMtCsooaSetP+9pY/zbjy9q0aeQwhXxBL70XK3564/32mlPnsfVmreQZUzCOh2Zlq+5Q8AcnqR7Q2C79WGj2RYHTer5GFLhwdSULBlp3wfJ6a2cql0Ps5VM7ZKYjtbAbgd0wb5wSUsH1aiszKsLh6xva3sQTwe8/HCFwgrs61Lju5AFvfy/UWyxqVWgW2+WLvcbOjk37LqtsVWyOvYJnt3UG0tcmR3PtTKlIyD/WHomaX4BFHgpR0RwQmXnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XAbgpj+sBT0s9x4667tfoo8J3MZxENgc7R0hbhR2UDQ=;
 b=l/sqKftB3WAj6b2vofwb4wBYJD0iUNTT096RufWFVmyzpI7vFs0yeEDjKzjFXdTaab6WZ9vk0sibuX9bYNebMZsmKwnTd7S/AgMV8eHkAlWYI2ax9XeUOxt4BrA8ydZSepu6H33zbtZupwlYtQY4mDz73MTLDUY2I+mJLyWOVtuqxMrVh7F8q8u7Tl1VPNuFzw/6F6z95z1l65ew+HpyOYeJzIBVvxyl+dWU1qGvYCrpq9MAYy+uASc/et/3JGQPbQRJwZATEEM2Sb6gebcp1KInI/w5P8c6WUWfvtByablBtAu91t0Tel+bJGdqcD5o17VvGDkxtpqcg4BwpYZI+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XAbgpj+sBT0s9x4667tfoo8J3MZxENgc7R0hbhR2UDQ=;
 b=hRLCYzZywcTszV6jqzuxjEZaf3BW8bG1bAe06mOhg7QGhcDmif8Y5ayp+j7h1dqYEH5ztTb4i9Grw4VsemSL1xSzhVqhmJf9b/dnkbcitl1BXS6jSFSLJjyCzPUy7VpZDkl9oxJDXMmQOfk/mne9lhq/ftc0iXzTiWTuYV+vaVwDK2b+8iOoXRiPyHA/8pztER1lWBJcr0RIO7eTh15AKlYze2kIQ4byszT2ZFAjdyAQOXZcT0nJpf2XLYUJL4zi2QTQy4RJplqQMdysBcxJhwok6W4RU8S7DxmXpKcbxSNwxOVFrmAgQ87abNt8r39UXkVgUTaCSX6LvNo8MqLqzw==
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by AM8PR05MB8305.eurprd05.prod.outlook.com (2603:10a6:20b:36a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18; Thu, 23 Nov
 2023 04:12:55 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::c9ed:567d:143e:af2b]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::c9ed:567d:143e:af2b%5]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 04:12:54 +0000
To: "xu.xin.sc@gmail.com" <xu.xin.sc@gmail.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [RFC PATCH] net/tipc: reduce tipc_node lock holding time in
 tipc_rcv
Thread-Index: AQHaHbcmsQ7KURUzRkaicoeZO+zrDrCHRXnw
Date: Thu, 23 Nov 2023 04:12:54 +0000
Message-ID: <DB9PR05MB9078636E4D78B9F4442898B088B9A@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <20231123024510.2037882-1-xu.xin.sc@gmail.com>
In-Reply-To: <20231123024510.2037882-1-xu.xin.sc@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|AM8PR05MB8305:EE_
x-ms-office365-filtering-correlation-id: 5eac0478-0109-44ac-e7c6-08dbebda77c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: odl94FhQTYauajeDp+8N5mKH+bHhRc5h0zRoo28qjIrVGpAElKpNyhb7C7btmvmM8VjgGow2Kaf0dicfJmEuVsDwHFHcxB8U7CjkvlgTBxLqqT3eyl4iULli6+zWY7jRzsFMfyprDjkwT+DC2CAujToTuELOUOnWm6Fy+TeSoOQASB8IwvTf/fhZMT5teTUBPe6gNOH7QtPO7zMZZx8BJxqT+eVTiJ5yP3kCeSNT0WBQTywax6R5jOk9ND9Js3zlUjXv6wPITb3E1w3jRNlf1KxDyHd8hdvCGuJzh9voHyXWFroLGye4SoQikG46XwBlwYjAk6iaiWrsm6Z5jDd1r6EiRvApemUK4muMsBXR0xI4kkXGdxdXXi2l592piMDliN28J+pRPAYuz8m9dJpNCcdzziqKCOh8J/iEVetNAqJ2QznxLMTEkj2AyfE23U0nX9cp5RHoV4DW+PADm5VR/yLQa5k/lVZ9wBdGbPKwTdNrHagXmPPIGa1EPNJEgNu66rmxpHwfurGCKG2BY2g7yFIN6L4Q67P5cZTfSlor0zapyAygYYZuCSAtD4tZkEfGY112nDtulkM324KReeQvWoHqsYycl0dNiQJMH9FPv867k9/4EtL2QrD5HASzsrDV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39850400004)(346002)(366004)(136003)(376002)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38070700009)(55016003)(66946007)(26005)(110136005)(66556008)(66446008)(54906003)(76116006)(66476007)(38100700002)(122000001)(33656002)(86362001)(64756008)(6506007)(2906002)(83380400001)(8676002)(71200400001)(9686003)(7696005)(5660300002)(316002)(41300700001)(4326008)(478600001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YI1o7lRAvWXURV7LKjGXu/hv3fOfb200Hpf2hCPzVLUTKsezP2tjZbOie3FE?=
 =?us-ascii?Q?mrE9PmrtSCUoTLa61YHVHjDu4gYisP9+jSCJtWUgJLf/DSj9Cd5eY0F14nib?=
 =?us-ascii?Q?6E6/u14KAIKuaX/K6+Y6NOrdYXVBhQ57ZGSI7WxNzxsYQs8XcF4sLcCCaDOu?=
 =?us-ascii?Q?t2p2cp4ROSpij/JdezaPJhZCY0fQL5REyCuax9dossMtAf235Pt3Tb9tbyit?=
 =?us-ascii?Q?1fS2qPZX4vMxgXU/VCEa2AEP2/YWbFwE3bLMWFYfNkhIDE0x/6A1OCl1h+L1?=
 =?us-ascii?Q?8egkJnzlTOmxkoknkYI03aZng2z9iepfhubV431ffPpy58ty/P2HKwSXn+mU?=
 =?us-ascii?Q?2RwMvdDr3QJRrFZb3yXKYhWvtMmMM9P8G8mCevFCEexMI982Nr/2P19UN8dj?=
 =?us-ascii?Q?LJvwzf4s0qFGVruo/BT+1ICj4kPQpQdqqo9IGIYTzp+eFAojG1s4wj7S3R7l?=
 =?us-ascii?Q?vfZopTr272omkZJxl6C9WVbF4ULCVokY1hKMnSUiMOErPqTKydbcGxE7pY0O?=
 =?us-ascii?Q?fRAr6Iy97vrWguLAHuBPILMOaSlWxUwRI5yBR8o20EF1Ci2UEBJjcHPaPtUb?=
 =?us-ascii?Q?cyciBkfwdiumiQxscHyBAiSB9hgTSXBGGzDIIQyNKZ3lyaCcIdpwovC1HyuI?=
 =?us-ascii?Q?++ZTs13Y8D/F0kE9DBdT9D+aYgcUevFoBWOvpTo19zmkQmh+rDpRv0C8mP4P?=
 =?us-ascii?Q?pmKTpSoOBwm/DKhJ6cKLUPlc/BTG2pxEw9yICcYbh/vJlPMyRNsJSo7VPWDt?=
 =?us-ascii?Q?evYOz/xUdB9LIrlwHR0knaX568b8phV2qXfrfZjmVxSk4diph0f3N26KduzN?=
 =?us-ascii?Q?Qz+URJC/DiQo1yTStC/5kvZsTHcZQ35tAaUxCkQtZZiQQrO5SHXcSSDTqkO0?=
 =?us-ascii?Q?4HAQfqznvyCAQWTDKNZ5LV9f8FFWG7Hf9gI0/ri4vRJf4la0acZGox8NQMUV?=
 =?us-ascii?Q?C3L4SuJXmezg12TKxJeoXNoc4r8Hy+rdk0e8sax/DXh8U45TNgEHNcmop76l?=
 =?us-ascii?Q?UTIt55SDbqBp6+CyB8WxK/8eAUAigC/TdFRRdZrYEnhRxBAbd3NrCvYM8fIK?=
 =?us-ascii?Q?ACLPs7400lYsuygrDCEXqlpN84FrSS/bwxGCaXRqUFuuv07FCU2Svum80m0M?=
 =?us-ascii?Q?YUdU4ykIiYNZgtbJ1aaZsHgnFjxcwhhkbkA7D7C9h+3GDuKmAkr9SqOgxSxn?=
 =?us-ascii?Q?MCLCVsINmixLyzgFrkYm1RLbtMSnpX0oXdPzZS4b6DWr+OvZCh75gnI9u8zh?=
 =?us-ascii?Q?F+ZUvB07/t5GGB7rfGrdUZa4ydrlKhNfJ/LeJlC7sMsnNQf1qGguJIIMwGzy?=
 =?us-ascii?Q?avi5cqgomLh7I0Av+n9g7Ge3T5R/JI/zVIJ2DprXqM5rhPUT8gNkIWokhJTk?=
 =?us-ascii?Q?TVAA+vOOi/38oQnHT+g+g6ROaNmF2zSM2PzIkKNzI6mO2Gyqyd9e5Zul25ii?=
 =?us-ascii?Q?+GsNtzwZWKnVQIBv3kUAeySH4/OKnLXDu7xCOvreoWciRaSPUDLw19K3mygX?=
 =?us-ascii?Q?zdV5c28l76PXvol+aNrwNxhUOnhN3lBC/MlysR+2PbCvEApwu8YG09mnHzip?=
 =?us-ascii?Q?cSbW14wdoFycRm7V+DI+5JEqVD77s/mY1LGaX75p6nKSgic6i7jAHPf5AK9Y?=
 =?us-ascii?Q?bA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eac0478-0109-44ac-e7c6-08dbebda77c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 04:12:54.7715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3TmYu//426YkZs3is9FJaLkT5suh0SodniYp1e3Ygt8a9WtK1o6hxNwxAgJZGZPwEzGk6jse2Og3h1W8XHdU+/jlSRAGFAkE/ErqJoOoFxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR05MB8305
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > net/tipc/node.c | 10 ++++++---- > 1 file changed,
 6 insertions(+), 
 4 deletions(-) > >diff --git a/net/tipc/node.c b/net/tipc/node.c index
 3105abe97bb9..2a036b8a7da3
 100644 >--- a/net/tipc/node.c >++ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.119 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.119 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r64R9-0007rN-IL
Subject: Re: [tipc-discussion] [RFC PATCH] net/tipc: reduce tipc_node lock
 holding time in tipc_rcv
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xu.xin16@zte.com.cn" <xu.xin16@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

> net/tipc/node.c | 10 ++++++----
> 1 file changed, 6 insertions(+), 4 deletions(-)
>
>diff --git a/net/tipc/node.c b/net/tipc/node.c index 3105abe97bb9..2a036b8a7da3 100644
>--- a/net/tipc/node.c
>+++ b/net/tipc/node.c
>@@ -2154,14 +2154,15 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
> 	/* Receive packet directly if conditions permit */
> 	tipc_node_read_lock(n);
> 	if (likely((n->state == SELF_UP_PEER_UP) && (usr != TUNNEL_PROTOCOL))) {
>+		tipc_node_read_unlock(n);
> 		spin_lock_bh(&le->lock);
> 		if (le->link) {
> 			rc = tipc_link_rcv(le->link, skb, &xmitq);
> 			skb = NULL;
> 		}
> 		spin_unlock_bh(&le->lock);
>-	}
>-	tipc_node_read_unlock(n);
>+	} else
>+		tipc_node_read_unlock(n);
>
> 	/* Check/update node state before receiving */
> 	if (unlikely(skb)) {
>@@ -2169,12 +2170,13 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
> 			goto out_node_put;
> 		tipc_node_write_lock(n);
> 		if (tipc_node_check_state(n, skb, bearer_id, &xmitq)) {
>+			tipc_node_write_unlock(n);
> 			if (le->link) {
> 				rc = tipc_link_rcv(le->link, skb, &xmitq);
> 				skb = NULL;
> 			}
>-		}
>-		tipc_node_write_unlock(n);
>+		} else
>+			tipc_node_write_unlock(n);
> 	}
>
> 	if (unlikely(rc & TIPC_LINK_UP_EVT))
>--
>2.15.2
>
>
This patch is wrong. le->link and link status must be protected by node lock. See what happens if tipc_node_timeout() is called, and the link goes down:
tipc_node_timeout()
   tipc_node_link_down()
   {
      struct tipc_link *l = le->link;
      ...
      if (delete) {
         kfree(l);
         le->link = NULL;
      }
      ...
   }


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
