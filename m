Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECDA1EB56B
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 07:42:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jfzhN-0004GW-TP; Tue, 02 Jun 2020 05:42:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jfzhM-0004GH-GV
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 05:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vBWN70O0yx5sJaqaTRLyzQdKQ+umDgnMSh+5AFKmbXI=; b=k0DJCJKtzXx4ZrjlGWz7fRsyXC
 vbz23mTgt2DcDFJGoj2j99h0SLxZp1GqTwBpy+7FCfl1gxRjQIXnrkYb5fuX8RaslfjH17r837j8G
 0wtjyGZW0lYVQih7/N5DYYnGi0gnqaJstwJ5FzQhO4GGUXY1AZ8Qe3PgsciSQJc6amB4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vBWN70O0yx5sJaqaTRLyzQdKQ+umDgnMSh+5AFKmbXI=; b=mRqkOw4AT5tgChomy/VMQgkMmD
 tPCAYIA2MIJGowsAc6eU+CvCj4nuQzOF6pB6Gj3U7k3gf1PmDORaCtNd6jtEemxx4snF7l6G71iiz
 uqUYewqqlC3Gi44cb+UKKkV3UWvm3cDuhAiamfIMw+Ba7bXfqaXlpLP8qCO2KYpm1Sy4=;
Received: from mail-eopbgr70113.outbound.protection.outlook.com
 ([40.107.7.113] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfzhJ-0026J6-UL
 for tipc-discussion@lists.sourceforge.net; Tue, 02 Jun 2020 05:42:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=clk8aUMegKzgBduzwOL9Dzps5vIgTjaUGPhFvKTYms+zozk2ra0xoxSW1u6fOGJiVqF+W6XG/fTgEqIE/lTNlkpSVjA6piFpP0SmlLz4MXs+g9v8I/aEGtQ1E1tB59FOT5XJjzr9vudVNiUFWHSPpdVEoMc05y1MQKQjB3Ew7NM57FZQ32brGr8hQ+DYBMDHyFpIs+5NWUVwKlwJM9iOU7Hi2KUKjIgyod3sN9DuKVRmNJgjTkpWbezc1IraIC/ir4p29Ki0BYQecUuKZRIo6ziYBOLxNh8+aheN/r6zd/a5L9q+WXxm4/di4GTeOZPPKSllSSwUgIJwhgjKJigopA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vBWN70O0yx5sJaqaTRLyzQdKQ+umDgnMSh+5AFKmbXI=;
 b=fluTCuF0iArqWjjwyTrovtEABKPiWkV9xfKYGrEDXARbwyROltxD8WAO0M26j5al4e/66Uz1wiznXe8e4I9F7Q/wwYWAOFGkMyoBiE/zUP8cWt397RqM2FGFdY/DgG4Lw8CRsoxrEsdTJnqadr0qtN9ADvEWDJGZTRUENQbWuHGwvywYnMSkCyDfMbac2gSwOsfAFvU+zCVRMEHueQcNDGp6gPpcuNjg2hDpaQvOCIbXn+EhAoWNv3p7DBr1xkIWhfU5xW0auy7rR6MOGycRLvPOPBaqI6kkE33mT4TAQa+PRVJmhuRylKQtzzMkfPn3QTEizTu33/5Ej+pzy4OxsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vBWN70O0yx5sJaqaTRLyzQdKQ+umDgnMSh+5AFKmbXI=;
 b=oClrBF5oGNegwydcrFb2jwvt4E9JTyIeWYsArg/xppxQMGxY9q2BEMHstHVf/rIiMZIiLmSCk+uYNlrmk8IkkGt/y/Raw0fqLFvjb1D4CoJ9psrHbaPS92kaD0bCv24aVDJ8vPxYZ8O6+vjd7XF9qkNS+LPcpAcGYyp8jQC1YV0=
Authentication-Results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=dektech.com.au;
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com (2603:10a6:6:4d::19) by
 DB6PR05MB4534.eurprd05.prod.outlook.com (2603:10a6:6:53::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.21; Tue, 2 Jun 2020 05:42:41 +0000
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::ad4d:99ad:217c:47b9]) by DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::ad4d:99ad:217c:47b9%5]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 05:42:41 +0000
Date: Tue, 2 Jun 2020 12:42:32 +0700
From: "hoang.h.le" <hoang.h.le@dektech.com.au>
To: Tuong Lien <tuong.t.lien@dektech.com.au>
Message-ID: <20200602053046.GA7054@example.com>
References: <20200602044641.10535-1-tuong.t.lien@dektech.com.au>
 <20200602044641.10535-2-tuong.t.lien@dektech.com.au>
Content-Disposition: inline
In-Reply-To: <20200602044641.10535-2-tuong.t.lien@dektech.com.au>
X-ClientProxiedBy: SG2PR06CA0211.apcprd06.prod.outlook.com
 (2603:1096:4:68::19) To DB6PR05MB4598.eurprd05.prod.outlook.com
 (2603:10a6:6:4d::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from example.com (14.161.14.188) by
 SG2PR06CA0211.apcprd06.prod.outlook.com (2603:1096:4:68::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17 via Frontend Transport; Tue, 2 Jun 2020 05:42:39 +0000
X-Originating-IP: [14.161.14.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4b8b2069-ab8a-48f0-1d54-08d806b7c3d9
X-MS-TrafficTypeDiagnostic: DB6PR05MB4534:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR05MB45348BF633CE99F21D374C30F18B0@DB6PR05MB4534.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:751;
X-Forefront-PRVS: 0422860ED4
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kCVs7kal/gGZ9m9qQ8veb3HatKVzLS1FS7Iv1kBBz8zj2kKYHQuTJvFl5Rk4ugOIySnX5a7grxNuybqpCETepSnWB9QZhVIh+otMx+EFCgAZEiR+S7i5md2y3seflkHZDJAflF4GWuMnXb80GFEY2hpUWNPVICsyeR/bHd2R9V58G7sQf0ZfKK5F6k867I71s0vrwM84C5vwGWpMMdpManAaBb3W1LgX3Nx0hcsP1YKwBms5Cp0b03r2FyoBlnMlNXdpk/VwxdkkvOxVj1V65bm5bCv5SWqXR05bK/9v3doIW4zpHQUgdB0HQmQtJUijvxk0MaFrjkKUZyolnoV5rw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR05MB4598.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(39850400004)(376002)(396003)(346002)(33656002)(8676002)(2906002)(5660300002)(55016002)(26005)(6506007)(6636002)(4326008)(316002)(478600001)(16526019)(186003)(956004)(9686003)(6862004)(52116002)(66556008)(7696005)(36756003)(8886007)(66946007)(66476007)(6666004)(83380400001)(8936002)(86362001)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ULekyBGVxstjcanW5Ug68jpnPYPCGlbQVPMnaGOujKnQebe1yQ9Lv4SLFxtxyFw4VFn6Ef8cl1S5Aw7TpA9P7N3cynP62VqtzR3qYGsMeggu19HVnL3wB4+qpvjef8SrO+fV6Ylwg/wRjHjYhOl7oetli49PsA5Hq4BQuTlHSoZWPm1lMEuPBIpKAUwqOI85ucN8614XzOIyrGI+0FHPgOXhfouHwLnwG6AXIDlWKdWpw5s7JWm62s/br0FtwDEyvjbm0O8rZyYWf/wduzOGJAblwpyaSBtBUAsz5fyVW9ZM1JHuQtP0JSYMEw/eefeZtji418C7pw5+WOERbPSEoMzGz0B0V/a6zshkhgJVuJAK9A3RC7wgTrByk/+DSYRw9g1XX88e8AMJya0hLsyoa6agB/bblQLsEqWFlbCb0KgXvcw3UQkVR/q//hZU14gIIIhQyOxijRCOC7mt50LWtVMhMpzVvLW3w3DI8wLyIx4=
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b8b2069-ab8a-48f0-1d54-08d806b7c3d9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2020 05:42:41.0501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k9RSGdK+RAZ6xH6RFf2N+1Nn0UoYQK88ydOIKVgF2nebLbIa7KFjgG2SEl/AI3m4SSgEeP+F8Wij5Tm4xEvfR5dwWDjLyJ6lRMR9QW3M4k4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR05MB4534
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.113 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jfzhJ-0026J6-UL
Subject: Re: [tipc-discussion] [net 1/2] Revert "tipc: Fix potential
 tipc_node refcnt leak in tipc_rcv"
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
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Tue, Jun 02, 2020 at 11:46:40AM +0700, Tuong Lien wrote:
Tested-by: Hoang Le <hoang.h.le@dektech.com.au>

> This reverts commit de058420767df21e2b6b0f3bb36d1616fb962032.
> 
> There is no actual tipc_node refcnt leak as stated in the above commit.
> The refcnt is hold carefully for the case of an asynchronous decryption
> (i.e. -EINPROGRESS/-EBUSY and skb = NULL is returned), so that the node
> object cannot be freed in the meantime. The counter will be re-balanced
> when the operation's callback arrives with the decrypted buffer if any.
> In other cases, e.g. a synchronous crypto the counter will be decreased
> immediately when it is done.
> 
> Now with that commit, a kernel panic will occur when there is no node
> found (i.e. n = NULL) in the 'tipc_rcv()' or a premature release of the
> node object.
> 
> This commit solves the issues by reverting the said commit, but keeping
> one valid case that the 'skb_linearize()' is failed.
> 
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/node.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 0312fb181d94..a4c2816c3746 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -2038,7 +2038,6 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
>  		n = tipc_node_find_by_id(net, ehdr->id);
>  	}
>  	tipc_crypto_rcv(net, (n) ? n->crypto_rx : NULL, &skb, b);
> -	tipc_node_put(n);
>  	if (!skb)
>  		return;
>  


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
