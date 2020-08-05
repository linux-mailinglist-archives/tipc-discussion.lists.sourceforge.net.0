Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 518A623CA35
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Aug 2020 13:20:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k3HSm-0004v2-2s; Wed, 05 Aug 2020 11:20:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1k3HSk-0004uv-Tu
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 11:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OKPfdbhIfdO6WhPdxjAAQm7O81huuVQnylxZSh9dPYs=; b=bc0vwaucNGKtjF3bn8RFXiAbpF
 ZX66Nubg3T4dqK0MYWMDxGJYL8XFrDb1O8AsRZ3jtNamaZFPFzMPvFEhnSvbPVvXHyBnhfR7OHVhA
 aWvZGQMWvRdVF3OfD5ZEAmFWBMLYVqTmgAQLIIeR617JuF8MhsfmPicRz2aYJAy8UUDQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OKPfdbhIfdO6WhPdxjAAQm7O81huuVQnylxZSh9dPYs=; b=PXUB8pn6r2O4e+5K8FcOpmp2LB
 pKxN6s8fozbb+8Ozklv7m94800sMKX2OeAfmykzD8cMamc4WzfN2ztg5NlvJz4hTAM9R7x+AYypsI
 gFeHzwF/ezeSiy2tK9LvDvzCItKstmGDUSFfulhx+X8xjU/t7uBjjm+XZIgUc1gL16FE=;
Received: from mail-dm6nam11on2087.outbound.protection.outlook.com
 ([40.107.223.87] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k3HSf-00Emy6-Gv
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 11:20:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixfPab+DbMnvVnuio8LjH6aOzJOpy22QBodTjKkhPnWSph9gUwuslKVcjKHlBb34mvr3LXIVzMk1xihJqKD6TvqxSm5omO9TdAIMZ/oe9koxpFHo1/8qn0kApG9/hjfTMxoJRiBKEDOoDdLHMy0TjpoLW7NHDJz9xZeguM3vzFyY7w7USSTn42ujdXq8kIGQRlEtLP7aQSFd1EX5pbEs0ulnf14Taj5pzSRmf+iCbD4IvLe5GmBLj+mTG1Y19qC8wkj6AJhOJ+7Nj3nIitSWtwrXAPXLNKtfRruv5OxXNc4RO8aQS4ka87io6W0mY1Y3unEOCzc9BLqa9h0uOhY2dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKPfdbhIfdO6WhPdxjAAQm7O81huuVQnylxZSh9dPYs=;
 b=XZpNMQHz0QEqRsqdhs2qJ6UFJcAbOHNYFHfbwSLxt1KSoQC/NAtv2JdXPB3AZa5q8hYHWJcNvxd51rOxM8s9mjQRTxtFATPdfKD5nKcpTwCwBN9flaFsoQh6bgghEBwLs9xksxSHFr9Lh/sgVHuP9WynsoWHxq0LaCS2XbX4R1+qOdAY53iffOKz8oR2sQJ0Nf5uQ3j7NkfhveMn1Zhg4nf+o37zi56FQtGCmGifu/NM56RXueiqrLrO6Dw7YgCjItcEku0mw5g8u0VB5CswvUCelQ7hySLKjNiC7aCioKnuAO4FWNzgsZTbTIfcdMxohw+goutOA4h9j4S+bOt1yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKPfdbhIfdO6WhPdxjAAQm7O81huuVQnylxZSh9dPYs=;
 b=gCDBX2/Jk9HlSpRDELY+FaSAVWE4ykb18EVX/JjqG09sHk6f/ETQnfYbWuhtERPShzr9l8NerYMh3KvPsWzQ+xIhhbxSSaadovz0FcGu3NjU4Qmaoa80q/01CNoF5lJvBKTrrRBklUCYyqf7haYEkK+zMDkZ97WWWok+zj8sEX0=
Authentication-Results: linux-ipv6.org; dkim=none (message not signed)
 header.d=none;linux-ipv6.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB4201.namprd11.prod.outlook.com (2603:10b6:5:200::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3239.21; Wed, 5 Aug 2020 11:19:47 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::b16c:41d1:7e54:1c4e]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::b16c:41d1:7e54:1c4e%6]) with mapi id 15.20.3261.015; Wed, 5 Aug 2020
 11:19:47 +0000
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <491f4a9b-1924-baf5-c1b5-43704af2ed5e@windriver.com>
Date: Wed, 5 Aug 2020 19:03:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: HK2PR02CA0198.apcprd02.prod.outlook.com
 (2603:1096:201:21::34) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR02CA0198.apcprd02.prod.outlook.com (2603:1096:201:21::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.18 via Frontend Transport; Wed, 5 Aug 2020 11:19:44 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04482d0d-f552-414d-377c-08d8393175fd
X-MS-TrafficTypeDiagnostic: DM6PR11MB4201:
X-Microsoft-Antispam-PRVS: <DM6PR11MB4201E8A1F371D281D0B7C298844B0@DM6PR11MB4201.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /koL7ru9TswJD1xsJJG8OfVBi2ofEbw5CeUrlpVKkZuuJXV0PGK8XztUopdNb29csrzYEgRyfivazgWS4gjquXqod1PutJmhAOj3zTboXsfb8NOVAOqQJILdtqZro2oaOsuHZLp5QhU9PWH9NNvX8zCnjs1W1jEOXTCap18qZBtUbe3U51kfbO2ETLEwXRGGGf7fZGXe29lkmtHqU6Pjr7RxM9o6Rk/hUeiNvL+So45io2GHh0W7bmANZoB15rrx34fyPPOTacWcsQa2Af+atzfGOvOvGcCjxL8XYOIxRa7WsXja9+7AxQgGOdwn1SX+ppG0w92f/7hQRv+fRwwS6hiIOSxQ5OUmqhzpBxQMNqk/dvnE5ByhM7LYWHxf0HzuJvVd6J6SEVKl51z0ZdCxEP2JZ/tgE9AFQvwHevH7vXk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(136003)(346002)(396003)(39850400004)(478600001)(2906002)(52116002)(8936002)(66946007)(6486002)(53546011)(31686004)(5660300002)(66556008)(66476007)(8676002)(6666004)(4326008)(83380400001)(186003)(31696002)(110136005)(54906003)(16526019)(6706004)(316002)(36756003)(44832011)(26005)(86362001)(16576012)(2616005)(956004)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 7mAn9Cq4Ku5xv0Ztmhg/nNvpNFDItoSNfruaexy09/B+X6Rv8XZHjjnglQGjOCvVNg5vBfHzL4/rO4qfoKw0ozB7ATgKQ49PSbQRJHfmbzRVRT/vwQtWR6e26Lstwzjnc4v1QN0CDtk9Z8K6lg9i8QUo7rtRVjLI9a91IVcYV88LyZS8izfmgfnD+sBFRHGeGCFwsTK01LYReiQ7Q0Yd5nDd0/T9FBsos+dIbrj7zyWd2HAqalgd2U49ecuzqgvVzDyVEoaGjp1X1u7pZKPXMcaa8E/X6i6pL/UHWDieOeiLgO9ghRWmoB4wn8WHr8JWWFfsUdzoYWMBBE7iDLm+1Nw3Y5WmszmrKdoMyQwAe4HDhRpbrkKSvUgZCo4X3zqJ07vBtKY1LUFYpnvMwSbMPx5I4V/iqI7x1DWXbDnKIpKaKddjEww6DudgOyDqbQLNrSc9liTd3y2BlXtNaG9d4DzUa0iFrW+zXr9aUZhtryTDvqdAjVavaPPZcND/1kFh0tx0Fl1dG+8Qm3MYzikPBBQZu0DVgbT9tjHTePygP85AOS+/ygYgB6Mi6sALwTI3cj6SFMc2MEgZAKYJCU3zTTyzd22KbCzFP7qK8VVm33E2bB6i4EZiVsDvnVR2KjFOzhv42XgsXuAQqzyI08trlg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04482d0d-f552-414d-377c-08d8393175fd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2020 11:19:47.0124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R4K/3S8kUzgIpYYpi0Z4PrXT76oB/3zvrxVD3SZ4TTOG0ulGKzzTJX/rPhXiCrmL+GokA03zRidOsFxd+FNStQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4201
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.87 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1k3HSf-00Emy6-Gv
Subject: Re: [tipc-discussion] [PATCH net 1/2] ipv6: add ipv6_dev_find()
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
Cc: Jon Maloy <jon.maloy@ericsson.com>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 tipc-discussion@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 8/3/20 11:34 PM, Xin Long wrote:
> This is to add an ip_dev_find like function for ipv6, used to find
> the dev by saddr.
> 
> It will be used by TIPC protocol. So also export it.
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  include/net/addrconf.h |  2 ++
>  net/ipv6/addrconf.c    | 39 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 41 insertions(+)
> 
> diff --git a/include/net/addrconf.h b/include/net/addrconf.h
> index 8418b7d..ba3f6c15 100644
> --- a/include/net/addrconf.h
> +++ b/include/net/addrconf.h
> @@ -97,6 +97,8 @@ bool ipv6_chk_custom_prefix(const struct in6_addr *addr,
>  
>  int ipv6_chk_prefix(const struct in6_addr *addr, struct net_device *dev);
>  
> +struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr);
> +
>  struct inet6_ifaddr *ipv6_get_ifaddr(struct net *net,
>  				     const struct in6_addr *addr,
>  				     struct net_device *dev, int strict);
> diff --git a/net/ipv6/addrconf.c b/net/ipv6/addrconf.c
> index 840bfdb..857d6f9 100644
> --- a/net/ipv6/addrconf.c
> +++ b/net/ipv6/addrconf.c
> @@ -1983,6 +1983,45 @@ int ipv6_chk_prefix(const struct in6_addr *addr, struct net_device *dev)
>  }
>  EXPORT_SYMBOL(ipv6_chk_prefix);
>  
> +/**
> + * ipv6_dev_find - find the first device with a given source address.
> + * @net: the net namespace
> + * @addr: the source address
> + *
> + * The caller should be protected by RCU, or RTNL.
> + */
> +struct net_device *ipv6_dev_find(struct net *net, const struct in6_addr *addr)
> +{
> +	unsigned int hash = inet6_addr_hash(net, addr);
> +	struct inet6_ifaddr *ifp, *result = NULL;
> +	struct net_device *dev = NULL;
> +
> +	rcu_read_lock();
> +	hlist_for_each_entry_rcu(ifp, &inet6_addr_lst[hash], addr_lst) {
> +		if (net_eq(dev_net(ifp->idev->dev), net) &&
> +		    ipv6_addr_equal(&ifp->addr, addr)) {
> +			result = ifp;
> +			break;
> +		}
> +	}
> +
> +	if (!result) {
> +		struct rt6_info *rt;
> +
> +		rt = rt6_lookup(net, addr, NULL, 0, NULL, 0);
> +		if (rt) {
> +			dev = rt->dst.dev;
> +			ip6_rt_put(rt);
> +		}
> +	} else {
> +		dev = result->idev->dev;
> +	}
> +	rcu_read_unlock();
> +
> +	return dev;
> +}
> +EXPORT_SYMBOL(ipv6_dev_find);
> +
>  struct inet6_ifaddr *ipv6_get_ifaddr(struct net *net, const struct in6_addr *addr,
>  				     struct net_device *dev, int strict)
>  {
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
