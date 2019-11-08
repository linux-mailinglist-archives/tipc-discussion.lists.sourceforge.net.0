Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3232F510B
	for <lists+tipc-discussion@lfdr.de>; Fri,  8 Nov 2019 17:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0WDHOmOf0Df1f6EHL6DrGzqzH4BnD0VrgMAj+SqMik=; b=e+xoiqVdOw3rmSnc0UGO5A0/D
	165b8cVx7Ggvv2Pg2nZoenPs16/tzP6Q0kaSGGVZP6a5P14biL/Tu2uPtjkoeMwyHi7X4G1FWqZQz
	Glye6sWWxrVboRG3uYvtamjn4JQEFeDASt1Rtzz5G8zjmurY6uzItUIynLxD+r3axuku4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iT768-0002Qh-On; Fri, 08 Nov 2019 16:26:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iT767-0002Qa-Je
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 16:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s67ogMguzGiI6gSko4jrrF8XszNsidhuFxXjn4SmJJ8=; b=Oh7iKMn8LHhxO9IN41UAt8QYTq
 gKZfy8BLXvwpX0c1BHGbOpsoQuMZwpHR3iAkq2GDRu7NhDHLElH05N4QTeQJwgtHAkyUcmFV4Hhfb
 A1kOD+iExss555HVvioEw87MBzsjQyS+20ZVleBMIF7ipjx6VqxV4LD5pZIkEtJmCyMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s67ogMguzGiI6gSko4jrrF8XszNsidhuFxXjn4SmJJ8=; b=B9b5MzcjyNkYPWtfps2yToOlfK
 bEaImnQYkrHLaIvNIi7HSQlP30iR7jVw1BMcLFI05/MS2BHo8zGKRYf5TJAv10Go1OanqdiJhw8cW
 uVsNSOqcpQxAYSMhekpaqkBo7dAw9fZ95Nbs01ag3kMElAF6hopTdFgVJ3reTk8Q0qPg=;
Received: from mail-eopbgr820041.outbound.protection.outlook.com
 ([40.107.82.41] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iT762-005LLt-TF
 for tipc-discussion@lists.sourceforge.net; Fri, 08 Nov 2019 16:26:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aNYVDN+B+Sf25UIErGIpUmdm3X3ZFdJMMDI0p+mwCg6jVQAoptdlx4q1LvAFSHpdhEdSxKcSK8Y/Z8AdGvYnsWVP+jiHVxOeChPhg17pfMO7b9WHNo3GoTxuzDp+wgvjVfVDCFxQY4hxZmXhj2yNGMkLBAN/+F3mtRkpjf0PnFDlHG5MWniftkJX3ssqAZRDiMNgkhjjICzaJ7BZYZxoRPsOzJ3F/upzdX5XIh2sMTj8LAj107Pc/V9KXi8JpLBZGZ8g7dDQ6WHmD0mJmGmsnVnMZG5++pWnCa98YlVSrm+S62naexMTjknB3rTfYY8bvOa/xRjlVRvxlzl3RB5vCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s67ogMguzGiI6gSko4jrrF8XszNsidhuFxXjn4SmJJ8=;
 b=gKxWB9Z7LKzaoXOzgGYOp6jPFvqfeDqIMzHbxudPQ9/JmZC3+UmXw2lx0+6v5eeko+SJdWnmmB+6F/kAh5+Wi+TU/TpHDVi+EBclWR1zZv4uB/mCHFWWJJCR6FvgN8GsB/pmCzAcZQTidJVzNH71Mflwm5ifICYE1tA1OlzClBFcHA8z6NTEdHU/azZLtFmKkiLzbC8IkCk1C9eej2sfus1/XT6r/inlF/6B3Ot+HT/IUpTkK9TKqCC83GbAOv1XqbciTZuHQ9xvCIPFVeuhHNq/2RsRzALQmuHzsfQykRlWgRjpNP1fdEtv6ch6bKk8LrBMltUmcV0WtqDmTdjCuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s67ogMguzGiI6gSko4jrrF8XszNsidhuFxXjn4SmJJ8=;
 b=B47xsr3b1lh8UM3YRBHCE5o0kMUiQ4jmIqvWVlN+ywDEw6qFp8G4iOWVauADp0MotSY164/Il0Qv9ObNDBA7fn28MGM1z4aGjju4T2jS4oB6jhUEXgIPT4Iad6z+et6DFLg4fzUd/cu9vqIF1bf/W3dUbmkVMb7QFoC975bt8hM=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3688.namprd15.prod.outlook.com (52.132.230.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Fri, 8 Nov 2019 16:26:41 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Fri, 8 Nov 2019
 16:26:40 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [PATCH RFC] tipc: fix name table rbtree issues
Thread-Index: AQHVlI58xEbcF0WubU2khFABE4lhj6eBd2xQ
Date: Fri, 8 Nov 2019 16:26:40 +0000
Message-ID: <CH2PR15MB3575819B7656FC3A51A577ED9A7B0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191106103915.22599-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191106103915.22599-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44a9db8b-d4ff-42e1-2e5e-08d764686fb2
x-ms-traffictypediagnostic: CH2PR15MB3688:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB36882E27A80A1B66B8A1BEE29A7B0@CH2PR15MB3688.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(199004)(189003)(13464003)(50084003)(25786009)(99286004)(66066001)(8676002)(7736002)(8936002)(81156014)(81166006)(74316002)(305945005)(52536014)(64756008)(66946007)(66476007)(5660300002)(66446008)(186003)(66556008)(6116002)(3846002)(110136005)(14454004)(76116006)(26005)(486006)(7696005)(446003)(11346002)(33656002)(476003)(316002)(256004)(44832011)(14444005)(86362001)(229853002)(6506007)(6436002)(2501003)(30864003)(76176011)(6246003)(2201001)(53546011)(478600001)(9686003)(102836004)(71190400001)(71200400001)(55016002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3688;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s+QkBBDn6RPy0DqdkTu/JyJe9MqlmLybwaI0BVOge1K68se6zRiR/GjDnAJEY5IlUl0uhG6qINMD7iqu5SELyCPk0XR5/KFbO5RSpdjkiXZs7uYct5M/7lwMkhH4n+I2GjbE+96a9AXtZExawyQXa69E1UQbByZm2/vZAoKAU6EhRKP09jXVpiTmp5fTa945D2QB/oPg7X+X+o+1WMWcMrvgLBOPvrL0jcy+HjaVLs3m4aTya09dSAHysiOUzXCuSzo5eIlzhXq2qsni9o8WhUR+TSsrxbXAKm50Tplr4JEuhJssWX7lNYbdnXlqNKQOLjuNE1dgIIXgaUj4KmvOaHMQp7AsM+eJxEfDcqjjkn7tkJS8DDbwttPuoYYr/Nt4xL+E+edVjPaQ7P6y0aH9oxEw6Y+HzXeRhDLZM/K0kKvF2Vueuq236BsvE7ozJBzv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44a9db8b-d4ff-42e1-2e5e-08d764686fb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 16:26:40.7080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vdUoWHgjqMrjJMlca/dKBNNx6AbZCcb0m6LR7W1EHkOderHtM5Sya7wvuNFH0zw9a+jMLPIni6OeHJx+mxtfFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3688
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iT762-005LLt-TF
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: fix name table rbtree issues
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 6-Nov-19 05:39
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [PATCH RFC] tipc: fix name table rbtree issues
> 
> The current rbtree for service ranges in the name table is built based
> on the 'lower' & 'upper' range values resulting in a flaw in the rbtree
> searching. Some issues have been observed in case of range overlapping:
> 
> Case #1: unable to withdraw a name entry:
> After some name services are bound, all of them are withdrawn by user
> but one remains in the name table forever. This corrupts the table and
> that service becomes dummy i.e. no real port.
> E.g.
> 
>                 /
>            {22, 22}
>               /
>              /
>    --->  {10, 50}
>            /  \
>           /    \
>     {10, 30}  {20, 60}
> 
> The node {10, 30} cannot be removed since the rbtree searching stops at
> the node's ancestor i.e. {10, 50}, so starting from it will never reach
> the finding node.
> 
> Case #2: failed to send data in some cases:
> E.g. Two service ranges: {20, 60}, {10, 50} are bound. The rbtree for
> this service will be one of the two cases below depending on the order
> of the bindings:
> 
>         {20, 60}             {10, 50} <--
>           /  \                 /  \
>          /    \               /    \
>     {10, 50}  NIL <--       NIL  {20, 60}
> 
>           (a)                    (b)
> 
> Now, try to send some data to service {30}, there will be two results:
> (a): Failed, no route to host.
> (b): Ok.
> 
> The reason is that the rbtree searching will stop at the pointing node
> as shown above.
> 
> Case #3: no round-robin in data sending:
> Same as case #2b above, the data sending to service {30} will always
> arrive in the {10, 50}.

I wouldn't mention case #3 at all. If we could make this work (which I doubt, see my previous mail) it would in reality imply new functionality. -The old functionality, round-robin between identical ranges does still work, as far as I can understand. 
> 
> Case #4: failed to send data:
> Same as case #2b above but if the data sending's scope is local and the
> {10, 50} is published by a peer node, then it will result in "no route
> to host" even though the other {20, 60} is for example on the local
> node which should be able to get the data.
> 
> The issues are actually due to the way we built the rbtree. This commit
> fixes it by introducing an additional field to each node, named 'max',
> which is the largest 'upper' of that node subtree. The 'max' value for
> each subtrees will be propagated correctly whenever a node is inserted/
> removed or the tree is rebalanced by the augmented rbtree callbacks.
> 
> By this way, we can change the rbtree searching appoarch to solve the
> issues above. Case #3 is however not covered by this commit, we leave
> it as current until one is proven to need a round-robin fashion for it.
> 
> Besides, since now we have the 'max' value, we can even improve the
> searching for a next range matching e.g. in case of multicast, so get
> rid of the unneeded looping over all the nodes in the tree.
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/name_table.c | 268 +++++++++++++++++++++++++++++++++-----------------
>  1 file changed, 179 insertions(+), 89 deletions(-)
> 
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 66a65c2cdb23..5cac6c1dfeb0 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -35,6 +35,7 @@
>   */
> 
>  #include <net/sock.h>
> +#include <linux/rbtree_augmented.h>
>  #include "core.h"
>  #include "netlink.h"
>  #include "name_table.h"
> @@ -50,6 +51,7 @@
>   * @lower: service range lower bound
>   * @upper: service range upper bound
>   * @tree_node: member of service range RB tree
> + * @max: largest 'upper' in this node subtree
>   * @local_publ: list of identical publications made from this node
>   *   Used by closest_first lookup and multicast lookup algorithm
>   * @all_publ: all publications identical to this one, whatever node and scope
> @@ -59,6 +61,7 @@ struct service_range {
>  	u32 lower;
>  	u32 upper;
>  	struct rb_node tree_node;
> +	u32 max;
>  	struct list_head local_publ;
>  	struct list_head all_publ;
>  };
> @@ -81,6 +84,130 @@ struct tipc_service {
>  	struct rcu_head rcu;
>  };
> 
> +#define service_range_upper(sr) ((sr)->upper)
> +RB_DECLARE_CALLBACKS_MAX(static, sr_callbacks,
> +			 struct service_range, tree_node, u32, max,
> +			 service_range_upper)
> +
> +#define service_range_entry(rbtree_node)				\
> +	(container_of(rbtree_node, struct service_range, tree_node))
> +
> +#define service_range_overlap(sr, start, end)				\
> +	((sr)->lower <= (end) && (sr)->upper >= (start))
> +
> +/**
> + * service_range_foreach_match - iterate over tipc service rbtree for each
> + *                               range match
> + * @sr: the service range pointer as a loop cursor
> + * @sc: the pointer to tipc service which holds the service range rbtree
> + * @start, end: the range (end >= start) for matching
> + */
> +#define service_range_foreach_match(sr, sc, start, end)			\
> +	for (sr = service_range_match_first((sc)->ranges.rb_node,	\
> +					    (start),			\
> +					    (end));			\
> +	     sr;							\
> +	     sr = service_range_match_next(&(sr)->tree_node,		\
> +					   (start),			\
> +					   (end)))
> +
> +/**
> + * service_range_match_first - find first service range matching a range
> + * @n: the root node of service range rbtree for searching
> + * @start, end: the range (end >= start) for matching
> + *
> + * Return: the leftmost service range node in the rbtree that overlaps the
> + * specific range if any. Otherwise, returns NULL.
> + */
> +static struct service_range *service_range_match_first(struct rb_node *n,
> +						       u32 start, u32 end)
> +{
> +	struct service_range *sr;
> +	struct rb_node *l, *r;
> +
> +	/* Non overlaps in tree at all? */
> +	if (!n || service_range_entry(n)->max < start)
> +		return NULL;
> +
> +	while (n) {
> +		l = n->rb_left;
> +		if (l && service_range_entry(l)->max >= start) {
> +			/* A leftmost overlap range node must be one in the left
> +			 * subtree. If not, it has lower > end, then nodes on
> +			 * the right side cannot satisfy the condition either.
> +			 */
> +			n = l;
> +			continue;
> +		}
> +
> +		/* No one in the left subtree can match, return if this node is
> +		 * an overlap i.e. leftmost.
> +		 */
> +		sr = service_range_entry(n);
> +		if (service_range_overlap(sr, start, end))
> +			return sr;
> +
> +		/* Ok, try to lookup on the right side */
> +		r = n->rb_right;
> +		if (sr->lower <= end &&
> +		    r && service_range_entry(r)->max >= start) {
> +			n = r;
> +			continue;
> +		}
> +		break;
> +	}
> +
> +	return NULL;
> +}
> +
> +/**
> + * service_range_match_next - find next service range matching a range
> + * @n: a node in service range rbtree from which the searching starts
> + * @start, end: the range (end >= start) for matching
> + *
> + * Return: the next service range node to the given node in the rbtree that
> + * overlaps the specific range if any. Otherwise, returns NULL.
> + */
> +static struct service_range *service_range_match_next(struct rb_node *n,
> +						      u32 start, u32 end)
> +{
> +	struct service_range *sr;
> +	struct rb_node *p, *r;
> +
> +	while (n) {
> +		r = n->rb_right;
> +		if (r && service_range_entry(r)->max >= start)
> +			/* A next overlap range node must be one in the right
> +			 * subtree. If not, it has lower > end, then any next
> +			 * successor (- an ancestor) of this node cannot
> +			 * satisfy the condition either.
> +			 */
> +			return service_range_match_first(r, start, end);
> +
> +		/* No one in the right subtree can match, go up to find an
> +		 * ancestor of this node which is parent of a left-hand child.
> +		 */
> +		while ((p = rb_parent(n)) && n == p->rb_right)
> +			n = p;
> +		if (!p)
> +			break;
> +
> +		/* Return if this ancestor is an overlap */
> +		sr = service_range_entry(p);
> +		if (service_range_overlap(sr, start, end))
> +			return sr;
> +
> +		/* Ok, try to lookup more from this ancestor */
> +		if (sr->lower <= end) {
> +			n = p;
> +			continue;
> +		}
> +		break;
> +	}
> +
> +	return NULL;
> +}
> +
>  static int hash(int x)
>  {
>  	return x & (TIPC_NAMETBL_SIZE - 1);
> @@ -143,19 +270,8 @@ static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
>  static struct service_range *tipc_service_first_range(struct tipc_service *sc,
>  						      u32 instance)
>  {
> -	struct rb_node *n = sc->ranges.rb_node;
> -	struct service_range *sr;
> -
> -	while (n) {
> -		sr = container_of(n, struct service_range, tree_node);
> -		if (sr->lower > instance)
> -			n = n->rb_left;
> -		else if (sr->upper < instance)
> -			n = n->rb_right;
> -		else
> -			return sr;
> -	}
> -	return NULL;
> +	return service_range_match_first(sc->ranges.rb_node, instance,
> +					 instance);
>  }

This function looks redundant now. It is called from only one location, and could just as well be replaced with a direct call to service_range_match_first().

Otherwise this looks good.

Acked-by: jon


> 
>  /*  tipc_service_find_range - find service range matching publication parameters
> @@ -163,56 +279,46 @@ static struct service_range *tipc_service_first_range(struct tipc_service *sc,
>  static struct service_range *tipc_service_find_range(struct tipc_service *sc,
>  						     u32 lower, u32 upper)
>  {
> -	struct rb_node *n = sc->ranges.rb_node;
>  	struct service_range *sr;
> 
> -	sr = tipc_service_first_range(sc, lower);
> -	if (!sr)
> -		return NULL;
> -
> -	/* Look for exact match */
> -	for (n = &sr->tree_node; n; n = rb_next(n)) {
> -		sr = container_of(n, struct service_range, tree_node);
> -		if (sr->upper == upper)
> -			break;
> +	service_range_foreach_match(sr, sc, lower, upper) {
> +		/* Look for exact match */
> +		if (sr->lower == lower && sr->upper == upper)
> +			return sr;
>  	}
> -	if (!n || sr->lower != lower || sr->upper != upper)
> -		return NULL;
> 
> -	return sr;
> +	return NULL;
>  }
> 
>  static struct service_range *tipc_service_create_range(struct tipc_service *sc,
>  						       u32 lower, u32 upper)
>  {
>  	struct rb_node **n, *parent = NULL;
> -	struct service_range *sr, *tmp;
> +	struct service_range *sr;
> 
>  	n = &sc->ranges.rb_node;
>  	while (*n) {
> -		tmp = container_of(*n, struct service_range, tree_node);
>  		parent = *n;
> -		tmp = container_of(parent, struct service_range, tree_node);
> -		if (lower < tmp->lower)
> -			n = &(*n)->rb_left;
> -		else if (lower > tmp->lower)
> -			n = &(*n)->rb_right;
> -		else if (upper < tmp->upper)
> -			n = &(*n)->rb_left;
> -		else if (upper > tmp->upper)
> -			n = &(*n)->rb_right;
> +		sr = service_range_entry(parent);
> +		if (lower == sr->lower && upper == sr->upper)
> +			return sr;
> +		if (sr->max < upper)
> +			sr->max = upper;
> +		if (lower <= sr->lower)
> +			n = &parent->rb_left;
>  		else
> -			return tmp;
> +			n = &parent->rb_right;
>  	}
>  	sr = kzalloc(sizeof(*sr), GFP_ATOMIC);
>  	if (!sr)
>  		return NULL;
>  	sr->lower = lower;
>  	sr->upper = upper;
> +	sr->max = upper;
>  	INIT_LIST_HEAD(&sr->local_publ);
>  	INIT_LIST_HEAD(&sr->all_publ);
>  	rb_link_node(&sr->tree_node, parent, n);
> -	rb_insert_color(&sr->tree_node, &sc->ranges);
> +	rb_insert_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
>  	return sr;
>  }
> 
> @@ -289,7 +395,6 @@ static void tipc_service_subscribe(struct tipc_service *service,
>  	struct service_range *sr;
>  	struct tipc_name_seq ns;
>  	struct publication *p;
> -	struct rb_node *n;
>  	bool first;
> 
>  	ns.type = tipc_sub_read(sb, seq.type);
> @@ -302,14 +407,8 @@ static void tipc_service_subscribe(struct tipc_service *service,
>  	if (tipc_sub_read(sb, filter) & TIPC_SUB_NO_STATUS)
>  		return;
> 
> -	for (n = rb_first(&service->ranges); n; n = rb_next(n)) {
> -		sr = container_of(n, struct service_range, tree_node);
> -		if (sr->lower > ns.upper)
> -			break;
> -		if (!tipc_sub_check_overlap(&ns, sr->lower, sr->upper))
> -			continue;
> +	service_range_foreach_match(sr, service, ns.lower, ns.upper) {
>  		first = true;
> -
>  		list_for_each_entry(p, &sr->all_publ, all_publ) {
>  			tipc_sub_report_overlap(sub, sr->lower, sr->upper,
>  						TIPC_PUBLISHED,	p->port,
> @@ -390,7 +489,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
> 
>  	/* Remove service range item if this was its last publication */
>  	if (list_empty(&sr->all_publ)) {
> -		rb_erase(&sr->tree_node, &sc->ranges);
> +		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
>  		kfree(sr);
>  	}
> 
> @@ -438,34 +537,39 @@ u32 tipc_nametbl_translate(struct net *net, u32 type, u32 instance, u32
> *dnode)
>  	rcu_read_lock();
>  	sc = tipc_service_find(net, type);
>  	if (unlikely(!sc))
> -		goto not_found;
> +		goto exit;
> 
>  	spin_lock_bh(&sc->lock);
> -	sr = tipc_service_first_range(sc, instance);
> -	if (unlikely(!sr))
> -		goto no_match;
> -
> -	/* Select lookup algorithm: local, closest-first or round-robin */
> -	if (*dnode == self) {
> -		list = &sr->local_publ;
> -		if (list_empty(list))
> -			goto no_match;
> -		p = list_first_entry(list, struct publication, local_publ);
> -		list_move_tail(&p->local_publ, &sr->local_publ);
> -	} else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
> -		list = &sr->local_publ;
> -		p = list_first_entry(list, struct publication, local_publ);
> -		list_move_tail(&p->local_publ, &sr->local_publ);
> -	} else {
> -		list = &sr->all_publ;
> -		p = list_first_entry(list, struct publication, all_publ);
> -		list_move_tail(&p->all_publ, &sr->all_publ);
> +	service_range_foreach_match(sr, sc, instance, instance) {
> +		/* Select lookup algo: local, closest-first or round-robin */
> +		if (*dnode == self) {
> +			list = &sr->local_publ;
> +			if (list_empty(list))
> +				continue;
> +			p = list_first_entry(list, struct publication,
> +					     local_publ);
> +			list_move_tail(&p->local_publ, &sr->local_publ);
> +		} else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
> +			list = &sr->local_publ;
> +			p = list_first_entry(list, struct publication,
> +					     local_publ);
> +			list_move_tail(&p->local_publ, &sr->local_publ);
> +		} else {
> +			list = &sr->all_publ;
> +			p = list_first_entry(list, struct publication,
> +					     all_publ);
> +			list_move_tail(&p->all_publ, &sr->all_publ);
> +		}
> +		port = p->port;
> +		node = p->node;
> +		/* As for legacy, pick the first matching range only, a "true"
> +		 * round-robin will be performed as needed.
> +		 */
> +		break;
>  	}
> -	port = p->port;
> -	node = p->node;
> -no_match:
>  	spin_unlock_bh(&sc->lock);
> -not_found:
> +
> +exit:
>  	rcu_read_unlock();
>  	*dnode = node;
>  	return port;
> @@ -517,7 +621,6 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
>  	struct service_range *sr;
>  	struct tipc_service *sc;
>  	struct publication *p;
> -	struct rb_node *n;
> 
>  	rcu_read_lock();
>  	sc = tipc_service_find(net, type);
> @@ -525,13 +628,7 @@ void tipc_nametbl_mc_lookup(struct net *net, u32 type, u32 lower, u32 upper,
>  		goto exit;
> 
>  	spin_lock_bh(&sc->lock);
> -
> -	for (n = rb_first(&sc->ranges); n; n = rb_next(n)) {
> -		sr = container_of(n, struct service_range, tree_node);
> -		if (sr->upper < lower)
> -			continue;
> -		if (sr->lower > upper)
> -			break;
> +	service_range_foreach_match(sr, sc, lower, upper) {
>  		list_for_each_entry(p, &sr->local_publ, local_publ) {
>  			if (p->scope == scope || (!exact && p->scope < scope))
>  				tipc_dest_push(dports, 0, p->port);
> @@ -552,7 +649,6 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
>  	struct service_range *sr;
>  	struct tipc_service *sc;
>  	struct publication *p;
> -	struct rb_node *n;
> 
>  	rcu_read_lock();
>  	sc = tipc_service_find(net, type);
> @@ -560,13 +656,7 @@ void tipc_nametbl_lookup_dst_nodes(struct net *net, u32 type, u32 lower,
>  		goto exit;
> 
>  	spin_lock_bh(&sc->lock);
> -
> -	for (n = rb_first(&sc->ranges); n; n = rb_next(n)) {
> -		sr = container_of(n, struct service_range, tree_node);
> -		if (sr->upper < lower)
> -			continue;
> -		if (sr->lower > upper)
> -			break;
> +	service_range_foreach_match(sr, sc, lower, upper) {
>  		list_for_each_entry(p, &sr->all_publ, all_publ) {
>  			tipc_nlist_add(nodes, p->node);
>  		}
> @@ -764,7 +854,7 @@ static void tipc_service_delete(struct net *net, struct tipc_service *sc)
>  			tipc_service_remove_publ(sr, p->node, p->key);
>  			kfree_rcu(p, rcu);
>  		}
> -		rb_erase(&sr->tree_node, &sc->ranges);
> +		rb_erase_augmented(&sr->tree_node, &sc->ranges, &sr_callbacks);
>  		kfree(sr);
>  	}
>  	hlist_del_init_rcu(&sc->service_list);
> --
> 2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
