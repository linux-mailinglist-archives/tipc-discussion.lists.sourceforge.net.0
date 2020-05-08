Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0C71CB2AA
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 May 2020 17:17:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jX4ki-0003HW-7P; Fri, 08 May 2020 15:17:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jX4ka-0003H6-Ke
 for tipc-discussion@lists.sourceforge.net; Fri, 08 May 2020 15:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6pJirHt2ccyYwLRILhxJDp/sljdvXIF6uWshHiDrpuM=; b=HercsltcQ/2r84JJ/Gm2nLNYEZ
 cK4IR7Iv0KJjfZ22OXlLwutp/4jBUDaJBpFG6eDJhJFnDeqhO6gAg7IWdnSb6DqQnKReJWHlgpEqx
 CglREnRlJ5AxEvx8kYdbXmRSX47D/hmpN65H7/4bBa0i6vDrJnsnvFCQVOSiXCUSSL4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6pJirHt2ccyYwLRILhxJDp/sljdvXIF6uWshHiDrpuM=; b=eyWWp2at0zMuMweLiG4Wor1uuc
 BJEzezhJ9b7/b8PHxVoe2WPob2j7r+716X11oKdXawOAF4HubFPoGC+UTL/R2pA4HZ8/KUBvV33/0
 kdE47xl+c7bEJrxB5xmyb+vKRh1ACGWxAPtbEyEKYvXmLrKqf6Sxr3czC+fQ2+oV4hWs=;
Received: from mail-bn7nam10on2084.outbound.protection.outlook.com
 ([40.107.92.84] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jX4kT-00Cgzh-6o
 for tipc-discussion@lists.sourceforge.net; Fri, 08 May 2020 15:17:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P+a6G9pUAVJe6OySJBLJ5OjzfnFhNcbdslvHeUCnT34W2HGUPD+Y7Tm02h2E3CE9EDAdPdCNoA21wDJ+B4mS0lYdkBqNWxg3ypbqCG64TJyjG6/4vO8v4B/3v4l1UIpRFeLO/nk+jRNatzUjK0WVUbZpzcRVJyXYXPcFG1K68coBsl6klKdExnNxw4EGEB5N/TI4fZQ8wH1SUP2CoGyW45/yJzc+0v4jbaVS0Mc3CqSH6siytT5EhyHvJWFJWmsot/1qIMTw9Mbd103Di+ZR8EN8IKGlvjUUYoHeyadY7KS2b4erM+ZLUnswWLnowDvrBuawjgblEZs4adrGj5cNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6pJirHt2ccyYwLRILhxJDp/sljdvXIF6uWshHiDrpuM=;
 b=PGrd5gaw+vgE83lKDjCfCWOGjKv6sujaX4WUhoif9pRgIpqDbT39GH0UXbx6aprVI6v8Pv/mrZFjQyGPiQgKilsoNLbdkkvDyqZ25ZaU0aJYRWOFtWyk73vYT5sQVza36uG6rXhgW5+riPagkeBTUxL4s6tZxUs4ad/t1o8Mor3+uf4LtfxpowOzXmOKLkHyuPQTvKuaMTNVpw0bVO39dFSBh0i9TJFrA22F4xC1Cx3i3F/5GaizXIG0Pd4yKtEXq9OK6NSCGEmF0NlLSFO69dCsJNigIZJoCc//bEvipUIXDsQC3CFO7C2skUH3wHOE3jt7F6zKMersXpB6QAy5og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6pJirHt2ccyYwLRILhxJDp/sljdvXIF6uWshHiDrpuM=;
 b=bklbgo4nKLqpyH2UwtHt6R8l4dAyhZ3Weh8uKZYrodB+6+qVOdihQ63u9jB219yAZK2pDFHP/SKPjKJHbD+8FBEpPnlX7JdlHUQXJdFH913bovRXIG/Nm7A0KlD61v3bRGtz1ooe853ZP59Pasqxtkmn8/hHGij3ZfyVgiDm8X4=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4038.namprd11.prod.outlook.com (2603:10b6:a03:18c::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Fri, 8 May
 2020 14:43:41 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2958.035; Fri, 8 May 2020
 14:43:41 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [RFC PATCH 1/2] tipc: fix large latency in smart Nagle streaming
Thread-Index: AQHWIgczYoDke52rBE6vJpXxhcMqOqieSVVg
Date: Fri, 8 May 2020 14:43:41 +0000
Message-ID: <BY5PR11MB3894E4C56D34E5F76F884CC184A20@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
 <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
x-originating-ip: [147.11.252.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4ac5d5a-c7f2-4ab9-a82c-08d7f35e33b2
x-ms-traffictypediagnostic: BY5PR11MB4038:
x-microsoft-antispam-prvs: <BY5PR11MB4038A1B17BD694DD96A6245484A20@BY5PR11MB4038.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iq1cYtqj2Lb/TEmukt6PjJAT+JL96K2P5eiAN0pAPGFm2X1uOBsUnxz7YYdY9yAw7c8N3DeXC5B3MOpswb+8oLLMOEUkMCel4cq8DoIxPYNOa2X2q/GFESgIcZ3WD3KopazTTcz+uA8Tw2iVXqi5DvGaKscJvTfI6JIs6kxzVDZ8PAYN/LcMcFFjaL/7c7Cg9QrCOuAjgIKlCHPg0XNsm2EMCQzd6H1jCOFk6VBLlUdDt9VVuqoem+5Lv3nQARRf3aRRk1Czi/c65fYbecH8c9D1zndZd9+pO+5Y6y91VPTT0wsZ7hyqbr5XBHbm5vgwQKHvDLXwpsDvpmT0SmM3s1GfoTHOXln9iAYFYv0SaZe8DTL0wJhukFBfde8C/4kH3v6wKZN+IMKNvSPfSGiQ1DjxflwD1aHWzVRPRAoAvtsXDAL38CIUgm/AaQGjZ6E6OHtCL6EbfPigpmg5CLZm1Ff0S0TxYYA530HLujM+IcRxP9hznZjRgflDSZ6Mzjywz7XsT7x6CnTcoZkJkARDHw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(376002)(39850400004)(346002)(33430700001)(76116006)(6506007)(8676002)(33656002)(110136005)(316002)(2906002)(52536014)(83300400001)(478600001)(33440700001)(83320400001)(83290400001)(83280400001)(83310400001)(86362001)(66556008)(66946007)(71200400001)(64756008)(66476007)(8936002)(66446008)(9686003)(7696005)(186003)(26005)(4326008)(55016002)(4744005)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: xBUs8ovPvjo8Kw7U90X7OOmC+nhsub6EF/lmNJNFYJujZ8OCiiLtg1tJdULnv6gwDrHXNUQ2IN6g4BQJfCqzE7O6ktXYWP2+WGhd7S+tGBlSG87EN3UwZNNfe1hOeUzuDcI3dMPWg8v/M9R5Dew9i4Fd/aLNrmLzInVTvQ9hA0ohTaP8CqQMsxKRh3aLKA4XDlXGmKycd4uJLWqW+UFRgnh2sar0KD1Bcxhb5Hogy3qWdByoNixddWhSvC8pnO87DvFVg2xmRjKtNfyZB3TQDiuAlQ8wljdmH1Mby9ZAnGdZ4VJ2dCX9Y7ovvUOagq4iwvWoH9gprCsROeris0vIpvOWzbFmVjZFXsQzyhv4wgmLMbSNhflejGeZPra0pJosSxj6IfmtVn3462DgG17jTnINPEkU36mg2COEBIbu4Za71cegIAEMv3hwk0wpopPHyoXhzU8EngrVGMGXXfuO8/4QwPDs2eoHK3/vtAkTWDmDlVEI5Zmj62EpoZTSfRAM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4ac5d5a-c7f2-4ab9-a82c-08d7f35e33b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 14:43:41.4067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6dGDr0EcsbTgtEoOsMrFpp90gNLzwUlyhY3mYgSK/UGwD5IAaXxIEcFHaI/Jwz2+adRB6SD/ABT2YDcXATDTDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4038
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.84 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.92.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jX4kT-00Cgzh-6o
Subject: Re: [tipc-discussion] [RFC PATCH 1/2] tipc: fix large latency in
 smart Nagle streaming
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

@@ -2011,7 +2021,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 
 		/* Send connection flow control advertisement when applicable */
 		tsk->rcv_unacked += tsk_inc(tsk, hlen + dlen);
-		if (ack || tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
+		if (tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
 			tipc_sk_send_ack(tsk);
 
Beside tipc_recvstream(), we also need to make the same change in tipc_recvmsg().



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
