Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0611A1CDCA9
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 16:10:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jY98j-0004ug-0x; Mon, 11 May 2020 14:10:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jY98i-0004uZ-3r
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 14:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fHScPXf761boajfwZ7+BYSYuX0D+SOnAUaS1p8ZnBeo=; b=O4YsMjKc+U/JupwIyGVcBpGcb/
 xSTXL7oDD+F36l4TzyH3H7l0HGrotZX5MLzHU2nRIwU7wLbp0OkDj4leNSkwFfU+c0qXbjChNvgVt
 pVn8VpKjxiMe++wotrU5hlC1CZofOB5BjtmsO5w1pjkshvZ4J2f2uZ49LlIKTlGRnl5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fHScPXf761boajfwZ7+BYSYuX0D+SOnAUaS1p8ZnBeo=; b=VwFI1zCvGtSwDFHN3O/B4scg3J
 WYRVG5lplTUkkXpccsJXvNvAQMggclsZuiAqesohyrMEVWdPogCpLdJwBEhgYPpD6c11JEfhoRVCi
 1Hi57exR4PbOzA/A9sXG9idD08lJ4f7mc0VyhoMB0f5xHB1XqiX7MNmWICugtast/0jU=;
Received: from mail-mw2nam12on2053.outbound.protection.outlook.com
 ([40.107.244.53] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY98g-001GAK-Cl
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 14:10:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HViYzu2yBDNE+6i/QYD3Jzp6zaKPDGVLfSR9nmeiarhzLADCAFO6wxUx0DORFXxXpJPb/KnLpSlIxD3u7PsZsFd4loLeaZdLLEv5v4iS45Hi6ACfPoubRf1U5VWnt9z5dtWN6Qdd5GLFOrSDcfRrDcSRBd17j20kwUsRX6pWlr8/BNUC6EJFcHn4FY8+I5Tfez3w29+J+6Iq92tG/kjnX3cCtiRxmFr0+6Sj7keN7DYqXwtD4Z4fJ5OyDyaCPbFCamc9PZU6MXrT67IjL9hwjSccQJzRlLp1tI63SNIzmcbwyXx4yrTJqCPv5hIC3iTVU89phGYor2qGiwmkBhqYig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fHScPXf761boajfwZ7+BYSYuX0D+SOnAUaS1p8ZnBeo=;
 b=Dp12TA8uHQRke62Ddp67StVLwBq221wVtCvzKIg6xNq063d2iyxrwVaw34djQUMdEsXN9JkDIyuOBzFDCVrRk+3W7ShN2phS+hp32/6Qkrg3wLcqDZMHRn5OnqXRgyqqy7ULTS4osI8Ht9GBDcd6l+LWo2dUTt8FD94uwZyxqhLIqbLIj7Ysl5rHyrGiGkUQ/nZzaz5vtJrlIbjInUolg0ZG/VD2I3zA4RJWEtwRhUe/DPgcvGdN4w6gw0tXr39XNISHDEa2RO38FIufAczuTrDm3xCTjiArxdxsLK3kxCD0yQVA/0Saj5mhdG45q58M9dSNKC3s28c5Iw7na/0iCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fHScPXf761boajfwZ7+BYSYuX0D+SOnAUaS1p8ZnBeo=;
 b=BBaAwQgjcbdVRyYQkPhh7bRvwGBnCTrSfDLWfGbxYTx6gTzwaDU5WSI2qGg47kD//tdWO5ndTItjh6s31SEiBt8crxY3GEBOQU7gR0TXTzAPzeY8xz7PjoSpWVq7MP9ufz4til38i8hp0WaTQ6f1Y46wpfb58/O0Afb+mzV5xnc=
Authentication-Results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB3880.namprd11.prod.outlook.com (2603:10b6:a03:184::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 13:38:12 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:38:12 +0000
To: Tuong Lien <tuong.t.lien@dektech.com.au>, jmaloy@redhat.com,
 maloy@donjonn.com, tipc-discussion@lists.sourceforge.net
References: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
 <20200507111249.8760-3-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <e332c06e-a87d-4c35-046d-ff6db27c583f@windriver.com>
Date: Mon, 11 May 2020 21:23:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <20200507111249.8760-3-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-ClientProxiedBy: HK0PR03CA0117.apcprd03.prod.outlook.com
 (2603:1096:203:b0::33) To BY5PR11MB3894.namprd11.prod.outlook.com
 (2603:10b6:a03:18c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.155.99] (60.247.85.82) by
 HK0PR03CA0117.apcprd03.prod.outlook.com (2603:1096:203:b0::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.29 via Frontend Transport; Mon, 11 May 2020 13:38:10 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c686fc5-9514-438d-1451-08d7f5b08cd3
X-MS-TrafficTypeDiagnostic: BY5PR11MB3880:
X-Microsoft-Antispam-PRVS: <BY5PR11MB3880303D671BFE57E0AC742884A10@BY5PR11MB3880.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:628;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /ul9a09NorxfKDCsfqhQxcRGnB7XiuMZ6MkdtYG/NeVtK2DkZ0LJJbqBRAtHSRfoPbkRHMwEigYcXzhHE4r8ho3mpm9253N9pg4Vv4mNQlZgtXizT4kDGNPZwyNPt8FU4Do9nFZ2DNCmA/tIr0teqTzbJWIDZipVJOKK6NMP6TXFOjo/lNrE/h0KAz4GT6U6vFED5kscxHcDB5ew21axXdY3r3lGrPrtwo42YJtTnfb7YJHIFudUGOqIU/UTExz5KEAYAYvOts9JQ2y6k3Bgf2IwpGZ6egIPQC7t1hRBrypLyd9x+O1B5wNjVaLjoT9yk0jjD9FdXf40woToyAlgPQSMXjwsnDetVnmCCbQebD8zN+vuKzQlMxkRiyO0hzx3FPSlc8WiE3hygD7+0dqWd8xOBU+a2m5v7tvEusITT0BMAig8tPmHyH9xkBsKn66BcYcvMFjLJDhkUAuwq72X2vVMgtyFRFuFrLLJeeV8EvvuU0koY4dD8KjIv74PNoO4e32WHvWhDNcKzIq/mICH+yrg15w8ljrjoBNh1gV7S2V6SrkwsLt5WrpP97vFXyNUzGrcMWaoZvwjhzYtaMmqSlSeuER6+PZpnsCFJj/kWSk1nwQJwveEngmxEOk444SW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(396003)(39850400004)(346002)(366004)(33430700001)(26005)(36756003)(316002)(186003)(16526019)(2616005)(956004)(86362001)(33440700001)(31686004)(16576012)(478600001)(2906002)(8676002)(31696002)(66476007)(52116002)(4326008)(66556008)(66946007)(5660300002)(53546011)(44832011)(8936002)(6486002)(6706004)(78286006)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: IMMcumuDTCWLgwQuisRdMk+0nJRGm/swO5me5owL1gSkDszjUmyDnSeK7ralq8T8zSUiCLUeIXfoLZvIhR28dqgx7e4dwIPKVaOQ+fUQ0OHbwhI5mnCZuHyH6PiDsmvzeprXyHBMmcoEG8uOtjTsIlJvgH+vodsz8J3Ql9nYj179/4mKZq+GyikhjAIl+itJrC8/E2LjTLXgLtt3PqJzFH71yLPsZcuP/kfGgirPs1IaDifDv8m3a2L2xHFgbdSEGgLU5n1QQMJkWtXTS7aUODsZ18O7p4rVD/7TSCAVxK7EM0YW8J8JLtaDn1Z6ZHT2dXklbNUq4B3e0CTcDCZ8K4fC1W9WAvbl37LAbMPWJCNQQkuqrKpO91pROY29HuePb2XYrA6NSbBLeTqfXJRc5mTSFGZTYlPBzllgXG6wM1vQImmyNToxG97eK6uTy+6w7Z6O1RrvZAFcw8mnnbC063hGIMn48JEfTnjt+VuM/G8=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c686fc5-9514-438d-1451-08d7f5b08cd3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:38:12.3776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xAWyu/s6wpUVI7D9DVL9ICaBywyoOTrbUvGTWA0CjPK3/y9dF56v5YPXBZbdTrW1nSthXKjAAyXxpHUK+ai9iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3880
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jY98g-001GAK-Cl
Subject: Re: [tipc-discussion] [net 2/2] tipc: fix failed service
 subscription deletion
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

On 5/7/20 7:12 PM, Tuong Lien wrote:
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
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/topsrv.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 399a89f6f1bf..44609238849e 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -237,8 +237,6 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
>  		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
>  			tipc_sub_unsubscribe(sub);
>  			atomic_dec(&tn->subscription_count);
> -		} else if (s) {
> -			break;

I am quite surprised at this issue. The issue really exists as you
describe above, but it's better to fix it as follows:

@@ -237,8 +237,8 @@ static void tipc_conn_delete_sub(struct tipc_conn
*con, struct tipc_subscr *s)
                if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
                        tipc_sub_unsubscribe(sub);
                        atomic_dec(&tn->subscription_count);
-               } else if (s) {
-                       break;
+                       if (s)
+                               break;
                }
        }

>  		}
>  	}
>  	spin_unlock_bh(&con->sub_lock);
> @@ -364,7 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
>  	struct tipc_subscription *sub;
>  
>  	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
> -		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +		if (!(s->filter & TIPC_FILTER_MASK))
> +			s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +		else
> +			s->filter &= ~TIPC_SUB_CANCEL;
>  		tipc_conn_delete_sub(con, s);
>  		return 0;
>  	}
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
