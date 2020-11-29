Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2C92C7866
	for <lists+tipc-discussion@lfdr.de>; Sun, 29 Nov 2020 08:52:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kjHV4-0005xH-Bo; Sun, 29 Nov 2020 07:52:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kjHV2-0005x2-US
 for tipc-discussion@lists.sourceforge.net; Sun, 29 Nov 2020 07:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qsowewy0xYdClzCd32H2qI2bskLgAaS/Izx9WOna7Jw=; b=hhMnYz2knBJW2tbjJgIx74Mto4
 Exewyw8FOgiIKs8zR65z7VOpulShU3EFTouGjpV4/r8p+CL59m6jJseLfVor9fgVeWIW4YNqRgqUY
 yQT2nySGc8rf9E5h4IFyD0ffyS1bvFweHiNNHySIqrPkJ1t/wtydJ2QRYATfrZRvr+as=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qsowewy0xYdClzCd32H2qI2bskLgAaS/Izx9WOna7Jw=; b=N23VoIhLAl5LCQGjy3ynJzbU6k
 ImdwrZfSm0AqVcptD0N+0v57o1j22w01NFMHWbjmEJZbzIaIJJ6Np2gb6zG/rw5f0XLoPd8OXv5zO
 nzfnGlAksFB5raTdXvkO5swYjbW9xSv6gG1mFavIxBoynWpQhKqX7WrvZcvDfv265D34=;
Received: from mail-dm6nam12on2069.outbound.protection.outlook.com
 ([40.107.243.69] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kjHUt-0043ac-9Y
 for tipc-discussion@lists.sourceforge.net; Sun, 29 Nov 2020 07:52:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lcuyn49/lJ8v1Hj90Cc4jrGsvC2ufmlTOKTnDVDbJ0ztUseMqgTgE/FU73bG/2qqb5hOp2OnwiR0lQsY/KQk7mHZ6xHEipQhkW252+Y8rYqdMMLFwOuid9kekFX4KaAfOhZCGZGSI31KKQ1rikmfTHD6rWeShfRwZKKFzxv9fK2a8x2LQAHlhd8txItu+x0ei+cN/CsAUZN2sx0daAIde3hYYw80aEaRQkWQ+EJyTfrIhW7FdSFCJwShU+OPuwrIk4wQu0vyA0fGy3ar7e1Fz6L82ATwrb1a4H3ZpEIPPKic1u1ZTPWdkx3xfJuGPGMcvsFp086kpblZkfQsutCn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qsowewy0xYdClzCd32H2qI2bskLgAaS/Izx9WOna7Jw=;
 b=UUL5EifNwLF3d3ULCRQwzbPzk8lvK6xUwXP6RmVqwnCSN9UgE+i/L68l56hzf2Km59x3upwK/5sJU2g8cRa2UcMCWM7Z1G2/A7vYkhvYpGdlM2APNG/MsG6vbpdFW4TeCY5Xa7g/LTr1EL78IxX5eH0+lwNOKrXxay6uSDA02Urwkj5yNmLpsXRV5NbfXtdmxZ1MA4r4nG5ff1x7z/P04CupJPdA2aF3BRDcXk79l0t/Z1Ifl0HwpS7U6wviYQ6NM0pkbBT6vQDr8JngmQ7k3yFJXpmwx/mC/A9+Ys9PjigGdTyj4qFexPnJwr/wLueC9tysf90kkRHp0UgmSgYnSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qsowewy0xYdClzCd32H2qI2bskLgAaS/Izx9WOna7Jw=;
 b=KC7ECxaKc/Jf3Xc0gzV8Owyrf7+zNr91o4tBRyHqSJXYtzMzHOJ4kJSrTTSectUuKxQc99CYQYmLV/F6ZRtlvWNTKP8LzeWBXxuE+VIP7FmOHcCXlu3WXl2r1FmawOyiQNSJRnbM2+8gpdavGVxdh/zaC9WgaG5YIaUs+9Ing8A=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4626.namprd11.prod.outlook.com (2603:10b6:5:2a9::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3611.23; Sun, 29 Nov 2020 07:37:28 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3589.022; Sun, 29 Nov 2020
 07:37:27 +0000
To: Randy Dunlap <rdunlap@infradead.org>
References: <20201125042026.25374-1-rdunlap@infradead.org>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <bde23bb7-9c96-b107-cb06-64695726b21b@windriver.com>
Date: Sun, 29 Nov 2020 15:37:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201125042026.25374-1-rdunlap@infradead.org>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0073.apcprd04.prod.outlook.com
 (2603:1096:202:15::17) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HK2PR04CA0073.apcprd04.prod.outlook.com (2603:1096:202:15::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3611.20 via Frontend Transport; Sun, 29 Nov 2020 07:37:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 424b8f77-c506-4dd6-1c99-08d894399ef1
X-MS-TrafficTypeDiagnostic: DM6PR11MB4626:
X-Microsoft-Antispam-PRVS: <DM6PR11MB4626A4872B84C79FE95D626D84F60@DM6PR11MB4626.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Du4xLc0Oksn79a51/iIECDNkXI8mtb2TKThZwSNBKHQYv3ZzhB4S2IxBzOjC/lwyteenV+FfSVi6AqeosXaCb9QBPo9WXi6Ws7y2KahshqztFsLoMH8CFPLeosvt+CEMLQGG8RDRw8N13upEkOYWUAbKKQnYmkdD+5izB2vZdjONwsPnzB5Qvb+mnhaDHruF8VNd39zJUTACECvsX04+Fp6CgNjLBlhUVu4p8f28DRrN7cHSVbLglrCw1D8/vwaEBltpj8pCU5mDxQef+W/1Krywi1Wi+mD/ydbXGvVWuxCuAqeDYUyzfTC6ZQHUZgggmoyO4xrprdh4JSFmyznnG/NR4H6dz3uD198p65USj4rPBZ9mN2qQqiOeW79GQ0MxFBOvTZjQGD5UNuazRpOZXQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(366004)(396003)(39830400003)(478600001)(6916009)(83380400001)(52116002)(16526019)(66476007)(2616005)(6706004)(53546011)(44832011)(26005)(66946007)(8676002)(956004)(2906002)(31696002)(186003)(4744005)(316002)(6666004)(66556008)(6486002)(4326008)(36756003)(31686004)(16576012)(54906003)(8936002)(86362001)(5660300002)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Wnk3VDZ6Qll2VjJjVWNJbzduNURMVmxKRCtETVcxait1a3BxMm9hU3ZQcmJ1?=
 =?utf-8?B?NTNxMVhMMFMwN3BKS3IzV3pqblZJQ1ltaDFHcnR1bTQyQUdQWjRrMjBMeHZF?=
 =?utf-8?B?cS9pSGNhZHFzVGVIVDNJZFBIWFdXTWdtZDNXc28wSHZyaGpOQnJwOGVvK09P?=
 =?utf-8?B?b1NISTR5d2xXZTJqUUtaUEpSNFdHeVpDMi9FdUV3ZWVwbnR5SVkwaDY5N0Y1?=
 =?utf-8?B?cUd0YUV1eFZVdThmL3dRQnJWR1BqMURlRkkyK3JoRmo5dmxsd0FxZDVNem01?=
 =?utf-8?B?d1FmVlJBK1ViaFJLZEpVb1Njd3ZrQ01oK1hKc2pLWmlKMkFxdzNUNTFvMlpE?=
 =?utf-8?B?MFNpK1IxOUltRFNNSlU0VGtrcDQyemJYMXhlUXp3NWJXdFUrZGRUdCtMcFJF?=
 =?utf-8?B?ZEhPTThHU3NjaS96Tm9YYXBsL2UweUdlOGFaR2tzdTJmK0tCV1hMVmF2czdD?=
 =?utf-8?B?WGRVZWdjZmMwWTlQdVVYMnFMalp0dE5mcmE4TnZYOElheVB1ZEJ5T3JtTllF?=
 =?utf-8?B?UzdsNm5jWHFveGVKRzZjZXV1ckFtdFVNcVk0L2tYdldHNk14K0tXOXVqczVK?=
 =?utf-8?B?RDk5cXFLRUJsR1VtMFY3a1JyVlRpYWtsOUlTbGliVE5seEdHRExWM0lqTitQ?=
 =?utf-8?B?aTNqTkZGa0Z6TW5UdGY0S3I0aDdYZDlrblFJM0t0dFZjc1BCbXJZSGpONWxC?=
 =?utf-8?B?UXpaOHUzSm9aeGl5bjJSZUo4Vm1BNVEyL1hxZithNElpTVZreFE3MXZxTkov?=
 =?utf-8?B?TVY5OXpVV0RCeWthQnNrYVFKdXJ6aTJpcGZESjdjL1JJclhjK3NxZk9GZmlr?=
 =?utf-8?B?TURIK3lGZ29FTGxmN214dTQrMXhDQnRvMHZEdjJ0L2NXQXBZSjV2Mmg5aUJQ?=
 =?utf-8?B?RjZxWTNzSlU2MXU0SjFaS053ZGk0ZmF1SnNyK3cxNWdZTEV2czBzWjhmQ1JB?=
 =?utf-8?B?NHlDNXQrMFBiMTZSaWpWMFZtZkdCZllCMXk5ZUh4S3FOZ3ZZbFRYdDZWZXR1?=
 =?utf-8?B?L0d2YXFMSXlWaDVEcmVuc3VESFR6aEVHN20xam5sUFFoeHR5NEFteFM5bmdr?=
 =?utf-8?B?bTBLWXlsc3VpVGFDNi95cHRJbCtWT29QQ2hUbzRWZzVrNHUzeGFsaWlHeXNL?=
 =?utf-8?B?WFpJY1JteDBQU2VONTlvYkx6V29nOHB3STAvbHZFZGVaR1ZTNGpLU0h4U1lj?=
 =?utf-8?B?K3NIQ0ZvRTNzNFYzeCtURWwwdEZlbXdPNWRsVWxqTU1ZK1JURWNDajUrWEhG?=
 =?utf-8?B?cURjRjlSeTZsVXE4Y3RMT1JTYXcrUGQvbklBeHF4eG8yUmhlN2tjN3kxU0w2?=
 =?utf-8?Q?t6YlrtDuxP2xm3yD4IJrkgVzW10F+8i4P1?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 424b8f77-c506-4dd6-1c99-08d894399ef1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2020 07:37:27.8020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J0RmPoXSH0S1nEqFtdnHRwB6oY3/JozUR7oGj9vkj1L2ogBexRC8+PLoua2qRNum5MUgCbTk20IKmAH0fShKWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.69 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kjHUt-0043ac-9Y
Subject: Re: [tipc-discussion] [PATCH 00/10 net-next] net/tipc: fix all
 kernel-doc and add TIPC networking chapter
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 11/25/20 12:20 PM, Randy Dunlap wrote:
> 
> Question: is net/tipc/discover.c, in tipc_disc_delete() kernel-doc,
> what is the word "duest"?  Should it be changed?

The "duest" is a typo, and it should be "dest" defined as below:
struct tipc_discoverer {
        u32 bearer_id;
        struct tipc_media_addr dest; ===> "dest"
        struct net *net;
        u32 domain;
        int num_nodes;
        spinlock_t lock;
        struct sk_buff *skb;
        struct timer_list timer;
        unsigned long timer_intv;
};


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
