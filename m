Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D241296F06
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Oct 2020 14:25:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVw8O-00027Y-C5; Fri, 23 Oct 2020 12:25:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kVw8M-000268-9f
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 12:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FQLXHPp9kf6oBMhqj0x5oxVvbmdf3oBYMriM3Ikygdo=; b=k2d9I6Vv4s3XuadFauD3QlFVHM
 G22PSj13iDpbn2JZtu5sb8uAw6k58UzI+xXiAPvzaMIMWoJef2yOiLfNFW4/JCIH3g1e8LbOUBoto
 5J/oMf5Bo3S7u7H0+qIaYFOQRU4/EF7l/5wMFu3CzbIDJQQ3sd1Wjr6hk8TTJKnFSrsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FQLXHPp9kf6oBMhqj0x5oxVvbmdf3oBYMriM3Ikygdo=; b=TryC8FQg5gabv3WWOigVVveXfc
 /JK9M16BUg9nFUB/jvr8WspHeFunkA0Bt5J4E4RM5W6OhPLWqFoXnngkKlo6e+F3fvsitF9zJbYIj
 G6NC+w8GjrlsoSBMyKDK4mRWhbSz10Zgpg0Kyko/DuaO0D9/xCTBw5x4YoWjiQ+b91To=;
Received: from mail-dm6nam12on2040.outbound.protection.outlook.com
 ([40.107.243.40] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVw8G-003sCm-3R
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 12:25:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXrHP65zStp8q4C5xjj+FquutZou8CJkPZxGK8GIxKdB5/lvSxBUQmbVvIIS49fmC5Bfi1mcq2vEN2oFcUojpXZr1zNHlAWeJ4rk5qLYHUFEt77cbV7WsS2XwXXqg1lnsGFl6NpyoxvGJSB3cfepWnK+lWi2NE+oUdBQm4cgH20qC11Fz9Xvg0pnbIi8A5gYt+2rKrwDpWkO+R/ZJU8qnFfXebrTwev0ARTQD4eCgEI7PPpHsIpO2ChaIDR+NslIWJoFsBEbDRgXl8LfAlNR4bGmmRjLgkQ3vCk2zBYfXDrgVNPlN2cqw395iB6tO9DPq+XgPGswrzH8Wc5xxzTLqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQLXHPp9kf6oBMhqj0x5oxVvbmdf3oBYMriM3Ikygdo=;
 b=RYbO/NjpeZKKyLCZbYWlYo8boHO31bKHiNCabKaYNunH0BtbcapuNMeJVAYiyJQtD4m9EPzZQnf7EJKdWjztEHddfgTFfNjCxg1TC4cpAORn27p2LZWUNUZkSNYo90up68MdUExzd7IjIXJWtA3GXnQRgR2SeAYq4f+EhlcS+YV8M78GwEj5Bsx7tIBs3kYn04rkNKhUh5xl0IK2qHECGVnN/1pcmfLDmyJuAp/paF37t1aGTrTLwfLDDmyyDWOK+Ga04wRc3cHoxkABthKfLcxWUSZN/ZeZMb9vjZyB9wM8PO+GmTYGWblnz9WgpYjcNggm4/U2eyJ+XeCGQeSMMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQLXHPp9kf6oBMhqj0x5oxVvbmdf3oBYMriM3Ikygdo=;
 b=NKMILuxRRSgQGGEmj3b5kuXb3F3BkLySc0Afa5QWIZUbAq+GmB+0ge1YfWzf0x/aGO0cj7s0O/Q7IiKzqMvCSxWGWXZ6ZvG9teXzpSLoaJCb58SXvz/6XJQEWxEoaKlvQyuKflDk4eFLBPX5CMYUPs8tga2XFgPsUZ9fO0d67zo=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4283.namprd11.prod.outlook.com (2603:10b6:5:206::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.22; Fri, 23 Oct 2020 11:51:19 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3499.018; Fri, 23 Oct 2020
 11:51:18 +0000
To: Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
References: <20201010145608.1058917-1-jmaloy@redhat.com>
 <bfd2ebec-efb5-8937-1f56-4b73d830fc0b@windriver.com>
 <a4b7e540-5e35-b65b-319d-d3b23a13936f@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <6f4ad916-ba80-ceb5-ce59-f4b291dcae5b@windriver.com>
Date: Fri, 23 Oct 2020 19:51:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <a4b7e540-5e35-b65b-319d-d3b23a13936f@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0020.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::30) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HK2P15301CA0020.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.17 via Frontend Transport; Fri, 23 Oct 2020 11:51:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8dcec9b-a8fa-48d9-58d0-08d87749f38a
X-MS-TrafficTypeDiagnostic: DM6PR11MB4283:
X-Microsoft-Antispam-PRVS: <DM6PR11MB4283C299CD1FFEC45404BD62841A0@DM6PR11MB4283.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xrBlJGIUeOYYITBbs4LlQFgabxreh0565HzIqfWz0VpGitqWd/ZRVHYTQrNFC/TYu4lL+Nl7q35GsC6d9oCqlvBW6CJ0UdNiXsQwEd6+h7g4BwXrb8+byZEJzUIlkxvYxBYfxG2iqSlohwXgTybAYmpuNRp0Jim0/CPsU/bvvY34B5WGOA1XNYL4ZivsNOGPzSxBBcrZqD4zxuDE8HFofK6loDVJvGTWJAgCviN6VAGTQzMkmN2RL6DYikEyWD4RNZjdVed3ik3Pf7lhF1vuIFYvJ4oEaP2WlJAr0ZfofbcMEPL0yoFkBKLFnbRbiMQ4JT7ivPKUwbyJyTlDMgdTNKUNTAp/znVbSyzkD8KTAkqBm8sfmCJBtxSSceEMdZZwp7QzPHtL+/uULUJJIHOhvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(376002)(39850400004)(346002)(396003)(86362001)(6706004)(4326008)(2906002)(5660300002)(26005)(558084003)(6666004)(36756003)(8676002)(53546011)(478600001)(31686004)(31696002)(52116002)(6486002)(2616005)(8936002)(956004)(44832011)(66946007)(66556008)(16526019)(186003)(66476007)(316002)(16576012)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: jiN1Cm6xv61mGoykxxANh+nlxVCRq+5ROSigcgado5WT8SqBjB2/mb/k4/Hp6EiCW42dgqXln086SUSdtE6EkhscqkHnmX2gWhkppnBoSLGKzAFQBJp0xMuPZDCXNVEjmz1SaqvSP1MTub6rCuBZKrktB3cc3vd9NuBlS5QTBUUGokZR+hhPMnERW64o7OmFuXNFyVoxezYMiZXlCNUQjmMIkfiMnW1DPLWW3ZXUQ366q2OI3Kn8qJjxTz2mwwr3YVfovlSpA06vKGEv3AFQX9eDOdsrNQ4+lmrIvCOFw74mp9s/7sYcU2wKz22EXMj0Hb3tcu7kcDbpwNQ88wPFT4BViTKRvIDYWU7RUb+QyFjboSpZolANTMSz2/L+4PPFd8TX7D8yyeBafWTEoik8Q/r5OGkwctyj8B/8QShICDt9u68UQZXCZGP1cD46ilPDkRdcY1Plye2PIOux4g1jm9873RNqhnlsytOQEPUBg75v0CH/QgYfVex6Ruge68oFOaMkiuTRHIzeOiIrXUaz130whF4jGLlkJd5qIFBCQrbfZGJgsUxThCB4LCzxr/CD+eCduClwVU1E4wRSQHdvku2/Y4glkmf/4cvuTxQsqnNLdpd5YiQwK+76tx2Kr0EukiyJj+ZS5HLPIs5cUd9akA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8dcec9b-a8fa-48d9-58d0-08d87749f38a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2020 11:51:18.7825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 56p3+MxoCyeqGfeLB6GA6xDESmeHcNxRHt1WeaIf1usfgAGFGB9MllxQyy+A5pP2Nm3Dc9KKR9JC7DdNefhZQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4283
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.40 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.40 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kVw8G-003sCm-3R
Subject: Re: [tipc-discussion] [net ] tipc: add stricter control of reserved
 service types
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
Cc: xinl@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/21/20 10:58 PM, Jon Maloy wrote:
> That is extremely simple. Take the hello_server under 
> tipcutils/demos/hello_world and change the server name to {1,1}.
> It works! And it shouldn't of course, because it will steal traffic 
> directed to the toplogy server.

Thanks Jon for your explanation!


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
