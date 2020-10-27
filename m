Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E229AC4A
	for <lists+tipc-discussion@lfdr.de>; Tue, 27 Oct 2020 13:40:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kXOGt-0008Cz-6H; Tue, 27 Oct 2020 12:40:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kXOGs-0008Cj-6f
 for tipc-discussion@lists.sourceforge.net; Tue, 27 Oct 2020 12:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uWbDTttxmiTInf6hZ3gImeu7JOxHwt4F3CSfLi7ozEQ=; b=iMr6JsbW0jaBCXFV040JCHZlK9
 52ALnYIRMOyAJ7/0L1GxtjQLdSuvJIY4PqTBDwqYBaITlskdSrjruyLFIgC8QPTo+OsVxiMx3iSbA
 7ozSpGvBd5FTjqJR7/t9Ie8aaeeA7mNuGPOsPiO7isJYkNrpDhFRgfjEYV/ZbjgZBVxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uWbDTttxmiTInf6hZ3gImeu7JOxHwt4F3CSfLi7ozEQ=; b=FfHFOd/nba63xLnIumH15teAaS
 59LD4H0f2aLejxHaIqvuVPi0UjGfmmz9BAkkOqohbTlxd2kSsODZcvzMsrWIP5RGfuazOummpVtrl
 aRzo4QzXMow8oezNYcTH8hT9xnUjoP1rRH0Du1XT3BLcEuxMGYKOpgw7jIYtNFW6HhjQ=;
Received: from mail-dm6nam12on2062.outbound.protection.outlook.com
 ([40.107.243.62] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXOGj-00FWWa-7x
 for tipc-discussion@lists.sourceforge.net; Tue, 27 Oct 2020 12:40:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCjmkNOOAZ2iU59b1Qzfup1AAB0nGuQqjpyGs86HVr5+5mB57tBF6yQP1NIaF2T2Sqak9hDsYhCKxEOXLSZu/bcr75/ym65tbUwqFllLJDEeDXI/CcTc3JGVnVeuqL080NrigOJ6RL1dGjIQHv/ObdJLm3kjRMCrjWBHZySTLSpCD4Wb5G1PBQoW7y5pvTNZjsmarHi+41QM/1gZr6gl4IHFB+FXMjX6EbY0SzCM00pxaT6pixr79lYK7zrsCEIQeIKu8rRKEmSBIq+wOAhHKLkFk1yK0vCDSSZp2qA9ruaLAZRIBY7ep5PM+tGqomxjiLgE5G+DW/h1vCCSXAZyXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uWbDTttxmiTInf6hZ3gImeu7JOxHwt4F3CSfLi7ozEQ=;
 b=NPqxpgbVHCPzyJMcgTbbrcOHjIgqize7D8PuOYlazfoZZMWPXjjs2/VTsqZtG9amFFNKR7IIkT0E567n6+HD1anmyO2hvRp19GrXNOfMYZtTOLEfPqBlUzba5i+v3I4nIEUlTNoZjp3+fIlEpjUA301bvM2ey7dKGqv4ginRIgWwkTma+hWF9C15pUoPTJ2U/x87atsO6IjJNuAtOtjkjdjyyIC40Z52goieLgCysqXvhwj/grxURE2itjzjKBH5l8uL9A4GO9lpaFUqaTykbYbSeJNdkbH+bs4nxYFl28QrvoN2xP+uJLvLAFYCZppIyYFp9t5fgEvr0RbTL45eGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uWbDTttxmiTInf6hZ3gImeu7JOxHwt4F3CSfLi7ozEQ=;
 b=aerfUd7xwK+8hWf83RlaS3odoAokVt5DPm2BDGWqXcbr2s+uVkz7gHpFFR3EZ67PZ4bKMLRY6m51k7BFYycMh482pPrDm/Ut36G3U4I+bCTxmjp6pzyXQlURXzrgl3zkwkBB+zWdtaNG70DHLIC1Hg6aDytkv4c5FZkpNWwUd6c=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB2812.namprd11.prod.outlook.com (2603:10b6:5:c4::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.28; Tue, 27 Oct 2020 12:33:53 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3499.018; Tue, 27 Oct 2020
 12:33:53 +0000
To: jmaloy@redhat.com, tipc-discussion@lists.sourceforge.net
References: <20201026230706.3376753-1-jmaloy@redhat.com>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <e738b0d1-d59d-1947-3d07-73bef5a0e7aa@windriver.com>
Date: Tue, 27 Oct 2020 20:33:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201026230706.3376753-1-jmaloy@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0145.apcprd02.prod.outlook.com
 (2603:1096:202:16::29) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HK2PR02CA0145.apcprd02.prod.outlook.com (2603:1096:202:16::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Tue, 27 Oct 2020 12:33:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 853dc50a-cdba-4b0e-366c-08d87a749049
X-MS-TrafficTypeDiagnostic: DM6PR11MB2812:
X-Microsoft-Antispam-PRVS: <DM6PR11MB2812967A94B036119228727C84160@DM6PR11MB2812.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JduDiUzRzofJaO8oG1RvrYmSxvJuySY2oxSo97ZtCoRGOZ4Ax52gkFWH9Ck9NqgPAhf2j7GLcS3KvhxvcDfs1apQJTTMr90HeYF2BfFHkevb5TIP231K8Zu2b6IQ9Yds1DGGkRe7e2PSDNwDr2y46FExH/CFieDEXW1wWW4T7DZaRC1Adlq4KMS/rR6LgLnXWLKO3WvFXfe5xt0Tta+ABHZlLbVj/0z4Sy5zRVZSJJoBeiVa43hKcwc1HDcko7lSAvtxByN5GDIij2iPGMYCAkuhPGxqD66yuZpqh3H+hUSQmhvPxANhrQ6ksfgz1k83JbnVqga7xOoAW35BtxUY9RM6hwdtJe14Dw+2Q/BqCLWMXJ777Fnp6i4f6Q3Es3QH5vzytgM0dQqPKHT+DFKsGQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(39850400004)(136003)(346002)(2616005)(956004)(31686004)(26005)(16526019)(478600001)(6486002)(186003)(44832011)(53546011)(8936002)(36756003)(83380400001)(86362001)(2906002)(66476007)(66946007)(6666004)(52116002)(316002)(6706004)(31696002)(5660300002)(16576012)(4326008)(66556008)(8676002)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: rPVIjWRuAtiVB3Y3/W4Njq6Oyaon0wP5eb3rWfYwg4UIhMA4tEzCQHGo4epTpflhBkTRHU6zgD41C4Jn0Z+rFyw0IrqlMiwqe7zNbeFhFdnVS3nBGxoOWmcO6hXTmlzVMu5MuHxBL9pjOyOOs49MPYNVj689DORajidc/zpJVOMzSXWZn8ktmBZO2w8Qmmi81J0PAtPjfyktiX49oDLsYZ/ai0wh25OzdrgV1NS+RdNqFBjBm9g1nAmdl4FqlTbW9Bx4WtK7Q1Q5BbyChO9Mg0gVwnG9u+BXxyN2n3pjjfJtshXT9808mHXUWV36R/PeaPPAjtC0UlbPjgTcr2nPhsECK5tfq1PDtEA7EgpzIQnUpPYoeNj3eWsRpAQg7OKCt5V7ZxmCtgiIAnV3xkaG+le4c0zquOyTIseVPJGs+1tOKHrdnt7FtWQSIcpfmau0ZzYLX5mlR8fAzy4V+rKI3XGMd0ymFnPy24KhqmNW4cyYgNI3uFk99BCrnTs8MjO2mzrpSgAbvczTEg3Z+QMaDNhcUkcD6QToQ9JUqVwyRq9BIAfzW+Pj1zVwrte913QLMaatdkcXi29RVejs9LS9v0RoLE3XB4YP/bC5CRvG6LEUPqA9rhcxD1ma0D49npAa4+spb7NhCj05A22jpkux0A==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 853dc50a-cdba-4b0e-366c-08d87a749049
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2020 12:33:53.0526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4eNh3ojbuYbaGRZRsSibwQRDq3adrwzOH4dMF23pjlh3ztw09vJshL9FBz5IWaDpiklqC1yFYUVHVbvUxnxX6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2812
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.62 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kXOGj-00FWWa-7x
Subject: Re: [tipc-discussion] [net v3] tipc: add stricter control of
 reserved service types
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

On 10/27/20 7:07 AM, jmaloy@redhat.com wrote:
> From: Jon Maloy <jmaloy@redhat.com>
> 
> TIPC reserves 64 service types for current and future internal use.
> Therefore, the bind() function is meant to block regular user sockets
> from being bound to these values, while it should let through such
> bindings from internal users.
> 
> However, since we at the design moment saw no way to distinguish
> between regular and internal users the filter function ended up
> with allowing all bindings of the reserved types which were really
> in use ([0,1]), and block all the rest ([2,63]).
> 
> This is risky, since a regular user may bind to the service type
> representing the topology server (TIPC_TOP_SRV == 1) or the one used
> for indicating neigboring node status (TIPC_CFG_SRV == 0), and wreak
> havoc for users of those services, i.e., most users.
> 
> The reality is however that TIPC_CFG_SRV never is bound through the
> bind() function, since it doesn't represent a regular socket, and
> TIPC_TOP_SRV can also be made to bypass the checks in tipc_bind()
> by introducing a different entry function, tipc_sk_bind().
> 
> It should be noted that, although this is a change of the API semantics,
> there is no risk we will break any currently working applications by
> doing this. Any application trying to bind to the values in question
> would be badly broken from the outset, so there is no chance we would
> find any such applications in real-world production systems.
> 
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/socket.c | 24 +++++++++++++++---------
>  net/tipc/socket.h |  2 +-
>  net/tipc/topsrv.c |  4 ++--
>  3 files changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index e795a8a2955b..222fd53da2d0 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -658,8 +658,8 @@ static int tipc_release(struct socket *sock)
>   * NOTE: This routine doesn't need to take the socket lock since it doesn't
>   *       access any non-constant socket information.
>   */
> -static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
> -		     int uaddr_len)
> +
> +int tipc_sk_bind(struct socket *sock, struct sockaddr *uaddr, int uaddr_len)
>  {
>  	struct sock *sk = sock->sk;
>  	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)uaddr;
> @@ -691,13 +691,6 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
>  		goto exit;
>  	}
>  
> -	if ((addr->addr.nameseq.type < TIPC_RESERVED_TYPES) &&
> -	    (addr->addr.nameseq.type != TIPC_TOP_SRV) &&
> -	    (addr->addr.nameseq.type != TIPC_CFG_SRV)) {
> -		res = -EACCES;
> -		goto exit;
> -	}
> -
>  	res = (addr->scope >= 0) ?
>  		tipc_sk_publish(tsk, addr->scope, &addr->addr.nameseq) :
>  		tipc_sk_withdraw(tsk, -addr->scope, &addr->addr.nameseq);
> @@ -706,6 +699,19 @@ static int tipc_bind(struct socket *sock, struct sockaddr *uaddr,
>  	return res;
>  }
>  
> +static int tipc_bind(struct socket *sock, struct sockaddr *skaddr, int alen)
> +{
> +	struct sockaddr_tipc *addr = (struct sockaddr_tipc *)skaddr;
> +
> +	if (alen) {
> +		if (alen < sizeof(struct sockaddr_tipc))
> +			return -EINVAL;
> +		if (addr->addr.nameseq.type < TIPC_RESERVED_TYPES)
> +			return -EACCES;
> +	}
> +	return tipc_sk_bind(sock, skaddr, alen);
> +}
> +
>  /**
>   * tipc_getname - get port ID of socket or peer socket
>   * @sock: socket structure
> diff --git a/net/tipc/socket.h b/net/tipc/socket.h
> index b11575afc66f..02cdf166807d 100644
> --- a/net/tipc/socket.h
> +++ b/net/tipc/socket.h
> @@ -74,7 +74,7 @@ int tipc_dump_done(struct netlink_callback *cb);
>  u32 tipc_sock_get_portid(struct sock *sk);
>  bool tipc_sk_overlimit1(struct sock *sk, struct sk_buff *skb);
>  bool tipc_sk_overlimit2(struct sock *sk, struct sk_buff *skb);
> -
> +int tipc_sk_bind(struct socket *sock, struct sockaddr *skaddr, int alen);
>  int tsk_set_importance(struct sock *sk, int imp);
>  
>  #endif
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 5f6f86051c83..cec029349662 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -520,12 +520,12 @@ static int tipc_topsrv_create_listener(struct tipc_topsrv *srv)
>  
>  	saddr.family	                = AF_TIPC;
>  	saddr.addrtype		        = TIPC_ADDR_NAMESEQ;
> -	saddr.addr.nameseq.type	        = TIPC_TOP_SRV;
> +	saddr.addr.nameseq.type         = TIPC_TOP_SRV;
>  	saddr.addr.nameseq.lower	= TIPC_TOP_SRV;
>  	saddr.addr.nameseq.upper	= TIPC_TOP_SRV;
>  	saddr.scope			= TIPC_NODE_SCOPE;
>  
> -	rc = kernel_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
> +	rc = tipc_sk_bind(lsock, (struct sockaddr *)&saddr, sizeof(saddr));
>  	if (rc < 0)
>  		goto err;
>  	rc = kernel_listen(lsock, 0);
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
