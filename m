Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D0A295181
	for <lists+tipc-discussion@lfdr.de>; Wed, 21 Oct 2020 19:29:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVHvh-0008Vi-KG; Wed, 21 Oct 2020 17:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kVHvg-0008VX-Ko
 for tipc-discussion@lists.sourceforge.net; Wed, 21 Oct 2020 17:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hBpg879XblwkX53s3d4NzGMf25nlIerGHyrytiqaqbs=; b=mreIZBst2+LDB0xY9CbYuyfy1Q
 QXOEeHK0k6KOCbEv3JU+2KiBXsqld/LWBcnrQ5r1RFLzQPmlllAaZnpQxEnlNUb6DYJWq19+/sHzh
 AFaOMw4Cc381swXrECagbMwJjPTUMLM2oqJVQEMxa1nxVb/nf8Hyc+6rkA71T2EVGWGw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hBpg879XblwkX53s3d4NzGMf25nlIerGHyrytiqaqbs=; b=AgB3trmm4kqFUYGslpVFlalJUL
 iWx/8Fw8Ct2PazaNvmsGqg4+EP1FmY6yODjs/4Mgc4wBMeDY8as+IUbJeiGSNeOssf8YAKALxTz20
 146N3MKBCD7bcWwNKdan0OzjKUXzXCfdDqoBTomxUR2q7M0ZusOd69iFvjVo9Azw3Zuw=;
Received: from mail-mw2nam12on2080.outbound.protection.outlook.com
 ([40.107.244.80] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVHvc-001hG4-5L
 for tipc-discussion@lists.sourceforge.net; Wed, 21 Oct 2020 17:29:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwbW/VMFqCD4+bnkXoWNLUP8Pnfvgu+wZX/KGB9FJLb7ftLvH/9k41qK4vQWDvhMRHQxUBM9ac5Ji2Rv8MCgNPyQg8obl1S35R5nXj8nN9mDYA8innzOH5pCtcK9wlRq20leXInHXthxQv7CQh1RVcJaNyAtUfPtmWOzjpKtLqFnnZka0Rj+lL/ajECLfYYPNsUKHCdQulAe0jujLBI2gVzeqcd9Tb3Wf9jGZS3sxPguck8DvZMA5pM5BFOQgocNANs0h1d1y03qVNm+dGSxjH89EDUONYb++6M9Ce/cX6dKfaIr9qzywGmE0caP3zzKjY+MjKEEKOepP/b2TV+9jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBpg879XblwkX53s3d4NzGMf25nlIerGHyrytiqaqbs=;
 b=bBu8WZNZZneCglM0zAkQ7nMRzqaQNGy+4EoB/UIaobsyemN2xyxd4AAlPS4mBHikqnmqv7wxpnEuES3/un6wdSOH1I6ebxNORDoXiAjhr/8GhMMd2t3+yxRDTo7OMCKB2Ay8rB29DhjmEwsP5tIXz3FBl8J7x2VkxDjee5uW53fZXOFhWZb/g8NrCSil6WMTOL7DJo6vMZef9FV+fchEiP3zeI8BanrsMw5yeKCW6OHPY7pAbp20AhXug7i35+dMdgSYWpDp3bDLl4SHX/oi6qh9wcw14PLvaFmPCVY2BWZ0Uuk/r7EnowsFPq7BdXqIkUVEjuAWEXOBnlOiJjmpYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBpg879XblwkX53s3d4NzGMf25nlIerGHyrytiqaqbs=;
 b=C7YFBamFGQ0EWwtCsc1+EdFSAoPDOEaY6Q41LHdezG27/B+32jCY+1i6dnNX9xmYcTJ06BNVFp7Ry74yc7ZocxOW+d4n/hgAd0Hrv3D/NC4l+2ViVE3hXU3WRolQVjUJRig6ZBZMJBcsxc7YpLhaS48Wp49Jdfu/sGiV2+xLUjg=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB3596.namprd11.prod.outlook.com (2603:10b6:5:13a::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18; Wed, 21 Oct 2020 14:55:09 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3499.018; Wed, 21 Oct 2020
 14:55:08 +0000
To: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net
References: <20201010145608.1058917-1-jmaloy@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <bfd2ebec-efb5-8937-1f56-4b73d830fc0b@windriver.com>
Date: Wed, 21 Oct 2020 22:55:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201010145608.1058917-1-jmaloy@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HKAPR04CA0004.apcprd04.prod.outlook.com
 (2603:1096:203:d0::14) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HKAPR04CA0004.apcprd04.prod.outlook.com (2603:1096:203:d0::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Wed, 21 Oct 2020 14:55:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a545787-f81c-43c9-e1ed-08d875d14dc5
X-MS-TrafficTypeDiagnostic: DM6PR11MB3596:
X-Microsoft-Antispam-PRVS: <DM6PR11MB359690F14D33044823A1EE60841C0@DM6PR11MB3596.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NEL/iFkLBukyofUuAGNxTBXZSv1cn5f+aOqfcjDALkSB077ZGaWPKU7VFPriZ062g/YtJiTUaQQFsTBBjbRBTG50/5vnww28c9aHom50MZKDtCvQKjkrWeBJhmoAmnDVJurti6oZ0jcP48fuMLG7zTD0RjOOSamQSS0Sn3dEZXf8CnUmAOSQu4Nmu1J6WLRPBX6bS1Ozy0rIpuaE+nDnZmtDsdbCzJZ4z0+YGOfJkqOYCzGXsaLJFcciPsHVLqZLBho6NWjV+iYc5JxzA5qLl5gdHFVkdbXhxaDQiBsOn0dyziDrw2gYCzt+KVAk2PombJqXlLI29PZoU92dcxLwGPu/og0+PP5W7RCOPE0QFAan0Ht3YC0qi68ExSyYXLrA1jhWwTYWC3NEx9BDDzrUaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(5660300002)(66556008)(6666004)(66476007)(83380400001)(31686004)(86362001)(2906002)(16526019)(478600001)(31696002)(53546011)(66946007)(26005)(6486002)(16576012)(8936002)(316002)(36756003)(956004)(4326008)(52116002)(2616005)(6706004)(8676002)(186003)(44832011)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 0n4+X6qsUBAjaM/v2BpwUjR0SZtwPmXXBxefa9slzB0M7IJ9t7E4IdQKkTnnEVzuLWvdRd75TWTVV3OHzkmncdZbl1N32A6ghUgJjw8QNVTg0k8uX4wr0tmmB7CwfY2sdwxDSv6aLe1YDejRYzY1Tag7Hzmxs+EWtPrRC/ikNMv3d9JIiWGWnq6adDYs8VmqU039X/Wl61YRZm2pGBznkGczUSSgKfnqDxTZoTiqSqJmhi994+rDhB48fKswe7gCghpxoCr86BPeXwg5hmT2gfHKQAytbBfMMZMMN5eI4ulDPAKNjsVzPBVG1BoCVJIMSk9SY2O6DYavLRzMMzseCxsPyUEFVxn56REi9bQ/YkobOu29QDpRmSeY7CUG5+6ZKjvirOOR2GyyhXTURT0D1Z3Gabc26/7mvJjwm3/GSBQeClan+cVBaU4xEH7r48rTki37hFch7S1Dgq/5ApIWTiCw2aytGSPU3FD9aL67U8FVGZI03Fv36F/R5y6J5CsjaMuMBahsN3Vvl6FT6D4ELiMrheuZGBPoIsypVMMPev8wD0u9EMomhDKEm2YJV553azHAM2YMgdXud5RsGSm+exbyFavTNRAsX5j3x+OzIvGt98d2peakOYCKVJdFinBzhNc3uWKX3CNQspjkpwc6bA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a545787-f81c-43c9-e1ed-08d875d14dc5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2020 14:55:08.8332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CimcR/g2A98jF4d7w674RML6mb0ti76Qv+i9qSpC6bYptWQnUCG9KhmaVP/iHUrYNTkIHbtBF8ysBOryxuFS1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3596
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.80 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kVHvc-001hG4-5L
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

On 10/10/20 10:56 PM, jmaloy@redhat.com wrote:
> From: Jon Maloy <jmaloy@redhat.com>
> 
> TIPC reserves 64 service types for current and future internal use.
> Therefore, the bind() function is meant to block regular user sockets
> from being bound to these values, while it should let through such
> bindings from internal users.
> 
> However, since we at the design moment saw no way to distinguish
> between regular and internal users the filter function ended up
> with allowing all bindings of the types which were really in use
> ([0,1]), and block all the rest ([2,63]).
> 
> This is dangerous, since a regular user may bind to the service type
> representing the topology server (TIPC_TOP_SRV == 1) or the one used
> for indicating neigboring node status (TIPC_CFG_SRV == 0), and wreak
> havoc for users of those services. I.e., practically all users.
> 

Sorry, Jon. I could not understand how such scenarios described above
happened. Can you please take an example to demonstrate a regular user
can bind to the same service type as TIPC_TOP_SRV or TIPC_CFG_SRV under
the current code logic?

Thanks,
Ying

> The reality is however that TIPC_CFG_SRV never is bound through the
> bind() function, since it doesn't represent a regular socket, and
> TIPC_TOP_SRV can easily be filtered out, since it is the very first
> binding performed when the system is starting.
> 
> We can hence block TIPC_CFG_SRV completely, and only allow TIPC_TOP_SRV
> to be bound once, and the correct behavior is achieved. This is what we
> do in this commit.
> 
> It should be noted that, although this is a change of the API semantics,
> there is no risk we will break any currently working applications by
> doing this. Any application trying to bind to the values in question
> would be badly broken from the outset, so there is no chance we would
> find any such applications in real-world production systems.
> 
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/socket.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index e795a8a2955b..67875a5761d0 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -665,6 +665,7 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
>  	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
>  	struct tipc_sock *tsk = tipc_sk(sk);
>  	int res = -EINVAL;
> +	u32 stype, dnode;
>  
>  	lock_sock(sk);
>  	if (unlikely(!uaddr_len)) {
> @@ -691,9 +692,10 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
>  		goto exit;
>  	}
>  
> -	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
> -	    (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
> -	    (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
> +	stype = addr->addr.nameseq.type;
> +	if (stype < TIPC_RESERVED_TYPES &&
> +	    (stype != TIPC_TOP_SRV ||
> +	     tipc_nametbl_translate(sock_net(sk), stype, stype, &dnode))) {
>  		res = -EACCES;
>  		goto exit;
>  	}
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
