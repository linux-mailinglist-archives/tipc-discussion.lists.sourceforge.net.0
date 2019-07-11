Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 086EA65765
	for <lists+tipc-discussion@lfdr.de>; Thu, 11 Jul 2019 14:55:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hlYbk-0002EM-46; Thu, 11 Jul 2019 12:55:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hlYbb-0002E2-M5
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jul 2019 12:55:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oHusE5s48/RUxfaorid1+sFXXf8MjHECdJyzrTzuJ5o=; b=fV31QPk6KBBU2DO6pdGMIPFgrt
 S6OyEO1gIRrDSLwU0JQwJur9YJvqDq+X+Bp0cqEqmjtEpruXCHJSAesDEMGvgo4X7xW0c4mT9xBTG
 xTZG5d6kwqNL2WgLl0kqLI/Fkgrt20Mobn0bsNkza4aU79RXDN1oIYHY851mXiOcAwmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oHusE5s48/RUxfaorid1+sFXXf8MjHECdJyzrTzuJ5o=; b=gbwly7I80a1DH9A/gPCGWX3o/K
 utKPk3BcZK6YDAG73mBzDAgaAZHMfcSaUKhzYSVXkIcBvj7xuOZhgSCIOB6t9IfBqAi4ODLAChu1m
 mkeVrTn31ha6qD/RRcwOlIc8t7AP0GJANVP8jb5Y+A4jjyRrrIQ4e7s8Ehh0QmCCu9rY=;
Received: from mail-eopbgr680061.outbound.protection.outlook.com
 ([40.107.68.61] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hlYbY-00FB7T-Bn
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Jul 2019 12:55:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKCGbex8LSFEZD55rJhoZaAfa4vLX/uyUmcCYxaNCOAGBjg2vXoBAoi5JIPAXuN0s76b5ztnT2bvqQT16bSUBqEcVpb8y579/SOJzO1Sedy7k7J++AVnfLPzZnz+Hh2JojqWGPw+CcPwlDFn/hgaHL0UBmjT31SLvXegMgQy/ouMTmJFL73upjSHuPxil7vz3dzJxilYIislY2QiucRMN28eiFyk21A6MWvU25RVxgKsfpniOV2h+mg0qsyOp8cI9MdXc69QPbmDBY+Q4qzctE4+RtVufX8bnOk3Gl6iJvl8WQSmXCs15qwKqgAQqb860nzlFtXBdnJ5T1ox6jFAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oHusE5s48/RUxfaorid1+sFXXf8MjHECdJyzrTzuJ5o=;
 b=HiFl7rKNOqHHq2FV8N+2WuJCHAWdfb2ANXiXu6YL01gmxHQlmrJvT9GWgd9NxkaxX3joE5aDBiZRQp1LQKmPkHV1asHoXUSSsO/pFrcbPTOU8YtvAD0gP/52TJ7CjLeK6TMz79qBC6dRyEl4mzUUwrySAMlDM32kswoEASGf//HjT3BlIJb4pOIxdD/JJILiWa0c+N8pWnE3NZy5xJsdZ0RmJZtbtBj2sdYEZE1BL1SjblcpFBHK2ZWbZbesYfbh2v0uJqcPXwWBOQF+gzPh95gZN4SysAoJVDQyA1U47r4ufhximc5kIPnMv5RwwDma91SyKZ2ZPDBicYSL5hJ9Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oHusE5s48/RUxfaorid1+sFXXf8MjHECdJyzrTzuJ5o=;
 b=PX3hlwqflal5WveTmExiAXYkhXzNODYJsKcSaywgQrG02l1gZ3HW2AcfJivGPUDxebYH+V0w7zj1lQ7ZWJ9xjFqGF87zoBBYho9Kv1lNIQ6znYbGeoJwXW7rpevLa627QN8T1Nlx9GIZJfJAbaCjzhGn+OQf8YIQABm/eJpsgl8=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3541.namprd15.prod.outlook.com (10.255.156.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Thu, 11 Jul 2019 12:55:12 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 12:55:12 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>, Eric Dumazet
 <eric.dumazet@gmail.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH] tipc: ensure skb->lock is initialised
Thread-Index: AQHVNRbZCg2+IkEFUEKEsAEksjW2W6bFYzhw
Date: Thu, 11 Jul 2019 12:55:12 +0000
Message-ID: <CH2PR15MB357528CF6DC0A587D2CB90689AF30@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <MN2PR15MB3581E1D6D56D6AA7DE8E357E9AF00@MN2PR15MB3581.namprd15.prod.outlook.com>
 <4d2ac0ce7f974184ac43b71f19aee7a3@svr-chch-ex1.atlnz.lc>
In-Reply-To: <4d2ac0ce7f974184ac43b71f19aee7a3@svr-chch-ex1.atlnz.lc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5edbd025-63ac-427e-1034-08d705ff0341
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3541; 
x-ms-traffictypediagnostic: CH2PR15MB3541:
x-microsoft-antispam-prvs: <CH2PR15MB3541F27B4B35FC7540CD0B149AF30@CH2PR15MB3541.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(189003)(199004)(13464003)(81166006)(33656002)(498600001)(68736007)(55016002)(6246003)(256004)(229853002)(76176011)(54906003)(110136005)(6436002)(7696005)(81156014)(186003)(9686003)(26005)(8676002)(53936002)(6506007)(53546011)(25786009)(6116002)(3846002)(99286004)(7736002)(5660300002)(66066001)(8936002)(476003)(486006)(14454004)(71190400001)(446003)(66446008)(4326008)(102836004)(76116006)(11346002)(66946007)(66476007)(64756008)(14444005)(52536014)(2906002)(66556008)(305945005)(2501003)(86362001)(2201001)(44832011)(71200400001)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3541;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vQ1G1vIptql2053HrtulEvLcPkw0bO/A+fec8nlgvLcOGCZ3ENvI2T57C6AEhrOQLAb/vNL5BrOdZ6IjtON6ZWjiIiC31oS1Jn31tGADC9zgnkby8oLEeUaQFLCXN1h1MSK/hsXqW/BNbYQ4dabzoMUz4Q0084TM0Pg7mXRIHL/eeJmjVF2b4WtX/TXoM0d8RC9cX+6pBHyb5wbQgrAwoT8wO1tcqeGsrsAQR6UoZTCHyI4rSVJU1JTI3+4fcL7GfT5r5mWyTbO4DTKIehw0VaHwh4kR5IP4bUSEqdZlY+aYQTSWyimV6UymYsaVvJAFcBcxzR76HHPm2vNhztGGUZpb2j3yUjkR+sMQYTXmB599zD8RKbGeufbUheh+3ccXltrL8j8JvgaUWre/lFBisYOIsAUIybXzKUnxvPS+ci4=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5edbd025-63ac-427e-1034-08d705ff0341
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 12:55:12.4390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3541
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hlYbY-00FB7T-Bn
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
> From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
> Sent: 10-Jul-19 16:58
> To: Jon Maloy <jon.maloy@ericsson.com>; Eric Dumazet
> <eric.dumazet@gmail.com>; ying.xue@windriver.com;
> davem@davemloft.net
> Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH] tipc: ensure skb->lock is initialised
> 
> 
> On 11/07/19 1:10 AM, Jon Maloy wrote:
> >> -----Original Message-----
> >> From: Eric Dumazet <eric.dumazet@gmail.com>
> >> Sent: 10-Jul-19 04:00
> >> To: Jon Maloy <jon.maloy@ericsson.com>; Eric Dumazet
> >> <eric.dumazet@gmail.com>; Chris Packham
> >> <Chris.Packham@alliedtelesis.co.nz>; ying.xue@windriver.com;
> >> davem@davemloft.net
> >> Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net;
> >> linux- kernel@vger.kernel.org
> >> Subject: Re: [PATCH] tipc: ensure skb->lock is initialised
> >>
> >>
> >>
> >> On 7/9/19 10:15 PM, Jon Maloy wrote:
> >>>
> >>> It is not only for lockdep purposes, -it is essential.  But please
> >>> provide details
> >> about where you see that more fixes are needed.
> >>>
> >>
> >> Simple fact that you detect a problem only when skb_queue_purge() is
> >> called should talk by itself.
> >>
> >> As I stated, there are many places where the list is manipulated
> >> _without_ its spinlock being held.
> >
> > Yes, and that is the way it should be on the send path.
> >
> >>
> >> You want consistency, then
> >>
> >> - grab the spinlock all the time.
> >> - Or do not ever use it.
> >
> > That is exactly what we are doing.
> > - The send path doesn't need the spinlock, and never grabs it.
> > - The receive path does need it, and always grabs it.
> >
> > However, since we don't know from the beginning which path a created
> > message will follow, we initialize the queue spinlock "just in case"
> > when it is created, even though it may never be used later.
> > You can see this as a violation of the principle you are stating
> > above, but it is a prize that is worth paying, given savings in code
> > volume, complexity and performance.
> >
> >>
> >> Do not initialize the spinlock just in case a path will use
> >> skb_queue_purge() (instead of using __skb_queue_purge())
> >
> > I am ok with that. I think we can agree that Chris goes for that
> > solution, so we can get this bug fixed.
> 
> So would you like a v2 with an improved commit message? I note that I said
> skb->lock instead of head->lock in the subject line so at least that should be
> corrected.

Yes, unless Eric has any more objections. 
I addition, I have realized that we can change from skb_queue_head_init()  to __skb_queue_head_init() at all the disputed locations in the socket code.
Then, we do a separate call to spin_lock_init(&list->lock) at the moment we find that the message will follow the receive path, i.e., in tipc_node_xmit().
That should make everybody happy. 
I will post a patch when net-next re-opens.

BR
///jon




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
