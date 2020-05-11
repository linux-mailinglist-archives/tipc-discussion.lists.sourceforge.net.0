Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 408701CDB07
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 15:16:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jY8IT-0002Ub-73; Mon, 11 May 2020 13:16:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jY8IR-0002US-7o
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 13:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=biJJJQSEcxt10VEKQrzlIfoDuc+QoYZzMx0/5wvvb6o=; b=c3QZJNe7pDABsSgukotOdfmenF
 BJ6miztu6LeyLhZOQPxKfzyf2BXCRzzAKPMdNv3j0WwjjKjzIZT2y/xNFNUFbAaxmPqTXGw9GPXsm
 2Ct8TvM885HsDFZYlxMZf9joP2KzhOA4AXjwFnLp9AZ4Hl1BeGPDU369ihEwUaoI4lw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=biJJJQSEcxt10VEKQrzlIfoDuc+QoYZzMx0/5wvvb6o=; b=SWhUUUOlgojADf+QwuBw4VA6f3
 zUgVwNdxRYqQaBuLFQXssCjT598nt3h9HFVfECH7uyZhQBimTgqLRwL0MDaYkbpHp/S92aSSXqTKl
 GhVF72WEOEFK5VTxLEkN9ON58Ffw3OdyflXeWux+JIqvcdMvtgAKn9n4NfHJeCSlCHhc=;
Received: from mail-bn7nam10on2054.outbound.protection.outlook.com
 ([40.107.92.54] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY8IN-008tJT-LQ
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 13:16:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlomePygbmAXEK7LFzlJOx6Kkp8DgqMARyg3dTTdsKNDmmeQzg553FvwGZWpJPnCk+IASFOjXkNFQ4HqEtvGO7aqEXt7gFcA76ExhRcTyyckb3wP4It5dtSt10KfcIwUJRJd7k/kAjdAHG43643MooA+j4YxZNqhYhGGChr/duHG/ZUb2wmyTqw71Yfhw2qY07BNWjCLDTMnFYTpg1Q7yTmfnnTke4p5Q2DhS9VBk4iEzSDHA49Jud3oRpRWTVjNRlofdH5sZxNK2dn25ko2fSdhV99Cwls8zX/5mctjroGru8d4CJnOJiOzG/5H5GhwFAvB1JX8OuIrbr/BkG80tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=biJJJQSEcxt10VEKQrzlIfoDuc+QoYZzMx0/5wvvb6o=;
 b=cXJp/UUgBItCedOk7N1hs/4pJyOcVWRaM1D6+6viKjQQbTxPEa3O3UfB1YxewxGOOkSr9cWVffK5HsP+On2ngMia9g6XAiVtzk8oNLf1AAeMuvghTqfntRKFIqNx/L/VSow/01PCEzi8dyL1b4/fNTAFnJd1qjO2bmhH4VvORXaJ3igVfvfqXFFzCt441CO/z4E/kE2TmFLlEboyilOYInFHphItxVSCHUibu0zyGcnszqdI9TX2jS4lWmQ9+FFvJuXS1P74cPCTHTnmFveP3fwB3iMbxwPOTn+SLQ1y6DfN44znaZi/7HAg1w3BZXNjOnP+UdoZGCTpyuU57iU4ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=biJJJQSEcxt10VEKQrzlIfoDuc+QoYZzMx0/5wvvb6o=;
 b=EIlotsJtIiMTKwnzMsKMOtptg98adaXhi/GF3EXtcjdxUG608SwsfmR/UT0jGCSKWA4pV0HggAbHE236ryhU3SKYLTuK0H2gWbUErLyxaVor/1XK2aW06v4tfH5MVRZhMzyMWNty8apgPPr5yzAZkMckINbY5hnBodDAgs7w8LI=
Authentication-Results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4433.namprd11.prod.outlook.com (2603:10b6:a03:1cb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.29; Mon, 11 May
 2020 13:16:21 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:16:21 +0000
To: Tuong Lien <tuong.t.lien@dektech.com.au>, jmaloy@redhat.com,
 maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
References: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
 <20200507111249.8760-2-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <9615a114-e635-e9b8-056b-b760f7462bd4@windriver.com>
Date: Mon, 11 May 2020 21:01:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200507111249.8760-2-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-ClientProxiedBy: HK2PR02CA0189.apcprd02.prod.outlook.com
 (2603:1096:201:21::25) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR02CA0189.apcprd02.prod.outlook.com (2603:1096:201:21::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 13:16:19 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd4208d6-ed2e-4756-a4bf-08d7f5ad7f1b
X-MS-TrafficTypeDiagnostic: BY5PR11MB4433:
X-Microsoft-Antispam-PRVS: <BY5PR11MB4433189C9864DB63D9D2F53284A10@BY5PR11MB4433.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:530;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w2DOsgVD/V+a9fYQeEJjS31t94s7WDF8u4PytOimesefpDZEcIFUyLZfGCyJyvTLrLs8ys7Br4CDDV1s2ol2DDGLcp12iv76IX0FNgeBjNqVnUfdDPkiiFB+TPo02+IwgxUvIfz2/WMFp6+WrD11R/V3x7KOne22xLjumg5l7OFV20ik4t/8gRfupBEc/NOeA/85XCLNHUdtGTw+Sx7CQkf9PmAftVtqWgmbw5kJ9CfX6WnlajbKp6dZ/X0+c/blC0z6Eml0HyxCmqoDTQJLAx7Zpp6Zb46I9B0QylA7oJR76rzpMyqt76mquIGzWzN197vcBxVIdBTD3/oVyrWQ8hChIWJN+y35hmj6Bm/CwQ4dsZnFPqEaFK9AfmCeGkL0K1iNG5QVPfEk8ax8a7fZZQ99G8HTiFYw8ziQhQjcKG469IVHsLt1mu635HZRWcnszCcAMt5MWlySgdL3UCztkxMUXpSd9yL5gB5cpx6Q5AAFzUQzL4q/KtW89mpiLI7PZnGeT1MaKuQUoIWascRVhbEWVNKpjzNm48gCtYfo79XSiakjs2ld/YdSjwyBH/HWj1oq7Av/D0qNoxbFcFCXZzo9MslfF3RZYewy6ZEdvKHjOYiyGBHvbQ8sSrjbocYC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(346002)(396003)(136003)(376002)(366004)(33430700001)(33440700001)(16576012)(956004)(316002)(8676002)(2906002)(478600001)(5660300002)(31696002)(6706004)(6486002)(53546011)(52116002)(8936002)(31686004)(16526019)(36756003)(2616005)(86362001)(66476007)(44832011)(186003)(66946007)(4326008)(66556008)(26005)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: oUD2PzRBbrIU3yAC9FvktatNnViu93ZgsIs3KQHEISPk8ccmDedxuD9myIaW99LNgMsiKrOTmgZzVswRBLs7Z3veD/v4nPdzjzynWOAYLOPyPrGGtohhnf6/z7ZA5QkoAnqih69pTtSBgpBnDkDWi54l1jxyB6xoj07r2d5/i0carpGGeh4rN3GaeirKxXBQZu9TLrkyMXVWoTe/G7fb4lB0LaTqO7BZcJTGGElGs4phCPHBC1B3Phx03Mgrtb6pnvBfWHySTc1q1Ec8zr0W74zcHAb8Ih7qOldfVTxZZIH85MU4v3/Bh8WAQb0tSSvHZcxPWu+YnXGT3J6o9bmvnV5gyHSnXi8DdI9lMQr3p/Hjdpro925a8/WD4h/kLTZcB/CqshNE5c1JfE5Ja8zT5vo4xpHkGO3dtwchffeSMBWVLLbtI9HksTKYXo9tJ5iFPUjBhGA6FqQ6WJQQBDbeWIqV/Fh3wBnzoVumYwPazvc=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd4208d6-ed2e-4756-a4bf-08d7f5ad7f1b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:16:20.9218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 10gGDJq3mrq2XRFg2bOAqhQCrcVTzI3h6Aq702WarS4afAt4/HBFg3c3y61yPlGxGpmFj+EjGEZzJ5Ctu7cnSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4433
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.92.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jY8IN-008tJT-LQ
Subject: Re: [tipc-discussion] [net 1/2] tipc: fix memory leak in service
 subscripting
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
Cc: tipc-dek@dektech.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Good catch!

On 5/7/20 7:12 PM, Tuong Lien wrote:
> Upon receipt of a service subscription request from user via a topology
> connection, one 'sub' object will be allocated in kernel, so it will be
> able to send an event of the service if any to the user correspondingly
> then. Also, in case of any failure, the connection will be shutdown and
> all the pertaining 'sub' objects will be freed.
> 
> However, there is a race condition as follows resulting in memory leak:
> 
>        receive-work       connection        send-work
>               |                |                |
>         sub-1 |<------//-------|                |
>         sub-2 |<------//-------|                |
>               |                |<---------------| evt for sub-x
>         sub-3 |<------//-------|                |
>               :                :                :
>               :                :                :
>               |       /--------|                |
>               |       |        * peer closed    |
>               |       |        |                |
>               |       |        |<-------X-------| evt for sub-y
>               |       |        |<===============|
>         sub-n |<------/        X    shutdown    |
>     -> orphan |                                 |
> 
> That is, the 'receive-work' may get the last subscription request while
> the 'send-work' is shutting down the connection due to peer close.
> 
> We had a 'lock' on the connection, so the two actions cannot be carried
> out simultaneously. If the last subscription is allocated e.g. 'sub-n',
> before the 'send-work' closes the connection, there will be no issue at
> all, the 'sub' objects will be freed. In contrast the last subscription
> will become orphan since the connection was closed, and we released all
> references.
> 
> This commit fixes the issue by simply adding one test if the connection
> remains in 'connected' state soon after we obtain the connection's lock
> then a subscription object can be created as usual, otherwise we ignore
> it.
> 
> Reported-by: Thang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/topsrv.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 73dbed0c4b6b..399a89f6f1bf 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -400,7 +400,9 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
>  		return -EWOULDBLOCK;
>  	if (ret == sizeof(s)) {
>  		read_lock_bh(&sk->sk_callback_lock);
> -		ret = tipc_conn_rcv_sub(srv, con, &s);
> +		/* RACE: the connection can be closed in meanwhile */
> +		if (likely(connected(con)))
> +			ret = tipc_conn_rcv_sub(srv, con, &s);
>  		read_unlock_bh(&sk->sk_callback_lock);
>  		if (!ret)
>  			return 0;
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
