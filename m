Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DAC29AC0B
	for <lists+tipc-discussion@lfdr.de>; Tue, 27 Oct 2020 13:28:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kXO5m-00017o-Qv; Tue, 27 Oct 2020 12:28:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1kXO5l-00017h-TS
 for tipc-discussion@lists.sourceforge.net; Tue, 27 Oct 2020 12:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kRBWZjsMiFqqKsRw1MD9r7SNyr0xdwxhIiyn46tfHwo=; b=Gd11xwgEd3osdz4soO2Iz6UxdF
 ivXN9YBtSI31yzTBEzcYyvWU8OfROrzazBZoYYHyONxKIDiKCmaFaPBeMGR4D97ng4A9K7CJVg3mv
 mW7EfohPrvdrjkkgUqlE5jmSAECtiCrtQfAkH2PBQREi9Ro+4HWBS3DRjsjXzjWIy+Nc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kRBWZjsMiFqqKsRw1MD9r7SNyr0xdwxhIiyn46tfHwo=; b=fPjCM7bYKiXBS0L+dV6YgaBTiH
 FpyO1gCPD8Fod7mUOb8FJjwP+h1WIjHoAP9KR6+YTRfr2lPvG4fw+lfM59UBHQZLnHg5G29Z6duOB
 Hm0wd35qpgB1dLbD1Q4S1cXxE+6nIytZR2zfkmk61KFqoo35vHjaq4BnXtY8/5clrAAg=;
Received: from mail-dm6nam12on2077.outbound.protection.outlook.com
 ([40.107.243.77] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXO5Z-00FW1J-8t
 for tipc-discussion@lists.sourceforge.net; Tue, 27 Oct 2020 12:28:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQ3zpiFaAneJCTzCfwHxrBe25J5fDO5hStxJ8gU4eruNM1Y5+MDIjmoKsf/GV3slfO+5ad1mc3FCtecalrBqLOkki3UgbVTIR/Rid67Y6z7WKcEFdPSIxEgx3jxTLonCbshdAQxVz7+tx48RTeln7+ca/rFmUL1pBlWldmjl24kIwlYjoenvsrLolUQ8lVgIOPq02lyzvEBAly74sRKwNRpwQADSvwE62HQ6josDmIu4t54Sw4zXbbgeqlKKUKR1IkV/DLmXmafhOwzQJ8qMaz6C+8TKMZY7cm/N9RKpFLpDsiT/ugRH4yfv7InqzFNTKnMi5Jwd1fU9gsjkBcL1aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRBWZjsMiFqqKsRw1MD9r7SNyr0xdwxhIiyn46tfHwo=;
 b=msu87ajTwhvmhGjanqjK6DkunQ+Ou6OWUSxQiSrselXipl+DuXx3Og2sUR/Cth44UBS4KefUgd9/3nWTcyjJgK7sqicUpXhP+khPF7K9/r159xeUI8NytUUxxV1QfSRDZcnqbOItVzfMPqiAsMKLKlDupmYtwahXvQ7cNcRGIv9GdcdDe0CK9wY3TZAOIaBtGC22MFfyN3e4LIlQ4B75NrFxVEdLS+K0Khb5O4fOhP8K5nEVR/FlCXrYQG+32Y+4yOWc4vFGpQoKbSJI1yTMZysklOJsvTVGd6XuMNHfGdnY6IG2OcD3cxcTRn94V7ZHHre2QA3yXfvg6hUEDRUQKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRBWZjsMiFqqKsRw1MD9r7SNyr0xdwxhIiyn46tfHwo=;
 b=F4vKU17PZYMecdEAbyCBl19QoAoB7zSk/Lj8jNwmgVkQQLuWW2L5Fk98n/rrWwn6QQas8cEeehm4q0RTJmub99m6foV0NLPSLkeA9SizSe9/9D3aOwDhGcn1NWa7UP9QfaJamxyr65rwiKY8IQq12wYySnCqaWWPClFvUvWUP1c=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) by
 DM6PR11MB2812.namprd11.prod.outlook.com (2603:10b6:5:c4::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.28; Tue, 27 Oct 2020 12:28:26 +0000
Received: from DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4]) by DM6PR11MB2603.namprd11.prod.outlook.com
 ([fe80::54f7:13ae:91ef:6ae4%5]) with mapi id 15.20.3499.018; Tue, 27 Oct 2020
 12:28:26 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, jmaloy@redhat.com,
 maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
References: <20201009051442.69663-1-hoang.h.le@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Autocrypt: addr=ying.xue@windriver.com; keydata=
 xjMEX1nnURYJKwYBBAHaRw8BAQdAZxROH3r87AOhslT5tP2cdYcg89+pbHiYf+LIny/C0fLN
 GDx5aW5nLnh1ZUB3aW5kcml2ZXIuY29tPsJ3BBAWCgAfBQJfWedRBgsJBwgDAgQVCAoCAxYC
 AQIZAQIbAwIeAQAKCRC3Qmz/Z9beRSLiAP9kPgF+mG4F3elbrVTen/sybJfZidnvF1YVq5Ho
 sUbt+wEA6ByAVvGqlEbt4SE1JP6xVgTzwlwihyCgl/byRAQzeg7OOARfWedREgorBgEEAZdV
 AQUBAQdAsdHm3QQyX4RnhnVEmywHpipu0cUyHWeuAkYuLavc5QYDAQgHwmEEGBYIAAkFAl9Z
 51ECGwwACgkQt0Js/2fW3kXZKAEA0jTzhaLbmprQxi1BbUmAYtlpQCrrjCWdpFGwt5O3yO8A
 /jVE1VxnEgu71mYXX1QE1Lngk+SPVEfLm0BVZFk9fBAA
Message-ID: <91a30a39-a0c1-9fe7-71f8-a62dfe0d01d6@windriver.com>
Date: Tue, 27 Oct 2020 20:28:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201009051442.69663-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0138.apcprd02.prod.outlook.com
 (2603:1096:202:16::22) To DM6PR11MB2603.namprd11.prod.outlook.com
 (2603:10b6:5:c6::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.152] (60.247.85.82) by
 HK2PR02CA0138.apcprd02.prod.outlook.com (2603:1096:202:16::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18 via Frontend Transport; Tue, 27 Oct 2020 12:28:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f5ea7e43-9519-4262-2658-08d87a73cd82
X-MS-TrafficTypeDiagnostic: DM6PR11MB2812:
X-Microsoft-Antispam-PRVS: <DM6PR11MB2812146F893FC3A02CB6A66984160@DM6PR11MB2812.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:126;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bWLkeclHM96bQ0W8djkwA4rnBqvSGhHPuUiUE6QCKjQGhCZueVRGqltDaqgrNCuUYabqts1sf7oc8FOhT180yuszbFqcu3KYq78OMIXrga3vsPssoF5AxZVK6KkmJfkgNVXUyh23M8GoyCsbipx9KXlqgLKLl9PtiEgv+M4Ofqga8aK3R2uaw2xN+f1hz8G+DjMQUQZnfuDb9fntulqbczDityfccFw3dKhvWqRP5kjcWhG7oQjhuIWweUZDherQ3mJbErNali0LDJontOAzaLn9JSUiPCxnUODUFS4mZWehPr/LlJnbpsOSquUsx5U4XLnFoIteL9ksoZnvMmm/SDxjmrKO5wxefgWcKAQgr+olLQkvUpi8HG/NxxkDUacwODJeuKJdXg/UO52CbrzCQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(39850400004)(376002)(396003)(366004)(86362001)(6666004)(52116002)(2906002)(66476007)(66946007)(53546011)(8936002)(36756003)(83380400001)(66556008)(5660300002)(16576012)(8676002)(31696002)(316002)(6706004)(956004)(31686004)(26005)(16526019)(6486002)(478600001)(2616005)(44832011)(186003)(78286007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: I78qoEIwAEo8YElnk9YklNrmjSHYA5iUJguD2GFrvasKLSSplhdrjoj+QTPgDFu6CauF0ieWZ0lWPC627ZBG3Rt7IqU+xXLc5ZR70wyXbaMiI+M+ZXEPUh6RuVRACjTAVfC6MwLa2eVDVOioiIs4g8WLWAtTXBQqr83MpyNOoE8b9m5+CYTF82y/Nq9C/AR3vDwepscKKdrRkWk4wphyL7APHtJIIz67MdZfgd9hlcYHS5d8+mN7AbcbGW/el2s82SBUNA31/cCO0xQWuZ42JQvfYdnjX//y/Kea896DFkwr8NrqXY9BTxpZWkXnxKrsRIycBeZ9UKNKlWCr1r+EtPRhYrBtnJ7PxOmo0tmewvIgp82VgmHA8UvpQnLXVPXwzOLHN3OybUuIdD1t/o/ns+o7xqOFULoSQ8G1T4ic5+T+dxkUvnz9iwwmiMqoD0g236Pb6Fa9hJFMNzO7y7D6Ah8ZJGicRsIPYfl5RzJYmAM97BBPxMgC2sj23BeKjSySxC8e4Bj6xuC3XJal98bTsZ00x2RrWa8a4eb01Y/yvklz1nxRUIxjvqZPc33EAXi1YZkszeda9Jqno2hB3njeMO3xSYWJBddRDRa3cfS6+NOfZMujYqYczywoM3XsRBNcfnIEHbrgTEymVjBeSIDLCA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ea7e43-9519-4262-2658-08d87a73cd82
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2020 12:28:26.3829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K0SQiv7snIpzKfISe2gd9u6OMHnPTylTFteSzFIUl9ErJ/5jhLzxmKqOSgHeDoThb7UmWqgwg0bUIcgF8dNHYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2812
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.77 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kXO5Z-00FW1J-8t
Subject: Re: [tipc-discussion] [net-next] tipc: remove dead code in tipc_net
 and relatives
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 10/9/20 1:14 PM, Hoang Huu Le wrote:
> dist_queue is no longer used since commit 37922ea4a310
> ("tipc: permit overlapping service ranges in name table")
> 
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/core.c       |  2 --
>  net/tipc/core.h       |  3 ---
>  net/tipc/name_distr.c | 19 -------------------
>  3 files changed, 24 deletions(-)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index c2ff42900b53..5cc1f0307215 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -81,8 +81,6 @@ static int __net_init tipc_init_net(struct net *net)
>  	if (err)
>  		goto out_nametbl;
>  
> -	INIT_LIST_HEAD(&tn->dist_queue);
> -
>  	err = tipc_bcast_init(net);
>  	if (err)
>  		goto out_bclink;
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 1d57a4d3b05e..df34dcdd0607 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -132,9 +132,6 @@ struct tipc_net {
>  	spinlock_t nametbl_lock;
>  	struct name_table *nametbl;
>  
> -	/* Name dist queue */
> -	struct list_head dist_queue;
> -
>  	/* Topology subscription server */
>  	struct tipc_topsrv *topsrv;
>  	atomic_t subscription_count;
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 2f9c148f17e2..4d50798fe36c 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -244,24 +244,6 @@ static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
>  		kfree_rcu(p, rcu);
>  }
>  
> -/**
> - * tipc_dist_queue_purge - remove deferred updates from a node that went down
> - */
> -static void tipc_dist_queue_purge(struct net *net, u32 addr)
> -{
> -	struct tipc_net *tn = net_generic(net, tipc_net_id);
> -	struct distr_queue_item *e, *tmp;
> -
> -	spin_lock_bh(&tn->nametbl_lock);
> -	list_for_each_entry_safe(e, tmp, &tn->dist_queue, next) {
> -		if (e->node != addr)
> -			continue;
> -		list_del(&e->next);
> -		kfree(e);
> -	}
> -	spin_unlock_bh(&tn->nametbl_lock);
> -}
> -
>  void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
>  		      u32 addr, u16 capabilities)
>  {
> @@ -272,7 +254,6 @@ void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
>  
>  	list_for_each_entry_safe(publ, tmp, nsub_list, binding_node)
>  		tipc_publ_purge(net, publ, addr);
> -	tipc_dist_queue_purge(net, addr);
>  	spin_lock_bh(&tn->nametbl_lock);
>  	if (!(capabilities & TIPC_NAMED_BCAST))
>  		nt->rc_dests--;
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
