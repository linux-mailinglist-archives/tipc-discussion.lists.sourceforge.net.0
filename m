Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD09354996
	for <lists+tipc-discussion@lfdr.de>; Tue,  6 Apr 2021 02:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fs2YcQahG6w9CyRkLL7L87cKQrswVZZYl/MhjugDv90=; b=fE9IOLyh37fzvqS9oPaoV3BMEX
	6W9pxZI6LgP0HYYguKSBRC4qZmcta1sWzAs0m1v21tgXHsHhri7xUH2ARWntK1jsKnfO5K1ZsyPtX
	Op7rjh3R4uMgWfsrejj+f5VFMWCos51oZmzdafhdAfe0JVBJdmC0Y/YeVqne/5wE0btM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lTZKd-0001gV-U3; Tue, 06 Apr 2021 00:12:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1lTZKc-0001g4-95
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Apr 2021 00:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nwux3V63MjeUw0wd+Rk24PrY2oaOeycrjzjQLc9VhDI=; b=OVqgzQ7ZmRH197gyPxOW/KqADn
 sc7ayb+jBkgANQbgAB4S8aMT5fE4O75tEqI5yAbuurdu82HF4pCx6qhxJazghNziYL9oUVdV0pye+
 fYXkFnkq6tBwmfEahU52OuOE69z7eqwEfoO8E9XUHX3FNgvywjurHHPKuyKS1yctg7ng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nwux3V63MjeUw0wd+Rk24PrY2oaOeycrjzjQLc9VhDI=; b=F
 V93gOHP0hx/s0oxkFVF+vqnveColmY/yKxgkzBED04qfiIW96lkjeNyrlRtIdxL0CUo+UOiWxcWb1
 J7LlKnGNoqKpdOXbvxsKb+U+v0ev5lreF8iWYDGvaSbuJZWctTTtEHTIQOBwy1Ywm2AoIZGA4ijsS
 7geIcOiTUQZRa5cE=;
Received: from mail-eopbgr80120.outbound.protection.outlook.com
 ([40.107.8.120] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lTZKO-0002n5-3g
 for tipc-discussion@lists.sourceforge.net; Tue, 06 Apr 2021 00:12:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6QB+bHLozNTH8DE8Mivl+pJKSju6e1mJOA00yI7GXZWbOnIuK90rS+n9AoleSK1+nsaX6KCuYFkEK1ht2rH3qzdVo8MiR9rtVMVCSGlcmgvt0kMQaC8by9TiHMqtIkAW0jFovDdjQCr83usfw2ymXbMzIaDW4FypBvUZug1et+Z+dEGNQ96QDipwSdX9fgzb1xupMV8lo1d+iqtwYdNi8tWjQcHAi+nCeqdV56pJJJHiirJyawXOUYEkIjW5SoVduMji3BkVEeawIUkVz1qcsPaJ+Qb0qlDnVptAZuPede7LJ6YwOEb40wMIUqO5i0Buh117vosAYvtXQjSEw+6TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nwux3V63MjeUw0wd+Rk24PrY2oaOeycrjzjQLc9VhDI=;
 b=ZKs47L9lkElb19IaJn6B/hkvfPg9w5xf2+qKF75nTRKPysaxY/dSDuybwEg9kWgxU8H775wfCQUUNHt3zkiFu1fPXnZyxHIwuI4oMdt5K6WzCmJFUDKG8K3irwFKGEt4TbKnIYj0Kc2/HQ8jHVgAlnC9FuHpFi6YYE/GTY0RxKoYzuiPP7VWZSbLpS/rNWNqfTSVyFB9fs54Rv5V9DyzLFjfG4kSUSapIMwy7IAiQebeMQ5PcdprdgE+J8+s7uqIkFn2SZl3wRqv0FNteV/kILfRAWgg68Wf1GFEhzPJN4q6VwXEAvyyuA2bs6oQT0qGx0vCdH5CXOQPi9ybn4tVYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nwux3V63MjeUw0wd+Rk24PrY2oaOeycrjzjQLc9VhDI=;
 b=ZGLr3gU/5P+KHvJHJWcb619Ru9uToNPn/DS3EPQP54kpDjuDTPiHu5gDV2Xg7N6qDNjCrFVim5oc9f0T+HOxfkLMXyhfgMLr1GKG+fuctMTAZgI+qlUg+uZyqjFFXNTomZV65Fg4+XfLS7J85z+J0PtgHc4Ln4QFcHeUtvnAgtE=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VE1PR08MB5229.eurprd08.prod.outlook.com (2603:10a6:802:aa::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Mon, 5 Apr
 2021 21:38:06 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::f923:2f4d:70b1:3024]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::f923:2f4d:70b1:3024%7]) with mapi id 15.20.3999.032; Mon, 5 Apr 2021
 21:38:06 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Kernel errors
Thread-Index: AQHXKmC+o/Ui2YV2tECxC5xQW2GNfg==
Date: Mon, 5 Apr 2021 21:38:06 +0000
Message-ID: <VI1PR08MB4192DA803011A39C4A91944D85779@VI1PR08MB4192.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d869903-e2dc-4bfa-7457-08d8f87b198f
x-ms-traffictypediagnostic: VE1PR08MB5229:
x-microsoft-antispam-prvs: <VE1PR08MB52294390D2866FB02F587CF785779@VE1PR08MB5229.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IVmEHOXQHUSCzn9g7JaJ9irTEMPT90zQP0D3C3WAiHX6/vwJ19EpISjq0yivQxXsZ/vRuf21fFcEZ/GDeSqj4O/OsW0k2uovEIQbI/KTpR9qnPcZHkvWd7kJgi+lnS3QS6wX0+hlvqyC8CtIRL7eOpIsIs7hcA7gylHfdSqFZejEkRWDFLYEkcmHARAIe0Nw9C6cRu64+ULgpf/CeXT+YeQa7y3Tcbhpgwyo/LmYKL0GTaBbMh6snpZ94rRXaeqzr6SMOFyAjDPXhNgZGrCDb/8W2Jf58ukcWgOh6Al/NEv7BqXczYL5dTo0Yn1m36up2DR3ngypHrULwW9INfpgYsnLslYapcpy5wkLa9eVerg+Zvp3MdagOBiBVpyPbQKx4azZuewSH8Xi1fRYwowpnvEhea0PeNVX2Y1wIeCBc/RSErB8vVHaRsOFkdromrSkPvgpkXuiLSodhzaFfDu0IVZWKt8Zk6KGpegGY/0VaXOvmUHY7m7dK+f6FQh95T1/JBEET/qEboA/JGAaI59pOevTS5TJbBIQa7ztZTV8CTmP47C1L+8+khdStEwRuhS+98NW9prtEXDxtou7B8T4VnziT6pQkvRPfKGS2+bDPDLI5r3WghcDmt2amND4u4fTqH129A/62obRLaKktCmiUa5l+f9CRcIsozgLfADBrD8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(366004)(346002)(39860400002)(64756008)(55016002)(66476007)(478600001)(9686003)(66446008)(8936002)(5660300002)(33656002)(86362001)(66556008)(7116003)(71200400001)(45080400002)(3480700007)(316002)(6506007)(52536014)(66946007)(2906002)(6916009)(186003)(76116006)(83380400001)(19627405001)(7696005)(26005)(91956017)(38100700001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?vyhlN+xqwpMnnpVI92uDr1gaGhs+LELXUuUtKpF0nuzzB5pbfmIvnUm1RB?=
 =?iso-8859-1?Q?8ADpm4JA8tNtc4xSkIKodblkJaH4KPRvF+uzZ2XTFK3l9okmH+ttc47IXC?=
 =?iso-8859-1?Q?cZ2sP6hS6f6/vkVcHZIOhUHDKyqSCGm6TXjqoVb64EHdBGygqUSgGApKU+?=
 =?iso-8859-1?Q?jMbrek20VtY8BGwmj5BTCckQP65DQIfycUhlh4R61WzqyAfVG/ylfWpXqf?=
 =?iso-8859-1?Q?riJBPyLgzLOIFrT8eekqLCXzem96MyB8fy013zUhVIaHFh+elxL3k+ljzS?=
 =?iso-8859-1?Q?/ucVang6wGNxqMtjWngEyEXh9Q3Xr0x6vAzvDCp1JmCMvYyYsMlBmKsGEL?=
 =?iso-8859-1?Q?2KRPoSMkTxZx1EaTkB7W232D+0jzkqXbzS8zyyVPtC0IKCEFP95Xy3JAcH?=
 =?iso-8859-1?Q?MHHzyh46TPDTvvMzbh94GJ1sk0sJRj0olQT+u7eCtZjat6vGbpW9RP5E1m?=
 =?iso-8859-1?Q?I86z2xcp2ck3oq3ZnjmTZvIDK2u60StxXaD8QUBm/CYe+T3RPeh9PqlJ0k?=
 =?iso-8859-1?Q?5mnbb6CIhqei75K3a5XEBSQ4Susets2EZZG+PXIpsQkXfdMDCXweM8U3sg?=
 =?iso-8859-1?Q?IFNmY7TBXWrogBBBZ9wLf07qFo6GfAGhVRVbC3sU4dqoxX+Qb0Fx+fm7TY?=
 =?iso-8859-1?Q?EbKnEO3FnoMxL/ySAwL2d8ej5e+RUxoLNcPKC6Qy2b6yYoh0VeWR0lt6lk?=
 =?iso-8859-1?Q?rx52pU5AgktwWrk1sc/Bg2jrfOHngVbyhWBhShkK3iFq8KozVYrP+Zn8R/?=
 =?iso-8859-1?Q?ChGlqTiSo2saNRde02n3qka7T/u2TLmEN13vSz4QwQ74rc5WZa7KStP2f6?=
 =?iso-8859-1?Q?YVh/OUmb5ENmY3DqL9F937Q8bHuV65lxtCPpuTCfq57d+NSJcMVk0HOxkg?=
 =?iso-8859-1?Q?la2WH7GrpoUunY4FbGdXM+vpjS5vHKcpWYC14VwlVfk/piupJMSlai+Aej?=
 =?iso-8859-1?Q?CPf1FM6Nc010YrutxK7t8vhWee4FiRGfNSMqRbB4ZVi00ozS98P0t6C+A2?=
 =?iso-8859-1?Q?YNPndH/3n9vIHscZqpcxQcRVaXa0LbwAiDv6u/b/0E2u/ZzNMz1EFOV/6V?=
 =?iso-8859-1?Q?V8+TFYzqkZpZyrbDSppYj86zog/+JELt6stEPhyVCTOqLw1vJ93Xc5318p?=
 =?iso-8859-1?Q?TGUfTTqIgk5C+CHWFegqLSV2AZ5f85R0MRA6324HZ/a4Q20oNLGGcP6HzN?=
 =?iso-8859-1?Q?8dEhKaSkHDZ4arlQvM3/ytnwD76QDthc+rLJILbqb19OX/JMu/zOdZjfbL?=
 =?iso-8859-1?Q?HVmNkv+PdMIWXIiEeRVquQjoyMoSMBTNpbYj6Zvt1waM/E6oCSzW8VNaC6?=
 =?iso-8859-1?Q?4CkDvrVD+y0mYgkxGTA0pH8GLQ7Exf0dBanJUCfQ83gIC9Q=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d869903-e2dc-4bfa-7457-08d8f87b198f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2021 21:38:06.5333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6VHe3RAu8FqBdpcchyoi4Ajh15WHaNi9lDdLLWKtO4XH6fE8/CUTkE4DF7pluxBKzmcg85tY4RiMCSoYamZ4HhGB/a0UbS6O6+6kiqFdMZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5229
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.120 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lTZKO-0002n5-3g
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Kernel errors
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
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   I'm testing some TIPC code between a Debian host and a Fedora host and getting some nasty looking kernel messages. Could someone take a quick look and see if these are known issues and whether there are known workarounds?

Description:    Debian GNU/Linux 10 (buster)
Linux post 4.19.0-14-amd64 #1 SMP Debian 4.19.171-2 (2021-01-30) x86_64 GNU/Linux

[Mon Apr  5 11:54:13 2021] list_del corruption, ffffa5fd89417d80->next is LIST_POISON1 (dead000000000100)
[Mon Apr  5 11:54:13 2021] ------------[ cut here ]------------
[Mon Apr  5 11:54:13 2021] kernel BUG at lib/list_debug.c:47!
[Mon Apr  5 11:54:13 2021] invalid opcode: 0000 [#1] SMP PTI
[Mon Apr  5 11:54:13 2021] CPU: 42 PID: 254384 Comm: mupip Not tainted 4.19.0-14-amd64 #1 Debian 4.19.171-2
[Mon Apr  5 11:54:13 2021] Hardware name: Dell Inc. PowerEdge R730xd/072T6D, BIOS 2.1.7 06/16/2016
[Mon Apr  5 11:54:13 2021] RIP: 0010:__list_del_entry_valid.cold.1+0x12/0x47
[Mon Apr  5 11:54:13 2021] Code: ff ff 0f 0b 48 89 c1 4c 89 c6 48 c7 c7 90 ae 09 89 e8 90 24 ff ff 0f 0b 48 89 fe 48 89 c2 48 c7 c7 20 af 09 89 e8 7c 24 ff ff <0f> 0b 48 c7 c7 d0 af 09 89 e8 6e 24 ff ff 0f 0b 48 89 f2 48 89 fe
[Mon Apr  5 11:54:13 2021] RSP: 0018:ffffa5fd89417d10 EFLAGS: 00010046
[Mon Apr  5 11:54:13 2021] RAX: 000000000000004e RBX: ffffa5fd89417d68 RCX: 0000000000000000
[Mon Apr  5 11:54:13 2021] RDX: 0000000000000000 RSI: ffff89b23f9566b8 RDI: ffff89b23f9566b8
[Mon Apr  5 11:54:13 2021] RBP: ffff89a5d3099800 R08: 00000000000006eb R09: 0000000000aaaaaa
[Mon Apr  5 11:54:13 2021] R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000286
[Mon Apr  5 11:54:13 2021] R13: ffff89a8f9d370c0 R14: ffffa5fd89417e28 R15: 0000000000000008
[Mon Apr  5 11:54:13 2021] FS:  00007f9abfcaa3c0(0000) GS:ffff89b23f940000(0000) knlGS:0000000000000000
[Mon Apr  5 11:54:13 2021] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[Mon Apr  5 11:54:13 2021] list_del corruption, ffffa5fd8834bd80->next is LIST_POISON1 (dead000000000100)
[Mon Apr  5 11:54:13 2021] CR2: 00007fbf0ebcd000 CR3: 00000006d95a0005 CR4: 00000000003606e0
[Mon Apr  5 11:54:13 2021] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[Mon Apr  5 11:54:13 2021] ------------[ cut here ]------------
[Mon Apr  5 11:54:13 2021] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[Mon Apr  5 11:54:13 2021] kernel BUG at lib/list_debug.c:47!
[Mon Apr  5 11:54:13 2021] Call Trace:
[Mon Apr  5 11:54:13 2021]  remove_wait_queue+0x20/0x60
[Mon Apr  5 11:54:13 2021]  __tipc_sendmsg+0x2bb/0x570 [tipc]
[Mon Apr  5 11:54:13 2021]  ? do_wait_intr_irq+0xb0/0xb0
[Mon Apr  5 11:54:13 2021]  tipc_sendmsg+0x30/0x50 [tipc]
[Mon Apr  5 11:54:13 2021]  sock_sendmsg+0x36/0x40
[Mon Apr  5 11:54:13 2021]  __sys_sendto+0xee/0x160
[Mon Apr  5 11:54:13 2021] list_del corruption, ffffa5fd88823d80->next is LIST_POISON1 (dead000000000100)
[Mon Apr  5 11:54:13 2021]  ? vfs_write+0x16d/0x1a0
[Mon Apr  5 11:54:13 2021] ------------[ cut here ]------------
[Mon Apr  5 11:54:13 2021]  ? vfs_write+0xe9/0x1a0
[Mon Apr  5 11:54:13 2021] kernel BUG at lib/list_debug.c:47!
[Mon Apr  5 11:54:13 2021]  __x64_sys_sendto+0x24/0x30
[Mon Apr  5 11:54:13 2021]  do_syscall_64+0x53/0x110
[Mon Apr  5 11:54:13 2021]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[Mon Apr  5 11:54:13 2021] RIP: 0033:0x7f9abffe49b7
[Mon Apr  5 11:54:13 2021] Code: 64 89 02 48 c7 c0 ff ff ff ff eb b6 0f 1f 80 00 00 00 00 48 8d 05 49 5d 0c 00 41 89 ca 8b 00 85 c0 75 10 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 71 c3 41 57 4d 89 c7 41 56 41 89 ce 41 55 49
[Mon Apr  5 11:54:13 2021] RSP: 002b:00007ffd979ddb18 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
[Mon Apr  5 11:54:13 2021] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f9abffe49b7
[Mon Apr  5 11:54:13 2021] RDX: 0000000000000008 RSI: 00007ffd979ddb28 RDI: 0000000000000003
[Mon Apr  5 11:54:13 2021] RBP: 00007ffd979ddb40 R08: 00007f9ac02c2120 R09: 0000000000000010
[Mon Apr  5 11:54:13 2021] R10: 0000000000000000 R11: 0000000000000246 R12: 000055d11e4c8250
[Mon Apr  5 11:54:13 2021] R13: 00007ffd979efa40 R14: 0000000000000000 R15: 0000000000000000
[Mon Apr  5 11:54:13 2021] Modules linked in: btrfs zstd_compress zstd_decompress xxhash fuse vfat fat loop rpcsec_gss_krb5 nfsv4 dns_resolver nfs lockd grace fscache binfmt_misc ext4 crc16 mbcache jbd2 f2fs fscrypto ecb intel_rapl sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass crct10dif_pclmul ipmi_ssif crc32_pclmul mgag200 ttm ghash_clmulni_intel drm_kms_helper drm intel_cstate iTCO_wdt sg dcdbas i2c_algo_bit mei_me iTCO_vendor_support intel_uncore intel_rapl_perf evdev mxm_wmi mei pcspkr pcc_cpufreq ipmi_si ipmi_devintf wmi ipmi_msghandler button acpi_power_meter dm_mod auth_rpcgss tipc sunrpc ip6_udp_tunnel udp_tunnel ip_tables x_tables autofs4 xfs raid10 raid456 async_raid6_recov async_memcpy async_pq async_xor async_tx xor sd_mod raid6_pq libcrc32c crc32c_generic raid1 raid0
[Mon Apr  5 11:54:13 2021]  multipath linear md_mod crc32c_intel ahci libahci aesni_intel nvme ehci_pci aes_x86_64 crypto_simd libata ehci_hcd megaraid_sas cryptd glue_helper nvme_core usbcore tg3 lpc_ich scsi_mod libphy mfd_core usb_common
[Mon Apr  5 11:54:13 2021] ---[ end trace bb3c37742d449893 ]---

Description:    Fedora release 33 (Thirty Three)
Linux lltcgtmfed01.fisdev.local 5.10.23-200.fc33.x86_64 #1 SMP Thu Mar 11 22:18:30 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux

[Mon Apr  5 14:29:30 2021] tipc: Gacks on 1866da4db38c:eno1-1866da4d75f5:eno1: 64, ql: 339!
[Mon Apr  5 14:29:32 2021] tipc: Gacks on 1866da4db38c:eno1-1866da4d75f5:eno1: 64, ql: 339!

   I suspect I lost at least one datagram due to one of these, as I know that it was sent, and the recv()ing process (now stuck) was only expecting this one datagram reply, making buffer issues unlikely.

   Thanks.

Gary Duzan
FIS - GT.M Core Team

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
