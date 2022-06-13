Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E53547E4A
	for <lists+tipc-discussion@lfdr.de>; Mon, 13 Jun 2022 06:01:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o0bG4-0007zA-7g; Mon, 13 Jun 2022 04:00:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1o0bG2-0007z4-K7
 for tipc-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 04:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1XyMOjRmyuNDrW6BHlbp/7NLQdbvZwDinm+5kNDIpqw=; b=CSR0wD/2N45pixzZkOGfCIA6zc
 CVmAGiSxT7sy7ijzXayxw/a2nREibBgehyn/P8afr3oiWRA5CMq6BRxFH7KvBMG0Y45CLgLF9LvGf
 +UDjTYzNIxQq69NralMfaBZACR8Hety5VMlasyQIDLLU3uCSEdkc8xidE4zoJW7uShOQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1XyMOjRmyuNDrW6BHlbp/7NLQdbvZwDinm+5kNDIpqw=; b=ML9s/+Jdms/scv2L4CEC3ciXUe
 +YHyLxb9BLnN9w1grIKlWR7grLTCswQgg2B9TygZrq6LJff9eStY0nVDcuchKoKNHXTfyE+7Qjp1t
 CU/Wq1jiZuHEqzCXiUJZYiKSRvA3ksFzeKqgHQcSEY2FzUMmpkBHc9Ua3ikFaB5OPBNc=;
Received: from mail-eopbgr70109.outbound.protection.outlook.com
 ([40.107.7.109] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0bFp-0000aL-9E
 for tipc-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 04:00:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JbwYPhj7v2YjMOTW/5Y8I3Qr7unfnsai/W72HIc2HINeEuxM8NiKL7uHFPxyOaSbpbv9gN9Xz+3+Y2iwCxOiBBrJOInaroVKBuJHQBWONRKeOxzJIZzU3x9wHEKVSZOL/2AwWMiOIzAq1ZPk0GPFpCkJLUwuO6R4Vt5ilxk28XGOBysUhu4qHvy673Ar0M9uE/Mn4o7Tim/9h6Cggpc7y/633HcYVWrBu6LFcXihcQd21uCw+1l85um8wBId8sL3Fnk/XFFM/eyGlkpM9nEF573PctYTTbvuqw9rkbbxAHM6BcILyDxwZBZGCgEP5LJLGHHSOYtjBIixsr0LdiKaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XyMOjRmyuNDrW6BHlbp/7NLQdbvZwDinm+5kNDIpqw=;
 b=WukiTn2fi+FVNeGbphcEN8fOJcVSjncbmrJbAZtBQuF1ABlA6SiWyPqFTfSX7hh5XRyRaqsKOfT8orDCgvujPsBsq4AlEQETKQaT1fipfLI4v/FHfBCK38fVfurpoYQre/6meA1HzmFqznH6HsFenQRKD/xC9CcrM/sAv5OnIWRk558wscwSsvaclLGYIjiZeGUDr23uLF6zR5gv4bAti+rgx5hYNXaiw8rf5GoVnXyOes9N+d3QJ6PWoBfBJU4Sm7NlnyZiayCq6R4h9WbHWIGDTpS0ZtAm36rWyzdI6Dd+Dax7s9mprxXdb2OrzzrwY9AuRpcP2SGa3qDGJcKjwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1XyMOjRmyuNDrW6BHlbp/7NLQdbvZwDinm+5kNDIpqw=;
 b=gSgtYKOh7wxECdCycuw5E9toPOfmikJ+mxm2GzakwGox292XsvR2iuQixxzBo9YM6mA9NIR/bW+ryh0A0+Jr15x3Meerun7AFSqaLbM0awmThptp7Mmz9qlyaxEJTH155HjLFgnzqAVCqdyr1MvSXMM/paBAun3ZY0M5t0xJ4ds=
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by DB7PR05MB4892.eurprd05.prod.outlook.com (2603:10a6:10:22::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.20; Mon, 13 Jun
 2022 04:00:32 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::f429:2b60:9077:6ba8%5]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 04:00:32 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>, Tung
 Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH] tipc: fix use-after-free Read in
 tipc_named_reinit
Thread-Index: AQHYekEj8HTQFgz2KkimOL1qBcf5Sq1Mv7uQ
Date: Mon, 13 Jun 2022 04:00:31 +0000
Message-ID: <DB9PR05MB7641B300F62F538046E8FE03F1AB9@DB9PR05MB7641.eurprd05.prod.outlook.com>
References: <20220607073506.74619-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20220607073506.74619-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a583db76-3d59-4a38-f146-08da4cf1431a
x-ms-traffictypediagnostic: DB7PR05MB4892:EE_
x-microsoft-antispam-prvs: <DB7PR05MB4892836B5466758D5C232865F1AB9@DB7PR05MB4892.eurprd05.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EZKnzB3/bxf9VGDj2xDWbTnCOgzZiHgbuDGOC+Cbk9kRIK17lY+xnqGJ8THrVGOzG/KllEve139NWN11EwgPO0pLnlVyJ766JvLrAeakw+Fjmw7Wk8zg1jx962diJbLPJnpoK6vwdYG0BBVmxt47PoMllYQ9Eoby0FdmT4B7fsOtfC2STQ+H5d+T+EJWwI6kH7EfK88/9nh6F7ciCpzxH6Vfe32qbCwowAJaiA0fqVNzmwfWrVgLt0xHl2IoVmY9mxcZIX5O4/4FfxprzpWB1zGyGNOalWIeiTaBAdPSCWcq6vRfPi9gaw71dGaYuWVWFhivLyRrTJPKmrXS3IaS5ghxyfFW9LPfpqPlzNj7936T6o6D5njnUjo7jVFuIJq0Zg36XxAJWMRcHezRFRz0pbkfIA9TNvGjchL6V1jcbZht4zjvGfXfIu8ePqOAgeda/JCdIezA/6B5hJEYluMjsFGbc5egKnQJbzZTQWETM1W18zMehL7wOeZVXz+MpXCuUI9+F0Z+JwsvIETW6uRf13xKN0R62Mrzhw9iNnIK6uPQKxUlAjzPSMm7mJgvEd2URckg7bUD/qeGZJRZcL3x+hyt/7VygQwnfEA1to6DYDr+CZcNV3IPdF+TvRqpglPx6zvLzxt/Aos/rUKjDP0BQ+/B97X7clv/qS+c7XsX3UXA0DhKOcMQKAqa1n3NHWG3N47Kfg3EthMEgLh59EfZoBmq69Qmhm2uG7yutGeEBp0jrTu346xrtzCSjmpeKEkZ7ZW6srZo1XZO4b+K3r9ECw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(39830400003)(366004)(346002)(110136005)(38070700005)(316002)(186003)(83380400001)(41300700001)(122000001)(8936002)(508600001)(52536014)(5660300002)(966005)(33656002)(66556008)(76116006)(66476007)(66446008)(66946007)(64756008)(8676002)(2906002)(7696005)(71200400001)(38100700002)(55016003)(53546011)(6506007)(9686003)(26005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S2m0T3hTOV6oEMhB5r9qhfyxfYcjU3sjkXLQayQl4YOMEScn/stw+NZ67GEx?=
 =?us-ascii?Q?VcHgY4wLl6ALguH/RtCzJCfEnIgxHNi9J7B81KRPEDUg6vyWxD6QF3E5M8i+?=
 =?us-ascii?Q?kMq9vt/4z/WlCiaIKRSkdhu0Wrlh+crK6VkYkuDHuKjlOY5mppWRGwKoiYBN?=
 =?us-ascii?Q?LlCeGxDtSwajKm38nDhjXqf7J1UyrSeiAF40Hju8XMdkXKaLm01Qz/wEKrxa?=
 =?us-ascii?Q?UIOrFOQVFZJNgmTGv38tdhXvObXP7Pkm8K7bEDSJePfgeZED/FxD4TbLOtBR?=
 =?us-ascii?Q?t1sf7im7vztvw7tzg1IgJNB0ZHe84VUfEcVDlRTArpo6C71Ml9/rSx44sXc8?=
 =?us-ascii?Q?L1h9wuxjedma71Fw62ghI5vbhpZ4tYIJogXg7XW+WkORZNmRx22liAgbmwjV?=
 =?us-ascii?Q?qzmfsIoUA+80jks8y7jYy4Nst3Vcgf/uQNmXDEk6TM8drbxOfQfCdqsLhygQ?=
 =?us-ascii?Q?2gx9R2uZ4CfqYN/Blw1k/kHMDePsDcy5BYRWROFp3BX2erxipQ//bAomQDec?=
 =?us-ascii?Q?ge/IL6pmyqEmJd4UyDaI4uGDt9zG5VvR2n5u0r3mgP77l9baL/VnxP8FFWSR?=
 =?us-ascii?Q?3vWs+Gdgy8LKzcK7oQk61RK4BPG//hqK4+aCr2/q5JucMJmvkJwsryfcpxjQ?=
 =?us-ascii?Q?Z83gSL6Gki8KoO7Z6BA2jrW3EY+IENHHNzhx2T6UpHbDqeNj3S54qkwrtqqE?=
 =?us-ascii?Q?3kRLue8s+kYW3TL1Y4aT26Zi1ksglI5kgDdKBShd5eOT/KjsMClw/NAKlHJU?=
 =?us-ascii?Q?erRkomrNLYFafHcHB8h1AGDTTkL78knSpPO422oQH1DOCsnzSNLEiX5lXXOe?=
 =?us-ascii?Q?EDcruaPzLfpptKQ00Qi5rM19X2VmzMrokjqRXUxiHYV06PZ/1PkRVduwS52V?=
 =?us-ascii?Q?TMABUlfrAxBWtb3iG70I144Yl3vB2lUzDEpnUgCGmIAu9LoCp1T6wT0s6LLZ?=
 =?us-ascii?Q?T9WYSKQ1hx/iZ2xtsIBeAjNKNaML/i0WxGpnrZ4vllwywsl+K+sa2yIihB+3?=
 =?us-ascii?Q?sw0rRemOjCirYSSdd0odEA5j2iz4JbEPQFziNU4NnLum5A4GisP0I/hTrY4p?=
 =?us-ascii?Q?J5Sj04R6m+efYAKIvCwREvhJ+f0vcnG2aXDRLuEp/EOemcUdRizD55aeDKaD?=
 =?us-ascii?Q?lsl+OnBHw/Z7PfHRaL3ygng+j6604H5gXHg8VB2RTiigjs6HfEIskWVnblJ0?=
 =?us-ascii?Q?yFYxfvBbgxiji8a/hHI4/Vg8BLxHb9wdd2D0sdyiciGBnGQzaRdwIendi2g3?=
 =?us-ascii?Q?4tIR2YAQmcaJa75ro9Q0LI6EW+HDu486ROlbV2vKBmBGGtjBTyWIasJgB9TC?=
 =?us-ascii?Q?quH8HLWL40e6bTveotHqOUJWo8XCf5TkfvIh3W9cphToUQCU3UGkildenbXF?=
 =?us-ascii?Q?ufACyfblJVFrYUK+l4O/ZO2JvWqxtwwwHTDnBCCS9sgzGeNVV3WYeaeBVljd?=
 =?us-ascii?Q?4HBs/zFURNKVe1HmiG8ZEqbICyLZFGeTUGtaO8yTxOYKMngGxRduGpZQasE2?=
 =?us-ascii?Q?E2Dvhy9J12aR9bD2XQALnLGAV8cH3/MOvmqMHSebBY/7utkmbpIMa7hrAz6m?=
 =?us-ascii?Q?QveV5Yn51VCTwWx68ekEJz9gNwDN/lFVL+5vytNr/Iupd/pJofbDUICRH7kN?=
 =?us-ascii?Q?g+I2lvdgOMHY/rsd7K1rDPpAB3cFNmCW49s3t7Bfl8L50B6sWjEeTnqfT/P6?=
 =?us-ascii?Q?/jCWRd7zj/McXSVWeAj0GFuVRz8KlV4rGx09juWOKUVqsMSl3/y2py9wB/p3?=
 =?us-ascii?Q?T6iU31pO0w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a583db76-3d59-4a38-f146-08da4cf1431a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2022 04:00:32.2858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0TWxsw3rsiWgvYKOTuEY1uzFMPzwsRVv2fjcKZCy1xAK0me3s1m72Zjy2Eix6TdceNRMhfOV0RvB0ERTJkhZLuuUfxD+OLr5OxZl0gzvOiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB4892
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jon, Ying, Just remind in case you guys missed this email
 thread. Thanks, Hoang > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.109 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.109 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0bFp-0000aL-9E
Subject: Re: [tipc-discussion] [PATCH] tipc: fix use-after-free Read in
 tipc_named_reinit
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon, Ying,

Just remind in case you guys missed this email thread.

Thanks,
Hoang
> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: Tuesday, June 7, 2022 2:35 PM
> To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>;
> tipc-discussion@lists.sourceforge.net
> Cc: syzbot+47af19f3307fc9c5c82e@syzkaller.appspotmail.com
> Subject: [tipc-discussion] [PATCH] tipc: fix use-after-free Read in tipc_named_reinit
> 
> syzbot found the following issue on:
> ==================================================================
> BUG: KASAN: use-after-free in tipc_named_reinit+0x94f/0x9b0
> net/tipc/name_distr.c:413
> Read of size 8 at addr ffff88805299a000 by task kworker/1:9/23764
> 
> CPU: 1 PID: 23764 Comm: kworker/1:9 Not tainted
> 5.18.0-rc4-syzkaller-00878-g17d49e6e8012 #0
> Hardware name: Google Compute Engine/Google Compute Engine,
> BIOS Google 01/01/2011
> Workqueue: events tipc_net_finalize_work
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
>  print_address_description.constprop.0.cold+0xeb/0x495
> mm/kasan/report.c:313
>  print_report mm/kasan/report.c:429 [inline]
>  kasan_report.cold+0xf4/0x1c6 mm/kasan/report.c:491
>  tipc_named_reinit+0x94f/0x9b0 net/tipc/name_distr.c:413
>  tipc_net_finalize+0x234/0x3d0 net/tipc/net.c:138
>  process_one_work+0x996/0x1610 kernel/workqueue.c:2289
>  worker_thread+0x665/0x1080 kernel/workqueue.c:2436
>  kthread+0x2e9/0x3a0 kernel/kthread.c:376
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298
>  </TASK>
> [...]
> ==================================================================
> 
> In the commit
> d966ddcc3821 ("tipc: fix a deadlock when flushing scheduled work"),
> the cancel_work_sync() function just to make sure ONLY the work
> tipc_net_finalize_work() is executing/pending on any CPU completed before
> tipc namespace is destroyed through tipc_exit_net(). But this function
> is not guaranteed the work is the last queued. So, the destroyed instance
> may be accessed in the work which will try to enqueue later.
> 
> In order to completely fix, we re-order the calling of cancel_work_sync()
> to make sure the work tipc_net_finalize_work() was last queued and it
> must be completed by calling cancel_work_sync().
> 
> Reported-by: syzbot+47af19f3307fc9c5c82e@syzkaller.appspotmail.com
> Fixes: d966ddcc3821 ("tipc: fix a deadlock when flushing scheduled work")
> Signed-off-by: Ying Xue <ying.xue@windriver.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/core.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 3f4542e0f065..434e70eabe08 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -109,10 +109,9 @@ static void __net_exit tipc_exit_net(struct net *net)
>  	struct tipc_net *tn = tipc_net(net);
> 
>  	tipc_detach_loopback(net);
> +	tipc_net_stop(net);
>  	/* Make sure the tipc_net_finalize_work() finished */
>  	cancel_work_sync(&tn->work);
> -	tipc_net_stop(net);
> -
>  	tipc_bcast_stop(net);
>  	tipc_nametbl_stop(net);
>  	tipc_sk_rht_destroy(net);
> --
> 2.30.2
> 
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
