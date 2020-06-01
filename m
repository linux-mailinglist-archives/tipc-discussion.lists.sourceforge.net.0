Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 322611EB256
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 01:46:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jfu8H-00061U-DT; Mon, 01 Jun 2020 23:46:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jfu8F-00060h-FY
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 23:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EoZSp+9PEtsv+oOSmSQRtHz0Ie0oKYVJ+giSN7GFaIo=; b=NHm7JK5TMTwtfG7UwueJc2fcB9
 gGeqr69RJgKUE8XqSI3f8on0GIpi53fN1mCiXDyV8dtsZPTm1ZjmCq2PTA54SfeIqVLEhf61q10ux
 wn2yckP+JzsVjw96ZeQvEdLmg8DmSLOGbFDwaV7zP4NJcFxHuH3G42WpFCI3j5xhzd9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EoZSp+9PEtsv+oOSmSQRtHz0Ie0oKYVJ+giSN7GFaIo=; b=JjtUZZk6pX7hwfeCgwVv26Yzwg
 mgxlbr9pGJ8YkgXE1hp6R3ZlCiCj50aPSfa5Osm75Eyec9sdS5LzskW3ztvjA14HlXlEvbzpZxndH
 PKs9Js7kdaRtmmudlEkuWRpWkQNIpa87s1j7j81b1CM+uJ92ClDYuWi2UzHZEyRvQlFk=;
Received: from mail-eopbgr150135.outbound.protection.outlook.com
 ([40.107.15.135] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jfu88-008MGu-Js
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 23:46:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WGL27Kod5gpamN4HAbYMKGjNgFW5GZLs/fgO3Xg7o1tT7JTey5JiYXDnsgaqKINbcNKM+f1Mv047je6ZrTPcY2wg/W7hZeO1gnZdp8wwK19l9FhB+oBN/MB7l91j4NHWS1i+nj12gUOajXzPlHItJqP/CT16ds8CGcl3v7SKIJVVUZa6U9vjkEaZoXltUG781ZGXyMFflckoZSmlxKMq7+G4MSO55a9l6HDcTcUlTSJ4eBdmHWyI8q2/MlLh87SSRPZYnKE3447O/eNUvEmP1uDH/EUyARZRk+lf2Kh7WyJLBGpcyS5/6zvpIGaP5I7wN0aUU2rgNDRUDmaCCqWzQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoZSp+9PEtsv+oOSmSQRtHz0Ie0oKYVJ+giSN7GFaIo=;
 b=NGpBC/9kkjlgT2n3knrJs9DlMdUUjN2LvbDyiPEv6BnRvqOazBrAK00RU25S476BGAx0AdREurr0Gwfbj4V7G9FAAANtCGijR95cL+jGB7xU4e+sosVBxxbKMj7vZDRYF9Hkt2exCLk8avHBIeSBGUUCI/NkyRZGhr6YvhdO+lqZi0d6fLM4u6ndlMn6Gn2dEvXLWYI7v6hCnQydIZs4Uwe+TF4Cv7/AovVpDaONptjDPDB19o6GnUAb39KPJL5dqZlDVIwUBNqVElpL2gVhXAly2oOFg4Gx1ZyNXm83mOX6oS2YRacPSiwXwNib0nAL6aZOUyoDwkFXpfIlME72wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EoZSp+9PEtsv+oOSmSQRtHz0Ie0oKYVJ+giSN7GFaIo=;
 b=NGpZOfR4qVmFhhF/rcLZ9EIdPbQjsYcXOW04exaOvVNaajg1ZWfg5Rc+0Nl95R+Q+Z1oRlPYK09yzv4RQdpdm1JyXOXitC/duIaa7D/J8Jos0sAYtQBCDkbl1qe1NjJruYEhoRq/3DfDSpkAipFiwa6o/Jce+vPqMu20xJjy3h0=
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com (2603:10a6:6:4d::19) by
 DB6PR05MB4552.eurprd05.prod.outlook.com (2603:10a6:6:4c::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Mon, 1 Jun 2020 23:46:00 +0000
Received: from DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::ad4d:99ad:217c:47b9]) by DB6PR05MB4598.eurprd05.prod.outlook.com
 ([fe80::ad4d:99ad:217c:47b9%5]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 23:46:00 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [ ] tipc: update a binding service via broadcast
Thread-Index: AQHWNc6fATO3DGDP/EOgR+bRGSU0PajDfPvAgAA63gCAALgv4A==
Date: Mon, 1 Jun 2020 23:45:59 +0000
Message-ID: <DB6PR05MB45983DFC9E1362F85690A2EAF18A0@DB6PR05MB4598.eurprd05.prod.outlook.com>
References: <20200529153408.1843975-1-jmaloy@redhat.com>
 <VI1PR05MB4605AD04EB5324EA05D76EC1F18A0@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <cece97ea-9fad-e323-78b6-448d72357e34@redhat.com>
In-Reply-To: <cece97ea-9fad-e323-78b6-448d72357e34@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 461e435f-31d6-4ca0-772e-08d80685f009
x-ms-traffictypediagnostic: DB6PR05MB4552:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR05MB455249AA868FA2D4DA27F1A7F18A0@DB6PR05MB4552.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mtXDMk+NTWyPS8ZVVB8sgSipTYZyUVu6rqRhGze28dI8to5JnGas0mAzFAqJGIDfFoIgzWROFzWK9olNcaRma7VA02so5nTo4+NWhGYoemLft41f5kxkp5AmJFVApwY+lFiiWftgheN4vmRVRihqaZVWlkDdBX0HJDFuzzTGwoF1xT5Yyhkqxb63q0pUWqYbW43Lh9+DpePOrgonY/MEUSic6H4qqV5QNB0VRsUVf41naBZg/ERYnkuK9oG+/K1RzuAqn5PNIety9qtV+wf387RIDC8WeInZwKgOOWV00oFf9Pz6duAMbeubctRIftpvCqwSDREXYSqVgVsqX2o/sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR05MB4598.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(396003)(39850400004)(366004)(376002)(478600001)(5660300002)(55016002)(9686003)(6506007)(54906003)(7696005)(110136005)(316002)(53546011)(15650500001)(64756008)(86362001)(2906002)(71200400001)(26005)(52536014)(83380400001)(186003)(4326008)(66446008)(33656002)(8676002)(76116006)(66946007)(66476007)(8936002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8KdyXeCJQsUEL2AhPjw/V9pLcyl/ju49I2FwOf0YBAc/MM/DwCszpHuHbsFow/MFMT7Y65BYJ4O917lsEqs+o0RGwXwoMLJdIeUJHYf7kMFgHe92DOwdwd3ioEIx5JXHcAn8ug7Wu7YTIDmZxHEdFJsmEDZP7uNkd9hkyUtjzJXWzXtt5IQdaPESj4FnmlHJ3H5+3dEZMI5Rscnz5ABr5EhbSD22hgKYNT1CEKqDeLUEX2BKuYDDXb4vnU0QWvjkyCc5mlh9/JbFNWyCjkeFvSJxBlkbq9fLCDD0Ljk6WYwTbKZrbcJByhNw+3gKTSOecubKDLPaWI8Sj/CqtX88XDIOHuCbXudLwjB0Zm6OqDdNjxlUdEFJ4I55T3aOpWAbtJAaUp+yQf7M6MQK0+QPAG1x9zj9zdWOkHMrYgP32jWujHpayiF4t9o3HLQyfpCFf7pAxHcBrz5ht2PgFNJw4Z6mn/xztrVe3AtmSrNZgBw=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 461e435f-31d6-4ca0-772e-08d80685f009
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 23:45:59.9165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4709iqMLYinOvKgJ+fhBRobSTk2ElI3S/SaTV+k/bG78sFbuptKckonicrHkt8S+lFrSV218eO9YP3fy6YfQMuYhFLiDY87tguS2ydpcG+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR05MB4552
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.135 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jfu88-008MGu-Js
Subject: Re: [tipc-discussion] [ ] tipc: update a binding service via
 broadcast
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

See my comment inline.

Hoang
-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Monday, June 1, 2020 7:40 PM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: Re: [ ] tipc: update a binding service via broadcast

Hi Hoang.
See below.

On 6/1/20 5:33 AM, Hoang Huu Le wrote:
> Hi Jon,
>
> There is a concern in function tipc_node_broadcast.
> See my comment inline.
>
> Regards,
> Hoang
> -----Original Message-----
> From: jmaloy@redhat.com <jmaloy@redhat.com>
> Sent: Friday, May 29, 2020 10:34 PM
> To: tipc-discussion@lists.sourceforge.net
> Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
> Subject: [ ] tipc: update a binding service via broadcast
>
> From: Hoang Huu Le <hoang.h.le@dektech.com.au>
>
> Currently, updating binding table (add service binding to
> name table/withdraw a service binding) is being sent over replicast.
> However, if we are scaling up clusters to > 100 nodes/containers this
> method is less affection because of looping through nodes in a cluster one
> by one.
[...]
>   
> +	/* Use broadcast if all nodes support it */
> +	if (!rc_dests) {
> +		__skb_queue_head_init(&xmitq);
> +		__skb_queue_tail(&xmitq, skb);
> +		tipc_bcast_xmit(net, &xmitq, &dummy);
> +		return;
> +	}
> +
> [Hoang]
> We could not use 'rc_dests' to send as broadcast mode because of it is not fully broadcast supporting in the cluster.
> As stated, if there is a node in the cluster not supporting broadcast mode, we need to use replicast instead.
> That's why we introduced the feature "Smooth switch between replicast/broadcast in bcast.c" and a new command line to configure the broadcast link.
> If we assume base on 'rc_dests' (i.e capability flags TIPC_NAMED_BCAST), probably 'forced replicast' configuration on broadcast link becomes useless. Then, destination nodes will be missed the publication item.
You misunderstand this function. rc_dests is a *counter*, not a flag. It 
counts the number of peer nodes that don't support TIPC_NAMED_BCAST, and 
if this is non-zero, we use replicast. So this is safe.

[Hoang] Yes, I know about this counter. What I'm considering about the L2 interface (e.g VXLAN) pseudo support broadcast (we discussed the topic a year ago), then, the sending side must be switching to replicast (method->force_bcast = true). But above likely forcing to use broadcast careless setting from broadcast/replicast from L2.

///jon

>
> +	/* Otherwise use legacy replicast method */
>   	rcu_read_lock();
>   	list_for_each_entry_rcu(n, tipc_nodes(net), list) {
>   		dst = n->addr;
> @@ -1749,7 +1762,6 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
>   		tipc_node_xmit_skb(net, txskb, dst, 0);
>   	}
>   	rcu_read_unlock();
> -
>   	kfree_skb(skb);
>   }
>   
> @@ -1844,7 +1856,9 @@ static void tipc_node_bc_rcv(struct net *net, struct sk_buff *skb, int bearer_id
>   
>   	/* Handle NAME_DISTRIBUTOR messages sent from 1.7 nodes */
>   	if (!skb_queue_empty(&n->bc_entry.namedq))
> -		tipc_named_rcv(net, &n->bc_entry.namedq);
> +		tipc_named_rcv(net, &n->bc_entry.namedq,
> +			       &n->bc_entry.named_rcv_nxt,
> +			       &n->bc_entry.named_open);
>   
>   	/* If reassembly or retransmission failure => reset all links to peer */
>   	if (rc & TIPC_LINK_DOWN_EVT)
> @@ -2109,7 +2123,9 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
>   		tipc_node_link_down(n, bearer_id, false);
>   
>   	if (unlikely(!skb_queue_empty(&n->bc_entry.namedq)))
> -		tipc_named_rcv(net, &n->bc_entry.namedq);
> +		tipc_named_rcv(net, &n->bc_entry.namedq,
> +			       &n->bc_entry.named_rcv_nxt,
> +			       &n->bc_entry.named_open);
>   
>   	if (unlikely(!skb_queue_empty(&n->bc_entry.inputq1)))
>   		tipc_node_mcast_rcv(n);
> diff --git a/net/tipc/node.h b/net/tipc/node.h
> index a6803b449a2c..9f6f13f1604f 100644
> --- a/net/tipc/node.h
> +++ b/net/tipc/node.h
> @@ -55,7 +55,8 @@ enum {
>   	TIPC_MCAST_RBCTL      = (1 << 7),
>   	TIPC_GAP_ACK_BLOCK    = (1 << 8),
>   	TIPC_TUNNEL_ENHANCED  = (1 << 9),
> -	TIPC_NAGLE            = (1 << 10)
> +	TIPC_NAGLE            = (1 << 10),
> +	TIPC_NAMED_BCAST      = (1 << 11)
>   };
>   
>   #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
> @@ -68,7 +69,8 @@ enum {
>   				TIPC_MCAST_RBCTL       |   \
>   				TIPC_GAP_ACK_BLOCK     |   \
>   				TIPC_TUNNEL_ENHANCED   |   \
> -				TIPC_NAGLE)
> +				TIPC_NAGLE             |   \
> +				TIPC_NAMED_BCAST)
>   
>   #define INVALID_BEARER_ID -1
>   
> @@ -101,7 +103,7 @@ int tipc_node_xmit_skb(struct net *net, struct sk_buff *skb, u32 dest,
>   		       u32 selector);
>   void tipc_node_subscribe(struct net *net, struct list_head *subscr, u32 addr);
>   void tipc_node_unsubscribe(struct net *net, struct list_head *subscr, u32 addr);
> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests);
>   int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port);
>   void tipc_node_remove_conn(struct net *net, u32 dnode, u32 port);
>   int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected);


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
