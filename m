Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C0F1CF2AA
	for <lists+tipc-discussion@lfdr.de>; Tue, 12 May 2020 12:37:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jYSI8-0002cG-Up; Tue, 12 May 2020 10:37:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jYSI7-0002bt-Al
 for tipc-discussion@lists.sourceforge.net; Tue, 12 May 2020 10:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bl8YnMZMKsgpjw8FLfO3OoAvxW+C5JYnhZVVbKyKoaU=; b=InrpWLdbRhYTb7keZH1XdCGRq/
 OGsbmCjX9Er3CmT9Aoc3ahrk4waQ9j1fHInGXuWxoGNKOl3ujYfVG8eIUTOGXcJT5fhdNsRsGF+vn
 LoFccY58rDvu3vW4Dziu85CzDvsAPW9bq+9eKYCPev5VUNtYFDq234paJrWuwASYniQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bl8YnMZMKsgpjw8FLfO3OoAvxW+C5JYnhZVVbKyKoaU=; b=hk8w/rke2KJ1hTl0+53E8UjXYz
 UbADirg52liYFNcwRTqqV6kCUVuWfM0ace8SH61RsGdfWwKbuZvV1lnqX2OupxCI2krtA+fdba5rP
 3+drHnwrnbk/yLiauzzAdF8iYVIdM0b0BCpf/bhagggC3G9WBTwp9dHW2F+0ZRfKbqY4=;
Received: from mail-bn7nam10on2061.outbound.protection.outlook.com
 ([40.107.92.61] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYSI2-005zRS-CZ
 for tipc-discussion@lists.sourceforge.net; Tue, 12 May 2020 10:37:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dy0Viplk7+NdJwN6f657wtUKRHiNlX767cdq66IWxRbnAowqbo+WRNHS3umWpJyqv7RlUIAaDS8rirG+u0AIU9EikTmDQd1npJXkFEQvMSdO6shNAi864SzqezgIg1l9pIJnYHiU6+Iyqg3/0ONTHciCUKO7QAlW8V286iK/2FsxmiQAzWV70YWPuNiKJIW4rqvNV0Z4NY/UgEcf2ckfO8vrjUYKJW/gmzwXFEVOnCd0nmQkqQvL14AsAXcTGkmYl5tv9l2wHYJ3OaNY1ahj+SxwY/ckCOdEq53IZidz96cxRSDk5qAuMgi0ATezB8t20TzIelegS5J95+V8IsmvUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bl8YnMZMKsgpjw8FLfO3OoAvxW+C5JYnhZVVbKyKoaU=;
 b=N5X0KqrC09Xt4Cg/nyz5Sl0So90gGmeJB919ZcLqmibKuiKVknerUQhALT5iI1lSDIgyfXRkc8J1mmNhrGqBZ69z+h/DeNbSS6BeW6NPA3tHnHqKw/ZHtWUfet+Hdpeqs41SEf2NFpphzy8/xYUYYAP1RytNmmxL0u8UVFMUFyaMSx5+/MnFwCU/4cFsx0pyt1cW9nZsIx/bbOrLz9L/9V11K3KZhpe/d4QaGHu+E3vRAlgSTD8rqzQvEWOBeApiO1ZbgqEmw2nkfY8oDdamz5k+l7wYD/ipOsNeNoBbZKS+JlnYA11jPKfmbSSoZrXmgecIwHsvyYgAT5eP+5SaIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bl8YnMZMKsgpjw8FLfO3OoAvxW+C5JYnhZVVbKyKoaU=;
 b=ILGCC3bubYaxRln8jQ66eBRNRTBhlvIHSbGIc8yORY81A59JNDLMBhRytOT1lLJ6+SHmI3kk56rk/m3SICh+n6TfnUeQ5ao/xZISi18ZZCUpRYKGDXVU685HNbXyYk42cqEQY8B7SqGNy2FF4FefdGKAmIGQtaIcnPKe5uUm9BA=
Authentication-Results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4466.namprd11.prod.outlook.com (2603:10b6:a03:1c8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Tue, 12 May
 2020 09:02:30 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 09:02:30 +0000
To: Tuong Lien <tuong.t.lien@dektech.com.au>, jmaloy@redhat.com,
 maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
References: <20200511035954.6486-1-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <f7c5374b-3abc-6ba8-10e2-1b7497a8c726@windriver.com>
Date: Tue, 12 May 2020 16:47:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200511035954.6486-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-ClientProxiedBy: HK2PR02CA0210.apcprd02.prod.outlook.com
 (2603:1096:201:20::22) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK2PR02CA0210.apcprd02.prod.outlook.com (2603:1096:201:20::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26 via Frontend Transport; Tue, 12 May 2020 09:02:28 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 63ca1f9f-489f-4a5c-c84b-08d7f653337b
X-MS-TrafficTypeDiagnostic: BY5PR11MB4466:
X-Microsoft-Antispam-PRVS: <BY5PR11MB4466F681B7DC0F5A3F2E631D84BE0@BY5PR11MB4466.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:220;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k0r3KHEd/lrao7qtQovqDjd1yqXCmjTv8rgrJ7/8YiVD/ljT4RY78lGebOmD2rdcuVLcuUPKpVGfKjrfvh5f5Oli9gmgA+hTwRR9jNyLjm8+1kP2hoNnyDYXn3mw148OknhkoDvwZIdyulDPmci6FKMxRxCzsci7TNb6Gbd8YcFYXPrZi79sjiEBxiXrEG7QHwiSmJJBqJauQLCh+w4E8Jge3nERvUzWLKbmlUeda5Ud3exKyeteU9JQKRDPbJo1+lLRsQDEtcCav027FxXfgt8v+tcv3SNUK+24FConN5kZj6uO+8+x8fTHLWhKHQ3AOGP5YlovKRjD3dEZ+th4Kbncv6w+KzRKPqUGb+6rSyaFpJXSQx6xWyklagMZX0fkw0kxvwJtEzyyHQCMVCnlnb2iNCmhzLg9JAxCoh7ZOb/x2YTU5ZPrLocoOdwF/uie4kY0QowPoGz8bKimU475I/UEa40EBJItcytJST2hP0qZvI1itybrIO0/RapMdzdmAokNGCVJy8qzuzKBCwsHtXx82gJnVoGRbLFSZ0+xWEsmcCWu15S/tJioIOrH7qTBL6ZsrtsAAOnYNw8tSrQ3awBRl2STKMwWWcSOEe7xg2SAacoGxr2Tkjc6xRN9IJmx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(136003)(396003)(39850400004)(33430700001)(52116002)(16576012)(31686004)(186003)(26005)(6706004)(5660300002)(53546011)(16526019)(33440700001)(8676002)(316002)(478600001)(66476007)(66556008)(2616005)(8936002)(36756003)(4326008)(44832011)(956004)(2906002)(66946007)(6486002)(86362001)(31696002)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: WGSh0fuGjbU3CHHnK2rPuHIzrl/AlXfER4/6qV6oXjOXUMBDVga+5mZ0sFAy3EZaNDv/3vUC5lgyIiqNvPBBAREdxfT4MYvaI7WcVObhJHfLfGm9kBHyt2raDLOcsekp2nu6FN978fYCPn9FFmak6uAk7xQ/5oU4MUBFhdmO6z0C2wfabzihUAW/L7q5PLOheyvoR/WfZdGDQlwJjU5ZJVhaxJO067XULU/HxGXCc/ofyxFu9qVecca6q+nlRWJXGLk1JQL2KwhuR+AkWLgnlvrBSHaKvSNEDKXwoot5H54dZV4xB7DTIa0fnceMmHjgRk5bK4dvHyKqp4AO2mnU/4QX1vCMaTUOGcetmwzopkSdQxW/z5hOrRI0Rvib3bEyUVhf0ew+lgj1PBBt492bac2EJ6LShvWBvPBo9n/d1cedxnU9b7Hc6F1A+7+sKgWXy4x1Ro7/eK7ecOfGoY4HKKBkuEp7z6Lr9lKXv1uObek=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ca1f9f-489f-4a5c-c84b-08d7f653337b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 09:02:30.5691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m18UVsW4+TsxILr2CMgxAvpZDvjEX3XofpAMKtiEERiZg4WmBqMXWehVLGifguVOxDcGpPkLyITbrlmaOGqi8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4466
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.92.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1jYSI2-005zRS-CZ
Subject: Re: [tipc-discussion] [net] tipc: fix failed service subscription
 deletion
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

On 5/11/20 11:59 AM, Tuong Lien wrote:
> When a service subscription is expired or canceled by user, it needs to
> be deleted from the subscription list, so that new subscriptions can be
> registered (max = 65535 per net). However, there are two issues in code
> that can cause such an unused subscription to persist:
> 
> 1) The 'tipc_conn_delete_sub()' has a loop on the subscription list but
> it makes a break shortly when the 1st subscription differs from the one
> specified, so the subscription will not be deleted.
> 
> 2) In case a subscription is canceled, the code to remove the
> 'TIPC_SUB_CANCEL' flag from the subscription filter does not work if it
> is a local subscription (i.e. the little endian isn't involved). So, it
> will be no matches when looking for the subscription to delete later.
> 
> The subscription(s) will be removed eventually when the user terminates
> its topology connection but that could be a long time later. Meanwhile,
> the number of available subscriptions may be exhausted.
> 
> This commit fixes the two issues above, so as needed a subscription can
> be deleted correctly.
> 
> v2: define a new macro to write sub field value (- Jon's comment)
> v3: break if the sub to be deleted has been found
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/subscr.h | 10 ++++++++++
>  net/tipc/topsrv.c |  9 +++++----
>  2 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/net/tipc/subscr.h b/net/tipc/subscr.h
> index aa015c233898..6ebbec1bedd1 100644
> --- a/net/tipc/subscr.h
> +++ b/net/tipc/subscr.h
> @@ -96,6 +96,16 @@ void tipc_sub_get(struct tipc_subscription *subscription);
>  		(swap_ ? swab32(val__) : val__);			\
>  	})
>  
> +/* tipc_sub_write - write val_ to field_ of struct sub_ in user endian format
> + */
> +#define tipc_sub_write(sub_, field_, val_)				\
> +	({								\
> +		struct tipc_subscr *sub__ = sub_;			\
> +		u32 val__ = val_;					\
> +		int swap_ = !((sub__)->filter & TIPC_FILTER_MASK);	\
> +		(sub__)->field_ = swap_ ? swab32(val__) : val__;	\
> +	})
> +
>  /* tipc_evt_write - write val_ to field_ of struct evt_ in user endian format
>   */
>  #define tipc_evt_write(evt_, field_, val_)				\
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 931c426673c0..446af7bbd13e 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -237,8 +237,8 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
>  		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
>  			tipc_sub_unsubscribe(sub);
>  			atomic_dec(&tn->subscription_count);
> -		} else if (s) {
> -			break;
> +			if (s)
> +				break;
>  		}
>  	}
>  	spin_unlock_bh(&con->sub_lock);
> @@ -362,9 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
>  {
>  	struct tipc_net *tn = tipc_net(srv->net);
>  	struct tipc_subscription *sub;
> +	u32 s_filter = tipc_sub_read(s, filter);
>  
> -	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
> -		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +	if (s_filter & TIPC_SUB_CANCEL) {
> +		tipc_sub_write(s, filter, s_filter & ~TIPC_SUB_CANCEL);
>  		tipc_conn_delete_sub(con, s);
>  		return 0;
>  	}
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
