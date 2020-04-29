Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8871BDF9A
	for <lists+tipc-discussion@lfdr.de>; Wed, 29 Apr 2020 15:53:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jTn9E-0006jg-4p; Wed, 29 Apr 2020 13:53:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jTn99-0006jS-Nb
 for tipc-discussion@lists.sourceforge.net; Wed, 29 Apr 2020 13:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y9Kj6mBktLkQZzFXhAIL3lNEzG091EAfLIirCCZAFHY=; b=ey5LQppdpt1Pc9G1q6m3w4yorA
 rJbrURHR1/QBeteTQM4os/17i30Dg5zU2sPvf6V8b/uUYclVFZ63aGHTbcoqay3IeUbGIZoW4EpS+
 cWXoDt3pIxhhxJb8lPmurZ5kYbevwyXuv9rzDTsEK2zv3cJ/HDbnMDQuPbK8VMhem8i4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y9Kj6mBktLkQZzFXhAIL3lNEzG091EAfLIirCCZAFHY=; b=dpYcxcNagij7k5/T8fnarKCObO
 8T4L9HhRIOUcIhyHkkdhxYkLZ+xfKz8ZzoMSywgN8G3mOnhnL3qf4LRJC94KPSUuPix+mxdh8D0bO
 kxBbw2uTW8V2dhciQ+AWEonDp1PGUEDP2a+1RiTIM6iMZsUFVK9+meaWpAfpJ46PyOvM=;
Received: from mail-co1nam11on2078.outbound.protection.outlook.com
 ([40.107.220.78] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jTn98-003wWw-6S
 for tipc-discussion@lists.sourceforge.net; Wed, 29 Apr 2020 13:53:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOcMTcQCRlQosyu+zSblQ22xi9rd1sy7FyF60PKuunqmIfF0FL8WpMMuPA9lssIW5+NDXGmBqDBeMVMla+MXoC31SW9A9/xqZ/6M8IW+MaxQ2rA3XCSWYnwCwwjw1/LFEiYn5XHC6ctnjO0ooxFU8UsWTEIJd8rXkgMqXApIC21pkv6OrB5eMxfzuJAQGP28Y0S0RTUza3fsKK5hCFJpPu61W5an8qT6g4kSDRJ3yNFZ1ZhxSUefkhVsa5A6/EuUIKY/K9c/vf0csk04UdjQmX+1ZkEDj+tSeZABTfYu+Kwoia8uRUEZmh7x0wL4vOqdvvxp3nZTIASZ7ARCpumOEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9Kj6mBktLkQZzFXhAIL3lNEzG091EAfLIirCCZAFHY=;
 b=EVVpE49w60mQw5D2GxPXsIM1ZZB1KGcA4uYiTHvGxp7VC/G7fAVXoPg7E/7LLt57MhVr2PvRuRaAy7NDXweQIbAh0IaHg5L4BF2watCLBdS7y6FvA2sleZ4JOMZlZnQ6+wytY5lcMALKdloBFiQLda9yBs4gFZGJtTjFZvHUtWp/yzd6CNqb4Zf8jSKaKXuCvWWN7liWyVSXXujoZjsAYMKB85eSvinVKWRGv69dW9KRcupew3biNCQ0tzRdVP4sCbCSz2wHumCGwb5GUuOL0hbXfG38Ma85mwc0EtlmdJXBpUhgZnqo/Ks+V53S88um+4NGL+/dS30XNpTGqVwNJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y9Kj6mBktLkQZzFXhAIL3lNEzG091EAfLIirCCZAFHY=;
 b=ITNpv/AGqnsJMHQcuN53sadefU8v38c6LBnccjnOo2Aq4wfx4FiKUzoxi5es3TZvLX3y0GQQN1Ghn7nXtm9xsWO6WakUO494iEQQfLFbVG5X2vb4xfuX7Y9a9FQkhfdNdQl6JHerc0AgTdmEhR49/wkI+VqzpqfE+nRW03A32b4=
Authentication-Results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4133.namprd11.prod.outlook.com (2603:10b6:a03:18f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Wed, 29 Apr
 2020 13:36:57 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::9c74:587f:bfb1:d5b6]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::9c74:587f:bfb1:d5b6%3]) with mapi id 15.20.2937.028; Wed, 29 Apr 2020
 13:36:57 +0000
To: Tuong Lien <tuong.t.lien@dektech.com.au>, jmaloy@redhat.com,
 maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
References: <20200428085826.15412-1-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <f9a1624e-f7ff-1fbc-3aee-ed1a4408f4ff@windriver.com>
Date: Wed, 29 Apr 2020 21:21:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200428085826.15412-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-ClientProxiedBy: HK2PR0302CA0022.apcprd03.prod.outlook.com
 (2603:1096:202::32) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR0302CA0022.apcprd03.prod.outlook.com (2603:1096:202::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.9 via Frontend Transport; Wed, 29 Apr 2020 13:36:55 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c63645eb-96ee-4aa2-d902-08d7ec4262f9
X-MS-TrafficTypeDiagnostic: BY5PR11MB4133:
X-Microsoft-Antispam-PRVS: <BY5PR11MB41333EDCB04E8F6DA7D17CF184AD0@BY5PR11MB4133.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(396003)(136003)(346002)(366004)(376002)(53546011)(186003)(6706004)(86362001)(16576012)(36756003)(8936002)(16526019)(316002)(66946007)(66556008)(66476007)(6486002)(956004)(44832011)(478600001)(2906002)(26005)(5660300002)(52116002)(31696002)(8676002)(4326008)(31686004)(2616005)(78286006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BJWkc6iJ9++yrLDaGy9RU8+cOpfn5WstcouuNLnVqFEic/Q4TbKhvxJDbtpPSK86IKjbQeSKmzVQuDNxUKmOtG4AG293LgVW+LbKXs3HzmMSI8ZnJ5CTZX3e/w9RpHAtpRLp9zzDlaZN6n/BrWw4Pt0NEtRVxjNGEgHd+Tf8yA2HomlPKKSiR8tgxS8rki7eHvhG4IYnl0Ocj4ZB9p2ApNtJCZm/NTnOM3Oj4fDXdOcefWODJDKbcl+p+v7pBCffFkcQz0Cu6Nn1SCQ5IMbmEJXH6MOzGeN68/3iWEMjhE7OlxlbZ1VuVTFDvgGXeBFmiTbq/Zh59MST2PfUJ/HOkZ0e+P1FxOVmocCiygOPsXu3NQMBitPDP1zzy9zn4EnPo6CbN/jBYTcyBzx4uBzn6DKdqSA2XluwrwtVgpG3q4TDT0poq/DQ6yGZs3mrY2wKJ/ppwlZi8po71CkjJH/nLQrkz5pc4DDxXQFWhDWIqBFgiKddB0GQ7DWcTLMeH5A9A7I3rDtmfkzYdSdYuQnkLtsGH19PlkG73q9KAyiNR0Q=
X-MS-Exchange-AntiSpam-MessageData: 8Rt3TW7BoekOFJVZvr+Yix0JDGMYPVri0H3Rlk7OaZ0r8Am9jkDdh8UIb/jWJWh2G7Pd5GZqYXdaRsNNtj2JWJsoSzM0GgYe/42SHYkEE8A6GZBfzftPORp+8HdDO2j4/EQmaV/FY1B2TBwofTZgzZhMyXrTlz0uPiUAyxLgAzfrkyNLIdigkLA7L0UrnlST1NG8kD3z8HlD3o6senHHwQhp9VLjfn+BrvLL1PjjhzOqu88wFgGb9aZcaabgfK5zMk+cbvZx3lyUmiOn3bCsQuG1pLNVDSgd0tSz5bx577z/ykSWg3f/Kku7ehlozDIMP5vDBbSQTw+XbRmeBHUk48na0XJ4dy6H1hiK93/RetgfzFu1Ows0KBm29apUub9CNdxxsBlKbp0dtmpNEHtLAlwc2ccRp8ZkRNkxxqXvIVm0NLl+EhYDURdoY7A3NhPCwvdWV4luUsDHKaA52Qtn9TCnv7j+QKEDW48h2brECamsK7zc9B0/VuND0atMksIVPhGiuHuosBuXo1eYVP+zTq2fv2fIu3yGYOU3uz9et7qy712H0fGfKOTb4lcu0t+GRngITFveR7omvXzgY3W8ZPJEgqhKWBaQu6I5Gs5QcvmI7ydKKkvMpIJkqJf5GDMu4ZpUI3TV9A7vvk72oYN5psJtwpPOfNIr1FuV+WxjzApspJTpQZIAyIOkhr5qqA3yiNt/6enzvwCagahcvnK1lY1EtNsCl6Y/TZ5tRmNN5Yz8KGR/4r0DIvE7ploL+tHJWAw7yJfwb1C2cjqYfcUWU++9eBozfaNHwYhRddv4Og8=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c63645eb-96ee-4aa2-d902-08d7ec4262f9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 13:36:57.1790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /BBjMOB+HmJMeI/Mb41d2YaLCjAxB8wGMOFnUg6UW8ibCBqN5PsXoQ2JSQ3AonkHA1avOMtB9xYfSvu9PheKwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4133
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jTn98-003wWw-6S
Subject: Re: [tipc-discussion] [net] tipc: fix partial topology connection
 closure
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

On 4/28/20 4:58 PM, Tuong Lien wrote:
> When an application connects to the TIPC topology server and subscribes
> to some services, a new connection is created along with some objects -
> 'tipc_subscription' to store related data correspondingly...
> However, there is one omission in the connection handling that when the
> connection or application is orderly shutdown (e.g. via SIGQUIT, etc.),
> the connection is not closed in kernel, the 'tipc_subscription' objects
> are not freed too.
> This results in:
> - The maximum number of subscriptions (65535) will be reached soon, new
> subscriptions will be rejected;
> - TIPC module cannot be removed (unless the objectes are somehow forced
> to release first);
> 
> The commit fixes the issue by closing the connection if the 'recvmsg()'
> returns '0' i.e. when the peer is shutdown gracefully. It also includes
> the other unexpected cases.
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/topsrv.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index ad78f7cff379..c364335623ab 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -405,10 +405,11 @@ static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
>  		read_lock_bh(&sk->sk_callback_lock);
>  		ret = tipc_conn_rcv_sub(srv, con, &s);
>  		read_unlock_bh(&sk->sk_callback_lock);
> +		if (!ret)
> +			return 0;
>  	}
> -	if (ret < 0)
> -		tipc_conn_close(con);
>  
> +	tipc_conn_close(con);
>  	return ret;
>  }
>  
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
