Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB2296F1D
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Oct 2020 14:28:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVwB2-0002EV-Lr; Fri, 23 Oct 2020 12:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kVwB2-0002EP-CB
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 12:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IvrFTs9j8EZ1pFeR07DpVIcV6W3B8eF2IWgfFt/6BDM=; b=Wyu2kJoLDK11i6dMC+iUD422o3
 mtjtHOCBFeF48id81f4pEqtHc7keoBv1sOB+hsfDwrmYULDvzrDztDA8T0Dpoh0NkGgCLwKw9C9Dh
 ++Qj+muB/XjV/H0eBPO+M8McJkSbE+cPrrilOzg28fciQp3byaCoKYjEOV/cugglX2hI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IvrFTs9j8EZ1pFeR07DpVIcV6W3B8eF2IWgfFt/6BDM=; b=fbqNL6MvsF8YERCnt1DKDJIOGz
 cB+EV0ZdVJrrlZuiTU4gLxryjROvrz9hvLHdoT5ZrcKnV/kyoYrezuMvmBHWIRJo1Xe/6+cDHuRbP
 BvVnNKgp4jIr5XIteebBSx8bb0+WMwCx077ttvhQQQh3huS2xk7JZY09o9YTx3+PeJvw=;
Received: from mail-dm6nam12on2074.outbound.protection.outlook.com
 ([40.107.243.74] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVwAu-00A5iQ-DS
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 12:28:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aTSrOpN/ldOLjVcdN4HkiqkE9m46YABhQjquOl1fBIXrni0e1DHD/6e74gTOXqrZeD8RVIq7wjyxOVwMe5dArfWT2XakbvaBhw+LkS/OkVsV6ADQE5wAAa1/a/FQkUWzU4B3rB+MVjQIP3DzUPuqhK07nAgLOXLKtx/K+V+PxRX7eVnCX3dX5CNfudNmLKeuMSlhJbRFif4EN7zDdciO1yLGeWytIxp3kGN5EbhVNNB5hemNZki9qx98Gnm3uRRd507TTxcZOXQpVrSI1gZ9reKTT/pf/cGKj+ckDayqoOUJoeacsi0yV2trFIOAkUxWEcI0Q0G7tyDQxUCjUGroMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IvrFTs9j8EZ1pFeR07DpVIcV6W3B8eF2IWgfFt/6BDM=;
 b=ahxWpjv1Fgmr2YMIhuuYeT0+oJWmt/JIpGGyjWm9cdtLwrIIQmXXP/nWqIexSou8dBB7pIDeLebukHkG8itD4Xw5wLE2qeZ7Et3T1l/D8wfUfCOqJmJZuwhir9wQzsBjcUDQC77lEC5NcDV3sku46uW75ji8RJSMKyMXJo96WTgM3b/L56arV8kemUjosOagvcYBSn9/NH7jAn1iscYRW2YjuP2ZeG1B5VOJMHp/knDYkqpEYvp/mapf7JG9SEMPtUtDNWxjafajGhmuWF/WEKMHACFFu6Do5CHLjQhNyyPVlXuLOTqyOdHERjt4QjHAD08wK22C7GBKWVdTvvbwCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IvrFTs9j8EZ1pFeR07DpVIcV6W3B8eF2IWgfFt/6BDM=;
 b=jq+sUTI0L15uEEkVwfGaq9bvBLZaDxbCgI1s3erEPEWHNJJZ9513VWcS3HzFIkys/O9kyk0BVmBAF6JAwCxagZadyN4TWt1FpVUkvGJGI1qan+w/BKmw7d0WErYJfaWeCN9ocmeYJ6NgER/GiafDLo03QQTMSgOUgp4PfYG0GuM=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4283.namprd11.prod.outlook.com (2603:10b6:5:206::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.22; Fri, 23 Oct 2020 11:52:46 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3499.018; Fri, 23 Oct 2020
 11:52:46 +0000
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
Message-ID: <b5c18df4-e49f-1cf1-2f14-5450e4344b2d@windriver.com>
Date: Fri, 23 Oct 2020 19:52:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201010145608.1058917-1-jmaloy@redhat.com>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0016.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::26) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HK2P15301CA0016.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.17 via Frontend Transport; Fri, 23 Oct 2020 11:52:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e066359a-0d5c-492e-43aa-08d8774a2871
X-MS-TrafficTypeDiagnostic: DM6PR11MB4283:
X-Microsoft-Antispam-PRVS: <DM6PR11MB42832CF86B086FC0748FDC78841A0@DM6PR11MB4283.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bwk8jd8LY7WbxT52qK5yc6IkPZ/UYsKt0pIpYT+xJ2SRu21DsHFoKG8ueVip+8lDqc+Lz467Lt/EYJbMqyqLivOtcoKzyIsY3oW+3DlHAEY2h1mtIaOJa2HMHL3WWU7OD0pUd7g9qM93yK/RhM7vLgDjzGpK/tEf4Kuibp/Z0+2NdCRCFHSndUuOi/QlsniUWQR+DgJrfxy/24C5LKKxdhpZn4PQmM2OgvY+XbqekTIKD4MQNFNRdgNprphiYW77NOM8hmXKnfpxNA7IqPrwLSaF0ZKtqPTdVrrToIMpAaKLz6+7C9QbxOOcXqPGCo+BOJWD0t+HXkF0lt/3f6nIvgaaW4i3X+j3rhATOCUth6dKEpxeoBBcPpxtENNrnpdItyKmkvevRcO9/toscRGUwA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(376002)(39850400004)(346002)(396003)(86362001)(6706004)(4326008)(2906002)(5660300002)(26005)(6666004)(36756003)(8676002)(83380400001)(53546011)(478600001)(31686004)(31696002)(52116002)(6486002)(2616005)(8936002)(956004)(44832011)(66946007)(66556008)(16526019)(186003)(66476007)(316002)(16576012)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: BRgl2QJo7RgNpYi4fkIIlIHPEfGnopYwKA5mG3oCubxqyPH4BmwsUfa5sJDccSri93g5CLjc9GOGearSmm936IFRIdcdNsGgRYibRPLrLL1gtfFcrpTMWVXoXiiLTTdNw41zvhUYLIDnLe0GDDDkMMEFdK8+qlpkmAaSQtwISL2yRQ+zxDV5iFAHA+ItRWE+O63GcMRdxfRBIpNWNs1o6P+rL8LoojOW6OpdUi0kQ1gJVZd+SlcqQlwo5U4R9nwi4fLCMjyxOQ201oUtki+Df9CvsjemASborrbK6iXnFT4fNu89n9JIW7I9HIakGF/p6LHu/dLs9kFU0pKHljjvulmIfBfRBrFpDh76Ke6MXWER4tbpClUcRqBXoqQy4gvxr0PtiAxq+pHeAVSjvJf5qeOdJFr0/Exdcm3yYbfL5vxI/YuGerVu4nDaEq65SORO3FYC9+lmWjoPz94XYh9RAcS4pTcDSmtMBgwx89G6jY4rXko6PpEix3MV1cFwddFzq0rABo/ocLtPieQwEOEmu4WZgPDyNN6f06W7ZpsNXB/gwxVm3ltHmDP6C8iXGLwOJ6gd1Yf8DC2ejkEu/xoyLVkTnEkHS04O5SkArTmmm6y2fj9s7tqAYcfFmWMoZ31pqCBLjndbb3oMuemrXNP3Xg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e066359a-0d5c-492e-43aa-08d8774a2871
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2020 11:52:46.6619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3MQdLs9sNTj0KTWDa3TJTVHyjuDtBXlWZI4qyBBzJFkxnVKoTD/paMbB1KqethmHFBxxfSoqHedHAadp68IrDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4283
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.74 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kVwAu-00A5iQ-DS
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

Acked-by: Ying Xue <ying.xue@windriver.com>

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
