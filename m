Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D9064738
	for <lists+tipc-discussion@lfdr.de>; Wed, 10 Jul 2019 15:42:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hlCrk-0005fz-HI; Wed, 10 Jul 2019 13:42:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hlCrj-0005fs-TM
 for tipc-discussion@lists.sourceforge.net; Wed, 10 Jul 2019 13:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uNrj1a1xYvEEXWxnOymMfWoNPV1ydUCOXhYmBgDN0mk=; b=epA4nulSlCtdgk1kmH44/7M1IB
 huK4RbUSJ6jr/XrQwN/moIjYVAqunq0/tDvhqkHSPsAfgIfvjGV2JlYvgtuhJxQEjZ1COuW2Q+TBk
 VlGQ8xXBTqjYA8Lstp0D2O9Yhjgn+uwRuVSH7bj9yLXnoCY4cvKpxOVRbMCQM1IU20C4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uNrj1a1xYvEEXWxnOymMfWoNPV1ydUCOXhYmBgDN0mk=; b=BJSh6XzmYsQl/IBT6WWMZDS1to
 hp8j4dJCUvlV62HVo+SlSyqMUX/QbpJRKGtixmQBTmd4cAYXTGt8k/mzkIVGOdr594r8pnhzl8Pz+
 /bGGhMpUvrPCLrLzkjTsVeFT8mAGC8odEmYOZVzrQqElch94v6OKI9jkvDIPGCH8x4iQ=;
Received: from mail-eopbgr710075.outbound.protection.outlook.com
 ([40.107.71.75] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hlCrd-00Ez2q-W5
 for tipc-discussion@lists.sourceforge.net; Wed, 10 Jul 2019 13:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uNrj1a1xYvEEXWxnOymMfWoNPV1ydUCOXhYmBgDN0mk=;
 b=VC17AU38W9eu5MH0bKu1ckwvnUjPXBUpXZENq3BJgyiXpM02IoNuwXjrjVK9r4YH/0fuHN6yk31T+U5t+7a7ksB0Taq5vDGeR7DZ0cnkX5QJ9YfA7zpX6o46cKCBhBHZs/ZX9ZVY4KQLNEChYzTwwtkSWNTG+rpVyaqelcFKevo=
Received: from MN2PR15MB3581.namprd15.prod.outlook.com (52.132.172.94) by
 MN2PR15MB2573.namprd15.prod.outlook.com (20.179.145.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Wed, 10 Jul 2019 13:10:20 +0000
Received: from MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7d02:e054:fcd1:f7a0]) by MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7d02:e054:fcd1:f7a0%7]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 13:10:20 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Eric Dumazet <eric.dumazet@gmail.com>, Chris Packham
 <Chris.Packham@alliedtelesis.co.nz>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH] tipc: ensure skb->lock is initialised
Thread-Index: AQHVNRbZCg2+IkEFUEKEsAEksjW2W6bB5j8AgABgI5CAAAiXAIAAV45AgADaXgCAAFK8kA==
Date: Wed, 10 Jul 2019 13:10:20 +0000
Message-ID: <MN2PR15MB3581E1D6D56D6AA7DE8E357E9AF00@MN2PR15MB3581.namprd15.prod.outlook.com>
References: <20190707225328.15852-1-chris.packham@alliedtelesis.co.nz>
 <2298b9eb-100f-6130-60c4-0e5e2c7b84d1@gmail.com>
 <361940337b0d4833a5634ddd1e1896a9@svr-chch-ex1.atlnz.lc>
 <87fd2150548041219fc42bce80b63c9c@svr-chch-ex1.atlnz.lc>
 <b862a74b-9f1e-fb64-0641-550a83b64664@gmail.com>
 <MN2PR15MB35811151C4A627C0AF364CAC9AF10@MN2PR15MB3581.namprd15.prod.outlook.com>
 <ef9a2ec1-1413-e8f9-1193-d53cf8ee52ba@gmail.com>
 <MN2PR15MB35813EA3ADE7E5E83A657D3F9AF10@MN2PR15MB3581.namprd15.prod.outlook.com>
 <e7606e76-8a0a-dab7-4561-f44f98d90164@gmail.com>
In-Reply-To: <e7606e76-8a0a-dab7-4561-f44f98d90164@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c73ea754-390a-4c3c-4086-08d70537f641
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR15MB2573; 
x-ms-traffictypediagnostic: MN2PR15MB2573:
x-microsoft-antispam-prvs: <MN2PR15MB2573CFFE79BF43FD1EF22FB29AF00@MN2PR15MB2573.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39860400002)(396003)(376002)(199004)(189003)(13464003)(446003)(66946007)(4326008)(68736007)(86362001)(486006)(25786009)(76116006)(478600001)(66476007)(66556008)(2501003)(14454004)(44832011)(11346002)(476003)(110136005)(2201001)(229853002)(71200400001)(2906002)(256004)(5660300002)(14444005)(54906003)(305945005)(3846002)(66446008)(52536014)(81166006)(81156014)(7696005)(316002)(6436002)(55016002)(76176011)(66066001)(53546011)(53936002)(6246003)(64756008)(99286004)(7736002)(186003)(6506007)(8936002)(26005)(102836004)(74316002)(8676002)(33656002)(6116002)(71190400001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR15MB2573;
 H:MN2PR15MB3581.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JUiaAR3oDbftQWyZ4TOOqLibn0r/hHI7CvFnK2SQvzEejDsVTUAFC2DZ/KiOXaK4u9kPdhUAWTqyhsIezNHBOkNH5uaK6FrBeovDmccyNDT+55f4PVjLc/curdg3RE18uAeHDNYaN9uN2sjFLWNHk/Y/FOYDz4tjFyTtGplY4ejVd/Wo/GECpW2T5FxsI29v35L7WYVCBbAepxMGFDs2ml7U3XAvfd9vSdKGMDTueSqKJ9l4c0aQzKg7CxtJqWfaTdYWixtRapcNyA8p0w/d72uOHpEnlO7wHVwPbSMjopdZnL+Wyulaq0cjgo3Lgwjp9INTa562Zff8h7Cfr6YRxoFahHqqhZjmaJKEquLybi1JUKKXSvmMJ8sFAHRSf/OHO6PG3DCCpw9oDE2/lO+wsn/2aDkkjRk5HC88E0i0cvU=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c73ea754-390a-4c3c-4086-08d70537f641
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 13:10:20.6767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR15MB2573
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hlCrd-00Ez2q-W5
Subject: Re: [tipc-discussion] [PATCH] tipc: ensure skb->lock is initialised
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Eric Dumazet <eric.dumazet@gmail.com>
> Sent: 10-Jul-19 04:00
> To: Jon Maloy <jon.maloy@ericsson.com>; Eric Dumazet
> <eric.dumazet@gmail.com>; Chris Packham
> <Chris.Packham@alliedtelesis.co.nz>; ying.xue@windriver.com;
> davem@davemloft.net
> Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH] tipc: ensure skb->lock is initialised
> 
> 
> 
> On 7/9/19 10:15 PM, Jon Maloy wrote:
> >
> > It is not only for lockdep purposes, -it is essential.  But please provide details
> about where you see that more fixes are needed.
> >
> 
> Simple fact that you detect a problem only when skb_queue_purge() is called
> should talk by itself.
> 
> As I stated, there are many places where the list is manipulated _without_ its
> spinlock being held.

Yes, and that is the way it should be on the send path.

> 
> You want consistency, then
> 
> - grab the spinlock all the time.
> - Or do not ever use it.

That is exactly what we are doing. 
- The send path doesn't need the spinlock, and never grabs it.
- The receive path does need it, and always grabs it.

However, since we don't know from the beginning which path a created message will follow, we initialize the queue spinlock "just in case" when it is created, even though it may never be used later.
You can see this as a violation of the principle you are stating above, but it is a prize that is worth paying, given savings in code volume, complexity and performance.

> 
> Do not initialize the spinlock just in case a path will use skb_queue_purge()
> (instead of using __skb_queue_purge())

I am ok with that. I think we can agree that Chris goes for that solution, so we can get this bug fixed.

///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
