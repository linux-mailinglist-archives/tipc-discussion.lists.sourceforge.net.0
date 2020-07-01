Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF4A210199
	for <lists+tipc-discussion@lfdr.de>; Wed,  1 Jul 2020 03:40:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jqRjO-00074K-9d; Wed, 01 Jul 2020 01:40:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jqRjL-00074C-NH
 for tipc-discussion@lists.sourceforge.net; Wed, 01 Jul 2020 01:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E5t/WVx5HzZz1aI4WealBMBePRq38oHfojH/Hj2e6N8=; b=mMlddAZBWkta4CILWH8z+Ai0tN
 AIFh392RVZ3Rso02fZAmEl5X15S1L3vNqYLcDoWyipJyq9x0LpM6debfWjwrKySPzCGDi9/OoXrhg
 5+VW0VIPtQibbtgEvM/tF9HPBEZpqDyW3X7zxugZ5pO4ZcMLvslY6Qt6S2iODZCxgV48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E5t/WVx5HzZz1aI4WealBMBePRq38oHfojH/Hj2e6N8=; b=SBHlcZ3Ig5j6FYs2d4UV8BTHtJ
 e3PfDTwKTNDfnLxqrkynsfly1BMVYCvXqUiNpO5zIloV67hkt62JSAY/mKxsKOlHJuru/mz141fDp
 x3O9SqJKuJN2+Jdl/eFQk6upeV+joaLIJOFD0NKL6aTj3rO2CEmVcSq6YpvWEMpk/wgc=;
Received: from mail-eopbgr80125.outbound.protection.outlook.com
 ([40.107.8.125] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jqRjG-003dmp-7s
 for tipc-discussion@lists.sourceforge.net; Wed, 01 Jul 2020 01:40:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlHJ791PR4zaSSwAllEr0i9qUrx0I2J76WaFTRjW1wLGTszU5eTlYyeT3kZq/+fxrn0wsFhftyO8T6WeXaspt76KNdqJiTVYHM+qot7RG7oBWeRFO8glv2CVzuxjlUuWOQ/HIOnluyyp4gMSqc2mEi+70ljHFPKwQaJY3yKdB5RqauOUls66dgRSo29lmRm2K+1ws7oiRm8vN4Ipye+m3u4ooVSwOPrDh+L87JrJJ/1paLBmAlAcGoA84LVNeGMGbaHt9vOrlRbkPAI52/YrHDdqSZA3EtCB79tegbjcjjwjl6aUAO3Whr67ARmXXPd9uDN0bsiGyV0NNMD9TgcxTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5t/WVx5HzZz1aI4WealBMBePRq38oHfojH/Hj2e6N8=;
 b=Ayp8UR7GKJfFsErxzqPXMdX2Eww2NtTiYG1pKFS8UeVbj8CSBG8SYdHFT7ZFabmxQ4RZpgOs0/sBfJpovdPEdsnNFX5Yn+sULXBbvJGt4bXL1Yc9btLuG+0bvv+/jeP4X7LTH6Fw1F3zPcNY99L75WeKXdEq/fM9fV0lTmeaO7D/JwuwqqQNDW9/+OTiz8UX+IXCEF/SQdr0tNAoUvEoDQTzMNQ9X99XPicnIqd6MKWzcskh+w/3icH1eI4WdaE0KavubR3rrRdDe/yCT91qNq0HfED2dMckJ8bBY//BZ0jic5j1fEw8jXwZWnvx6pbj5Y3HC7NzMJ4RY72N2d6cCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5t/WVx5HzZz1aI4WealBMBePRq38oHfojH/Hj2e6N8=;
 b=gImGpziYd0DedS94FcUIAboXnNLx71YJLEsIov99FmrzDT1Y1rqwNNefAitPPRnfZRyxmRUVCo+9dSObgsYtAnDxlUbkUPzGmsmgasXGOhDkoLb6KFGCybcX4ZWY4hVd6C/pQ10pr8oA64V/LI71uK7qklEFMDBVWAZofoOBG2Y=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR05MB5638.eurprd05.prod.outlook.com (2603:10a6:20b:98::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.26; Wed, 1 Jul
 2020 01:39:51 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 01:39:51 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net] tipc: fix incorrect unicast link window
Thread-Index: AQHWTprXyO76N4X8MUmjVHd5PniWO6jxWQMAgACS2sA=
Date: Wed, 1 Jul 2020 01:39:51 +0000
Message-ID: <AM6PR0502MB3925E154B7FE11260E4434CBE26C0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200630045627.24007-1-tuong.t.lien@dektech.com.au>
 <298590d6-bc26-5aa4-4195-01eb57936ef2@redhat.com>
In-Reply-To: <298590d6-bc26-5aa4-4195-01eb57936ef2@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c517c62-fd98-419c-73c3-08d81d5fa5bc
x-ms-traffictypediagnostic: AM6PR05MB5638:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR05MB563855F28244304112C2DD5BE26C0@AM6PR05MB5638.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T2fPf3rHJZF+8m5WPRXR/v0y3o0Iq/hs4b/99gi+1bOvNuKD8/v5SoNrfM1jU+7EpNPrbCXXixlHfvrAdxQqlk6vfXjF+Wtpx1lz25K9zQcSjexyUkQmk2v/C4xar9Ws0wS0pO5aNb3tl1lte903T0RoPftOtfLIgqvGUdlna//OFIqOj8Pie4VVI1xIPwr+6C1vmhKoMF0fNnWHu7sVW3CVGHVkA1y8rL9eHqq4SV34I9uoCN8mnfCfUuwRZV+XXGZ/uVdnv1JV6CyCRr6IZxSr9pJn3qS/aYN9aHVWP1w9NaZUo3OWrInFcNvk2GBjJOrT3Rh1UxAYv/lDdnyMYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(346002)(136003)(376002)(366004)(396003)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(52536014)(83380400001)(2906002)(478600001)(110136005)(86362001)(71200400001)(316002)(33656002)(186003)(4326008)(107886003)(8936002)(9686003)(8676002)(55016002)(6506007)(26005)(7696005)(5660300002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3YtqoGdIIi+YHYiqqpgAHKIBvvS8rvmohAb/kCO1Un9Enjh68dluQ1agFJ4/ZOk7lJqe8urAH1BmMGcTQLJE2Q/OG4e9EgFHAw8uV84I6cUETF3JWReCDsnlaqlfT/3ITMnfs7BblOXrMzZgnLrkSBQb4GytOvFMzva4mg5+ab4gHv9QtdnKMXAfzyUkrSGbf42Cs5AfMaXvEcRWt8uqekaBuJmRXVAPR+SuN3GggXSK7lsLpcbOTcJO3tDZ0Cp9rk8M8a36HFPCPE6AXCzovKt+T04Z0oy4SJlDJwJ6OEMcFh1ZQfqgXNhLwLIJHrgua5ak/+Cb0OYpQLaRG6+rtN+B3yC5VGkscbZDSOpxVM3rpqAhb79cdcotiqMoYRQEF87sj4fNsYckqxn/kVSQa4IDXoRlmQ6EEt5luEzKERpmNovJzN6+tvJQh13QsneV5CwJZxaLk++KkBeX0IInjoArvnFHJkMIlw+FAd09Fws=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0502MB3925.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c517c62-fd98-419c-73c3-08d81d5fa5bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 01:39:51.1625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vuPAWtHpJIa/bVfo0sVlO+kbe5r8D6F2JP3gKoNHS0XQYh0gK8FEBO566DvkbMBEXyzbxkwwwmksqXuFZ0OTLwCM/Ac4jYpY7LsMpXgYP8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5638
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.125 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jqRjG-003dmp-7s
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect unicast link window
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Tuesday, June 30, 2020 11:26 PM
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Cc: tipc-dek <tipc-dek@dektech.com.au>
> Subject: Re: [net] tipc: fix incorrect unicast link window
> 
> 
> 
> On 6/30/20 12:56 AM, Tuong Lien wrote:
> > In commit 16ad3f4022bb ("tipc: introduce variable window congestion
> > control"), we enable user to set the link 'max_win' value which is used
> > as the upper threshold for the variable link window algorithm later.
> >
> > However, since it is done by the same netlink command property
> > 'TIPC_NLA_PROP_WIN' that was used to set the actual link window before,
> > it appears to be a non backward compatible issue when user tries to get
> > the value back but finds a different value (i.e. the variable window at
> > that moment).
> >
> > Besides, there is another flaw with the 'max_win' where it is set to be
> > 'TIPC_MAX_LINK_WIN' (i.e. 8191) by default that is obviously unexpected
> > (the variable link window will take place and go beyond that might harm
> > the underlying device...). The value is actually derived from the lower
> > bearer & media layers (i.e. 'eth' media) at the initializing time where
> > the default value should be 'TIPC_DEF_LINK_WIN' (i.e. 50) instead.
> >
> > We fix the issue #1 by returning the 'max_win' which is exactly the one
> > set by user, while setting back the 'max_win' for the 'eth' media to be
> > the said value for the #2.
> >
> > Note: the changes do not affect the variable link window mechanism, but
> > make the right thing i.e. it will work only when user really wants.
> If understand this right variable window flow control will now in
> practice be disabled by default, and only be activated if the user
> explicitly sets max_win to something >> 50. Right?
Yes, I suppose this is the right way, the default value should be at 50 as before and user has its control fully. Or, do you want it to be 8181, but I think it is too big by default and we will need to explain it somehow because one will certainly be surprised to see that value in TIPC printouts... ?

BR/Tuong
> ///jon
> 
> >
> > Fixes: 16ad3f4022bb ("tipc: introduce variable window congestion control")
> > Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> > Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
> > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > ---
> >   net/tipc/eth_media.c | 2 +-
> >   net/tipc/link.c      | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
> > index 8b0bb600602d..675b947eab89 100644
> > --- a/net/tipc/eth_media.c
> > +++ b/net/tipc/eth_media.c
> > @@ -93,7 +93,7 @@ struct tipc_media eth_media_info = {
> >   	.priority	= TIPC_DEF_LINK_PRI,
> >   	.tolerance	= TIPC_DEF_LINK_TOL,
> >   	.min_win	= TIPC_DEF_LINK_WIN,
> > -	.max_win	= TIPC_MAX_LINK_WIN,
> > +	.max_win	= TIPC_DEF_LINK_WIN,
> >   	.type_id	= TIPC_MEDIA_TYPE_ETH,
> >   	.hwaddr_len	= ETH_ALEN,
> >   	.name		= "eth"
> > diff --git a/net/tipc/link.c b/net/tipc/link.c
> > index ee3b8d0576b8..28834dafdc98 100644
> > --- a/net/tipc/link.c
> > +++ b/net/tipc/link.c
> > @@ -2662,7 +2662,7 @@ int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
> >   	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, link->tolerance))
> >   		goto prop_msg_full;
> >   	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN,
> > -			link->window))
> > +			link->max_win))
> >   		goto prop_msg_full;
> >   	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_PRIO, link->priority))
> >   		goto prop_msg_full;


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
