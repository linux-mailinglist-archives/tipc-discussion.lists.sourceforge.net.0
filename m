Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB3323CA36
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Aug 2020 13:20:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k3HSu-0001CR-WD; Wed, 05 Aug 2020 11:20:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1k3HSt-0001CF-PR
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 11:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7skj7IMKw4GED060ZGGpAoLiHBBpVuy1AtExYSdOo38=; b=XU6hPTXX704SmBBudf3lqlK+VZ
 cm8A77ksIJ1mAXlH+3fvl5mBhA5xW0tQps/OIM6JBZAkL/6ikGZ7urovXVsZQuQaOJzUTrfxhd0zA
 QJ4uLwdeWKVJXy/6wscyqXULUd/GArLbJbFt6kOeqpLCm/DU2j82ukIm27YqjddUzBEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7skj7IMKw4GED060ZGGpAoLiHBBpVuy1AtExYSdOo38=; b=ge6Gnhm5Sj0RH/BroRzRXlE+DO
 1Qk+tqaCqUOadB8jRtCj9MXFeFTvY5P8adjhAFLKo8olKHFPWyF2WRDAAIvE4KP+ZjwxoaHlQ2D8I
 N82yHcazGSd0tAdaQEtgzpnYp06GBSiI1KSnx630IVmOF0lEc4LtE3QKdPbAIqI1cG9I=;
Received: from mail-co1nam11on2053.outbound.protection.outlook.com
 ([40.107.220.53] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k3HSr-00En2X-TV
 for tipc-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 11:20:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O6XnXKpSL19dpTmDgocqdlACazX0goO/9q7XbIabXGeS49X6YvEhHQIOihqpRXZnUNHXzgav4ciTsppqfRAkkW/oWyzU7EA0+PWmnPS3k/LFQyCNpcgBJG2v2HRbK5pQKYItRBxATPwH+Vuim/0DvO8Ni/1lXB3t4whjoSFq4Ej8d/WqX9EiOuZ3kAML2ParuCFHlnqcqJALAJLw638ruBL4rPkVnZKuhEs8+FI/ilhZIthfNeGtyxqm2E9VtgFh3LhyguJNIWOrCmXIU0hbw4/9OLuAhSiR02b1SeqMvYLq/Z4qu7qLOw6sZy/q8xh9e54famajsKytcZCI94XayQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7skj7IMKw4GED060ZGGpAoLiHBBpVuy1AtExYSdOo38=;
 b=S9wMwWw0WJWlV3dqdC8SzOaC1HehnTwdeaTpYCuut4WiM8A+HI1tI5vzvYONP9PcCV9FVNtNoPMTK6GbvyZ646H8If3lDwEkqjZ8nXAAWaM+PgSbU8SPVCD65b3CbO07zmyUAMwcqOiwYKMuRaNH4spsV2HWZqy5OB2OCQcA4T9qmn5YkSv6JigB6EFxdWn3Z1Cvb/2ntUfLLM0oGCWRg9N6lo+KqzYKgdaqTHRFDoC96LAXPuQ6+9x8OWJu/3OgsJxQ1qvDd5HXxXDTN/7dSm4ATOOlz3uTtkLwVtemkz1AylzQ5BSXQay/GG5lM/sr6zpZir7I6RkSiLz2iDPTAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7skj7IMKw4GED060ZGGpAoLiHBBpVuy1AtExYSdOo38=;
 b=gyGsQl6teXavfebkP8B7OdM3vtXYZx7EP89UXckpRNWjagkEXDA0OYfEcwFEKowpPwP9hpALsVaaM3/uNCtTsRzaU1msnVU+j3rm3IJcE8LrkY3lCawLdKUC9NltfulaXgEgwjVvpw8rKqJkoVGKVFMlEy2RlsWp9FUHZ446/mA=
Authentication-Results: linux-ipv6.org; dkim=none (message not signed)
 header.d=none;linux-ipv6.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB2858.namprd11.prod.outlook.com (2603:10b6:5:bd::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.15; Wed, 5 Aug 2020 11:20:02 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::b16c:41d1:7e54:1c4e]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::b16c:41d1:7e54:1c4e%6]) with mapi id 15.20.3261.015; Wed, 5 Aug 2020
 11:20:02 +0000
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <1806063a61881feadcbf4372f2683114c61b526a.1596468610.git.lucien.xin@gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <e6665465-f018-174f-6c83-9f31f8250199@windriver.com>
Date: Wed, 5 Aug 2020 19:03:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <1806063a61881feadcbf4372f2683114c61b526a.1596468610.git.lucien.xin@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: HK2PR02CA0189.apcprd02.prod.outlook.com
 (2603:1096:201:21::25) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR02CA0189.apcprd02.prod.outlook.com (2603:1096:201:21::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3261.16 via Frontend Transport; Wed, 5 Aug 2020 11:20:00 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc591d41-a84b-4476-4a97-08d839317f0a
X-MS-TrafficTypeDiagnostic: DM6PR11MB2858:
X-Microsoft-Antispam-PRVS: <DM6PR11MB28584DDE74F233F576F6714E844B0@DM6PR11MB2858.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dMly64DqYrT9upF1IQW63Po8OlIImXmamOwVXc0dhDUEeBQeU/vmpwowvjMQtIiFLTafWA4YQ95CBmaqtVaBAmzZPlTDGKwp7IgF8ZiEQ0uN/45Rt7QkCaDAy8LnOYW+01T0U1Fm7NbeVjO177geLQIsm85aWhQES0fRX7RGzv1Lghur8WL+OAVMkLElY1UV5bXdCiWLxjSuKiMcfAHh9FmmjRd65T0RWp8NRbrDtyNAfIUOStqmNlntU2BIX/HBrg1Td8grCH3qk5N/1JMKgY2/PZxbFwAGTXrV2YS6oe4TVNk5RxoSMjvK4h8C9EJaiwWAki22JoQCVZvYdFDPq2KkyWnbFX6W3+tY0+Eb12aj2x7bN1N8rn8GiYYh5+TXbI5bEy9ZbY9HHbgr594N7eZU003oG8XVB1eO60sIItQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(396003)(366004)(346002)(376002)(136003)(6666004)(36756003)(44832011)(186003)(16526019)(26005)(2906002)(110136005)(2616005)(54906003)(6706004)(66946007)(5660300002)(16576012)(31696002)(316002)(6486002)(956004)(53546011)(8936002)(66476007)(478600001)(52116002)(86362001)(8676002)(31686004)(4326008)(66556008)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: S7Mu5lf7WEEttWSJofsl6VGzvXPFnfbg+IzlLIq9aUVBl3oS3ETwwEZ4pgseaILHnkQ/1zQ6Fk1vyk15HxuLg5GmmY+Ex2ZAabvbaOHUJiANF2E+Tf3YAvltQXRclbmho7X81q3otfhz7u9frc9eAaipVmc1FBItGrJ3nA1vpK2BYeRi+cwPoB3UYWqxrzmesPpoVft8pu4DKug9WhmB45pEDgXrra/HJbg6kQavCc7PhCvlDIwwJ+QCZVintApny/tsAni1/wC1ml0SCGOw4rTR+aM53fmJJ7xe7NVjU1hc31XRWCev8CAXA+nmHSzw93NxSsKumjfv/1K/dRMCdGGvbxhgHGH+LscGNlxf+ycW0/rDmyyv+mIac3a9rvuKTmYl+G9BRCd+ntoUAg2oEpkPuYEdvJkv/KkvaE/I1poc+ZXe5S4ZftoZXpQ+F5/Cvs8yopTUQtyE8fvLXtsTvVSmADnAM82onG3ja99nzDOlP/8IDNjd7dWFtBKLoW0TFQZGmjzXHV6G5Sq2ihv4To61CSeZnJ4zohz1q4jhb2x6n7h2L5B22rrZN3m9l4dYFeUxaE58/s5B2GNpRJ9lj9iWIB8FEFvDxquCWjnedfqU4r6w4tOAGKxhh07hElfUy48ZtcTc04PPLGf/qlVukw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc591d41-a84b-4476-4a97-08d839317f0a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2020 11:20:02.1925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MyRRe4O9kmGjgRjDFWYkJeWQsHOFv2Yrr5aOKSD0vgz4oPap1eZQPQch6FnvNZ4CRdqscTEnnLt/NPRxIj/+vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2858
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.53 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k3HSr-00En2X-TV
Subject: Re: [tipc-discussion] [PATCH net 2/2] tipc: set ub->ifindex for
 local ipv6 address
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
> Without ub->ifindex set for ipv6 address in tipc_udp_enable(),
> ipv6_sock_mc_join() may make the wrong dev join the multicast
> address in enable_mcast(). This causes that tipc links would
> never be created.
> 
> So fix it by getting the right netdev and setting ub->ifindex,
> as it does for ipv4 address.
> 
> Reported-by: Shuang Li <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/udp_media.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
> index 28a283f..9dec596 100644
> --- a/net/tipc/udp_media.c
> +++ b/net/tipc/udp_media.c
> @@ -738,6 +738,13 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
>  		b->mtu = b->media->mtu;
>  #if IS_ENABLED(CONFIG_IPV6)
>  	} else if (local.proto == htons(ETH_P_IPV6)) {
> +		struct net_device *dev;
> +
> +		dev = ipv6_dev_find(net, &local.ipv6);
> +		if (!dev) {
> +			err = -ENODEV;
> +			goto err;
> +		}
>  		udp_conf.family = AF_INET6;
>  		udp_conf.use_udp6_tx_checksums = true;
>  		udp_conf.use_udp6_rx_checksums = true;
> @@ -745,6 +752,7 @@ static int tipc_udp_enable(struct net *net, struct tipc_bearer *b,
>  			udp_conf.local_ip6 = in6addr_any;
>  		else
>  			udp_conf.local_ip6 = local.ipv6;
> +		ub->ifindex = dev->ifindex;
>  		b->mtu = 1280;
>  #endif
>  	} else {
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
