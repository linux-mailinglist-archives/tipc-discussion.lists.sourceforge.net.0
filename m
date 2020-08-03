Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1D823A8B7
	for <lists+tipc-discussion@lfdr.de>; Mon,  3 Aug 2020 16:42:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k2bfM-0002EX-0k; Mon, 03 Aug 2020 14:42:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1k2bfK-0002EP-E4
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 14:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9sDfZTRjXLJpILLWS8pmqoDlAcD+cAEQjdLjtD737R0=; b=mwtzmRq13my2GGFBUM4z2Q/Kco
 8wHoZv/rS4u7+W7IDd81hlfutXb60PrWGZiO4Uyq2a5iZZjxeECVhdIBsnBD38JqDn9YeXHLSr+kW
 4cL2MdheXP9rW2YU45F0aagykt7MfdEOU2oqupGICJBvJAdg4re1XbQxRHn03r4catTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9sDfZTRjXLJpILLWS8pmqoDlAcD+cAEQjdLjtD737R0=; b=F93IcspMZ+gtc/AEfAquLcV4Dn
 GRlkglBOdKNa/twBBvT34ToWR+PgGACSGsvGooGecFfMhLkz7rZk+oKD0BMMCfODm3S4x8h2vBmeZ
 ZlQeYE8iswdaLUB1m2UlNpQTjZfr8BU5KCORo1+PNTVArJVR+vejr3FKCh7FvBuvEetU=;
Received: from mail-dm6nam10on2082.outbound.protection.outlook.com
 ([40.107.93.82] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k2bfI-007qjR-0x
 for tipc-discussion@lists.sourceforge.net; Mon, 03 Aug 2020 14:42:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G7Zho4OY44jODuy06qJysGK//+aR1BTvYjnR9iT2ObL6fkb3cUcoiGm0d6rtN3+JQKQQcfqkoe0C2LBkHPwBibYjOgk1gl58vMx57qB66WrbLCySicKczmKoxgctQ55Gy7CdjgZGNdWN2D1/PiXub702JymWhWYkwZquCHeKJyk2tlETqxj4Mw2KF7/mLjHTw8BA/PjnWvhPOBmPTz4EM1tWCMrNI3G8abnFDgIsBHQ4Es/lkrWfzjdUmXU8dqJw3xlMuSHFtdPDVgR9l62ALBvKu7txnm7zMJATOmDAXxPyv2t/3EEdez/gYDoIYZB4jjmNIczTNTlX8Ezx77bnUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9sDfZTRjXLJpILLWS8pmqoDlAcD+cAEQjdLjtD737R0=;
 b=f1P01DE6hkROhdPn6mtKaFIphymQ8ayxHwjO6yG6klDLTXCzS/cJkv10ag4E1qLhs+JHOIH93TIP/IArR9XfFO9HqB+nbTZQhUwDIitusNFYW9jVMB7NIz347f6zzNWwcI+3vimNrWbenlawEmiFkSXdZ9cO9UruW+CVB1NiJoi328PoscvAML330VfCL2C01AvsY4xnNyuUVh0OthOPAw27afgrjmTidAsh9u/DAeM5+OwzxOXHKcrcXZkigFCAfQmDn8tGgjTzauPMSTtQ/eTjF8jUmkLrMjwa18l7LgQHnE8FOuniXJY2XLaNxNCD+jxf7UzEBfWNc8eszH+V/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9sDfZTRjXLJpILLWS8pmqoDlAcD+cAEQjdLjtD737R0=;
 b=VCJ4pR80kHVUZXO3milxY59llA1bAv83x6Mc9WDf5fGJsEFkB+X2KF10qIV1WH0Qf1tQOGQrqwtpSGHGo4TPVxDENUdJ4QX1NvxROERSWBIKo1jkRJ49u1BuMqarwrYbezZU0ZxwU26Q5SDzzOvyY/t9jDihO77x8EdXR0cZRXw=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM5PR11MB1305.namprd11.prod.outlook.com (2603:10b6:3:13::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3239.17; Mon, 3 Aug 2020 14:08:19 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::b16c:41d1:7e54:1c4e]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::b16c:41d1:7e54:1c4e%6]) with mapi id 15.20.3239.021; Mon, 3 Aug 2020
 14:08:19 +0000
To: Huang Guobin <huangguobin4@huawei.com>, jmaloy@redhat.com,
 davem@davemloft.net, kuba@kernel.org
References: <20200803020055.26822-1-huangguobin4@huawei.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <d8491b36-d81b-c2e8-de04-fd1c4a1254ba@windriver.com>
Date: Mon, 3 Aug 2020 21:51:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200803020055.26822-1-huangguobin4@huawei.com>
Content-Language: en-US
X-ClientProxiedBy: HK2PR03CA0062.apcprd03.prod.outlook.com
 (2603:1096:202:17::32) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR03CA0062.apcprd03.prod.outlook.com (2603:1096:202:17::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.13 via Frontend Transport; Mon, 3 Aug 2020 14:08:16 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7613e11e-ee84-4c2e-c4f4-08d837b6ac66
X-MS-TrafficTypeDiagnostic: DM5PR11MB1305:
X-Microsoft-Antispam-PRVS: <DM5PR11MB13059D7E7F2CCFE92D88E27F844D0@DM5PR11MB1305.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:534;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M/bcp17joLOIuDYODlmUkhAXbXPhTXLA0t3JP5lZmaJ8YBkF9hqNRslEYqYcR0pxH+mitrLuwEg4kTx0e4bJI41XkhtuEM5XmkdipU20OdJqeZcBr3c09RZGKXlWzrQVg+B4fyaX6NNJfauDv06PxwFxRuaC2OkyHnnSk77EkDfLaOSJIN/Y7hrtOUS7cXUG6NO+c7D+vD2Cv8TZJc0D1pUm/9ZMVcD7no6DUC3aIK2unY/vf7QPsJfC0dt57jxyLU1ZzZKog4QkYV0FIS2N0BumAwLkzNey9desjoQvuhg4JlQVSHSffPphXEvktpLW66J5vBRCT13Rp56yoVZOJdjVV6U1+yZyUmpyhUM9rgGnIWjB4D70mejkgUpxa9gcimc1pW8q2g/dXeZRhTngFw9lrS9k8HKPpRsal3XIz7Y2LgI/E8mkekrOe94nbatocWAHz3TGmQC4brQPTaRkTNRhOHRDvN+vcjjBE/6WNJU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(396003)(136003)(376002)(39850400004)(956004)(2616005)(66946007)(66476007)(5660300002)(83380400001)(36756003)(66556008)(6486002)(8936002)(16576012)(44832011)(316002)(52116002)(26005)(6706004)(8676002)(478600001)(2906002)(86362001)(31686004)(6666004)(53546011)(186003)(4326008)(16526019)(31696002)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 61x5U3qVlVS0l51hmHhpKtbNPEJJ6aeulq9WBjJO5po48OCspRVR+aNStdnp0yBJdxe7aFIbd9Ze/v2iUuqgn2XCTy+06WVGPS3wTBACMJ6/LVdagQcnOmlVR/ZTIjMt+R0BSkJa2GyhyPSI7lwBUR496/C23KHQzP3PCxoiZORv8HSLimb4D/T7eL06foIc4L5vUTmxBbxpkL/GQikF/jlHYxvWjYrwq1qUsHBHNyWGk+rxAupgLLbZe+4IiRkTO5BETrm3qDcPISgGTy91zuYx04v3KfPSkEndV/eY5v/AoK6wqJGpXNUWT5sJcU3nC3gMXTF8Z61JcGmP17MHUCVU7letdJe3zT41bqWCwDJ7szfpPYBKe70+fDmPo2cLyqL7xXGxtAG43/FJ2xAkz1fE40TLD9PHMqWqaGjIh4E0w4bowgN+BQXahZxcIyW6ovVCLhXsmvKBEs5yT32p7j0THQhuHcmTrkj1SIwoiZPE7A68N6WO5xSNGUrUfNxUPIBtbyPrFiVnPS5Tm/rPhrSvZgXibwoIGmTsZrHA+anltHqnQijXoTPfKlJn2kKnYb5Alhhkm4zd075mlysBQwgUZSsjr8fLILJgT0cZQ14TCSMIC0UNbc+Hk7fAJryUXq7B+Vu1HgU6Lx8+BtPA7A==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7613e11e-ee84-4c2e-c4f4-08d837b6ac66
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2020 14:08:19.1465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aMwuPBA5Ay2m6VvPMhi5sqTDdwjTjBBf+XfhjbMosP6p8nXXOhiXTmaUubtSdWz3hZYz2hFE9hmCjOGcng+qSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1305
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.93.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.82 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2bfI-007qjR-0x
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: Use
 is_broadcast_ether_addr() instead of memcmp()
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 8/3/20 10:00 AM, Huang Guobin wrote:
> Using is_broadcast_ether_addr() instead of directly use
> memcmp() to determine if the ethernet address is broadcast
> address.
> 
> spatch with a semantic match is used to found this problem.
> (http://coccinelle.lip6.fr/)
> 
> Signed-off-by: Huang Guobin <huangguobin4@huawei.com>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/eth_media.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
> index 8b0bb600602d..c68019697cfe 100644
> --- a/net/tipc/eth_media.c
> +++ b/net/tipc/eth_media.c
> @@ -62,12 +62,10 @@ static int tipc_eth_raw2addr(struct tipc_bearer *b,
>  			     struct tipc_media_addr *addr,
>  			     char *msg)
>  {
> -	char bcast_mac[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
> -
>  	memset(addr, 0, sizeof(*addr));
>  	ether_addr_copy(addr->value, msg);
>  	addr->media_id = TIPC_MEDIA_TYPE_ETH;
> -	addr->broadcast = !memcmp(addr->value, bcast_mac, ETH_ALEN);
> +	addr->broadcast = is_broadcast_ether_addr(addr->value);
>  	return 0;
>  }
>  
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
